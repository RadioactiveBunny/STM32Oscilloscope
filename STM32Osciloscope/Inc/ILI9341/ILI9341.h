#ifndef INC_ILI9341_H_
#define INC_ILI9341_H_

/*Just put it all here and include this file in main*/
#include "ILI9341Commands.h"
#include "ILI9341/ILI9341Helpers.h"
#include "ILI9341/ILI9341PeripheralMapping.h"
#include "ILI9341/GFX/GFX.h"
#include "ILI9341/GFX/font.h"

void ILI9341_Enable(void);
int ILI9341_Init();

#endif /*INC_ILI9341_H_*/