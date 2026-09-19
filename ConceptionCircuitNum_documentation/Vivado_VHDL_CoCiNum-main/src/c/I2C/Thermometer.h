
#ifndef THERMOMETER_H_
#define THERMOMETER_H_

#include "I2C.h"

void Thermometer_init(I2CDevice *dev);
int16_t Thermometer_get_temperature(I2CDevice *dev);

#endif
