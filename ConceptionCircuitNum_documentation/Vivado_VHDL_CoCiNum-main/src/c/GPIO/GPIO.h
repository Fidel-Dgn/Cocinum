
#ifndef GPIO_H_
#define GPIO_H_

#include <InterruptController/InterruptController.h>

typedef struct {
    const uint32_t address, evt_mask;
    const uint32_t on_evt_mask, off_evt_mask;
    InterruptController *const intc;
    InterruptController *intc_on;
    InterruptController *intc_off;
} GPIO;

void GPIO_init(GPIO *dev);
void GPIO_enable_interrupts(GPIO *dev);
void GPIO_disable_interrupts(GPIO *dev);
bool GPIO_has_events(GPIO *dev);
void GPIO_clear_events(GPIO *dev);
uint32_t GPIO_get_on_events(GPIO *dev);
uint32_t GPIO_get_off_events(GPIO *dev);
uint32_t GPIO_get_inputs(GPIO *dev);
uint32_t GPIO_get_outputs(GPIO *dev);
uint32_t GPIO_set_outputs(GPIO *dev, uint32_t value);

#endif
