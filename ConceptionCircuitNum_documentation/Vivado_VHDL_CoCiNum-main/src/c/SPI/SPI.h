
#ifndef SPI_H_
#define SPI_H_

#include <InterruptController/InterruptController.h>
#include <Timer/Timer.h>
#include <stddef.h>

typedef struct {
    const uint32_t address, evt_mask;
    InterruptController *const intc;
} SPIMaster;

void SPIMaster_init(SPIMaster *dev, bool polarity, bool phase, uint8_t cycles_per_bit);
void SPIMaster_select(SPIMaster *dev);
void SPIMaster_deselect(SPIMaster *dev);
uint8_t SPIMaster_send_receive(SPIMaster *dev, uint8_t data);

typedef struct {
    SPIMaster *const spi;
    Timer *const timer;
    const bool polarity;
    const bool phase;
    const uint32_t cycles_per_bit;
    const uint32_t cycles_per_gap;
} SPIDevice;

void SPIDevice_init(SPIDevice *dev);

void SPIDevice_send_receive(SPIDevice *dev, size_t len, const uint8_t *src, uint8_t *dest);

#endif
