#ifndef XPT2046_H
#define XPT2046_H

#define 	TOUCH_SPI_MODULE 	SPI2

#define 	TOUCH_CS_PORT 		GPIOB
#define 	TOUCH_CS_PIN  		GPIO_BSRR_BS3

#define 	TOUCH_PEN_PORT		GPIOB
#define 	TOUCH_PEN_PIN		GPIO_IDR_IDR4

#define		CMD_RDX				0x90
#define		CMD_RDX1			0x91
#define		CMD_RDY				0xD0
#define		CMD_RDY1			0xD1
#define		CMD_RDZ1			0xB1
#define		CMD_RDZ2			0xC1


int XPT2046_enable_irq();
void XPT2046_read_coord();
void XPT2046_calibrate();


#endif
