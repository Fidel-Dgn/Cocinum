
#ifndef INT_TO_STRING_H_
#define INT_TO_STRING_H_

#include <stdint.h>

#define INT_TO_STRING_LEN 12

void uint32_to_string(char *dest, uint32_t val);
void int32_to_string(char *dest, int32_t val);

#endif
