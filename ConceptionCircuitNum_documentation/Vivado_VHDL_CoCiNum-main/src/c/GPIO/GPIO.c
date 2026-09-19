
#include "GPIO.h"

typedef volatile struct {
    uint32_t inputs;
    uint32_t outputs;
} GPIORegs;

#define REG(dev, name) ((GPIORegs*)dev->address)->name

void GPIO_init(GPIO *dev) {
    dev->intc_on = (InterruptController*)(dev->address + sizeof(GPIORegs));
    dev->intc_off = dev->intc_on + 1;

    GPIO_disable_interrupts(dev);
    GPIO_clear_events(dev);
    InterruptController_enable(dev->intc_on,  dev->on_evt_mask);
    InterruptController_enable(dev->intc_off, dev->off_evt_mask);
}

void GPIO_enable_interrupts(GPIO *dev) {
    InterruptController_enable(dev->intc, dev->evt_mask);
}

void GPIO_disable_interrupts(GPIO *dev) {
    InterruptController_disable(dev->intc, dev->evt_mask);
}

bool GPIO_has_events(GPIO *dev) {
    return InterruptController_has_events(dev->intc, dev->evt_mask);
}

void GPIO_clear_events(GPIO *dev) {
    InterruptController_clear_events(dev->intc_on,  dev->on_evt_mask);
    InterruptController_clear_events(dev->intc_off, dev->off_evt_mask);
    InterruptController_clear_events(dev->intc, dev->evt_mask);
}

uint32_t GPIO_get_on_events(GPIO *dev) {
    return dev->intc_on->events;
}

uint32_t GPIO_get_off_events(GPIO *dev) {
    return dev->intc_off->events;
}

uint32_t GPIO_get_inputs(GPIO *dev) {
    return REG(dev, inputs);
}

uint32_t GPIO_get_outputs(GPIO *dev) {
    return REG(dev, outputs);
}

uint32_t GPIO_set_outputs(GPIO *dev, uint32_t value) {
    REG(dev, outputs) = value;
}
