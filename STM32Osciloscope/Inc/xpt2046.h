#ifndef XPT2046_H
#define XPT2046_H

#define 	TOUCH_SPI_MODULE 	SPI2

#define 	TOUCH_CS_PORT 		GPIOB
#define 	TOUCH_CS_PIN  		GPIO_BSRR_BS3

#define 	TOUCH_PEN_PORT		GPIOB
#define 	TOUCH_PEN_PIN		GPIO_IDR_IDR4

int XPT2046_enable_irq();
void XPT2046_read_coord();
void XPT2046_calibrate();

void XPT2046_SPI_SS_enable();
void XPT2046_SPI_SS_disable();

#endif
