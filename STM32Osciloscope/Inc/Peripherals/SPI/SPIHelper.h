#ifndef INC_SPIHELPHER_H_
#define INC_SPIHELPHER_H_

/*This header is included in case it needs to be compiled by it's own*/
#include "stm32f103xb.h"
#include "ILI9341/ILI9341PeripheralMapping.h"

#define SPI_TIMEOUT_ERROR	-1
#define SPI_OK 				0

/*SysTick incremented variable*/
extern volatile uint32_t TimeCounter;

static inline int SPI_Wait_TX_Check_Timeout(uint32_t timeStart, uint32_t Timeout)
{
	while( !(LCD_SPI_MODULE->SR & SPI_SR_TXE ) )
	{ 
		if( TimeCounter - timeStart > Timeout ) 
			return SPI_TIMEOUT_ERROR;
	}
	return SPI_OK;
}

static inline int SPI_Wait_RX_Check_Timeout(uint32_t timeStart, uint32_t Timeout)
{
	while( !(LCD_SPI_MODULE->SR & SPI_SR_RXNE ) )
	{ 
		if( TimeCounter - timeStart > Timeout ) 
			return SPI_TIMEOUT_ERROR;
	}
	return SPI_OK;
}

#endif /*INC_SPIHELPHER_H_*/
