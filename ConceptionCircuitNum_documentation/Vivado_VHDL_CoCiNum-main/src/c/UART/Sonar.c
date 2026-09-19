
#include "Sonar.h"

void Sonar_init(Sonar *dev) {
    UART_init(dev->uart);
    dev->scratch = 0;
}

uint8_t Sonar_update(Sonar *dev) {
    if (!UART_has_data(dev->uart)) {
        const char c = UART_getc(dev->uart);
        if (c == '\r') {
            dev->distance = dev->scratch;
            dev->scratch  = 0;
        }
        else if (c >= '0' && c <= '9') {
            dev->scratch = dev->scratch * 10 + c - '0';
        }
    }

    return dev->distance;
}
