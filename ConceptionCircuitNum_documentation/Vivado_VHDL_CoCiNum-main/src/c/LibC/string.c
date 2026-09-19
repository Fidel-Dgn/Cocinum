
#include "string.h"
#include <stdint.h>

void *memset(void *dest, int c, size_t len) {
    uint8_t *destb = dest;
    for (size_t i = 0; i < len; i ++) {
        *destb ++ = c;
    }
    return dest;
}

void *memcpy(void *dest, const void *src, size_t len) {
    uint8_t *destb = dest;
    const uint8_t *srcb = src;
    for (size_t i = 0; i < len; i ++) {
        *destb ++ = *srcb ++;
    }
    return dest;
}

void *memmove(void *dest, const void *src, size_t len) {
    if (dest < src) {
        memcpy(dest, src, len);
    }
    else {
        uint8_t *destb = dest + len;
        const uint8_t *srcb = src + len;
        for (size_t i = 0; i < len; i ++) {
            *--destb = *--srcb;
        }
    }
    return dest;
}

int memcmp(const void *s1, const void *s2, size_t len) {
    const int8_t *s1b = s1;
    const int8_t *s2b = s2;
    for (size_t i = 0; i < len; i ++) {
        if (*s1b != *s2b) {
            return (int)*s1b - (int)*s2b;
        }
        s1b ++;
        s2b ++;
    }
    return 0;
}
