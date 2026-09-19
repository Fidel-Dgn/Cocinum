
#include "UART.h"
#include "UART-common.h"

void UART_init(UART *dev) {
    InterruptController_disable(dev->intc, dev->tx_evt_mask | dev->rx_evt_mask);
    InterruptController_clear_events(dev->intc, dev->tx_evt_mask | dev->rx_evt_mask);
}

void UART_putc(UART *dev, uint8_t c) {
    REG(dev, data) = c;
    while (!InterruptController_has_events(dev->intc, dev->tx_evt_mask));
    InterruptController_clear_events(dev->intc, dev->tx_evt_mask);
}

uint8_t UART_getc(UART *dev) {
    while (!InterruptController_has_events(dev->intc, dev->rx_evt_mask));
    InterruptController_clear_events(dev->intc, dev->rx_evt_mask);
    return REG(dev, data);
}

void UART_puts(UART *dev, const uint8_t *s) {
    while (*s) {
        UART_putc(dev, *s ++);
    }
}

bool UART_has_data(UART *dev) {
    return InterruptController_has_events(dev->intc, dev->rx_evt_mask);
}

void UART_irq_handler(UART *dev) {
    // Empty
}

void UART_wait(UART *dev) {
    // Empty
}
