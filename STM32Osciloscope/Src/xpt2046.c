#include "main.h"
#include "stm32f1xx_hal.h"
#include "xpt2046.h"

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
extern SPI_HandleTypeDef hspi2;


void xpt2046_enable_irq()
{
	const uint8_t buf[4] = { (XPT2046_CFG_START | XPT2046_CFG_12BIT | XPT2046_CFG_DFR | XPT2046_CFG_MUX(XPT2046_MUX_Y)), 0x00, 0x00, 0x00 };
	TOUCH_CS_PORT->BSRR=(uint32_t)TOUCH_CS_PIN << 16U;
	HAL_SPI_Transmit(HSPI_INSTANCE, (uint8_t*)&buf[0], 4, 10);
	TOUCH_CS_PORT->BSRR=TOUCH_CS_PIN;
}

