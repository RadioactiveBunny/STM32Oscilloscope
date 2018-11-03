ARM GAS  C:\Users\crist\AppData\Local\Temp\ccgfXY27.s 			page 1


   1              		.cpu cortex-m3
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 1
   9              		.eabi_attribute 34, 1
  10              		.eabi_attribute 18, 4
  11              		.file	"system_stm32f1xx.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.SystemInit,"ax",%progbits
  16              		.align	1
  17              		.global	SystemInit
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu softvfp
  23              	SystemInit:
  24              	.LFB66:
  25              		.file 1 "Src/system_stm32f1xx.c"
   1:Src/system_stm32f1xx.c **** /**
   2:Src/system_stm32f1xx.c ****   ******************************************************************************
   3:Src/system_stm32f1xx.c ****   * @file    system_stm32f1xx.c
   4:Src/system_stm32f1xx.c ****   * @author  MCD Application Team
   5:Src/system_stm32f1xx.c ****   * @version V4.2.0
   6:Src/system_stm32f1xx.c ****   * @date    31-March-2017
   7:Src/system_stm32f1xx.c ****   * @brief   CMSIS Cortex-M3 Device Peripheral Access Layer System Source File.
   8:Src/system_stm32f1xx.c ****   * 
   9:Src/system_stm32f1xx.c ****   * 1.  This file provides two functions and one global variable to be called from 
  10:Src/system_stm32f1xx.c ****   *     user application:
  11:Src/system_stm32f1xx.c ****   *      - SystemInit(): Setups the system clock (System clock source, PLL Multiplier
  12:Src/system_stm32f1xx.c ****   *                      factors, AHB/APBx prescalers and Flash settings). 
  13:Src/system_stm32f1xx.c ****   *                      This function is called at startup just after reset and 
  14:Src/system_stm32f1xx.c ****   *                      before branch to main program. This call is made inside
  15:Src/system_stm32f1xx.c ****   *                      the "startup_stm32f1xx_xx.s" file.
  16:Src/system_stm32f1xx.c ****   *
  17:Src/system_stm32f1xx.c ****   *      - SystemCoreClock variable: Contains the core clock (HCLK), it can be used
  18:Src/system_stm32f1xx.c ****   *                                  by the user application to setup the SysTick 
  19:Src/system_stm32f1xx.c ****   *                                  timer or configure other parameters.
  20:Src/system_stm32f1xx.c ****   *                                     
  21:Src/system_stm32f1xx.c ****   *      - SystemCoreClockUpdate(): Updates the variable SystemCoreClock and must
  22:Src/system_stm32f1xx.c ****   *                                 be called whenever the core clock is changed
  23:Src/system_stm32f1xx.c ****   *                                 during program execution.
  24:Src/system_stm32f1xx.c ****   *
  25:Src/system_stm32f1xx.c ****   * 2. After each device reset the HSI (8 MHz) is used as system clock source.
  26:Src/system_stm32f1xx.c ****   *    Then SystemInit() function is called, in "startup_stm32f1xx_xx.s" file, to
  27:Src/system_stm32f1xx.c ****   *    configure the system clock before to branch to main program.
  28:Src/system_stm32f1xx.c ****   *
  29:Src/system_stm32f1xx.c ****   * 4. The default value of HSE crystal is set to 8 MHz (or 25 MHz, depending on
  30:Src/system_stm32f1xx.c ****   *    the product used), refer to "HSE_VALUE". 
  31:Src/system_stm32f1xx.c ****   *    When HSE is used as system clock source, directly or through PLL, and you
  32:Src/system_stm32f1xx.c ****   *    are using different crystal you have to adapt the HSE value to your own
  33:Src/system_stm32f1xx.c ****   *    configuration.
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccgfXY27.s 			page 2


  34:Src/system_stm32f1xx.c ****   *        
  35:Src/system_stm32f1xx.c ****   ******************************************************************************
  36:Src/system_stm32f1xx.c ****   * @attention
  37:Src/system_stm32f1xx.c ****   *
  38:Src/system_stm32f1xx.c ****   * <h2><center>&copy; COPYRIGHT(c) 2017 STMicroelectronics</center></h2>
  39:Src/system_stm32f1xx.c ****   *
  40:Src/system_stm32f1xx.c ****   * Redistribution and use in source and binary forms, with or without modification,
  41:Src/system_stm32f1xx.c ****   * are permitted provided that the following conditions are met:
  42:Src/system_stm32f1xx.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  43:Src/system_stm32f1xx.c ****   *      this list of conditions and the following disclaimer.
  44:Src/system_stm32f1xx.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  45:Src/system_stm32f1xx.c ****   *      this list of conditions and the following disclaimer in the documentation
  46:Src/system_stm32f1xx.c ****   *      and/or other materials provided with the distribution.
  47:Src/system_stm32f1xx.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  48:Src/system_stm32f1xx.c ****   *      may be used to endorse or promote products derived from this software
  49:Src/system_stm32f1xx.c ****   *      without specific prior written permission.
  50:Src/system_stm32f1xx.c ****   *
  51:Src/system_stm32f1xx.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  52:Src/system_stm32f1xx.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  53:Src/system_stm32f1xx.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  54:Src/system_stm32f1xx.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  55:Src/system_stm32f1xx.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  56:Src/system_stm32f1xx.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  57:Src/system_stm32f1xx.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  58:Src/system_stm32f1xx.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  59:Src/system_stm32f1xx.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  60:Src/system_stm32f1xx.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  61:Src/system_stm32f1xx.c ****   *
  62:Src/system_stm32f1xx.c ****   ******************************************************************************
  63:Src/system_stm32f1xx.c ****   */
  64:Src/system_stm32f1xx.c **** 
  65:Src/system_stm32f1xx.c **** /** @addtogroup CMSIS
  66:Src/system_stm32f1xx.c ****   * @{
  67:Src/system_stm32f1xx.c ****   */
  68:Src/system_stm32f1xx.c **** 
  69:Src/system_stm32f1xx.c **** /** @addtogroup stm32f1xx_system
  70:Src/system_stm32f1xx.c ****   * @{
  71:Src/system_stm32f1xx.c ****   */  
  72:Src/system_stm32f1xx.c ****   
  73:Src/system_stm32f1xx.c **** /** @addtogroup STM32F1xx_System_Private_Includes
  74:Src/system_stm32f1xx.c ****   * @{
  75:Src/system_stm32f1xx.c ****   */
  76:Src/system_stm32f1xx.c **** 
  77:Src/system_stm32f1xx.c **** #include "stm32f1xx.h"
  78:Src/system_stm32f1xx.c **** 
  79:Src/system_stm32f1xx.c **** /**
  80:Src/system_stm32f1xx.c ****   * @}
  81:Src/system_stm32f1xx.c ****   */
  82:Src/system_stm32f1xx.c **** 
  83:Src/system_stm32f1xx.c **** /** @addtogroup STM32F1xx_System_Private_TypesDefinitions
  84:Src/system_stm32f1xx.c ****   * @{
  85:Src/system_stm32f1xx.c ****   */
  86:Src/system_stm32f1xx.c **** 
  87:Src/system_stm32f1xx.c **** /**
  88:Src/system_stm32f1xx.c ****   * @}
  89:Src/system_stm32f1xx.c ****   */
  90:Src/system_stm32f1xx.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccgfXY27.s 			page 3


  91:Src/system_stm32f1xx.c **** /** @addtogroup STM32F1xx_System_Private_Defines
  92:Src/system_stm32f1xx.c ****   * @{
  93:Src/system_stm32f1xx.c ****   */
  94:Src/system_stm32f1xx.c **** 
  95:Src/system_stm32f1xx.c **** #if !defined  (HSE_VALUE) 
  96:Src/system_stm32f1xx.c ****   #define HSE_VALUE               8000000U /*!< Default value of the External oscillator in Hz.
  97:Src/system_stm32f1xx.c ****                                                 This value can be provided and adapted by the user 
  98:Src/system_stm32f1xx.c **** #endif /* HSE_VALUE */
  99:Src/system_stm32f1xx.c **** 
 100:Src/system_stm32f1xx.c **** #if !defined  (HSI_VALUE)
 101:Src/system_stm32f1xx.c ****   #define HSI_VALUE               8000000U /*!< Default value of the Internal oscillator in Hz.
 102:Src/system_stm32f1xx.c ****                                                 This value can be provided and adapted by the user 
 103:Src/system_stm32f1xx.c **** #endif /* HSI_VALUE */
 104:Src/system_stm32f1xx.c **** 
 105:Src/system_stm32f1xx.c **** /*!< Uncomment the following line if you need to use external SRAM  */ 
 106:Src/system_stm32f1xx.c **** #if defined(STM32F100xE) || defined(STM32F101xE) || defined(STM32F101xG) || defined(STM32F103xE) ||
 107:Src/system_stm32f1xx.c **** /* #define DATA_IN_ExtSRAM */
 108:Src/system_stm32f1xx.c **** #endif /* STM32F100xE || STM32F101xE || STM32F101xG || STM32F103xE || STM32F103xG */
 109:Src/system_stm32f1xx.c **** 
 110:Src/system_stm32f1xx.c **** /*!< Uncomment the following line if you need to relocate your vector Table in
 111:Src/system_stm32f1xx.c ****      Internal SRAM. */ 
 112:Src/system_stm32f1xx.c **** /* #define VECT_TAB_SRAM */
 113:Src/system_stm32f1xx.c **** #define VECT_TAB_OFFSET  0x00000000U /*!< Vector Table base offset field. 
 114:Src/system_stm32f1xx.c ****                                   This value must be a multiple of 0x200. */
 115:Src/system_stm32f1xx.c **** 
 116:Src/system_stm32f1xx.c **** 
 117:Src/system_stm32f1xx.c **** /**
 118:Src/system_stm32f1xx.c ****   * @}
 119:Src/system_stm32f1xx.c ****   */
 120:Src/system_stm32f1xx.c **** 
 121:Src/system_stm32f1xx.c **** /** @addtogroup STM32F1xx_System_Private_Macros
 122:Src/system_stm32f1xx.c ****   * @{
 123:Src/system_stm32f1xx.c ****   */
 124:Src/system_stm32f1xx.c **** 
 125:Src/system_stm32f1xx.c **** /**
 126:Src/system_stm32f1xx.c ****   * @}
 127:Src/system_stm32f1xx.c ****   */
 128:Src/system_stm32f1xx.c **** 
 129:Src/system_stm32f1xx.c **** /** @addtogroup STM32F1xx_System_Private_Variables
 130:Src/system_stm32f1xx.c ****   * @{
 131:Src/system_stm32f1xx.c ****   */
 132:Src/system_stm32f1xx.c **** 
 133:Src/system_stm32f1xx.c **** /*******************************************************************************
 134:Src/system_stm32f1xx.c **** *  Clock Definitions
 135:Src/system_stm32f1xx.c **** *******************************************************************************/
 136:Src/system_stm32f1xx.c **** #if defined(STM32F100xB) ||defined(STM32F100xE)
 137:Src/system_stm32f1xx.c ****   uint32_t SystemCoreClock         = 24000000U;        /*!< System Clock Frequency (Core Clock) */
 138:Src/system_stm32f1xx.c **** #else /*!< HSI Selected as System Clock source */
 139:Src/system_stm32f1xx.c ****   uint32_t SystemCoreClock         = 72000000U;        /*!< System Clock Frequency (Core Clock) */
 140:Src/system_stm32f1xx.c **** #endif
 141:Src/system_stm32f1xx.c **** 
 142:Src/system_stm32f1xx.c **** const uint8_t AHBPrescTable[16U] = {0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 6, 7, 8, 9};
 143:Src/system_stm32f1xx.c **** const uint8_t APBPrescTable[8U] =  {0, 0, 0, 0, 1, 2, 3, 4};
 144:Src/system_stm32f1xx.c **** 
 145:Src/system_stm32f1xx.c **** /**
 146:Src/system_stm32f1xx.c ****   * @}
 147:Src/system_stm32f1xx.c ****   */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccgfXY27.s 			page 4


 148:Src/system_stm32f1xx.c **** 
 149:Src/system_stm32f1xx.c **** /** @addtogroup STM32F1xx_System_Private_FunctionPrototypes
 150:Src/system_stm32f1xx.c ****   * @{
 151:Src/system_stm32f1xx.c ****   */
 152:Src/system_stm32f1xx.c **** 
 153:Src/system_stm32f1xx.c **** #if defined(STM32F100xE) || defined(STM32F101xE) || defined(STM32F101xG) || defined(STM32F103xE) ||
 154:Src/system_stm32f1xx.c **** #ifdef DATA_IN_ExtSRAM
 155:Src/system_stm32f1xx.c ****   static void SystemInit_ExtMemCtl(void); 
 156:Src/system_stm32f1xx.c **** #endif /* DATA_IN_ExtSRAM */
 157:Src/system_stm32f1xx.c **** #endif /* STM32F100xE || STM32F101xE || STM32F101xG || STM32F103xE || STM32F103xG */
 158:Src/system_stm32f1xx.c **** 
 159:Src/system_stm32f1xx.c **** /**
 160:Src/system_stm32f1xx.c ****   * @}
 161:Src/system_stm32f1xx.c ****   */
 162:Src/system_stm32f1xx.c **** 
 163:Src/system_stm32f1xx.c **** /** @addtogroup STM32F1xx_System_Private_Functions
 164:Src/system_stm32f1xx.c ****   * @{
 165:Src/system_stm32f1xx.c ****   */
 166:Src/system_stm32f1xx.c **** 
 167:Src/system_stm32f1xx.c **** /**
 168:Src/system_stm32f1xx.c ****   * @brief  Setup the microcontroller system
 169:Src/system_stm32f1xx.c ****   *         Initialize the Embedded Flash Interface, the PLL and update the 
 170:Src/system_stm32f1xx.c ****   *         SystemCoreClock variable.
 171:Src/system_stm32f1xx.c ****   * @note   This function should be used only after reset.
 172:Src/system_stm32f1xx.c ****   * @param  None
 173:Src/system_stm32f1xx.c ****   * @retval None
 174:Src/system_stm32f1xx.c ****   */
 175:Src/system_stm32f1xx.c **** void SystemInit (void)
 176:Src/system_stm32f1xx.c **** {
  26              		.loc 1 176 0
  27              		.cfi_startproc
  28              		@ args = 0, pretend = 0, frame = 0
  29              		@ frame_needed = 0, uses_anonymous_args = 0
  30              		@ link register save eliminated.
 177:Src/system_stm32f1xx.c ****   /* Reset the RCC clock configuration to the default reset state(for debug purpose) */
 178:Src/system_stm32f1xx.c ****   /* Set HSION bit */
 179:Src/system_stm32f1xx.c ****   RCC->CR |= 0x00000001U;
  31              		.loc 1 179 0
  32 0000 0F4B     		ldr	r3, .L2
  33 0002 1A68     		ldr	r2, [r3]
  34 0004 42F00102 		orr	r2, r2, #1
  35 0008 1A60     		str	r2, [r3]
 180:Src/system_stm32f1xx.c **** 
 181:Src/system_stm32f1xx.c ****   /* Reset SW, HPRE, PPRE1, PPRE2, ADCPRE and MCO bits */
 182:Src/system_stm32f1xx.c **** #if !defined(STM32F105xC) && !defined(STM32F107xC)
 183:Src/system_stm32f1xx.c ****   RCC->CFGR &= 0xF8FF0000U;
  36              		.loc 1 183 0
  37 000a 5968     		ldr	r1, [r3, #4]
  38 000c 0D4A     		ldr	r2, .L2+4
  39 000e 0A40     		ands	r2, r2, r1
  40 0010 5A60     		str	r2, [r3, #4]
 184:Src/system_stm32f1xx.c **** #else
 185:Src/system_stm32f1xx.c ****   RCC->CFGR &= 0xF0FF0000U;
 186:Src/system_stm32f1xx.c **** #endif /* STM32F105xC */   
 187:Src/system_stm32f1xx.c ****   
 188:Src/system_stm32f1xx.c ****   /* Reset HSEON, CSSON and PLLON bits */
 189:Src/system_stm32f1xx.c ****   RCC->CR &= 0xFEF6FFFFU;
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccgfXY27.s 			page 5


  41              		.loc 1 189 0
  42 0012 1A68     		ldr	r2, [r3]
  43 0014 22F08472 		bic	r2, r2, #17301504
  44 0018 22F48032 		bic	r2, r2, #65536
  45 001c 1A60     		str	r2, [r3]
 190:Src/system_stm32f1xx.c **** 
 191:Src/system_stm32f1xx.c ****   /* Reset HSEBYP bit */
 192:Src/system_stm32f1xx.c ****   RCC->CR &= 0xFFFBFFFFU;
  46              		.loc 1 192 0
  47 001e 1A68     		ldr	r2, [r3]
  48 0020 22F48022 		bic	r2, r2, #262144
  49 0024 1A60     		str	r2, [r3]
 193:Src/system_stm32f1xx.c **** 
 194:Src/system_stm32f1xx.c ****   /* Reset PLLSRC, PLLXTPRE, PLLMUL and USBPRE/OTGFSPRE bits */
 195:Src/system_stm32f1xx.c ****   RCC->CFGR &= 0xFF80FFFFU;
  50              		.loc 1 195 0
  51 0026 5A68     		ldr	r2, [r3, #4]
  52 0028 22F4FE02 		bic	r2, r2, #8323072
  53 002c 5A60     		str	r2, [r3, #4]
 196:Src/system_stm32f1xx.c **** 
 197:Src/system_stm32f1xx.c **** #if defined(STM32F105xC) || defined(STM32F107xC)
 198:Src/system_stm32f1xx.c ****   /* Reset PLL2ON and PLL3ON bits */
 199:Src/system_stm32f1xx.c ****   RCC->CR &= 0xEBFFFFFFU;
 200:Src/system_stm32f1xx.c **** 
 201:Src/system_stm32f1xx.c ****   /* Disable all interrupts and clear pending bits  */
 202:Src/system_stm32f1xx.c ****   RCC->CIR = 0x00FF0000U;
 203:Src/system_stm32f1xx.c **** 
 204:Src/system_stm32f1xx.c ****   /* Reset CFGR2 register */
 205:Src/system_stm32f1xx.c ****   RCC->CFGR2 = 0x00000000U;
 206:Src/system_stm32f1xx.c **** #elif defined(STM32F100xB) || defined(STM32F100xE)
 207:Src/system_stm32f1xx.c ****   /* Disable all interrupts and clear pending bits  */
 208:Src/system_stm32f1xx.c ****   RCC->CIR = 0x009F0000U;
 209:Src/system_stm32f1xx.c **** 
 210:Src/system_stm32f1xx.c ****   /* Reset CFGR2 register */
 211:Src/system_stm32f1xx.c ****   RCC->CFGR2 = 0x00000000U;      
 212:Src/system_stm32f1xx.c **** #else
 213:Src/system_stm32f1xx.c ****   /* Disable all interrupts and clear pending bits  */
 214:Src/system_stm32f1xx.c ****   RCC->CIR = 0x009F0000U;
  54              		.loc 1 214 0
  55 002e 4FF41F02 		mov	r2, #10420224
  56 0032 9A60     		str	r2, [r3, #8]
 215:Src/system_stm32f1xx.c **** #endif /* STM32F105xC */
 216:Src/system_stm32f1xx.c ****     
 217:Src/system_stm32f1xx.c **** #if defined(STM32F100xE) || defined(STM32F101xE) || defined(STM32F101xG) || defined(STM32F103xE) ||
 218:Src/system_stm32f1xx.c ****   #ifdef DATA_IN_ExtSRAM
 219:Src/system_stm32f1xx.c ****     SystemInit_ExtMemCtl(); 
 220:Src/system_stm32f1xx.c ****   #endif /* DATA_IN_ExtSRAM */
 221:Src/system_stm32f1xx.c **** #endif 
 222:Src/system_stm32f1xx.c **** 
 223:Src/system_stm32f1xx.c **** #ifdef VECT_TAB_SRAM
 224:Src/system_stm32f1xx.c ****   SCB->VTOR = SRAM_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal SRAM. */
 225:Src/system_stm32f1xx.c **** #else
 226:Src/system_stm32f1xx.c ****   SCB->VTOR = FLASH_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal FLASH. */
  57              		.loc 1 226 0
  58 0034 044B     		ldr	r3, .L2+8
  59 0036 4FF00062 		mov	r2, #134217728
  60 003a 9A60     		str	r2, [r3, #8]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccgfXY27.s 			page 6


 227:Src/system_stm32f1xx.c **** #endif 
 228:Src/system_stm32f1xx.c **** }
  61              		.loc 1 228 0
  62 003c 7047     		bx	lr
  63              	.L3:
  64 003e 00BF     		.align	2
  65              	.L2:
  66 0040 00100240 		.word	1073876992
  67 0044 0000FFF8 		.word	-117506048
  68 0048 00ED00E0 		.word	-536810240
  69              		.cfi_endproc
  70              	.LFE66:
  72              		.section	.text.SystemCoreClockUpdate,"ax",%progbits
  73              		.align	1
  74              		.global	SystemCoreClockUpdate
  75              		.syntax unified
  76              		.thumb
  77              		.thumb_func
  78              		.fpu softvfp
  80              	SystemCoreClockUpdate:
  81              	.LFB67:
 229:Src/system_stm32f1xx.c **** 
 230:Src/system_stm32f1xx.c **** /**
 231:Src/system_stm32f1xx.c ****   * @brief  Update SystemCoreClock variable according to Clock Register Values.
 232:Src/system_stm32f1xx.c ****   *         The SystemCoreClock variable contains the core clock (HCLK), it can
 233:Src/system_stm32f1xx.c ****   *         be used by the user application to setup the SysTick timer or configure
 234:Src/system_stm32f1xx.c ****   *         other parameters.
 235:Src/system_stm32f1xx.c ****   *           
 236:Src/system_stm32f1xx.c ****   * @note   Each time the core clock (HCLK) changes, this function must be called
 237:Src/system_stm32f1xx.c ****   *         to update SystemCoreClock variable value. Otherwise, any configuration
 238:Src/system_stm32f1xx.c ****   *         based on this variable will be incorrect.         
 239:Src/system_stm32f1xx.c ****   *     
 240:Src/system_stm32f1xx.c ****   * @note   - The system frequency computed by this function is not the real 
 241:Src/system_stm32f1xx.c ****   *           frequency in the chip. It is calculated based on the predefined 
 242:Src/system_stm32f1xx.c ****   *           constant and the selected clock source:
 243:Src/system_stm32f1xx.c ****   *             
 244:Src/system_stm32f1xx.c ****   *           - If SYSCLK source is HSI, SystemCoreClock will contain the HSI_VALUE(*)
 245:Src/system_stm32f1xx.c ****   *                                              
 246:Src/system_stm32f1xx.c ****   *           - If SYSCLK source is HSE, SystemCoreClock will contain the HSE_VALUE(**)
 247:Src/system_stm32f1xx.c ****   *                          
 248:Src/system_stm32f1xx.c ****   *           - If SYSCLK source is PLL, SystemCoreClock will contain the HSE_VALUE(**) 
 249:Src/system_stm32f1xx.c ****   *             or HSI_VALUE(*) multiplied by the PLL factors.
 250:Src/system_stm32f1xx.c ****   *         
 251:Src/system_stm32f1xx.c ****   *         (*) HSI_VALUE is a constant defined in stm32f1xx.h file (default value
 252:Src/system_stm32f1xx.c ****   *             8 MHz) but the real value may vary depending on the variations
 253:Src/system_stm32f1xx.c ****   *             in voltage and temperature.   
 254:Src/system_stm32f1xx.c ****   *    
 255:Src/system_stm32f1xx.c ****   *         (**) HSE_VALUE is a constant defined in stm32f1xx.h file (default value
 256:Src/system_stm32f1xx.c ****   *              8 MHz or 25 MHz, depending on the product used), user has to ensure
 257:Src/system_stm32f1xx.c ****   *              that HSE_VALUE is same as the real frequency of the crystal used.
 258:Src/system_stm32f1xx.c ****   *              Otherwise, this function may have wrong result.
 259:Src/system_stm32f1xx.c ****   *                
 260:Src/system_stm32f1xx.c ****   *         - The result of this function could be not correct when using fractional
 261:Src/system_stm32f1xx.c ****   *           value for HSE crystal.
 262:Src/system_stm32f1xx.c ****   * @param  None
 263:Src/system_stm32f1xx.c ****   * @retval None
 264:Src/system_stm32f1xx.c ****   */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccgfXY27.s 			page 7


 265:Src/system_stm32f1xx.c **** void SystemCoreClockUpdate (void)
 266:Src/system_stm32f1xx.c **** {
  82              		.loc 1 266 0
  83              		.cfi_startproc
  84              		@ args = 0, pretend = 0, frame = 0
  85              		@ frame_needed = 0, uses_anonymous_args = 0
  86              		@ link register save eliminated.
  87              	.LVL0:
 267:Src/system_stm32f1xx.c ****   uint32_t tmp = 0U, pllmull = 0U, pllsource = 0U;
 268:Src/system_stm32f1xx.c **** 
 269:Src/system_stm32f1xx.c **** #if defined(STM32F105xC) || defined(STM32F107xC)
 270:Src/system_stm32f1xx.c ****   uint32_t prediv1source = 0U, prediv1factor = 0U, prediv2factor = 0U, pll2mull = 0U;
 271:Src/system_stm32f1xx.c **** #endif /* STM32F105xC */
 272:Src/system_stm32f1xx.c **** 
 273:Src/system_stm32f1xx.c **** #if defined(STM32F100xB) || defined(STM32F100xE)
 274:Src/system_stm32f1xx.c ****   uint32_t prediv1factor = 0U;
 275:Src/system_stm32f1xx.c **** #endif /* STM32F100xB or STM32F100xE */
 276:Src/system_stm32f1xx.c ****     
 277:Src/system_stm32f1xx.c ****   /* Get SYSCLK source -------------------------------------------------------*/
 278:Src/system_stm32f1xx.c ****   tmp = RCC->CFGR & RCC_CFGR_SWS;
  88              		.loc 1 278 0
  89 0000 1F4B     		ldr	r3, .L15
  90 0002 5B68     		ldr	r3, [r3, #4]
  91 0004 03F00C03 		and	r3, r3, #12
  92              	.LVL1:
 279:Src/system_stm32f1xx.c ****   
 280:Src/system_stm32f1xx.c ****   switch (tmp)
  93              		.loc 1 280 0
  94 0008 042B     		cmp	r3, #4
  95 000a 14D0     		beq	.L6
  96 000c 082B     		cmp	r3, #8
  97 000e 16D0     		beq	.L7
  98 0010 1BB1     		cbz	r3, .L13
 281:Src/system_stm32f1xx.c ****   {
 282:Src/system_stm32f1xx.c ****     case 0x00U:  /* HSI used as system clock */
 283:Src/system_stm32f1xx.c ****       SystemCoreClock = HSI_VALUE;
 284:Src/system_stm32f1xx.c ****       break;
 285:Src/system_stm32f1xx.c ****     case 0x04U:  /* HSE used as system clock */
 286:Src/system_stm32f1xx.c ****       SystemCoreClock = HSE_VALUE;
 287:Src/system_stm32f1xx.c ****       break;
 288:Src/system_stm32f1xx.c ****     case 0x08U:  /* PLL used as system clock */
 289:Src/system_stm32f1xx.c **** 
 290:Src/system_stm32f1xx.c ****       /* Get PLL clock source and multiplication factor ----------------------*/
 291:Src/system_stm32f1xx.c ****       pllmull = RCC->CFGR & RCC_CFGR_PLLMULL;
 292:Src/system_stm32f1xx.c ****       pllsource = RCC->CFGR & RCC_CFGR_PLLSRC;
 293:Src/system_stm32f1xx.c ****       
 294:Src/system_stm32f1xx.c **** #if !defined(STM32F105xC) && !defined(STM32F107xC)      
 295:Src/system_stm32f1xx.c ****       pllmull = ( pllmull >> 18U) + 2U;
 296:Src/system_stm32f1xx.c ****       
 297:Src/system_stm32f1xx.c ****       if (pllsource == 0x00U)
 298:Src/system_stm32f1xx.c ****       {
 299:Src/system_stm32f1xx.c ****         /* HSI oscillator clock divided by 2 selected as PLL clock entry */
 300:Src/system_stm32f1xx.c ****         SystemCoreClock = (HSI_VALUE >> 1U) * pllmull;
 301:Src/system_stm32f1xx.c ****       }
 302:Src/system_stm32f1xx.c ****       else
 303:Src/system_stm32f1xx.c ****       {
 304:Src/system_stm32f1xx.c ****  #if defined(STM32F100xB) || defined(STM32F100xE)
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccgfXY27.s 			page 8


 305:Src/system_stm32f1xx.c ****        prediv1factor = (RCC->CFGR2 & RCC_CFGR2_PREDIV1) + 1U;
 306:Src/system_stm32f1xx.c ****        /* HSE oscillator clock selected as PREDIV1 clock entry */
 307:Src/system_stm32f1xx.c ****        SystemCoreClock = (HSE_VALUE / prediv1factor) * pllmull; 
 308:Src/system_stm32f1xx.c ****  #else
 309:Src/system_stm32f1xx.c ****         /* HSE selected as PLL clock entry */
 310:Src/system_stm32f1xx.c ****         if ((RCC->CFGR & RCC_CFGR_PLLXTPRE) != (uint32_t)RESET)
 311:Src/system_stm32f1xx.c ****         {/* HSE oscillator clock divided by 2 */
 312:Src/system_stm32f1xx.c ****           SystemCoreClock = (HSE_VALUE >> 1U) * pllmull;
 313:Src/system_stm32f1xx.c ****         }
 314:Src/system_stm32f1xx.c ****         else
 315:Src/system_stm32f1xx.c ****         {
 316:Src/system_stm32f1xx.c ****           SystemCoreClock = HSE_VALUE * pllmull;
 317:Src/system_stm32f1xx.c ****         }
 318:Src/system_stm32f1xx.c ****  #endif
 319:Src/system_stm32f1xx.c ****       }
 320:Src/system_stm32f1xx.c **** #else
 321:Src/system_stm32f1xx.c ****       pllmull = pllmull >> 18U;
 322:Src/system_stm32f1xx.c ****       
 323:Src/system_stm32f1xx.c ****       if (pllmull != 0x0DU)
 324:Src/system_stm32f1xx.c ****       {
 325:Src/system_stm32f1xx.c ****          pllmull += 2U;
 326:Src/system_stm32f1xx.c ****       }
 327:Src/system_stm32f1xx.c ****       else
 328:Src/system_stm32f1xx.c ****       { /* PLL multiplication factor = PLL input clock * 6.5 */
 329:Src/system_stm32f1xx.c ****         pllmull = 13U / 2U; 
 330:Src/system_stm32f1xx.c ****       }
 331:Src/system_stm32f1xx.c ****             
 332:Src/system_stm32f1xx.c ****       if (pllsource == 0x00U)
 333:Src/system_stm32f1xx.c ****       {
 334:Src/system_stm32f1xx.c ****         /* HSI oscillator clock divided by 2 selected as PLL clock entry */
 335:Src/system_stm32f1xx.c ****         SystemCoreClock = (HSI_VALUE >> 1U) * pllmull;
 336:Src/system_stm32f1xx.c ****       }
 337:Src/system_stm32f1xx.c ****       else
 338:Src/system_stm32f1xx.c ****       {/* PREDIV1 selected as PLL clock entry */
 339:Src/system_stm32f1xx.c ****         
 340:Src/system_stm32f1xx.c ****         /* Get PREDIV1 clock source and division factor */
 341:Src/system_stm32f1xx.c ****         prediv1source = RCC->CFGR2 & RCC_CFGR2_PREDIV1SRC;
 342:Src/system_stm32f1xx.c ****         prediv1factor = (RCC->CFGR2 & RCC_CFGR2_PREDIV1) + 1U;
 343:Src/system_stm32f1xx.c ****         
 344:Src/system_stm32f1xx.c ****         if (prediv1source == 0U)
 345:Src/system_stm32f1xx.c ****         { 
 346:Src/system_stm32f1xx.c ****           /* HSE oscillator clock selected as PREDIV1 clock entry */
 347:Src/system_stm32f1xx.c ****           SystemCoreClock = (HSE_VALUE / prediv1factor) * pllmull;          
 348:Src/system_stm32f1xx.c ****         }
 349:Src/system_stm32f1xx.c ****         else
 350:Src/system_stm32f1xx.c ****         {/* PLL2 clock selected as PREDIV1 clock entry */
 351:Src/system_stm32f1xx.c ****           
 352:Src/system_stm32f1xx.c ****           /* Get PREDIV2 division factor and PLL2 multiplication factor */
 353:Src/system_stm32f1xx.c ****           prediv2factor = ((RCC->CFGR2 & RCC_CFGR2_PREDIV2) >> 4U) + 1U;
 354:Src/system_stm32f1xx.c ****           pll2mull = ((RCC->CFGR2 & RCC_CFGR2_PLL2MUL) >> 8U) + 2U; 
 355:Src/system_stm32f1xx.c ****           SystemCoreClock = (((HSE_VALUE / prediv2factor) * pll2mull) / prediv1factor) * pllmull;  
 356:Src/system_stm32f1xx.c ****         }
 357:Src/system_stm32f1xx.c ****       }
 358:Src/system_stm32f1xx.c **** #endif /* STM32F105xC */ 
 359:Src/system_stm32f1xx.c ****       break;
 360:Src/system_stm32f1xx.c **** 
 361:Src/system_stm32f1xx.c ****     default:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccgfXY27.s 			page 9


 362:Src/system_stm32f1xx.c ****       SystemCoreClock = HSI_VALUE;
  99              		.loc 1 362 0
 100 0012 1C4B     		ldr	r3, .L15+4
 101              	.LVL2:
 102 0014 1C4A     		ldr	r2, .L15+8
 103 0016 1A60     		str	r2, [r3]
 363:Src/system_stm32f1xx.c ****       break;
 104              		.loc 1 363 0
 105 0018 02E0     		b	.L9
 106              	.LVL3:
 107              	.L13:
 283:Src/system_stm32f1xx.c ****       break;
 108              		.loc 1 283 0
 109 001a 1A4B     		ldr	r3, .L15+4
 110              	.LVL4:
 111 001c 1A4A     		ldr	r2, .L15+8
 112 001e 1A60     		str	r2, [r3]
 113              	.LVL5:
 114              	.L9:
 364:Src/system_stm32f1xx.c ****   }
 365:Src/system_stm32f1xx.c ****   
 366:Src/system_stm32f1xx.c ****   /* Compute HCLK clock frequency ----------------*/
 367:Src/system_stm32f1xx.c ****   /* Get HCLK prescaler */
 368:Src/system_stm32f1xx.c ****   tmp = AHBPrescTable[((RCC->CFGR & RCC_CFGR_HPRE) >> 4U)];
 115              		.loc 1 368 0
 116 0020 174B     		ldr	r3, .L15
 117 0022 5B68     		ldr	r3, [r3, #4]
 118 0024 C3F30313 		ubfx	r3, r3, #4, #4
 119 0028 184A     		ldr	r2, .L15+12
 120 002a D15C     		ldrb	r1, [r2, r3]	@ zero_extendqisi2
 121              	.LVL6:
 369:Src/system_stm32f1xx.c ****   /* HCLK clock frequency */
 370:Src/system_stm32f1xx.c ****   SystemCoreClock >>= tmp;  
 122              		.loc 1 370 0
 123 002c 154A     		ldr	r2, .L15+4
 124 002e 1368     		ldr	r3, [r2]
 125 0030 CB40     		lsrs	r3, r3, r1
 126 0032 1360     		str	r3, [r2]
 371:Src/system_stm32f1xx.c **** }
 127              		.loc 1 371 0
 128 0034 7047     		bx	lr
 129              	.LVL7:
 130              	.L6:
 286:Src/system_stm32f1xx.c ****       break;
 131              		.loc 1 286 0
 132 0036 134B     		ldr	r3, .L15+4
 133              	.LVL8:
 134 0038 134A     		ldr	r2, .L15+8
 135 003a 1A60     		str	r2, [r3]
 287:Src/system_stm32f1xx.c ****     case 0x08U:  /* PLL used as system clock */
 136              		.loc 1 287 0
 137 003c F0E7     		b	.L9
 138              	.LVL9:
 139              	.L7:
 291:Src/system_stm32f1xx.c ****       pllsource = RCC->CFGR & RCC_CFGR_PLLSRC;
 140              		.loc 1 291 0
 141 003e 104A     		ldr	r2, .L15
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccgfXY27.s 			page 10


 142 0040 5368     		ldr	r3, [r2, #4]
 143              	.LVL10:
 292:Src/system_stm32f1xx.c ****       
 144              		.loc 1 292 0
 145 0042 5268     		ldr	r2, [r2, #4]
 146              	.LVL11:
 295:Src/system_stm32f1xx.c ****       
 147              		.loc 1 295 0
 148 0044 C3F38343 		ubfx	r3, r3, #18, #4
 149              	.LVL12:
 150 0048 0233     		adds	r3, r3, #2
 151              	.LVL13:
 297:Src/system_stm32f1xx.c ****       {
 152              		.loc 1 297 0
 153 004a 12F4803F 		tst	r2, #65536
 154 004e 0AD0     		beq	.L14
 310:Src/system_stm32f1xx.c ****         {/* HSE oscillator clock divided by 2 */
 155              		.loc 1 310 0
 156 0050 0B4A     		ldr	r2, .L15
 157              	.LVL14:
 158 0052 5268     		ldr	r2, [r2, #4]
 159 0054 12F4003F 		tst	r2, #131072
 160 0058 0BD0     		beq	.L11
 312:Src/system_stm32f1xx.c ****         }
 161              		.loc 1 312 0
 162 005a 0D4A     		ldr	r2, .L15+16
 163 005c 02FB03F3 		mul	r3, r2, r3
 164              	.LVL15:
 165 0060 084A     		ldr	r2, .L15+4
 166 0062 1360     		str	r3, [r2]
 167 0064 DCE7     		b	.L9
 168              	.LVL16:
 169              	.L14:
 300:Src/system_stm32f1xx.c ****       }
 170              		.loc 1 300 0
 171 0066 0A4A     		ldr	r2, .L15+16
 172              	.LVL17:
 173 0068 02FB03F3 		mul	r3, r2, r3
 174              	.LVL18:
 175 006c 054A     		ldr	r2, .L15+4
 176 006e 1360     		str	r3, [r2]
 177 0070 D6E7     		b	.L9
 178              	.LVL19:
 179              	.L11:
 316:Src/system_stm32f1xx.c ****         }
 180              		.loc 1 316 0
 181 0072 054A     		ldr	r2, .L15+8
 182 0074 02FB03F3 		mul	r3, r2, r3
 183              	.LVL20:
 184 0078 024A     		ldr	r2, .L15+4
 185 007a 1360     		str	r3, [r2]
 186 007c D0E7     		b	.L9
 187              	.L16:
 188 007e 00BF     		.align	2
 189              	.L15:
 190 0080 00100240 		.word	1073876992
 191 0084 00000000 		.word	.LANCHOR0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccgfXY27.s 			page 11


 192 0088 00127A00 		.word	8000000
 193 008c 00000000 		.word	.LANCHOR1
 194 0090 00093D00 		.word	4000000
 195              		.cfi_endproc
 196              	.LFE67:
 198              		.global	APBPrescTable
 199              		.global	AHBPrescTable
 200              		.global	SystemCoreClock
 201              		.section	.data.SystemCoreClock,"aw",%progbits
 202              		.align	2
 203              		.set	.LANCHOR0,. + 0
 206              	SystemCoreClock:
 207 0000 00A24A04 		.word	72000000
 208              		.section	.rodata.AHBPrescTable,"a",%progbits
 209              		.align	2
 210              		.set	.LANCHOR1,. + 0
 213              	AHBPrescTable:
 214 0000 00       		.byte	0
 215 0001 00       		.byte	0
 216 0002 00       		.byte	0
 217 0003 00       		.byte	0
 218 0004 00       		.byte	0
 219 0005 00       		.byte	0
 220 0006 00       		.byte	0
 221 0007 00       		.byte	0
 222 0008 01       		.byte	1
 223 0009 02       		.byte	2
 224 000a 03       		.byte	3
 225 000b 04       		.byte	4
 226 000c 06       		.byte	6
 227 000d 07       		.byte	7
 228 000e 08       		.byte	8
 229 000f 09       		.byte	9
 230              		.section	.rodata.APBPrescTable,"a",%progbits
 231              		.align	2
 234              	APBPrescTable:
 235 0000 00       		.byte	0
 236 0001 00       		.byte	0
 237 0002 00       		.byte	0
 238 0003 00       		.byte	0
 239 0004 01       		.byte	1
 240 0005 02       		.byte	2
 241 0006 03       		.byte	3
 242 0007 04       		.byte	4
 243              		.text
 244              	.Letext0:
 245              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 246              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 247              		.file 4 "Drivers/CMSIS/Include/core_cm3.h"
 248              		.file 5 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/system_stm32f1xx.h"
 249              		.file 6 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
 250              		.file 7 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 251              		.file 8 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 252              		.file 9 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\lib\\gcc\\arm-none-eab
 253              		.file 10 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\includ
 254              		.file 11 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccgfXY27.s 			page 12


DEFINED SYMBOLS
                            *ABS*:00000000 system_stm32f1xx.c
C:\Users\crist\AppData\Local\Temp\ccgfXY27.s:16     .text.SystemInit:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccgfXY27.s:23     .text.SystemInit:00000000 SystemInit
C:\Users\crist\AppData\Local\Temp\ccgfXY27.s:66     .text.SystemInit:00000040 $d
C:\Users\crist\AppData\Local\Temp\ccgfXY27.s:73     .text.SystemCoreClockUpdate:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccgfXY27.s:80     .text.SystemCoreClockUpdate:00000000 SystemCoreClockUpdate
C:\Users\crist\AppData\Local\Temp\ccgfXY27.s:190    .text.SystemCoreClockUpdate:00000080 $d
C:\Users\crist\AppData\Local\Temp\ccgfXY27.s:234    .rodata.APBPrescTable:00000000 APBPrescTable
C:\Users\crist\AppData\Local\Temp\ccgfXY27.s:213    .rodata.AHBPrescTable:00000000 AHBPrescTable
C:\Users\crist\AppData\Local\Temp\ccgfXY27.s:206    .data.SystemCoreClock:00000000 SystemCoreClock
C:\Users\crist\AppData\Local\Temp\ccgfXY27.s:202    .data.SystemCoreClock:00000000 $d
C:\Users\crist\AppData\Local\Temp\ccgfXY27.s:209    .rodata.AHBPrescTable:00000000 $d
C:\Users\crist\AppData\Local\Temp\ccgfXY27.s:231    .rodata.APBPrescTable:00000000 $d

NO UNDEFINED SYMBOLS
