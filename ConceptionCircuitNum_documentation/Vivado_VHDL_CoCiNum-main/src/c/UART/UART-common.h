
#ifndef UART_PRIV_H_
#define UART_PRIV_H_

typedef volatile struct {
    uint8_t data;
} UARTRegs;

#define REG(dev, name) ((UARTRegs*)dev->address)->name

#endif
