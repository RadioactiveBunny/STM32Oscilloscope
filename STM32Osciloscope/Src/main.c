#include <stdint.h>
#include "stm32f103xb.h"
#include "ili9341.h"

void PeripheralConfiguration();

int main()
{
	PeripheralConfiguration();
	ILI9341_Enable();
	ILI9341_Init();
	while(1)
	{
		// *((__IO uint8_t*)&SPI2->DR) = (uint8_t)0xFF;
		// while(!(SPI_MODULE->SR & SPI_SR_TXE )){}
		// *((__IO uint8_t*)&SPI2->DR) = (uint8_t)0x55;
		// while(!(SPI_MODULE->SR & SPI_SR_TXE )){}
		// *((__IO uint8_t*)&SPI2->DR) = (uint8_t)0x00;
		// while(!(SPI_MODULE->SR & SPI_SR_TXE )){}
		ILI9341_Draw_Main_Interface();
#ifdef PORTC13_PROBING
		GPIOC->BSRR = GPIO_BSRR_BR13;
		GPIOC->BSRR = GPIO_BSRR_BS13;
#endif
	}
	return 0;
}
