
#ifndef STRING_H_
#define STRING_H_

#include <stddef.h>

void *memset(void *dest, int c, size_t len);

void *memcpy(void *dest, const void *src, size_t len);

void *memmove(void *dest, const void *src, size_t len);

int memcmp(const void *s1, const void *s2, size_t len);

#endif
