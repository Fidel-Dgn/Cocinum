
# Variables:
#   C_DEPS: C source files to link with the main program
#	C_FLAGS_USER: additional options for the compiler or the assembler
#	LD_FLAGS_USER: additional options for the linker

MEM_SIZE = 131072

SCRIPTS_DIR := $(dir $(lastword $(MAKEFILE_LIST)))
ASM_DIR     := $(SCRIPTS_DIR)/../src/asm
C_DIR       := $(SCRIPTS_DIR)/../src/c

PLATFORM := riscv64-unknown-elf
CC       := $(PLATFORM)-gcc
OBJCOPY  := $(PLATFORM)-objcopy

LD_SCRIPT := $(SCRIPTS_DIR)/Virgule.ld
C_FLAGS    = -march=rv32i -mabi=ilp32 -ffreestanding -I$(C_DIR) -I$(C_DIR)/LibC $(C_FLAGS_USER)
LD_FLAGS   = -nostdlib -T $(LD_SCRIPT) $(LD_FLAGS_USER)

OBJ_STARTUP := $(ASM_DIR)/Startup/Startup.o
OBJ_DEPS     = $(C_DEPS:.c=.o)

%.elf: %.o $(OBJ_DEPS) $(OBJ_STARTUP) $(LD_SCRIPT)
	$(CC) $(C_FLAGS) $(LD_FLAGS) -o $@ $(OBJ_STARTUP) $(OBJ_DEPS) $<

%.o: %.c
	$(CC) $(C_FLAGS) -c -o $@ $<

%.o: %.s
	$(CC) $(C_FLAGS) -c -o $@ $<

%.hex: %.elf
	$(OBJCOPY) -O ihex $< $@

%_pkg.vhd: %.hex
	python3 $(SCRIPTS_DIR)/hex_to_vhdl.py $(MEM_SIZE) $< > $@

clean:
	rm -f *.o *.hex *_pkg.vhd *.elf
