
#include "UART.h"
#include "UART-common.h"
#include <InterruptController/InterruptController.h>

static void UARTBuffer_init(UARTBuffer *q) {
    q->count       = 0;
    q->read_index  = 0;
    q->write_index = 0;
}

static uint8_t UARTBuffer_read(UARTBuffer *q) {
    if (q->count == 0) {
        return 0;
    }

    uint8_t c = q->data[q->read_index];
    q->read_index ++;
    if (q->read_index == UART_BUFFER_LENGTH) {
        q->read_index = 0;
    }
    q->count --;
    return c;
}

static void UARTBuffer_write(UARTBuffer *q, uint8_t c) {
    if (q->count == UART_BUFFER_LENGTH) {
        return;
    }

    q->data[q->write_index] = c;
    q->write_index ++;
    if (q->write_index == UART_BUFFER_LENGTH) {
        q->write_index = 0;
    }
    q->count ++;
}

void UART_irq_handler(UART *dev) {
    if (InterruptController_has_events(dev->intc, dev->tx_evt_mask)) {
        // Acknowledge the interrupt request.
        InterruptController_clear_events(dev->intc, dev->tx_evt_mask);
        // If the transmit buffer is not empty, send the next byte.
        if (dev->tx_buffer.count > 0) {
            REG(dev, data) = UARTBuffer_read(&dev->tx_buffer);
        }
        else {
            dev->tx_busy = false;
        }
    }

    if (InterruptController_has_events(dev->intc, dev->rx_evt_mask)) {
        // Acknowledge the interrupt request.
        InterruptController_clear_events(dev->intc, dev->rx_evt_mask);
        // Add the received byte to the receive buffer.
        UARTBuffer_write(&dev->rx_buffer, REG(dev, data));
    }
}

void UART_init(UART *dev) {
    InterruptController_disable(dev->intc, dev->tx_evt_mask | dev->rx_evt_mask);
    InterruptController_clear_events(dev->intc, dev->tx_evt_mask | dev->rx_evt_mask);

    UARTBuffer_init(&dev->tx_buffer);
    UARTBuffer_init(&dev->rx_buffer);

    dev->tx_busy = false;

    InterruptController_enable(dev->intc, dev->tx_evt_mask | dev->rx_evt_mask);
}

void UART_putc(UART *dev, uint8_t c) {
    // Wait until there is room in the transmit buffer.
    while (dev->tx_buffer.count == UART_BUFFER_LENGTH);

    // Disable transmit interrupts while updating the transmit buffer.
    InterruptController_disable(dev->intc, dev->tx_evt_mask);

    // If a transmit operation is in progress, add the data byte
    // to the transmit buffer. Otherwise, send the byte to the device directly
    // and signal that a transmit operation is in progress.
    if (dev->tx_busy) {
        UARTBuffer_write(&dev->tx_buffer, c);
    }
    else {
        dev->tx_busy   = true;
        REG(dev, data) = c;
    }

    // Enable interrupts again to detect the end of the transmit operation.
    InterruptController_enable(dev->intc, dev->tx_evt_mask);
}

uint8_t UART_getc(UART *dev) {
    // Wait until there is data in the receive buffer.
    while (dev->rx_buffer.count == 0);

    // Disable receive interrupts while updating the receive buffer.
    InterruptController_disable(dev->intc, dev->rx_evt_mask);
    uint8_t c = UARTBuffer_read(&dev->rx_buffer);
    InterruptController_enable(dev->intc, dev->rx_evt_mask);

    return c;
}

void UART_puts(UART *dev, const uint8_t *s) {
    while (*s) {
        UART_putc(dev, *s ++);
    }
}

bool UART_has_data(UART *dev) {
    return dev->rx_buffer.count > 0;
}

void UART_wait(UART *dev) {
    while (dev->tx_busy);
}
