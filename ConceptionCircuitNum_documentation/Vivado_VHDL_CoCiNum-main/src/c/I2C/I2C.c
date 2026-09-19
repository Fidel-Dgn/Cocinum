
#include "I2C.h"

typedef volatile struct {
    uint32_t data;
    uint32_t control;
} I2CMasterRegs;

#define REG(dev, name) ((I2CMasterRegs*)dev->address)->name

void I2CMaster_init(I2CMaster *dev) {
    InterruptController_disable(dev->intc, dev->evt_mask);
    InterruptController_clear_events(dev->intc, dev->evt_mask);
}

void I2CMaster_send_receive(I2CMaster *dev, uint8_t slave_address, uint8_t send_len, uint8_t recv_len, uint8_t *data) {
    REG(dev, control) = ((uint32_t)send_len << 16) | ((uint32_t)recv_len << 8) | slave_address;

    // Copier data[0..send_len-1] dans dev->data.
    // Premier octet aligné à gauche.
    uint32_t buf = 0;
    for (int n = 0; n < 4; n ++) {
        if (n < send_len) {
            buf |= data[n];
        }
        buf <<= 8;
    }
    REG(dev, data) = buf;

    while (!InterruptController_has_events(dev->intc, dev->evt_mask));
    InterruptController_clear_events(dev->intc, dev->evt_mask);

    // Copier dev->data dans data[0..recv_len-1].
    // Dernier octet aligné à droite.
    buf = REG(dev, data);
    for (int n = 0; n < recv_len; n ++) {
        data[recv_len - n - 1] = buf & 0xFF;
        buf >>= 8;
    }
}

void I2CDevice_init(I2CDevice *dev) {
    I2CMaster_init(dev->i2c);
}

void I2CDevice_send_receive(I2CDevice *dev, uint8_t send_len, uint8_t recv_len, uint8_t *data) {
    I2CMaster_send_receive(dev->i2c, dev->slave_address, send_len, recv_len, data);
}
