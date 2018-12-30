// #include "main.h"
#include <stdint.h>
#include "stm32f103xb.h"
#include "ili9341.h"
#include "font.h"

#define WAIT_TX_CHECK_TIMEOUT(Timeout) while(!(SPI_MODULE->SR & SPI_SR_TXE )){ if(TimeCounter-tickstart_local > Timeout) return 1;}

extern volatile uint32_t TimeCounter;

void ILI9341_SPI_BeginDraw()
{
	/*chip select ili9341*/
	LCD_CS_PORT->BSRR=(uint32_t)LCD_CS_PIN << 16U;
}


void ILI9341_SPI_StopDraw()
{
	LCD_CS_PORT->BSRR=LCD_CS_PIN;
}


/* Send command (char) to LCD */
int ILI9341_Write_Command(uint8_t Command)
{
	const uint32_t tickstart_local = TimeCounter;
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)Command;
	WAIT_TX_CHECK_TIMEOUT(2)
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	return 0;
}


/* Send Data (char) to LCD */
int ILI9341_Write_Data(uint8_t Data)
{
	const uint32_t tickstart_local = TimeCounter;
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)Data;
	WAIT_TX_CHECK_TIMEOUT(2)
	return 0;
}


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
	ILI9341_SPI_BeginDraw();

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

	ILI9341_SPI_StopDraw();
	return lRetVal;
}


int ILI9341_Draw_Pixel(uint16_t posX, uint16_t posY, uint16_t Color)
{
	register const uint32_t tickstart_local = TimeCounter;
	const uint32_t Timeout = 500;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	/*Send 1 byte column address set command*/
	LCD_DC_PORT->BSRR = (uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x2A;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	LCD_DC_PORT->BSRR = LCD_DC_PIN;
	/*send 4 bytes column address data*/
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(posX>>8);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(posX);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)((posX)>>8);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(posX);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	
	/*send 1 byte page address set command*/
	LCD_DC_PORT->BSRR = (uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x2B;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	LCD_DC_PORT->BSRR = LCD_DC_PIN;
	/*send 4 bytes page address data*/
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)((posY)>>8);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(posY);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)((posY)>>8);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(posY);
	WAIT_TX_CHECK_TIMEOUT(Timeout)

	/*send 1 byte memory write command*/
	LCD_DC_PORT->BSRR = (uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x2C;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	LCD_DC_PORT->BSRR = LCD_DC_PIN;
	/*send 2 bytes color information*/
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(Color>>8);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(Color);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	return 0;
}


int ILI9341_Draw_Graph(uint8_t* OldGraph, uint8_t* NewGraph, uint16_t Color)
{
	const uint32_t Timeout = 100U;
	register const uint32_t tickstart_local = TimeCounter;
	uint8_t lGraphPrev, lGraphCur, lGraphDiff; 
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	/*Send 1 byte column address set command*/
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x2A;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	/*send 4 bytes column address data*/
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x00;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)25;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x00;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)25;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	
	/*First clear the old graph pixel*/
	/*send 1 byte page address set command*/
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x2B;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	/*send 4 bytes page address data*/
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x00;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(OldGraph[0]);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x00;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(OldGraph[0]);
	WAIT_TX_CHECK_TIMEOUT(Timeout)

	/*send 1 byte memory write command*/
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x2C;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	/*send 2 bytes color information*/
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(COLOR_1>>8);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)COLOR_1;
	WAIT_TX_CHECK_TIMEOUT(Timeout)

	
	/*Write the new graph pixel*/
	/*Send 1 byte page address set command*/
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x2B;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	/*send 4 bytes page address data*/
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x00;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(NewGraph[0]);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x00;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(NewGraph[0]);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	
	/*send 1 byte memory write command*/
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x2C;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	/*send 2 bytes color information*/
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(Color>>8);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)Color;
	WAIT_TX_CHECK_TIMEOUT(Timeout)


	for(uint8_t i=1; i<230;i++)
	{
		/*Send 1 byte column address set command*/
		LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
		*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x2A;
		WAIT_TX_CHECK_TIMEOUT(Timeout)
		LCD_DC_PORT->BSRR=LCD_DC_PIN;
		/*send 4 bytes column address data*/
		*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x00;
		WAIT_TX_CHECK_TIMEOUT(Timeout)
		*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)i+25;
		WAIT_TX_CHECK_TIMEOUT(Timeout)
		*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x00;
		WAIT_TX_CHECK_TIMEOUT(Timeout)
		*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)i+25;
		WAIT_TX_CHECK_TIMEOUT(Timeout)
		
		/*First clear the old graph pixel*/
		/*send 1 byte page address set command*/
		LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
		*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x2B;
		/*Fetch old graph data from memory while we wait for the byte to send*/
		lGraphPrev = OldGraph[i-1];
		lGraphCur = OldGraph[i];
		WAIT_TX_CHECK_TIMEOUT(Timeout)
		LCD_DC_PORT->BSRR=LCD_DC_PIN;
		/*send 4 bytes page address data*/
		if(lGraphCur>=lGraphPrev)
		{
			*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x00;
			lGraphDiff = lGraphCur-lGraphPrev;
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(lGraphPrev);
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x00;
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(lGraphCur);
			WAIT_TX_CHECK_TIMEOUT(Timeout)
		}
		else
		{
			*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x00;
			lGraphDiff = lGraphPrev-lGraphCur;
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(lGraphCur);
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x00;
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(lGraphPrev);
			WAIT_TX_CHECK_TIMEOUT(Timeout)
		}	

		/*send 1 byte memory write command*/
		LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
		*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x2C;
		WAIT_TX_CHECK_TIMEOUT(Timeout)
		LCD_DC_PORT->BSRR=LCD_DC_PIN;
		/*send 2*diff bytes color information*/
		for(uint8_t j=0; j<=lGraphDiff; j++)
		{
			*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(COLOR_1>>8);
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)COLOR_1;
			WAIT_TX_CHECK_TIMEOUT(Timeout)
		}
		
		/*Write the new graph pixel*/
		/*Send 1 byte page address set command*/
		LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
		*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x2B;
		/*Fetch old graph data from memory while we wait for the byte to send*/
		lGraphPrev = NewGraph[i-1];
		lGraphCur = NewGraph[i];
		WAIT_TX_CHECK_TIMEOUT(Timeout)
		LCD_DC_PORT->BSRR=LCD_DC_PIN;
		/*send 4 bytes page address data*/
		if(lGraphCur>=lGraphPrev)
		{
			*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x00;
			lGraphDiff = lGraphCur-lGraphPrev;
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(lGraphPrev);
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x00;
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(lGraphCur);
			WAIT_TX_CHECK_TIMEOUT(Timeout)
		}
		else
		{
			*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x00;
			lGraphDiff = lGraphPrev-lGraphCur;
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(lGraphCur);
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x00;
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(lGraphPrev);
			WAIT_TX_CHECK_TIMEOUT(Timeout)
		}
		/*send 1 byte memory write command*/
		LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
		*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x2C;
		WAIT_TX_CHECK_TIMEOUT(Timeout)
		LCD_DC_PORT->BSRR=LCD_DC_PIN;
		/*send 2 bytes color information*/
		for(uint8_t j=0; j<=lGraphDiff; j++)
		{
			*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(Color>>8);
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)Color;
			WAIT_TX_CHECK_TIMEOUT(Timeout)
		}
	}
	int lRetVal = 0;
	lRetVal |= ILI9341_Draw_Square( 25,  95, 255,  96, COLOR_3);
	lRetVal |= ILI9341_Draw_Square( 25,   5, 255,   6, COLOR_3);
	lRetVal |= ILI9341_Draw_Square( 25, 185, 255, 186, COLOR_3);
	return 0;
}


int ILI9341_Draw_Square(	uint16_t posX, uint16_t posY, 
							uint16_t endX, uint16_t endY, 
							uint16_t Color)
{
	register const uint32_t tickstart_local = TimeCounter;
	const uint32_t Timeout = 500;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	/*send 1 byte column address set command*/
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x2A;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	/*send 4 bytes column address data*/
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(posX>>8);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)posX;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(endX>>8);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)endX;
	WAIT_TX_CHECK_TIMEOUT(Timeout)

	/*send 1 byte page address set command*/
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x2B;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	/*send 4 bytes page address data*/
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(posY>>8);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)posY;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(endY>>8);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)endY;
	WAIT_TX_CHECK_TIMEOUT(Timeout)

	/*send 1 byte memory write command*/
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)0x2C;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	/*send 2*(endY-posY)*(endX-posX) bytes color information*/
	for(uint16_t i=0; i <= endX - posX; i++)
		for(uint16_t j=0; j <= endY - posY; j++)
		{
			*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)(Color>>8);
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&SPI_MODULE->DR) = (uint8_t)Color;
			WAIT_TX_CHECK_TIMEOUT(Timeout)
		}
	return 0;
}


int ILI9341_Draw_Char(char Character, char oldCharacter, uint16_t posX, uint16_t posY, uint16_t Color, uint8_t Size) 
{
	int lRetVal = 0;
	
	uint8_t 	function_char, function_old_char;
	uint8_t 	i,j;
	
	function_char = Character;
	function_old_char = oldCharacter;
	
	if (function_char < ' ') {
		function_char = 0;
	} else {
		function_char -= 32;
	}
	
	if (function_old_char < ' ') {
		function_old_char = 0;
	} else {
		function_old_char -= 32;
	}
	
	char temp[CHAR_WIDTH];
	char temp_old[CHAR_WIDTH];
	char concurrent_pixels;
	
	for(uint8_t k = 0; k<CHAR_WIDTH; k++)
	{
		temp[k] = font[function_char][k];
		temp_old[k] = font[function_old_char][k];
		concurrent_pixels = temp[k] & temp_old[k];
		temp[k] = temp[k] & (~concurrent_pixels);
		if(function_old_char != 0)
			temp_old[k] = temp_old[k] & (~concurrent_pixels);
		else
			temp_old[k] = 0xFF & (~concurrent_pixels);
	}
	
	for (j=0; j<CHAR_WIDTH; j++) {
		for (i=0; i<CHAR_HEIGHT; i++) {
			if (temp_old[j] & (1<<i)) 
			{
				if(Size == 1)
				{
					lRetVal |= ILI9341_Draw_Pixel(posX+j, posY+i, COLOR_1);
				}
				else
				{
					lRetVal |= ILI9341_Draw_Square(posX+(j*Size), posY+(i*Size), posX+(j*Size) + Size-1, posY+(i*Size) + Size-1, COLOR_1);
				}
			}
			if (temp[j] & (1<<i)) 
			{
				if(Size == 1)
				{
					lRetVal |= ILI9341_Draw_Pixel(posX+j, posY+i, Color);
				}
				else
				{
					lRetVal |= ILI9341_Draw_Square(posX+(j*Size), posY+(i*Size), posX+(j*Size) + Size-1, posY+(i*Size) + Size-1, Color);
				}
			}
		}
	}
	return lRetVal;
}


int ILI9341_Draw_Main_Interface()
{
	int lRetVal = 0;
	
	lRetVal |= ILI9341_Draw_Square(  0,   0, 320, 120, COLOR_1);
	lRetVal |= ILI9341_Draw_Square(  0, 120, 320, 240, COLOR_1);
	
	lRetVal |= ILI9341_Draw_Square(256,   0, 259, 240, COLOR_2);
	lRetVal |= ILI9341_Draw_Square(  0, 200, 320, 204, COLOR_2);
	lRetVal |= ILI9341_Draw_Square(260,  96, 320, 101, COLOR_2);
	lRetVal |= ILI9341_Draw_Square( 86, 204,  89, 240, COLOR_2);
	lRetVal |= ILI9341_Draw_Square(171, 204, 174, 240, COLOR_2);
	
	/*Amplitude Indicators*/
	lRetVal |= ILI9341_Draw_Square( 25,  95, 255,  96, COLOR_3);
	lRetVal |= ILI9341_Draw_Square( 25,   5, 255,   6, COLOR_3);
	lRetVal |= ILI9341_Draw_Square( 25, 185, 255, 186, COLOR_3);

	lRetVal |= ILI9341_Draw_Square( 15,  94,  24,  97, COLOR_3);
	lRetVal |= ILI9341_Draw_Square( 15,   4,  24,   7, COLOR_3);
	lRetVal |= ILI9341_Draw_Square( 15, 184,  24, 187, COLOR_3);
	lRetVal |= ILI9341_Draw_Square( 15,  49,  23,  51, COLOR_3);
	lRetVal |= ILI9341_Draw_Square( 15, 139,  23, 141, COLOR_3);
	
	for(int i=5 ; i<186 ; i+=9)
	{
		lRetVal |= ILI9341_Draw_Square( 15 ,i,  20,i+1, COLOR_3);
	}
	
	/*Timebase indicators*/
	lRetVal |= ILI9341_Draw_Square( 24, 187,  25, 197, COLOR_3);
	lRetVal |= ILI9341_Draw_Square(140, 187, 141, 197, COLOR_3);
	lRetVal |= ILI9341_Draw_Square(254, 187, 255, 197, COLOR_3);
	for(int i=24;i<255;i+=29)
	{
		lRetVal |= ILI9341_Draw_Square(i, 187, i+1, 192,COLOR_3);
	}
	return lRetVal;
}
