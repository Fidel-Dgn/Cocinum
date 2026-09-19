
#include "SegmentDisplay.h"

void SegmentDisplay_show(SegmentDisplay *dev, const uint8_t digits[], const uint8_t points[]) {
    uint8_t *const data = (uint8_t*)dev->address;
    for (size_t i = 0; i < dev->width; i++) {
        data[i] = digits[i] | (points[i] << 4);
    }
}
