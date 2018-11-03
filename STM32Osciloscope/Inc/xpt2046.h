#ifndef XPT2046_H
#define XPT2046_H

#define HSPI_INSTANCE &hspi2

#define 	TOUCH_CS_PORT 	GPIOB
#define 	TOUCH_CS_PIN  	GPIO_PIN_3


void xpt2046_enable_irq();
void xpt2046_read_coord();
void xpt2046_calibrate();


#endif