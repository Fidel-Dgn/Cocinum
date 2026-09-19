
#include <string.h>
#include "Accelerometer.h"

#define ACL_WRITE_CMD 0x0A
#define ACL_READ_CMD  0x0B

#define ACL_PWRCTL_ADDR  0x2D
#define ACL_PWRCTL_VALUE 0x02
#define ACL_DATA_ADDR    0x0E

const uint8_t power_up_seq[] = {ACL_WRITE_CMD, ACL_PWRCTL_ADDR, ACL_PWRCTL_VALUE};
const uint8_t read_seq[]     = {ACL_READ_CMD, ACL_DATA_ADDR, 0, 0, 0, 0, 0, 0, 0, 0};

void Accelerometer_init(SPIDevice *dev) {
    SPIDevice_init(dev);
    SPIDevice_send_receive(dev, sizeof(power_up_seq), power_up_seq, NULL);
}

void Accelerometer_update(SPIDevice *dev, AccelerometerState *state) {
    uint8_t buffer[sizeof(read_seq)];
    SPIDevice_send_receive(dev, sizeof(read_seq), read_seq, buffer);
    memcpy(state, buffer + 2, sizeof(AccelerometerState));
}
