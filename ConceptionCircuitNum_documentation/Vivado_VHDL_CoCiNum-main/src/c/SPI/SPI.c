
#include "SPI.h"

typedef volatile struct {
    uint32_t data;
    uint32_t control;
    uint32_t timer_max;
} SPIMasterRegs;

#define POLARITY_MASK 4
#define PHASE_MASK    2
#define CS_MASK       1

#define REG(dev, name) ((SPIMasterRegs*)dev->address)->name

void SPIMaster_init(SPIMaster *dev, bool polarity, bool phase, uint8_t cycles_per_bit) {
    InterruptController_disable(dev->intc, dev->evt_mask);
    InterruptController_clear_events(dev->intc, dev->evt_mask);

    uint8_t control = 0;
    if (polarity) {
        control |= POLARITY_MASK;
    }
    if (phase) {
        control |= PHASE_MASK;
    }

    REG(dev, control)   = control;
    REG(dev, timer_max) = cycles_per_bit - 1;
}

void SPIMaster_select(SPIMaster *dev) {
    REG(dev, control) |= CS_MASK;
}

void SPIMaster_deselect(SPIMaster *dev) {
    REG(dev, control) &= ~CS_MASK;
}

uint8_t SPIMaster_send_receive(SPIMaster *dev, uint8_t data) {
    REG(dev, data) = data;
    while (!InterruptController_has_events(dev->intc, dev->evt_mask));
    InterruptController_clear_events(dev->intc, dev->evt_mask);
    return REG(dev, data);
}

void SPIDevice_init(SPIDevice *dev) {
    SPIMaster_init(dev->spi, dev->polarity, dev->phase, dev->cycles_per_bit);
    Timer_init(dev->timer);
    Timer_set_limit(dev->timer, dev->cycles_per_gap - 1);
}

void SPIDevice_send_receive(SPIDevice *dev, size_t len, const uint8_t *src, uint8_t *dest) {
    Timer_delay(dev->timer);
    SPIMaster_select(dev->spi);
    for (size_t n = 0; n < len; n ++) {
        Timer_delay(dev->timer);
        uint8_t b = SPIMaster_send_receive(dev->spi, src[n]);
        if (dest) {
            dest[n] = b;
        }
    }
    Timer_delay(dev->timer);
    SPIMaster_deselect(dev->spi);
}
