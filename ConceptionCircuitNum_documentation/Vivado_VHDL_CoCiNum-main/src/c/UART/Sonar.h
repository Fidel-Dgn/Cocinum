
#ifndef SONAR_H_
#define SONAR_H_

#include "UART.h"

typedef struct {
    UART *uart;
    uint8_t scratch;
    uint8_t distance;
} Sonar;

void Sonar_init(Sonar *dev);
uint8_t Sonar_update(Sonar *dev);

#endif
