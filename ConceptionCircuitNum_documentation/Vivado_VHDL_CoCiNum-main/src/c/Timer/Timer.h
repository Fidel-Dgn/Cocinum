
#ifndef TIMER_H_
#define TIMER_H_

#include <InterruptController/InterruptController.h>

typedef struct {
    const uint32_t address, evt_mask;
    InterruptController *const intc;
} Timer;

void Timer_init(Timer *dev);
uint32_t Timer_get_limit(Timer *dev);
void Timer_set_limit(Timer *dev, uint32_t limit);
void Timer_enable_interrupts(Timer* dev);
void Timer_disable_interrupts(Timer* dev);
bool Timer_has_events(Timer *dev);
void Timer_clear_event(Timer *dev);
void Timer_delay(Timer *dev);

#endif
