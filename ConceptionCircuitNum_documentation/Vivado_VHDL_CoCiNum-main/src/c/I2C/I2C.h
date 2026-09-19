
#ifndef I2C_H_
#define I2C_H_

#include <InterruptController/InterruptController.h>

typedef struct {
    const uint32_t address, evt_mask;
    InterruptController *const intc;
} I2CMaster;

void I2CMaster_init(I2CMaster *dev);
void I2CMaster_send_receive(I2CMaster *dev, uint8_t slave_address, uint8_t send_len, uint8_t recv_len, uint8_t *data);

typedef struct {
    I2CMaster *const i2c;
    const uint8_t slave_address;
} I2CDevice;

void I2CDevice_init(I2CDevice *dev);
void I2CDevice_send_receive(I2CDevice *dev, uint8_t send_len, uint8_t recv_len, uint8_t *data);

#endif
