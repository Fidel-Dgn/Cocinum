
#include <InterruptController/InterruptController.h>
#include <UART/UART.h>
#include "Platform.h"
#include <stddef.h>

// Defined in virgule.ld
extern uint32_t __boot_start, __boot_end;
extern void (*__finalizer)(void);

#define PROGRAM         ((uint8_t*)0)
#define BOOT_START_ADDR ((uint32_t)&__boot_start)

#define FINALIZER_START ((uint32_t)&__finalizer)
#define FINALIZER_END   (FINALIZER_START + sizeof(__finalizer))

// Convert an hexadecimal digit from ASCII to integer.
static int8_t hex_char_to_int(char c) {
    if (c >= '0' && c <= '9') {
        return c - '0';
    }
    if (c >= 'a' && c <= 'f') {
        return c - ('a' - 10);
    }
    if (c >= 'A' && c <= 'F') {
        return c - ('A' - 10);
    }
    return -1;
}

// Read an hex byte from the serial port.
static inline uint8_t read_hex_u8(UART *dev) {
    uint8_t left  = hex_char_to_int(UART_getc(dev));
    uint8_t right = hex_char_to_int(UART_getc(dev));
    return (left << 4) | right;
}

// Read an hex half-word from the serial port.
static inline uint16_t read_hex_u16(UART *dev) {
    return (read_hex_u8(dev) << 8) + read_hex_u8(dev);
}

// Read an hex record (excluding the starting ':') from the serial port.
static bool read_hex_line(UART *uart) {
    // Read the number of bytes in the current record.
    uint8_t count = read_hex_u8(uart);

    // Read the record address.
    uint16_t addr = read_hex_u16(uart);

    // Read the record type.
    uint8_t rtype = read_hex_u8(uart);

    // Read the data bytes.
    for (size_t i = 0; i < count; i ++, addr ++) {
        uint8_t c = read_hex_u8(uart);
        if (rtype == 0 && addr < BOOT_START_ADDR && !(addr >= FINALIZER_START && addr < FINALIZER_END)) {
            PROGRAM[addr] = c;
        }
    }

    // Read the checksum.
    read_hex_u8(uart);

    // Record type 1 signals the end of the file.
    return rtype == 1;
}

// Read a command line from the serial port.
static void read_cmd_line(UART *uart, char *dest, size_t max_len) {
    size_t len = 0;

    bool can_use_tab = true;

    // Save cursor position and show command prompt.
    UART_puts(uart, "\e[s> ");

    while (true) {
        const uint8_t c = UART_getc(uart);
        switch (c) {
            case '\t':
                if (can_use_tab) {
                    // Restore cursor position, clear line and show command prompt again.
                    UART_puts(uart, "\e[u\e[2K> ");
                    // Show previous command.
                    UART_puts(uart, dest);
                    // Set length.
                    while (dest[len]) {
                        len ++;
                    }
                    can_use_tab = false;
                }
                break;

            case '\b':
            case '\x7F':
                if (len > 0) {
                    UART_puts(uart, "\e[D \e[D");
                    len --;
                }
                break;

            case '\r':
                UART_putc(uart, '\n');
                dest[len] = 0;
                return;

            default:
                if (c >= 32 && c <= 126 && len < max_len) {
                    UART_putc(uart, c);
                    dest[len] = c;
                    len ++;
                    can_use_tab = false;
                }
        }
    }
}

// Skip space characters in a string from the given position.
static char *skip_whitespace(char* pos) {
    while (*pos == ' ') {
        pos ++;
    }
    return pos;
}

// Read an integer from a string at the given position.
static char *read_uint32(char *pos, uint32_t *dest) {
    uint32_t res = 0;
    while (*pos) {
        int8_t digit = hex_char_to_int(*pos);
        if (digit < 0) {
            break;
        }
        res = (res << 4) | digit;
        pos ++;
    }
    *dest = res;
    return pos;
}

// Run a load command at the given address, with the given format.
static bool run_load_cmd(UART *uart, uint32_t addr, char fmt) {
    uint32_t data;
    size_t shift;
    switch (fmt) {
        case 'b': data = *(uint8_t*)addr;  shift = 8;  break;
        case 'h': data = *(uint16_t*)addr; shift = 16; break;
        case 'w': data = *(uint32_t*)addr; shift = 32; break;
        default: return true;
    }
    while (shift) {
        shift -= 4;
        char digit = (data >> shift) & 0xf;
        if (digit >= 0 && digit <= 9) {
            digit += '0';
        }
        else {
            digit += 'A' - 10;
        }
        UART_putc(uart, digit);
    }
    UART_putc(uart, '\n');
    return false;
}

// Run a store command at the given address with the given data and format.
static bool run_store_cmd(uint32_t data, uint32_t addr, char fmt) {
    switch (fmt) {
        case 'b': *(uint8_t*)addr = data;  break;
        case 'h': *(uint16_t*)addr = data; break;
        case 'w': *(uint32_t*)addr = data; break;
        default: return true;
    }
    return false;
}

static void run_help_cmd(UART *uart) {
    UART_puts(uart, "\\\\// Available commands:\n"
                    "\n"
                    "  h               - Help.\n"
                    "  q               - Quit the interactive mode.\n"
                    "  lb ADDRESS      - Show the byte at the given address.\n"
                    "  lh ADDRESS      - Show the half-word at the given address.\n"
                    "  lw ADDRESS      - Show the word at the given address.\n"
                    "  sb ADDRESS DATA - Store a byte at the given address.\n"
                    "  sh ADDRESS DATA - Store a half-word at the given address.\n"
                    "  sw ADDRESS DATA - Store a word at the given address.\n"
                    "\n"
                    "ADDRESS and DATA must be written in hexadecimal.\n"
                    "\n"
                    "Example:\n"
                    "  sh 80000000 c3a5\n"
                    "\n"
                    "Before typing a command, you can press TAB to retrieve the previous command.\n");
}

// Interactive mode: read and execute commands.
static void interactive(UART *uart) {
    UART_puts(uart, "\\\\// Interactive mode.\n");
    run_help_cmd(uart);

    while (true) {
        // Read a line of text.
        char line[64];
        read_cmd_line(uart, line, sizeof(line) - 1);

        // Main command mnemonic.
        char *pos = skip_whitespace(line);
        if (!*pos) {
            continue;
        }
        const char cmd = *pos ++;
        switch (cmd) {
            case 'q': return;
            case 'h': run_help_cmd(uart); continue;
        }

        // Data format.
        if (!*pos) {
            goto interactive_error;
        }
        const char fmt = *pos ++;

        // Address.
        char *old_pos = pos;
        pos = skip_whitespace(pos);
        if (pos == old_pos || !*pos) {
            goto interactive_error;
        }
        uint32_t addr;
        pos = read_uint32(pos, &addr);

        // Data.
        uint32_t data = 0;
        if (cmd == 's') {
            old_pos = pos;
            pos = skip_whitespace(pos);
            if (pos == old_pos || !*pos) {
                goto interactive_error;
            }
            read_uint32(pos, &data);
        }

        // Run command.
        switch (cmd) {
            case 'l':
                if (run_load_cmd(uart, addr, fmt)) {
                    goto interactive_error;
                };
                break;
            case 's':
                if (run_store_cmd(data, addr, fmt)) {
                    goto interactive_error;
                };
                break;
        }

        continue;

    interactive_error:
        UART_puts(uart, "Error!\n");
    }
}

__attribute__((noreturn))
static void receive(void) {
    InterruptController *const intc = (InterruptController*)INTC_ADDRESS;

    InterruptController_disable(intc, -1);
    InterruptController_clear_events(intc, -1);

    // We use a local instance of UART to avoid overwriting it while loading.
    UART uart = {
        .address     = UART_ADDRESS,
        .intc        = intc,
        .rx_evt_mask = EVT_MASK(INTC_EVENTS_UART_RX),
        .tx_evt_mask = EVT_MASK(INTC_EVENTS_UART_TX),
    };

    static const char *const msg = "\\\\// Send an hex file to execute or press ESC to switch into interactive mode.\n";

    UART_init(&uart);
    UART_puts(&uart, "\\\\// This is the Virgule program loader.\n");
    UART_puts(&uart, msg);

    bool stop = false;

    while (!stop) {
        uint8_t c;
        do {
            c = UART_getc(&uart);
        } while (c != ':' && c != '\e');

        if (c == ':') {
            stop = read_hex_line(&uart);
        }
        else {
            interactive(&uart);
            UART_puts(&uart, msg);
        }
    }

    UART_puts(&uart, "\\\\// Starting user program.\n");

    InterruptController_clear_events(intc, -1);

    // We cannot return from here since the return address is located in a
    // region that has been overwritten. We jump directly to address 0.
    // The user program will take care to initialize the stack again.
    asm("jr zero");
    __builtin_unreachable();
}

__attribute__((noreturn))
void main(void) {
    // Copy this program to the 'boot' region of the memory.
    uint32_t *src = 0;
    uint32_t *dest = &__boot_start;
    uint32_t *dest_end = &__boot_end;
    while (dest < dest_end) {
        *dest ++ = *src ++;
    }

    // Branch to the copy of the receive function in the 'boot' region.
    // Set the variable __finalizer to the same address so that it is executed
    // again when returning from the user's 'main' function.
    __finalizer = receive + BOOT_START_ADDR;
    __finalizer();
    __builtin_unreachable();
}
