#include <stdint.h>
#include "stm32f103xb.h"
#include "ili9341.h"
#include "xpt2046.h"

void PeripheralConfiguration();

int main()
{
	PeripheralConfiguration();
	GPIOC->BSRR = GPIO_BSRR_BS13;
	ILI9341_Enable();
	ILI9341_Init();
	ILI9341_SPI_SS_Enable();
	ILI9341_Draw_Background();
	XPT2046_enable_irq();
	Delay(1000);
	while(1)
	{
		// uint8_t char_buffer[6]="      ";
		// uint8_t char_buffer2[6]="BBLCHE";
		// uint8_t *chb;
		// static uint8_t old_char_buffer[6]={0x00,0x00,0x00,0x00,0x00,0x00};
		// if(GPIOB->IDR & TOUCH_PEN_PIN)
		// {
			// chb = char_buffer;
			// GPIOC->BSRR = GPIO_BSRR_BS13;
			// ILI9341_Draw_Main_Interface();
		// }
		// else
		// {
			// chb = char_buffer2;
			// GPIOC->BSRR = GPIO_BSRR_BR13;
			// ILI9341_Delete_Main_Interface();
		// }
		// for(int i=0;i<sizeof(char_buffer); i++)
		// {
			// ILI9341_Draw_Char(chb[i],old_char_buffer[i], 5+13*i,210, COLOR_3, 2);
		// }
		// memcpy(old_char_buffer,chb,sizeof(char_buffer));
		Delay(500);
		ILI9341_Delete_Main_Interface();
#ifdef PORTC13_PROBING
		// GPIOC->BSRR = GPIO_BSRR_BR13;
		// GPIOC->BSRR = GPIO_BSRR_BS13;
#endif
	}
	return 0;
}

void EXTI4_IRQHandler()
{
	GPIOC->BSRR = GPIO_BSRR_BR13;
	ILI9341_Draw_Main_Interface();
	GPIOC->BSRR = GPIO_BSRR_BS13;
	EXTI->PR |= EXTI_PR_PR4;
}
