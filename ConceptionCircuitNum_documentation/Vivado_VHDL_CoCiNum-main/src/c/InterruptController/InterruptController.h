
#ifndef INTERRUPT_CONTROLLER_H_
#define INTERRUPT_CONTROLLER_H_

#include <stdint.h>
#include <stdbool.h>

#define EVT_MASK_OFF 0
#define EVT_MASK(n) (1 << n)

typedef volatile struct {
    uint32_t mask;
    uint32_t events;
} InterruptController;

void InterruptController_enable(InterruptController *dev, uint32_t mask);
void InterruptController_disable(InterruptController *dev, uint32_t mask);
bool InterruptController_has_events(InterruptController *dev, uint32_t mask);
void InterruptController_clear_events(InterruptController *dev, uint32_t mask);

#endif
