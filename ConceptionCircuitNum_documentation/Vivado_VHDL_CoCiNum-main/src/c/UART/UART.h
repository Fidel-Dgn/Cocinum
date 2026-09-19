
#ifndef UART_H_
#define UART_H_

#include <InterruptController/InterruptController.h>

#define UART_BUFFER_LENGTH 16

typedef volatile struct {
    uint8_t count;
    uint8_t write_index;
    uint8_t read_index;
    uint8_t data[UART_BUFFER_LENGTH];
} UARTBuffer;

typedef struct {
    const uint32_t address, rx_evt_mask, tx_evt_mask;
    InterruptController *const intc;
    UARTBuffer tx_buffer, rx_buffer;
    volatile bool tx_busy;
} UART;

void UART_init(UART *dev);
void UART_putc(UART *dev, uint8_t c);
uint8_t UART_getc(UART *dev);
void UART_puts(UART *dev, const uint8_t *s);
bool UART_has_data(UART *dev);
void UART_irq_handler(UART *dev);
void UART_wait(UART *dev);

#endif
