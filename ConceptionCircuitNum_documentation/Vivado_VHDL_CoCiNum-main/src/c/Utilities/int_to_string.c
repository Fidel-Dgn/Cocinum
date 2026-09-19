
#include "int_to_string.h"

#define DIGITS_MAX (INT_TO_STRING_LEN - 2)

static const uint32_t POWERS_OF_TEN[DIGITS_MAX] = {
    1000000000,
     100000000,
      10000000,
       1000000,
        100000,
         10000,
          1000,
           100,
            10,
             1,
};

void uint32_to_string(char *dest, uint32_t val) {
    if (val == 0) {
        dest[0] = '0';
        dest[1] = '\0';
        return;
    }

    int k = 0;

    for (int n = 0; n < DIGITS_MAX; n ++) {
        const uint32_t p = POWERS_OF_TEN[n];
        unsigned char digit = 0;
        for (int s = 3; s >= 0 && val >= p; s ++) {
            const uint32_t ps = p << s;
            if (val >= ps) {
                digit += 1 << s;
                val   -= ps;
            }
        }
        if (digit > 0 || k > 0) {
            dest[k] = '0' + digit;
            k ++;
        }
    }
    dest[k] = '\0';
}

void int32_to_string(char *dest, int32_t val) {
    if (val < 0) {
        dest[0] = '-';
        val = -val;
        dest ++;
    }
    uint32_to_string(dest, val);
}
