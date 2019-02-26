#include <stdint.h>
#include "stm32f103xb.h"
#include "ILI9341/ILI9341Commands.h"
#include "ILI9341/ILI9341Helpers.h"
#include "ILI9341/ILI9341PeripheralMapping.h"
#include "Peripherals/SPI/SPIHelper.h"

extern volatile uint32_t TimeCounter;

void ILI9341_Enable(void)
{
	LCD_RST_PORT->BSRR = LCD_RST_PIN;
}


void ILI9341_Reset(void)
{
	LCD_RST_PORT->BSRR =(uint32_t)LCD_RST_PIN<<16U;
	Delay(400);
	LCD_RST_PORT->BSRR = LCD_RST_PIN;
}


/*Initialize LCD display*/
int ILI9341_Init()
{
	int lRetVal = 0;
	
	ILI9341_Enable();
	ILI9341_Reset();

	//SOFTWARE RESET
	ILI9341_SPI_SS_Enable();

	lRetVal |= ILI9341_Write_Command(0x01);
	Delay(1000);

	//POWER CONTROL A
	lRetVal |= ILI9341_Write_Command(0xCB);
	lRetVal |= ILI9341_Write_Data(0x39);
	lRetVal |= ILI9341_Write_Data(0x2C);
	lRetVal |= ILI9341_Write_Data(0x00);
	lRetVal |= ILI9341_Write_Data(0x34);
	lRetVal |= ILI9341_Write_Data(0x02);

	//POWER CONTROL B
	lRetVal |= ILI9341_Write_Command(0xCF);
	lRetVal |= ILI9341_Write_Data(0x00);
	lRetVal |= ILI9341_Write_Data(0xC1);
	lRetVal |= ILI9341_Write_Data(0x30);

	//DRIVER TIMING CONTROL A
	lRetVal |= ILI9341_Write_Command(0xE8);
	lRetVal |= ILI9341_Write_Data(0x85);
	lRetVal |= ILI9341_Write_Data(0x00);
	lRetVal |= ILI9341_Write_Data(0x78);

	//DRIVER TIMING CONTROL B
	lRetVal |= ILI9341_Write_Command(0xEA);
	lRetVal |= ILI9341_Write_Data(0x00);
	lRetVal |= ILI9341_Write_Data(0x00);

	//POWER ON SEQUENCE CONTROL
	lRetVal |= ILI9341_Write_Command(0xED);
	lRetVal |= ILI9341_Write_Data(0x64);
	lRetVal |= ILI9341_Write_Data(0x03);
	lRetVal |= ILI9341_Write_Data(0x12);
	lRetVal |= ILI9341_Write_Data(0x81);

	//PUMP RATIO CONTROL
	lRetVal |= ILI9341_Write_Command(0xF7);
	lRetVal |= ILI9341_Write_Data(0x20);

	//POWER CONTROL,VRH[5:0]
	lRetVal |= ILI9341_Write_Command(0xC0);
	lRetVal |= ILI9341_Write_Data(0x23);

	//POWER CONTROL,SAP[2:0];BT[3:0]
	lRetVal |= ILI9341_Write_Command(0xC1);
	lRetVal |= ILI9341_Write_Data(0x10);

	//VCM CONTROL
	lRetVal |= ILI9341_Write_Command(0xC5);
	lRetVal |= ILI9341_Write_Data(0x3E);
	lRetVal |= ILI9341_Write_Data(0x28);

	//VCM CONTROL 2
	lRetVal |= ILI9341_Write_Command(0xC7);
	lRetVal |= ILI9341_Write_Data(0x86);

	//MEMORY ACCESS CONTROL
	lRetVal |= ILI9341_Write_Command(0x36);
	lRetVal |= ILI9341_Write_Data(0x48);

	//PIXEL FORMAT
	lRetVal |= ILI9341_Write_Command(0x3A);
	lRetVal |= ILI9341_Write_Data(0x55);

	//FRAME RATIO CONTROL, STANDARD RGB COLOR
	lRetVal |= ILI9341_Write_Command(0xB1);
	lRetVal |= ILI9341_Write_Data(0x00);
	lRetVal |= ILI9341_Write_Data(0x18);

	//DISPLAY FUNCTION CONTROL
	lRetVal |= ILI9341_Write_Command(0xB6);
	lRetVal |= ILI9341_Write_Data(0x08);
	lRetVal |= ILI9341_Write_Data(0x82);
	lRetVal |= ILI9341_Write_Data(0x27);

	//3GAMMA FUNCTION DISABLE
	lRetVal |= ILI9341_Write_Command(0xF2);
	lRetVal |= ILI9341_Write_Data(0x00);

	//GAMMA CURVE SELECTED
	lRetVal |= ILI9341_Write_Command(0x26);
	lRetVal |= ILI9341_Write_Data(0x01);

	//POSITIVE GAMMA CORRECTION
	lRetVal |= ILI9341_Write_Command(0xE0);
	lRetVal |= ILI9341_Write_Data(0x0F);
	lRetVal |= ILI9341_Write_Data(0x31);
	lRetVal |= ILI9341_Write_Data(0x2B);
	lRetVal |= ILI9341_Write_Data(0x0C);
	lRetVal |= ILI9341_Write_Data(0x0E);
	lRetVal |= ILI9341_Write_Data(0x08);
	lRetVal |= ILI9341_Write_Data(0x4E);
	lRetVal |= ILI9341_Write_Data(0xF1);
	lRetVal |= ILI9341_Write_Data(0x37);
	lRetVal |= ILI9341_Write_Data(0x07);
	lRetVal |= ILI9341_Write_Data(0x10);
	lRetVal |= ILI9341_Write_Data(0x03);
	lRetVal |= ILI9341_Write_Data(0x0E);
	lRetVal |= ILI9341_Write_Data(0x09);
	lRetVal |= ILI9341_Write_Data(0x00);

	//NEGATIVE GAMMA CORRECTION
	lRetVal |= ILI9341_Write_Command(0xE1);
	lRetVal |= ILI9341_Write_Data(0x00);
	lRetVal |= ILI9341_Write_Data(0x0E);
	lRetVal |= ILI9341_Write_Data(0x14);
	lRetVal |= ILI9341_Write_Data(0x03);
	lRetVal |= ILI9341_Write_Data(0x11);
	lRetVal |= ILI9341_Write_Data(0x07);
	lRetVal |= ILI9341_Write_Data(0x31);
	lRetVal |= ILI9341_Write_Data(0xC1);
	lRetVal |= ILI9341_Write_Data(0x48);
	lRetVal |= ILI9341_Write_Data(0x08);
	lRetVal |= ILI9341_Write_Data(0x0F);
	lRetVal |= ILI9341_Write_Data(0x0C);
	lRetVal |= ILI9341_Write_Data(0x31);
	lRetVal |= ILI9341_Write_Data(0x36);
	lRetVal |= ILI9341_Write_Data(0x0F);

	//EXIT SLEEP
	lRetVal |= ILI9341_Write_Command(0x11);
	// Delay(120);

	//TURN ON DISPLAY
	lRetVal |= ILI9341_Write_Command(0x29);

	//STARTING ROTATION
	lRetVal |= ILI9341_Write_Command(0x36);
	lRetVal |= ILI9341_Write_Data(SCREEN_HORIZONTAL_1);

	ILI9341_SPI_SS_Disable();
	return lRetVal;
}


