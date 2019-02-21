#include <stdint.h>
#include "stm32f103xb.h"
#include "ili9341.h"
#include "xpt2046.h"

extern uint16_t touchValueX;
extern uint16_t touchValueY;
extern uint16_t touchValueZ1;
extern uint16_t touchValueZ2;

int main()
{
	PeripheralConfiguration();
	GPIOC->BSRR = GPIO_BSRR_BS13;
	ILI9341_Enable();
	ILI9341_Init();
	ILI9341_SPI_SS_Enable();
	ILI9341_Draw_Background();
	XPT2046_enable_irq();
	internalInterruptConfig();
	Delay(1000);
	while(1)
	{
		static char charBufferTouchValueX[6] = "      ";
		static char charBufferTouchValueY[6] = "      ";
		static char charBufferTouchValueZ1[6] = "      ";
		static char charBufferTouchValueZ2[6] = "      ";

		static char oldCharBufferTouchValueX[6] = "      ";
		static char oldCharBufferTouchValueY[6] = "      ";
		static char oldCharBufferTouchValueZ1[6] = "      ";
		static char oldCharBufferTouchValueZ2[6] = "      ";

		sprintf(charBufferTouchValueX,"%d",touchValueX);
		sprintf(charBufferTouchValueY,"%d",touchValueY);
		sprintf(charBufferTouchValueZ1,"%d",touchValueZ1);
		sprintf(charBufferTouchValueZ2,"%d",touchValueZ2);

		ILI9341_Draw_Line(charBufferTouchValueX, oldCharBufferTouchValueX, sizeof(charBufferTouchValueX), 5, 10);
		ILI9341_Draw_Line(charBufferTouchValueY, oldCharBufferTouchValueY, sizeof(charBufferTouchValueY), 5, 30);
		ILI9341_Draw_Line(charBufferTouchValueZ1, oldCharBufferTouchValueZ1, sizeof(charBufferTouchValueZ1), 5, 50);
		ILI9341_Draw_Line(charBufferTouchValueZ2, oldCharBufferTouchValueZ2, sizeof(charBufferTouchValueZ2), 5, 70);

		memcpy(oldCharBufferTouchValueX, charBufferTouchValueX, sizeof(charBufferTouchValueX));
		memcpy(oldCharBufferTouchValueY, charBufferTouchValueY, sizeof(charBufferTouchValueY));
		memcpy(oldCharBufferTouchValueZ1, charBufferTouchValueZ1, sizeof(charBufferTouchValueZ1));
		memcpy(oldCharBufferTouchValueZ2, charBufferTouchValueZ2, sizeof(charBufferTouchValueZ2));

		ILI9341_Draw_Square(	100, 100,
									110, 110,
									COLOR_3);
		Delay(500);

		ILI9341_Draw_Square(	100, 100,
									110, 110,
									COLOR_1);
		Delay(500);

#ifdef PORTC13_PROBING
		// GPIOC->BSRR = GPIO_BSRR_BR13;
		// GPIOC->BSRR = GPIO_BSRR_BS13;
#endif
	}
	return 0;
}
