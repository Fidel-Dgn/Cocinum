
#include "Joystick.h"

#define JSTK_SET_LED_RGB 0x84

#define JSTK_TRIGGER_MASK 2
#define JSTK_PRESSED_MASK 1

void Joystick_init(SPIDevice *dev) {
    SPIDevice_init(dev);
}

void Joystick_update(SPIDevice *dev, JoystickState *state) {
    uint8_t buffer[] = {JSTK_SET_LED_RGB, state->red, state->green, state->blue, 0};
    SPIDevice_send_receive(dev, sizeof(buffer), buffer, buffer);
    state->x       = (buffer[1] << 8) | buffer[0];
    state->y       = (buffer[3] << 8) | buffer[2];
    state->trigger = buffer[4] & JSTK_TRIGGER_MASK;
    state->pressed = buffer[4] & JSTK_PRESSED_MASK;
}
