#ifndef INC_GFX_H_
#define INC_GFX_H_

#define COLOR_1 0x3888
#define COLOR_2 0x3AC3//0x7BA6
#define COLOR_3 0x62E3//0x62E3

int ILI9341_Draw_Char( char Character, char oldCharacter, uint16_t posX, uint16_t posY, uint16_t Color, uint8_t Size);
int ILI9341_Draw_CharLine(char* charBuffer, char* oldCharBuffer, int length, int positionXCoord, int positionYCoord);
int ILI9341_Draw_Horizontal_Line( uint16_t posX, uint16_t posY, uint16_t length, uint16_t Color);
int ILI9341_Draw_Vertical_Line( uint16_t posX, uint16_t posY, uint16_t length, uint16_t Color);
int ILI9341_Draw_Dotted_Vertical_Line( uint16_t posX, uint16_t posY , uint16_t length, uint16_t Color);
int ILI9341_Draw_Dotted_Horizontal_Line( uint16_t posX, uint16_t posY, uint16_t length, uint16_t Color);
int ILI9341_Draw_Square( uint16_t posX, uint16_t posY, uint16_t sizeX, uint16_t sizeY, uint16_t Color);
int ILI9341_Draw_Graph(uint8_t* OldGraph,uint8_t* NewGraph, uint16_t Color);
int ILI9341_Draw_Main_Interface();
int ILI9341_Draw_Background();
int ILI9341_Delete_Main_Interface();

#endif /*INC_GFX_H_*/