/*Include lcd header to disable the spi transmit while the lcd is transmiting*/
#include "stm32f103xb.h"
#include "ili9341.h"
#include "xpt2046.h"


#define XPT2046_CFG_START   0b10000000

#define XPT2046_CFG_MUX(v)  ((v&0b111) << (4))

#define XPT2046_CFG_8BIT    0b00001000
#define XPT2046_CFG_12BIT   (0)

#define XPT2046_CFG_SER     0b00000100
#define XPT2046_CFG_DFR     (0)

#define XPT2046_CFG_PWR(v)  ((v&0b11))

#define XPT2046_MUX_Y       0b101
#define XPT2046_MUX_X       0b001

#define XPT2046_MUX_Z1      0b011
#define XPT2046_MUX_Z2      0b100

uint16_t touchValueX =1;
uint16_t touchValueY =2;
uint16_t touchValueZ1 =3;
uint16_t touchValueZ2 =4;

extern volatile uint32_t TimeCounter;

static inline int SPI_WaitTx(uint32_t tickstart, uint32_t Timeout)
{
	while(!(TOUCH_SPI_MODULE->SR & SPI_SR_TXE ))
	{
		if(TimeCounter-tickstart > Timeout)
			return 1;
	}
	return 0;
}

static inline int SPI_WaitRx(uint32_t tickstart, uint32_t Timeout)
{
	while(!(TOUCH_SPI_MODULE->SR & SPI_SR_RXNE ))
	{
		if(TimeCounter-tickstart > Timeout)
			return 1;
	}
	return 0;
}





static inline void XPT2046_SPI_SS_disable()
{
	/*Disable TOUCH SS*/
	TOUCH_CS_PORT->BSRR=TOUCH_CS_PIN;
	/*Enable LCD SS*/
	LCD_CS_PORT->BSRR = (uint32_t)LCD_CS_PIN << 16U;
}

static inline void XPT2046_SPI_SS_enable()
{
	/*First disable LCD SS*/
	LCD_CS_PORT->BSRR = (uint32_t)LCD_CS_PIN;
	/*Enable TOUCH SS*/
	TOUCH_CS_PORT->BSRR=(uint32_t)TOUCH_CS_PIN << 16U;
}

static inline int XPT2046_ConfigureSpiForTransceive()
{
	/*Wait for SPI module to finish current transaction before disabling it*/
	const uint32_t tickstartLocal = TimeCounter;
	if(SPI_WaitTx(tickstartLocal, 2))
		return 1;
	/*Disable SPI module first*/
	TOUCH_SPI_MODULE->CR1 &= ~SPI_CR1_SPE;
	/*Configure Baud rate to fpCLK/16 = 2 MHz(xpt2046 supports 2.5MHz maximum on transmission); select 16 bit data frame format*/
	TOUCH_SPI_MODULE->CR1 |= SPI_CR1_BR_0 | SPI_CR1_BR_1 | SPI_CR1_DFF;
	/*Re-enable SPI module*/
	TOUCH_SPI_MODULE->CR1 |= SPI_CR1_SPE;
	/*Clear RXNE flag, even if it's already cleared*/
	uint16_t spiDataRead = TOUCH_SPI_MODULE->DR;
	return 0;
}

static inline int XPT2046_ConfigureSpiToDefault()
{
	const uint32_t tickstartLocal = TimeCounter;
	/*Wait for SPI module to finish current transaction before disabling it*/
	if(SPI_WaitTx(tickstartLocal, 2))
			return 1;
	/*Disable SPI module first*/
	TOUCH_SPI_MODULE->CR1 &= ~SPI_CR1_SPE;
	/*Configure Baud rate to fpCLK/2 = 16 MHz; select 8 bit data frame format*/
	TOUCH_SPI_MODULE->CR1 &= ~(SPI_CR1_BR_0 | SPI_CR1_BR_1 | SPI_CR1_DFF);
	/*Re-enable SPI module*/
	TOUCH_SPI_MODULE->CR1 |= SPI_CR1_SPE;
	return 0;
}

static inline void maskIrqPinInterrupt()
{
	/*Mask EXTI4 interrupt line*/
	EXTI->IMR &= ~EXTI_IMR_MR4;
	/*Clear peripheral pending register to avoid activation of core pending register */
	EXTI->PR |= EXTI_PR_PR4;
}

static inline void unmaskIrqPinInterrupt()
{
	/*Clear peripheral pending register to avoid activation of core pending register */
	EXTI->PR |= EXTI_PR_PR4;
	/*Unmask EXTI4 interrupt line*/
	EXTI->IMR |= EXTI_IMR_MR4;
}

int XPT2046_enable_irq()
{
	const uint32_t tickstartLocal = TimeCounter;
	const uint8_t buf[4] = { (XPT2046_CFG_START | XPT2046_CFG_12BIT | XPT2046_CFG_DFR | XPT2046_CFG_MUX(XPT2046_MUX_Y)), 0x00, 0x00, 0x00 };
	/*SPI Enable touch and disable LCD*/
	/*Wait for current transaction to end*/
	SPI_WaitTx(tickstartLocal, 10);
	XPT2046_SPI_SS_enable();
	for(int i=0;i<4;i++)
	{
		*((__IO uint8_t*)&TOUCH_SPI_MODULE->DR) = buf[i];
		SPI_WaitTx(tickstartLocal, 50);
	}

	/*SPI Disable touch and enble LCD*/
	XPT2046_SPI_SS_disable();
	return 0;
}

void internalInterruptConfig()
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
	NVIC_ClearPendingIRQ(TIM2_IRQn);
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
	if(SPI_WaitTx(tickstartLocal, 2))
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
	XPT2046_WriteCommandAndReadData(
			XPT2046_CFG_START | XPT2046_CFG_12BIT | XPT2046_CFG_DFR | XPT2046_CFG_MUX(XPT2046_MUX_X) | XPT2046_CFG_PWR(1));
	touchValueX = XPT2046_WriteCommandAndReadData(
			XPT2046_CFG_START | XPT2046_CFG_12BIT | XPT2046_CFG_DFR | XPT2046_CFG_MUX(XPT2046_MUX_Y) | XPT2046_CFG_PWR(1));
	touchValueY = XPT2046_WriteCommandAndReadData(
			XPT2046_CFG_START | XPT2046_CFG_12BIT | XPT2046_CFG_DFR | XPT2046_CFG_MUX(XPT2046_MUX_Z1) | XPT2046_CFG_PWR(1));
	touchValueZ1 = XPT2046_WriteCommandAndReadData(
			XPT2046_CFG_START | XPT2046_CFG_12BIT | XPT2046_CFG_DFR | XPT2046_CFG_MUX(XPT2046_MUX_Z2) | XPT2046_CFG_PWR(0));
	touchValueZ2 = XPT2046_WriteCommandAndReadData(
			0);
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
	TIM2->CR1 |= TIM_CR1_CEN;
}
