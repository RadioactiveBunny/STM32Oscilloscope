#ifndef ILI9341_H
#define ILI9341_H

#define 	HSPI_INSTANCE 	&hspi2
#define 	LCD_CS_PORT 	GPIOA
#define 	LCD_CS_PIN  	GPIO_PIN_15
#define 	LCD_DC_PORT 	GPIOA
#define 	LCD_DC_PIN 		GPIO_PIN_12
#define 	LCD_RST_PORT	GPIOA
#define 	LCD_RST_PIN		GPIO_PIN_11

#define 	SCREEN_VERTICAL_1		0x40|0x08
#define 	SCREEN_HORIZONTAL_1		0x20|0x08
#define 	SCREEN_VERTICAL_2		0x80|0x08
#define 	SCREEN_HORIZONTAL_2		0x40|0x80|0x20|0x08


HAL_StatusTypeDef ILI9341_Init(SPI_HandleTypeDef* hspi_handle);
void ILI9341_Enable(void);
HAL_StatusTypeDef ILI9341_SPI_BeginDraw(SPI_HandleTypeDef* hspi_handle);
HAL_StatusTypeDef ILI9341_SPI_StopDraw(SPI_HandleTypeDef* hspi_handle);
HAL_StatusTypeDef ILI9341_Draw_Char(SPI_HandleTypeDef* hspi_handle, char Character, char oldCharacter, uint16_t posX, uint16_t posY, uint16_t Color, uint8_t Size);
HAL_StatusTypeDef ILI9341_Draw_Horizontal_Line(SPI_HandleTypeDef* hspi_handle, uint16_t posX, uint16_t posY, uint16_t length, uint16_t Color);
HAL_StatusTypeDef ILI9341_Draw_Vertical_Line(SPI_HandleTypeDef* hspi_handle, uint16_t posX, uint16_t posY, uint16_t length, uint16_t Color);
HAL_StatusTypeDef ILI9341_Draw_Dotted_Vertical_Line(SPI_HandleTypeDef* hspi_handle, uint16_t posX, uint16_t posY , uint16_t length, uint16_t Color);
HAL_StatusTypeDef ILI9341_Draw_Dotted_Horizontal_Line(SPI_HandleTypeDef* hspi_handle, uint16_t posX, uint16_t posY, uint16_t length, uint16_t Color);
HAL_StatusTypeDef ILI9341_Draw_Square(SPI_HandleTypeDef* hspi_handle, uint16_t posX, uint16_t posY, uint16_t sizeX, uint16_t sizeY, uint16_t Color);
HAL_StatusTypeDef ILI9341_Draw_Graph(SPI_HandleTypeDef* hspi_handle,uint8_t* OldGraph,uint8_t* NewGraph, uint16_t Color);
HAL_StatusTypeDef ILI9341_Draw_Main_Interface(SPI_HandleTypeDef* hspi_handle);

#endif
