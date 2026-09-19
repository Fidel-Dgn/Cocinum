
#include "Thermometer.h"

void Thermometer_init(I2CDevice *dev) {
    I2CDevice_init(dev);
}

int16_t Thermometer_get_temperature(I2CDevice *dev) {
    uint8_t data[2] = {0, 0};
    I2CDevice_send_receive(dev, 1, 2, data);
    return ((int16_t)data[0] << 5) | (data[1] >> 3);
}
