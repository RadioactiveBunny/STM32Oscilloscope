#include <stdint.h>
#include "stm32f103xb.h"
#include "ili9341.h"

void PeripheralConfiguration();

int main()
{
	PeripheralConfiguration();
	ILI9341_Enable();
	ILI9341_Init();
	ILI9341_SPI_BeginDraw();
	ILI9341_Draw_Main_Interface();
	while(1)
	{
		uint8_t char_buffer[6]="Bingo!";
		static uint8_t old_char_buffer[6]={0x00,0x00,0x00,0x00,0x00,0x00};
		for(int i=0;i<sizeof(char_buffer); i++)
		{
			ILI9341_Draw_Char(char_buffer[i],old_char_buffer[i], 5+13*i,210, COLOR_3, 2);
		}
		memcpy(old_char_buffer,char_buffer,sizeof(char_buffer));
		
#ifdef PORTC13_PROBING
		GPIOC->BSRR = GPIO_BSRR_BR13;
		GPIOC->BSRR = GPIO_BSRR_BS13;
#endif
	}
	return 0;
}
