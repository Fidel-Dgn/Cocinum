
#ifndef SEGMENT_DISPLAY_H_
#define SEGMENT_DISPLAY_H_

#include <stdint.h>
#include <stddef.h>

typedef struct {
    const uint32_t address;
    const size_t width;
} SegmentDisplay;

void SegmentDisplay_show(SegmentDisplay *display, const uint8_t digits[], const uint8_t points[]);

#endif
