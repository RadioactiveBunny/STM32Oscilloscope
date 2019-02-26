#ifndef INC_XPT2046COMMANDS_H_
#define INC_XPT2046COMMANDS_H_

#define XPT2046_CFG_START   0b10000000

#define XPT2046_CFG_MUX(v)  ((v&0b111) << (4))

#define XPT2046_CFG_8BIT    0b00001000
#define XPT2046_CFG_12BIT   (0)

#define XPT2046_CFG_SER     0b00000100
#define XPT2046_CFG_DFR     (0)

#define XPT2046_CFG_PWR(v)  ((v&0b11))

#define XPT2046_MUX_Y       0b101
#define XPT2046_MUX_X       0b001

#define XPT2046_MUX_Z1      0b011
#define XPT2046_MUX_Z2      0b100

#endif