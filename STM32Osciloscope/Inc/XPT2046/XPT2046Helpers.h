#ifndef INC_XPT2046HELPERS_H_
#define INC_XPT2046HELPERS_H_

#include "stm32f103xb.h"
#include "XPT2046/XPT2046Commands.h"
#include "XPT2046/XPT2046PeripheralMapping.h"
#include "ILI9341/ILI9341PeripheralMapping.h"

static inline int SPI_XPT2046_Wait_TX_Check_Timeout(uint32_t tickstart, uint32_t Timeout)
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
	if(SPI_XPT2046_Wait_TX_Check_Timeout(tickstartLocal, 2))
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
	if(SPI_XPT2046_Wait_TX_Check_Timeout(tickstartLocal, 2))
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

#endif
