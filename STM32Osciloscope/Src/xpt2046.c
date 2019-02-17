/*Include lcd header to disable the spi transmit while the lcd is transmiting*/
#include "stm32f103xb.h"
#include "ili9341.h"
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

#define WAIT_TX_CHECK_TIMEOUT(Timeout) while(!(TOUCH_SPI_MODULE->SR & SPI_SR_TXE )){ if(TimeCounter-tickstart_local > Timeout) return 1;}

extern volatile uint32_t TimeCounter;

void XPT2046_SPI_SS_disable()
{
	/*Disable TOUCH SS*/
	TOUCH_CS_PORT->BSRR=TOUCH_CS_PIN;
	/*Enable LCD SS*/
	LCD_CS_PORT->BSRR = (uint32_t)LCD_CS_PIN << 16U;
}

void XPT2046_SPI_SS_enable()
{
	/*First disable LCD SS*/
	LCD_CS_PORT->BSRR = (uint32_t)LCD_CS_PIN;
	/*Enable TOUCH SS*/
	TOUCH_CS_PORT->BSRR=(uint32_t)TOUCH_CS_PIN << 16U;
}

int XPT2046_enable_irq()
{
	const uint32_t tickstart_local = TimeCounter;
	const uint8_t buf[4] = { (XPT2046_CFG_START | XPT2046_CFG_12BIT | XPT2046_CFG_DFR | XPT2046_CFG_MUX(XPT2046_MUX_Y)), 0x00, 0x00, 0x00 };
	/*SPI Enable touch and disable LCD*/
	TOUCH_CS_PORT->BSRR=(uint32_t)TOUCH_CS_PIN << 16U;
	LCD_CS_PORT->BSRR=LCD_CS_PIN;
	WAIT_TX_CHECK_TIMEOUT(10)
	for(int i=0;i<4;i++)
	{
		*((__IO uint8_t*)&TOUCH_SPI_MODULE->DR) = buf[i];
		WAIT_TX_CHECK_TIMEOUT(50)
	}
	/*SPI Disable touch and enble LCD*/
	TOUCH_CS_PORT->BSRR=TOUCH_CS_PIN;
	LCD_CS_PORT->BSRR=(uint32_t)LCD_CS_PIN << 16;
	return 0;
}

