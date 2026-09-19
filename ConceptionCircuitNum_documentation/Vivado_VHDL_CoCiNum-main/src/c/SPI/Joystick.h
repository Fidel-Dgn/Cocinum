
#ifndef JOYSTICK_H_
#define JOYSTICK_H_

#include "SPI.h"

typedef struct {
    uint8_t red;
    uint8_t green;
    uint8_t blue;
    uint16_t x;
    uint16_t y;
    bool trigger;
    bool pressed;
} JoystickState;

void Joystick_init(SPIDevice *dev);

void Joystick_update(SPIDevice *dev, JoystickState *state);

#endif
