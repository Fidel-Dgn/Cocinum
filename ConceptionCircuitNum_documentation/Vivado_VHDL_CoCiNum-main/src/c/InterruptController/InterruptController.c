
#include "InterruptController.h"

void InterruptController_enable(InterruptController *dev, uint32_t mask) {
    dev->mask |= mask;
}

void InterruptController_disable(InterruptController *dev, uint32_t mask) {
    dev->mask &= ~mask;
}

bool InterruptController_has_events(InterruptController *dev, uint32_t mask) {
    return !!(dev->events & mask);
}

void InterruptController_clear_events(InterruptController *dev, uint32_t mask) {
    dev->events = mask;
}
