#include <stdint.h>
#include "stm32f103xb.h"

void SystemInit()
{
	/* Reset the RCC clock configuration to the default reset state(for debug purpose) */
	/* Set HSION bit */
	RCC->CR |= 0x00000001U;
	/* Reset SW, HPRE, PPRE1, PPRE2, ADCPRE and MCO bits */
	RCC->CFGR &= 0xF0FF0000U;
	/* Reset HSEON, CSSON and PLLON bits */
	RCC->CR &= 0xFEF6FFFFU;
	/* Reset HSEBYP bit */
	RCC->CR &= 0xFFFBFFFFU;
	/* Reset PLLSRC, PLLXTPRE, PLLMUL and USBPRE/OTGFSPRE bits */
	RCC->CFGR &= 0xFF80FFFFU;
	/* Disable all interrupts and clear pending bits  */
	RCC->CIR = 0x009F0000U;
}