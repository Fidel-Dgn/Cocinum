
#ifndef OLED_H_
#define OLED_H_

#include "SPI.h"

#define OLED_WIDTH   96
#define OLED_HEIGHT  64
#define OLED_RGB_MAX 31

typedef struct {
    uint32_t address;
    uint32_t cycles_1ms;
    SPIDevice *spi;
} OLED;

typedef struct {
    uint8_t red;
    uint8_t green;
    uint8_t blue;
} OLEDColor;

void OLED_init(OLED *dev);
void OLED_clear_all(OLED *dev);
void OLED_clear(OLED *dev, uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2);
void OLED_draw_pixel(OLED *dev, uint8_t x, uint8_t y, OLEDColor color);
void OLED_draw_line(OLED *dev, uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, OLEDColor color);
void OLED_draw_rect(OLED *dev, uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, OLEDColor color);
void OLED_fill_rect(OLED *dev, uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, OLEDColor color, OLEDColor fill_color);
void OLED_copy(OLED *dev, uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, uint8_t x3, uint8_t y3);
void OLED_set_bitmap(uint8_t *dest, size_t len, const OLEDColor *src);
void OLED_draw_bitmap(OLED *dev, uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, size_t len, const uint8_t *data);

#endif
