#include <stdint.h>
#include "stm32f103xb.h"

#define SYSTEM_CLOCK 32000000U

extern void* g_pfnVectors;

void PeripheralConfiguration()
{
	/*Configure PLL as 8xHSI/2 which is 32MHz ,set system clock source as PLL*/
	RCC->CFGR = (RCC->CFGR &  	(~(RCC_CFGR_SW_0 | RCC_CFGR_PLLSRC | RCC_CFGR_PLLMULL_0 | RCC_CFGR_PLLMULL_3))) | /*Switch these bits to 0*/
								(RCC_CFGR_SW_1 | RCC_CFGR_PLLMULL_2 | RCC_CFGR_PLLMULL_1);/*Switch these bits to 1*/
	/*Turn on PLL*/
	RCC->CR |= RCC_CR_PLLON;

	/*Enable SPI2 Clock*/
	RCC->APB1ENR |= RCC_APB1ENR_SPI2EN;
	/* Enable PORTA and PORTB Clock */
	RCC->APB2ENR |= RCC_APB2ENR_IOPAEN | RCC_APB2ENR_IOPBEN;
	/*Turn on alternate function IO clock*/
	RCC->APB2ENR |= RCC_APB2ENR_AFIOEN;

	/* Disable Debug Ports alternate function configuration to free PORTA15 */
	AFIO->MAPR = (AFIO->MAPR & (~(AFIO_MAPR_SWJ_CFG_0 | AFIO_MAPR_SWJ_CFG_1))) |
			(AFIO_MAPR_SWJ_CFG_2);

	/* Configure LCD Slave Select Pin(PORTA15) for SPI2 */
	GPIOA->CRH = (GPIOA->CRH & (~(GPIO_CRH_MODE15_0 | GPIO_CRH_CNF15))) | (GPIO_CRH_MODE15_1);
	/* Configure LCD DC Pin (PORTA12) */
	GPIOA->CRH = (GPIOA->CRH & (~(GPIO_CRH_MODE12_0 | GPIO_CRH_CNF12))) | (GPIO_CRH_MODE12_1);
	/* Configure LCD RST Pin (PORTA11) */
	GPIOA->CRH = (GPIOA->CRH & (~(GPIO_CRH_MODE11_0 | GPIO_CRH_CNF11))) | (GPIO_CRH_MODE11_1);

	/*Configure Touchscreen slave select pin(PORTB3) for SPI2 as output push-pull*/
	GPIOB->CRL = (GPIOB->CRL & (~(GPIO_CRL_MODE3_0 | GPIO_CRL_CNF3))) | (GPIO_CRL_MODE3_1);

	/*Configure Touchscreen PEN pin(PORTB4) as input pull-up/pull-down */
	GPIOB->CRL = (GPIOB->CRL & (~(GPIO_CRL_MODE4 | GPIO_CRL_CNF4_0))) | (GPIO_CRL_CNF4_1);
	/*Configure PORTB4 to use pull-up resistor*/
	GPIOB->BSRR = GPIO_BSRR_BS4;

	/*Disable SPI2 first*/
	SPI2->CR1 &= ~(SPI_CR1_SPE);

	/*Configure alternate function GPIO pins for SCK(PB13), MISO(PB14) and MOSI(PB15)*/
	GPIOB->CRH = (GPIOB->CRH & (~(GPIO_CRH_CNF13_0))) | (GPIO_CRH_MODE13 | GPIO_CRH_CNF13_1); /*PB13:Alternate function output push-pull*/
	GPIOB->CRH = (GPIOB->CRH & (~(GPIO_CRH_MODE14 | GPIO_CRH_CNF14_0))) | (GPIO_CRH_CNF14_1); /*PB14:Input with pull-up/pulldown*/
	GPIOB->CRH = (GPIOB->CRH & (~(GPIO_CRH_CNF15_0))) | (GPIO_CRH_MODE15 | GPIO_CRH_CNF15_1); /*PB15:Alternate function output push-pull*/

	/*Configure SPI2*/
	SPI2->CR1 = !(SPI_CR1_CPHA)		|/* Clock phase = First clock transition */
				!(SPI_CR1_CPOL)		|/* Clock polarity = CLK to 0 when idle */
				 (SPI_CR1_MSTR)		|/* Master selection = Master */
				!(SPI_CR1_BR)		|/* Baud rate[2:0] = fPCLK/2 */
				!(SPI_CR1_SPE)		|/* SPI not enabled !!!Configure before enabling */
				!(SPI_CR1_LSBFIRST)	|/* First bit transmited = MSB */
				 (SPI_CR1_SSI)		|/* Internal slave select = set to 1 */
				 (SPI_CR1_SSM)		|/* Software slave management = enabled */
				!(SPI_CR1_RXONLY)	|/* Receive only = Full duplex */
				!(SPI_CR1_DFF)		|/* Data frame format = 8bit */
				!(SPI_CR1_CRCNEXT)	|/*todo: check it out*//* CRC transfer next = No data phase */
				!(SPI_CR1_CRCEN)	|/* Hardware CRC calculation enable = disabled */
				!(SPI_CR1_BIDIOE)	|/* Output enable on bidimode = not used in this mode*/
				!(SPI_CR1_BIDIMODE); /* Bidirectional data mode enable = 2 line unid */

	SPI2->CR2 = !(SPI_CR2_RXDMAEN)	|/* RX buffer DMA disabled */
				!(SPI_CR2_TXDMAEN)	|/* TX buffer DMA disabled */
				!(SPI_CR2_SSOE)		|/* SS output disabled -> multiple SS pins needed->configured as gpio outputs */
				!(SPI_CR2_ERRIE)	|/*todo: check it out*//* Error interrupt is masked */
				!(SPI_CR2_RXNEIE)	|/*todo: check it out*//* RX buffer not empty interrupt masked */
				!(SPI_CR2_TXEIE);    /*todo: check it out*//* TX buffer empty interrupt enabled */

	/* Enable SPI2 */
	SPI2->CR1 |= SPI_CR1_SPE;

	/* Set interrupt vector table address register */
	SCB->VTOR = (uint32_t)&g_pfnVectors; /* This is defined in startup.s */

	/*Systick Config*/
	SysTick_Config(SYSTEM_CLOCK/1000); /* Configured an interrupt every 1 ms or 32000 cpu cycles */
	NVIC_SetPriority (SysTick_IRQn, 0);

#ifdef PORTC13_PROBING
	/*Enable PORTC clock for execution time probing probing*/
	RCC->APB2ENR |= RCC_APB2ENR_IOPCEN;
	/*Set PORTC_PIN13 as output push-pull*/
	GPIOC->CRH = (GPIOC->CRH & (~(GPIO_CRH_MODE13_0 | GPIO_CRH_CNF13))) | (GPIO_CRH_MODE13_1);
#endif
}

/* Holds timebase counter in ms */
volatile uint32_t TimeCounter = 0;

/* SysTick Interrupt Handler */
void SysTick_Handler()
{
	TimeCounter++;
}

/* Delay in ms */
void Delay(uint32_t lDelay)
{
	uint32_t timeStart = TimeCounter;
	uint32_t timeDiff = 0;
	while(timeDiff < lDelay)
	{
		timeDiff = TimeCounter - timeStart;
	}
}

