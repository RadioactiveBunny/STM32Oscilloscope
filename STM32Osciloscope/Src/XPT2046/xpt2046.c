/*Include lcd header to disable the spi transmit while the lcd is transmiting*/
#include "stm32f103xb.h"
#include "ILI9341/ILI9341.h"
#include "XPT2046/XPT2046.h"

uint16_t touchValueX;
uint16_t touchValueY;
uint16_t touchValueZ1;
uint16_t touchValueZ2;

extern volatile uint32_t TimeCounter;


int XPT2046_EnableIRQPin()
{
	const uint32_t tickstartLocal = TimeCounter;
	const uint8_t buf[4] = { (XPT2046_CFG_START | XPT2046_CFG_12BIT | XPT2046_CFG_DFR | XPT2046_CFG_MUX(XPT2046_MUX_Y)), 0x00, 0x00, 0x00 };
	/*SPI Enable touch and disable LCD*/
	/*Wait for current transaction to end*/
	SPI_XPT2046_Wait_TX_Check_Timeout(tickstartLocal, 10);
	XPT2046_SPI_SS_enable();
	for(int i=0;i<4;i++)
	{
		*((__IO uint8_t*)&TOUCH_SPI_MODULE->DR) = buf[i];
		SPI_XPT2046_Wait_TX_Check_Timeout(tickstartLocal, 50);
	}

	/*SPI Disable touch and enble LCD*/
	XPT2046_SPI_SS_disable();
	return 0;
}

void XPT2046_InternalInterruptConfig()
{
	/*Using Timer 2 interrupt to delay the time between two IRQ pin interrupts*/
	/*Enable Timer 2 clock*/
	RCC->APB1ENR |= RCC_APB1ENR_TIM2EN;
	/*Timer 2 config used to disable the touch interrupt for a period after it is activated*/
	TIM2->DIER |= TIM_DIER_UIE;
	/*Prescaler*/
	TIM2->PSC = 32000; /*32MHz/32000 = 1000 Hz*/
	/*Auto-reload value*/
	TIM2->ARR = 500; /* 500 ms */
	TIM2->CR1 |= TIM_CR1_OPM;
	/*Enable interrupt in the NVIC*/
	NVIC_SetPriority(TIM2_IRQn, 2);
	/*Clear internal pending register to avoid immediate servicing of the interrupt*/
	NVIC_ClearPendingIRQ(TIM2_IRQn);
	/*Enable interrupt*/
	NVIC_EnableIRQ(TIM2_IRQn);

	/*Configure Alternate function for PORTB4 interrupt on EXTI4 interrupt line*/
	AFIO->EXTICR[1] |= AFIO_EXTICR2_EXTI4_PB;
	/*Set interrupt trigger on rising Rising Edge for EXTI4 -> PORTB4 */
	EXTI->FTSR |= EXTI_FTSR_TR4;
	/*Clear peripheral pending register to avoid activation of core pending register */
	EXTI->PR |= EXTI_PR_PR4;
	/*Unmask EXTI4 interrupt line*/
	EXTI->IMR |= EXTI_IMR_MR4;
	/*Core NVIC configuration*/
	NVIC_SetPriority(EXTI4_IRQn, 1);
	/*Clear internal pending register to avoid immediate servicing of the interrupt*/
	NVIC_ClearPendingIRQ(EXTI4_IRQn);
	/*Enable interrupt*/
	NVIC_EnableIRQ(EXTI4_IRQn);
}


void TIM2_IRQHandler()
{
#ifdef PORTC13_PROBING
	GPIOC->BSRR = GPIO_BSRR_BR13;
#endif
	/*Clear timer interrupt flag*/
	TIM2->SR &= ~TIM_SR_UIF;
	/*Unmask IRQ pin interrupt*/
	unmaskIrqPinInterrupt();
#ifdef PORTC13_PROBING
	GPIOC->BSRR = GPIO_BSRR_BS13;
#endif
}

static inline uint16_t XPT2046_WriteCommandAndReadData(uint8_t Command)
{
	const uint32_t tickstartLocal = TimeCounter;
	*((__IO uint16_t*)&TOUCH_SPI_MODULE->DR) = (uint16_t)Command;
	if(SPI_XPT2046_Wait_TX_Check_Timeout(tickstartLocal, 2))
		return -1;
	if(SPI_WaitRx(tickstartLocal, 2))
		return -1;
	uint16_t spiDataRead = TOUCH_SPI_MODULE->DR;
	return spiDataRead;
}


void EXTI4_IRQHandler()
{
	maskIrqPinInterrupt();
#ifdef PORTC13_PROBING
	GPIOC->BSRR = GPIO_BSRR_BR13;
#endif
	/*Reconfigure SPI to match xpt2046 requirements*/
	XPT2046_ConfigureSpiForTransceive();
	XPT2046_SPI_SS_enable();
	/*GET ALL DATA FROM XPT2046 HERE*/
	int32_t samples = 0;
	uint32_t touchValueXlocal = 0;
	uint32_t touchValueYlocal = 0;
	uint32_t touchValueZ1local = 0;
	uint32_t touchValueZ2local = 0;
	do
	{
		XPT2046_WriteCommandAndReadData(
			XPT2046_CFG_START |
			XPT2046_CFG_12BIT |
			XPT2046_CFG_DFR |
			XPT2046_CFG_MUX(XPT2046_MUX_X) |
			XPT2046_CFG_PWR(1));
		touchValueXlocal += XPT2046_WriteCommandAndReadData(
			XPT2046_CFG_START |
			XPT2046_CFG_12BIT |
			XPT2046_CFG_DFR |
			XPT2046_CFG_MUX(XPT2046_MUX_Y) |
			XPT2046_CFG_PWR(1))>>3;
		touchValueYlocal += XPT2046_WriteCommandAndReadData(
			XPT2046_CFG_START |
			XPT2046_CFG_12BIT |
			XPT2046_CFG_DFR |
			XPT2046_CFG_MUX(XPT2046_MUX_Z1) |
			XPT2046_CFG_PWR(1))>>3;
		touchValueZ1local += XPT2046_WriteCommandAndReadData(
			XPT2046_CFG_START |
			XPT2046_CFG_12BIT |
			XPT2046_CFG_DFR |
			XPT2046_CFG_MUX(XPT2046_MUX_Z2) |
			XPT2046_CFG_PWR(0))>>3;
		touchValueZ2local += XPT2046_WriteCommandAndReadData(0)>>3;
		samples++;
		//Delay(2);
	}
	while(!(GPIOB->IDR & GPIO_IDR_IDR4)&&samples<200);

	touchValueX = touchValueXlocal / samples;
	touchValueY = touchValueYlocal / samples;
	touchValueZ1 = touchValueZ1local / samples;
	touchValueZ2 = touchValueZ2local / samples;
	/*Return SPI to initial state*/
	XPT2046_ConfigureSpiToDefault();
	XPT2046_SPI_SS_disable();
	/*TODO: DFA GOES HERE*/

#ifdef PORTC13_PROBING
	GPIOC->BSRR = GPIO_BSRR_BS13;
#endif
	/*Keep interrupt masked for 500ms after which timer overflows and activates timer interrupt that unmasks IRQ pin interrupt*/
	/*Taking your finger off the screen makes the IRQ noisy, which may immediately cause another interrupt to be serviced.
	 * So we must delay this using TIM2.*/
	/*Wait for IDR4 to go low; a.k.a wait until the finger is off the screen*/
	while(!(GPIOB->IDR & GPIO_IDR_IDR4)){}
	TIM2->CR1 |= TIM_CR1_CEN;
}
