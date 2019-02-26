#ifndef INC_ILI9341HELPERS_H_
#define INC_ILI9341HELPERS_H_

#include "ILI9341/ILI9341PeripheralMapping.h"
#include "XPT2046/XPT2046PeripheralMapping.h"
#include "Peripherals/SPI/SPIHelper.h"

static inline void ILI9341_SPI_SS_Enable()
{
	/*chip select xpt2046 deactivated(put on HIGH)*/
	TOUCH_CS_PORT->BSRR = (uint32_t)TOUCH_CS_PIN;
	/*chip select ili9341 activated(put on LOW)*/
	LCD_CS_PORT->BSRR = (uint32_t)LCD_CS_PIN << 16U;
}

static inline void ILI9341_SPI_SS_Disable()
{
	/*chip select ili9341 deactivated(put on HIGH)*/
	LCD_CS_PORT->BSRR = (uint32_t)LCD_CS_PIN;
	/*chip select xpt2046 activated(put on LOW)*/
	TOUCH_CS_PORT->BSRR = (uint32_t)TOUCH_CS_PIN<<16U;
}

/* Send command (char) to LCD */
static inline int ILI9341_Write_Command(uint8_t Command)
{
	const uint32_t tickstart_local = TimeCounter;
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)Command;
	SPI_Wait_TX_Check_Timeout(tickstart_local, 2);
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	return 0;
}

/* Send Data (char) to LCD */
static inline int ILI9341_Write_Data(uint8_t Data)
{
	const uint32_t tickstart_local = TimeCounter;
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)Data;
	SPI_Wait_TX_Check_Timeout(tickstart_local, 2);
	return 0;
}


#endif /*INC_ILI9341HELPERS_H_*/
