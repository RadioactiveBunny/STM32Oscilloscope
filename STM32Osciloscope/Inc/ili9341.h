#ifndef ILI9341_H
#define ILI9341_H

#define 	LCD_SPI_MODULE 	SPI2
#define 	LCD_CS_PORT 	GPIOA
#define 	LCD_CS_PIN  	GPIO_BSRR_BS15
#define 	LCD_DC_PORT 	GPIOA
#define 	LCD_DC_PIN 		GPIO_BSRR_BS12
#define 	LCD_RST_PORT	GPIOA
#define 	LCD_RST_PIN		GPIO_BSRR_BS11

#define COLOR_1 0x3888
#define COLOR_2 0x3AC3//0x7BA6
#define COLOR_3 0x62E3//0x62E3

#define 	SCREEN_VERTICAL_1		0x40|0x08
#define 	SCREEN_HORIZONTAL_1		0x20|0x08
#define 	SCREEN_VERTICAL_2		0x80|0x08
#define 	SCREEN_HORIZONTAL_2		0x40|0x80|0x20|0x08

void ILI9341_SPI_SS_Enable();
void ILI9341_SPI_SS_Disable();
void ILI9341_Enable(void);
int ILI9341_Init();
int ILI9341_Draw_Char( char Character, char oldCharacter, uint16_t posX, uint16_t posY, uint16_t Color, uint8_t Size);
int ILI9341_Draw_Horizontal_Line( uint16_t posX, uint16_t posY, uint16_t length, uint16_t Color);
int ILI9341_Draw_Vertical_Line( uint16_t posX, uint16_t posY, uint16_t length, uint16_t Color);
int ILI9341_Draw_Dotted_Vertical_Line( uint16_t posX, uint16_t posY , uint16_t length, uint16_t Color);
int ILI9341_Draw_Dotted_Horizontal_Line( uint16_t posX, uint16_t posY, uint16_t length, uint16_t Color);
int ILI9341_Draw_Square( uint16_t posX, uint16_t posY, uint16_t sizeX, uint16_t sizeY, uint16_t Color);
int ILI9341_Draw_Graph(uint8_t* OldGraph,uint8_t* NewGraph, uint16_t Color);
int ILI9341_Draw_Main_Interface();
int ILI9341_Draw_Background();
int ILI9341_Delete_Main_Interface();

#endif
