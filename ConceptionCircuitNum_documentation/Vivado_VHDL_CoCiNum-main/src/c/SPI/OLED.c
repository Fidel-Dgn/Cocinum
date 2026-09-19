
#include "OLED.h"

#define CMD_DRAWLINE                    0x21
#define CMD_DRAWRECTANGLE               0x22
#define CMD_COPYWINDOW                  0x23
#define CMD_DIMWINDOW                   0x24
#define CMD_CLEARWINDOW                 0x25
#define CMD_FILLWINDOW                  0x26
#define CMD_CONTINUOUSSCROLLINGSETUP    0x27
#define CMD_DEACTIVESCROLLING           0x2E
#define CMD_ACTIVESCROLLING             0x2F
#define CMD_SETCOLUMNADDRESS            0x15
#define CMD_SETROWADDRESS               0x75
#define CMD_SETCONTRASTA                0x81
#define CMD_SETCONTRASTB                0x82
#define CMD_SETCONTRASTC                0x83
#define CMD_MASTERCURRENTCONTROL        0x87
#define CMD_SETPRECHARGESPEEDA          0x8A
#define CMD_SETPRECHARGESPEEDB          0x8B
#define CMD_SETPRECHARGESPEEDC          0x8C
#define CMD_SETREMAP                    0xA0
#define CMD_SETDISPLAYSTARTLINE         0xA1
#define CMD_SETDISPLAYOFFSET            0xA2
#define CMD_NORMALDISPLAY               0xA4
#define CMD_ENTIREDISPLAYON             0xA5
#define CMD_ENTIREDISPLAYOFF            0xA6
#define CMD_INVERSEDISPLAY              0xA7
#define CMD_SETMULTIPLEXRATIO           0xA8
#define CMD_DIMMODESETTING              0xAB
#define CMD_SETMASTERCONFIGURE          0xAD
#define CMD_DIMMODEDISPLAYON            0xAC
#define CMD_DISPLAYOFF                  0xAE
#define CMD_DISPLAYON    				0xAF
#define CMD_POWERSAVEMODE               0xB0
#define CMD_PHASEPERIODADJUSTMENT       0xB1
#define CMD_DISPLAYCLOCKDIV             0xB3
#define CMD_SETGRAYSCALETABLE           0xB8
#define CMD_ENABLELINEARGRAYSCALETABLE  0xB9
#define CMD_SETPRECHARGEVOLTAGE         0xBB
#define CMD_SETVVOLTAGE                 0xBE

// Voir : https://digilent.com/reference/pmod/pmodoledrgb/reference-manual
const uint8_t POWER_UP[] = {
    1, 0xFD,
    1, 0x12,
    1, CMD_DISPLAYOFF,
    2, CMD_SETREMAP,              0x72,
    2, CMD_SETDISPLAYSTARTLINE,   0x00,
    2, CMD_SETDISPLAYOFFSET,      0x00,
    1, CMD_NORMALDISPLAY,
    2, CMD_SETMULTIPLEXRATIO,     0x3F,
    2, CMD_SETMASTERCONFIGURE,    0x8E,
    2, CMD_POWERSAVEMODE,         0x0B,
    2, CMD_PHASEPERIODADJUSTMENT, 0x31,
    2, CMD_DISPLAYCLOCKDIV,       0xF0,
    2, CMD_SETPRECHARGESPEEDA,    0x64,
    2, CMD_SETPRECHARGESPEEDB,    0x78,
    2, CMD_SETPRECHARGESPEEDC,    0x64,
    2, CMD_SETPRECHARGEVOLTAGE,   0x3A,
    2, CMD_SETVVOLTAGE,           0x3E,
    2, CMD_MASTERCURRENTCONTROL,  0x06,
    2, CMD_SETCONTRASTA,          0x91,
    2, CMD_SETCONTRASTB,          0x50,
    2, CMD_SETCONTRASTC,          0x7D,
    1, CMD_DEACTIVESCROLLING
};

static void OLED_wait(OLED *dev, int ms) {
    uint32_t saved_limit = Timer_get_limit(dev->spi->timer);
    Timer_set_limit(dev->spi->timer, dev->cycles_1ms - 1);
    for (int n = 0; n < ms; n ++) {
        Timer_delay(dev->spi->timer);
    }
    Timer_set_limit(dev->spi->timer, saved_limit);
}

void OLED_init(OLED *dev) {
    uint8_t *ctrl = (uint8_t*)dev->address;

    // Bring data/command pin low (pmod_a7)
    // Bring reset pin high (pmod_a8)
    // Bring VCC enable pin low (pmod_a9)
    // Bring Pmod enable pin high (pmod_a10) for 20 ms
    *ctrl = 0xA;
    OLED_wait(dev, 20);

    // Bring reset pin low (pmod_a8) for at least 3 us
    *ctrl = 0x8;
    OLED_wait(dev, 1);

    // Bring reset pin high (pmod_a8) for at least 3 us
    *ctrl = 0xA;
    OLED_wait(dev, 1);

    // Execute power-up SPI sequence.
    SPIDevice_init(dev->spi);
    const uint8_t *ptr = POWER_UP;
    const uint8_t *ptr_end = POWER_UP + sizeof(POWER_UP);
    while (ptr < ptr_end) {
        uint8_t n = *ptr++;
        SPIDevice_send_receive(dev->spi, n, ptr, NULL);
        ptr += n;
    }

    OLED_clear_all(dev);

    // Bring VCC enable pin high (pmod_a9) for 25 ms
    *ctrl = 0xE;
    OLED_wait(dev, 25);

    uint8_t cmd = CMD_DISPLAYON;
    SPIDevice_send_receive(dev->spi, 1, &cmd, NULL);

    // Wait for at least 100 ms.
    OLED_wait(dev, 100);
}

void OLED_clear_all(OLED *dev) {
    OLED_clear(dev, 0, 0, OLED_WIDTH - 1, OLED_HEIGHT - 1);
}

void OLED_clear(OLED *dev, uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2) {
    const uint8_t cmd[] = {
        CMD_CLEARWINDOW,
        x1, y1,
        x2, y2
    };

    SPIDevice_send_receive(dev->spi, sizeof(cmd), cmd, NULL);
    OLED_wait(dev, 5);
}

void OLED_set_raw_color(uint8_t *dest, OLEDColor color) {
    uint16_t color16 = ((color.red   & 0x1F) << 11) |
                       ((color.green & 0x3F) <<  5) |
                        (color.blue  & 0x1F);
    dest[0] = color16 >> 8;
    dest[1] = color16 & 0xFF;
}

void OLED_draw_pixel(OLED *dev, uint8_t x, uint8_t y, OLEDColor color) {
    uint8_t cmd[] = {
        CMD_SETCOLUMNADDRESS, x, OLED_WIDTH  - 1,
        CMD_SETROWADDRESS,    y, OLED_HEIGHT - 1
    };
    SPIDevice_send_receive(dev->spi, sizeof(cmd), cmd, NULL);

    uint8_t data[2];
    OLED_set_raw_color(data, color);

    uint8_t *ctrl = (uint8_t*)dev->address;
    *ctrl = 0xF;
    SPIDevice_send_receive(dev->spi, sizeof(data), data, NULL);
    *ctrl = 0xE;
    OLED_wait(dev, 5);
}

void OLED_draw_line(OLED *dev, uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, OLEDColor color) {
    uint8_t cmd[] = {
        CMD_DRAWLINE,
        x1, y1,
        x2, y2,
        color.red, color.green, color.blue
    };
    SPIDevice_send_receive(dev->spi, sizeof(cmd), cmd, NULL);
    OLED_wait(dev, 5);
}

void OLED_draw_rect(OLED *dev, uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, OLEDColor color) {
    uint8_t cmd[] = {
        CMD_FILLWINDOW, 0, CMD_DRAWRECTANGLE,
        x1, y1,
        x2, y2,
        color.red, color.green, color.blue,
        0, 0, 0
    };
    SPIDevice_send_receive(dev->spi, sizeof(cmd), cmd, NULL);
    OLED_wait(dev, 5);
}

void OLED_fill_rect(OLED *dev, uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, OLEDColor color, OLEDColor fill_color) {
    uint8_t cmd[] = {
        CMD_FILLWINDOW, 1, CMD_DRAWRECTANGLE,
        x1, y1,
        x2, y2,
        color.red, color.green, color.blue,
        fill_color.red, fill_color.green, fill_color.blue
    };
    SPIDevice_send_receive(dev->spi, sizeof(cmd), cmd, NULL);
    OLED_wait(dev, 5);
}

void OLED_copy(OLED *dev, uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, uint8_t x3, uint8_t y3) {
    uint8_t cmd[] = {
        CMD_COPYWINDOW,
        x1, y1,
        x2, y2,
        x3, y3
    };
    SPIDevice_send_receive(dev->spi, sizeof(cmd), cmd, NULL);
    OLED_wait(dev, 5);
}

void OLED_set_bitmap(uint8_t *dest, size_t len, const OLEDColor *src) {
    for (size_t n = 0; n < len; n ++) {
        OLED_set_raw_color(dest, src[n]);
        dest += 2;
    }
}

void OLED_draw_bitmap(OLED *dev, uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, size_t len, const uint8_t *data) {
    uint8_t cmd[] = {
        CMD_SETCOLUMNADDRESS, x1, x2,
        CMD_SETROWADDRESS,    y1, y2
    };
    SPIDevice_send_receive(dev->spi, sizeof(cmd), cmd, NULL);

    uint8_t *ctrl = (uint8_t*)dev->address;
    *ctrl = 0xF;
    SPIDevice_send_receive(dev->spi, len, data, NULL);
    *ctrl = 0xE;
    OLED_wait(dev, 5);
}
