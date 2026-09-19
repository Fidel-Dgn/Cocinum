
#ifndef ACCELEROMETER_H_
#define ACCELEROMETER_H_

#include "SPI.h"

typedef struct {
    int16_t x;
    int16_t y;
    int16_t z;
    int16_t t;
} AccelerometerState;

void Accelerometer_init(SPIDevice *dev);
void Accelerometer_update(SPIDevice *dev, AccelerometerState *state);

#endif
