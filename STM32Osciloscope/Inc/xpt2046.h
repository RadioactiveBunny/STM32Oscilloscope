#ifndef XPT2046_H
#define XPT2046_H

#define 	TOUCH_SPI_MODULE 	SPI2

#define 	TOUCH_CS_PORT 		GPIOB
#define 	TOUCH_CS_PIN  		GPIO_BSRR_BS3

#define 	TOUCH_PEN_PORT		GPIOB
#define 	TOUCH_PEN_PIN		GPIO_IDR_IDR4

int xpt2046_enable_irq();
void xpt2046_read_coord();
void xpt2046_calibrate();

void xpt_ss_enable();
void xpt2046_ss_disable();

#endif