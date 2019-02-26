#include "stm32f103xb.h"
#include "ILI9341/GFX/GFX.h"
#include "ILI9341/ILI9341PeripheralMapping.h"
#include "Peripherals/SPI/SPIHelper.h"
#include "ILI9341/GFX/font.h"

int ILI9341_Draw_Pixel(uint16_t posX, uint16_t posY, uint16_t Color)
{
	register const uint32_t tickstart_local = TimeCounter;
	const uint32_t Timeout = 500;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	/*Send 1 byte column address set command*/
	LCD_DC_PORT->BSRR = (uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x2A;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	LCD_DC_PORT->BSRR = LCD_DC_PIN;
	/*send 4 bytes column address data*/
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(posX>>8);
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(posX);
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)((posX)>>8);
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(posX);
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	
	/*send 1 byte page address set command*/
	LCD_DC_PORT->BSRR = (uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x2B;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	LCD_DC_PORT->BSRR = LCD_DC_PIN;
	/*send 4 bytes page address data*/
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)((posY)>>8);
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(posY);
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)((posY)>>8);
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(posY);
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);

	/*send 1 byte memory write command*/
	LCD_DC_PORT->BSRR = (uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x2C;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	LCD_DC_PORT->BSRR = LCD_DC_PIN;
	/*send 2 bytes color information*/
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(Color>>8);
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(Color);
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	return 0;
}


int ILI9341_Draw_Graph(uint8_t* OldGraph, uint8_t* NewGraph, uint16_t Color)
{
	const uint32_t Timeout = 100U;
	register const uint32_t tickstart_local = TimeCounter;
	uint8_t lGraphPrev, lGraphCur, lGraphDiff; 
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	/*Send 1 byte column address set command*/
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x2A;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	/*send 4 bytes column address data*/
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x00;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)25;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x00;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)25;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	
	/*First clear the old graph pixel*/
	/*send 1 byte page address set command*/
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x2B;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	/*send 4 bytes page address data*/
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x00;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(OldGraph[0]);
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x00;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(OldGraph[0]);
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);

	/*send 1 byte memory write command*/
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x2C;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	/*send 2 bytes color information*/
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(COLOR_1>>8);
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)COLOR_1;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);

	
	/*Write the new graph pixel*/
	/*Send 1 byte page address set command*/
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x2B;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	/*send 4 bytes page address data*/
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x00;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(NewGraph[0]);
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x00;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(NewGraph[0]);
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	
	/*send 1 byte memory write command*/
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x2C;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	/*send 2 bytes color information*/
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(Color>>8);
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)Color;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);


	for(uint8_t i=1; i<230;i++)
	{
		/*Send 1 byte column address set command*/
		LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
		*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x2A;
		SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
		LCD_DC_PORT->BSRR=LCD_DC_PIN;
		/*send 4 bytes column address data*/
		*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x00;
		SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
		*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)i+25;
		SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
		*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x00;
		SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
		*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)i+25;
		SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
		
		/*First clear the old graph pixel*/
		/*send 1 byte page address set command*/
		LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
		*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x2B;
		/*Fetch old graph data from memory while we wait for the byte to send*/
		lGraphPrev = OldGraph[i-1];
		lGraphCur = OldGraph[i];
		SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
		LCD_DC_PORT->BSRR=LCD_DC_PIN;
		/*send 4 bytes page address data*/
		if(lGraphCur>=lGraphPrev)
		{
			*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x00;
			lGraphDiff = lGraphCur-lGraphPrev;
			SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
			*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(lGraphPrev);
			SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
			*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x00;
			SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
			*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(lGraphCur);
			SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
		}
		else
		{
			*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x00;
			lGraphDiff = lGraphPrev-lGraphCur;
			SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
			*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(lGraphCur);
			SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
			*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x00;
			SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
			*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(lGraphPrev);
			SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
		}	

		/*send 1 byte memory write command*/
		LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
		*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x2C;
		SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
		LCD_DC_PORT->BSRR=LCD_DC_PIN;
		/*send 2*diff bytes color information*/
		for(uint8_t j=0; j<=lGraphDiff; j++)
		{
			*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(COLOR_1>>8);
			SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
			*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)COLOR_1;
			SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
		}
		
		/*Write the new graph pixel*/
		/*Send 1 byte page address set command*/
		LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
		*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x2B;
		/*Fetch old graph data from memory while we wait for the byte to send*/
		lGraphPrev = NewGraph[i-1];
		lGraphCur = NewGraph[i];
		SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
		LCD_DC_PORT->BSRR=LCD_DC_PIN;
		/*send 4 bytes page address data*/
		if(lGraphCur>=lGraphPrev)
		{
			*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x00;
			lGraphDiff = lGraphCur-lGraphPrev;
			SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
			*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(lGraphPrev);
			SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
			*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x00;
			SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
			*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(lGraphCur);
			SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
		}
		else
		{
			*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x00;
			lGraphDiff = lGraphPrev-lGraphCur;
			SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
			*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(lGraphCur);
			SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
			*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x00;
			SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
			*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(lGraphPrev);
			SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
		}
		/*send 1 byte memory write command*/
		LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
		*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x2C;
		SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
		LCD_DC_PORT->BSRR=LCD_DC_PIN;
		/*send 2 bytes color information*/
		for(uint8_t j=0; j<=lGraphDiff; j++)
		{
			*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(Color>>8);
			SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
			*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)Color;
			SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
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
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	/*send 1 byte column address set command*/
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x2A;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	/*send 4 bytes column address data*/
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(posX>>8);
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)posX;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(endX>>8);
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)endX;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);

	/*send 1 byte page address set command*/
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x2B;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	/*send 4 bytes page address data*/
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(posY>>8);
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)posY;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(endY>>8);
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)endY;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);

	/*send 1 byte memory write command*/
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)0x2C;
	SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	/*send 2*(endY-posY)*(endX-posX) bytes color information*/
	for(uint16_t i=0; i <= endX - posX; i++)
		for(uint16_t j=0; j <= endY - posY; j++)
		{
			*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)(Color>>8);
			SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
			*((__IO uint8_t*)&LCD_SPI_MODULE->DR) = (uint8_t)Color;
			SPI_Wait_TX_Check_Timeout(tickstart_local, Timeout);
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

int ILI9341_Draw_Line(char* charBuffer, char* oldCharBuffer, int length, int positionXCoord, int positionYCoord)
{
	int status = 0;
	for(int i = 0; i < length; i++)
	{
		 status |= ILI9341_Draw_Char(charBuffer[i], oldCharBuffer[i], positionXCoord+13*i, positionYCoord, COLOR_3, 2);
	}
	return status;
}

int ILI9341_Draw_Background()
{
	int lRetVal = 0;

	lRetVal |= ILI9341_Draw_Square(  0,   0, 320, 120, COLOR_1);
	lRetVal |= ILI9341_Draw_Square(  0, 120, 320, 240, COLOR_1);

	return lRetVal;
}

int ILI9341_Draw_Main_Interface()
{
	int lRetVal = 0;

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

int ILI9341_Delete_Main_Interface()
{
	int lRetVal = 0;

	lRetVal |= ILI9341_Draw_Square(256,   0, 259, 240, COLOR_1);
	lRetVal |= ILI9341_Draw_Square(  0, 200, 320, 204, COLOR_1);
	lRetVal |= ILI9341_Draw_Square(260,  96, 320, 101, COLOR_1);
	lRetVal |= ILI9341_Draw_Square( 86, 204,  89, 240, COLOR_1);
	lRetVal |= ILI9341_Draw_Square(171, 204, 174, 240, COLOR_1);

	/*Amplitude Indicators*/
	lRetVal |= ILI9341_Draw_Square( 25,  95, 255,  96, COLOR_1);
	lRetVal |= ILI9341_Draw_Square( 25,   5, 255,   6, COLOR_1);
	lRetVal |= ILI9341_Draw_Square( 25, 185, 255, 186, COLOR_1);

	lRetVal |= ILI9341_Draw_Square( 15,  94,  24,  97, COLOR_1);
	lRetVal |= ILI9341_Draw_Square( 15,   4,  24,   7, COLOR_1);
	lRetVal |= ILI9341_Draw_Square( 15, 184,  24, 187, COLOR_1);
	lRetVal |= ILI9341_Draw_Square( 15,  49,  23,  51, COLOR_1);
	lRetVal |= ILI9341_Draw_Square( 15, 139,  23, 141, COLOR_1);

	for(int i=5 ; i<186 ; i+=9)
	{
		lRetVal |= ILI9341_Draw_Square( 15 ,i,  20,i+1, COLOR_1);
	}

	/*Timebase indicators*/
	lRetVal |= ILI9341_Draw_Square( 24, 187,  25, 197, COLOR_1);
	lRetVal |= ILI9341_Draw_Square(140, 187, 141, 197, COLOR_1);
	lRetVal |= ILI9341_Draw_Square(254, 187, 255, 197, COLOR_1);
	for(int i=24;i<255;i+=29)
	{
		lRetVal |= ILI9341_Draw_Square(i, 187, i+1, 192,COLOR_1);
	}
	return lRetVal;
}
