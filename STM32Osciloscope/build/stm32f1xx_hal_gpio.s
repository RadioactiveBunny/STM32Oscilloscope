ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 1


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
  11              		.file	"stm32f1xx_hal_gpio.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.HAL_GPIO_Init,"ax",%progbits
  16              		.align	1
  17              		.global	HAL_GPIO_Init
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu softvfp
  23              	HAL_GPIO_Init:
  24              	.LFB66:
  25              		.file 1 "Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c"
   1:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /**
   2:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   ******************************************************************************
   3:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @file    stm32f1xx_hal_gpio.c
   4:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @author  MCD Application Team
   5:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @brief   GPIO HAL module driver.
   6:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *          This file provides firmware functions to manage the following
   7:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *          functionalities of the General Purpose Input/Output (GPIO) peripheral:
   8:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *           + Initialization and de-initialization functions
   9:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *           + IO operation functions
  10:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *
  11:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   @verbatim
  12:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   ==============================================================================
  13:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****                     ##### GPIO Peripheral features #####
  14:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   ==============================================================================
  15:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   [..]
  16:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   Subject to the specific hardware characteristics of each I/O port listed in the datasheet, each
  17:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   port bit of the General Purpose IO (GPIO) Ports, can be individually configured by software
  18:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   in several modes:
  19:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   (+) Input mode
  20:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   (+) Analog mode
  21:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   (+) Output mode
  22:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   (+) Alternate function mode
  23:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   (+) External interrupt/event lines
  24:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
  25:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   [..]
  26:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   During and just after reset, the alternate functions and external interrupt
  27:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   lines are not active and the I/O ports are configured in input floating mode.
  28:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
  29:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   [..]
  30:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   All GPIO pins have weak internal pull-up and pull-down resistors, which can be
  31:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   activated or not.
  32:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
  33:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   [..]
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 2


  34:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   In Output or Alternate mode, each IO can be configured on open-drain or push-pull
  35:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   type and the IO speed can be selected depending on the VDD value.
  36:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
  37:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   [..]
  38:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   All ports have external interrupt/event capability. To use external interrupt
  39:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   lines, the port must be configured in input mode. All available GPIO pins are
  40:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   connected to the 16 external interrupt/event lines from EXTI0 to EXTI15.
  41:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
  42:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   [..]
  43:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   The external interrupt/event controller consists of up to 20 edge detectors in connectivity
  44:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   line devices, or 19 edge detectors in other devices for generating event/interrupt requests.
  45:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   Each input line can be independently configured to select the type (event or interrupt) and
  46:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   the corresponding trigger event (rising or falling or both). Each line can also masked
  47:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   independently. A pending register maintains the status line of the interrupt requests
  48:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
  49:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****                      ##### How to use this driver #####
  50:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   ==============================================================================
  51:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****  [..]
  52:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****    (#) Enable the GPIO APB2 clock using the following function : __HAL_RCC_GPIOx_CLK_ENABLE().
  53:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
  54:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****    (#) Configure the GPIO pin(s) using HAL_GPIO_Init().
  55:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****        (++) Configure the IO mode using "Mode" member from GPIO_InitTypeDef structure
  56:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****        (++) Activate Pull-up, Pull-down resistor using "Pull" member from GPIO_InitTypeDef
  57:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****             structure.
  58:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****        (++) In case of Output or alternate function mode selection: the speed is
  59:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****             configured through "Speed" member from GPIO_InitTypeDef structure
  60:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****        (++) Analog mode is required when a pin is to be used as ADC channel
  61:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****             or DAC output.
  62:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****        (++) In case of external interrupt/event selection the "Mode" member from
  63:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****             GPIO_InitTypeDef structure select the type (interrupt or event) and
  64:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****             the corresponding trigger event (rising or falling or both).
  65:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
  66:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****    (#) In case of external interrupt/event mode selection, configure NVIC IRQ priority
  67:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****        mapped to the EXTI line using HAL_NVIC_SetPriority() and enable it using
  68:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****        HAL_NVIC_EnableIRQ().
  69:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
  70:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****    (#) To get the level of a pin configured in input mode use HAL_GPIO_ReadPin().
  71:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
  72:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****    (#) To set/reset the level of a pin configured in output mode use
  73:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****        HAL_GPIO_WritePin()/HAL_GPIO_TogglePin().
  74:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
  75:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****    (#) To lock pin configuration until next reset use HAL_GPIO_LockPin().
  76:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
  77:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****    (#) During and just after reset, the alternate functions are not
  78:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****        active and the GPIO pins are configured in input floating mode (except JTAG
  79:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****        pins).
  80:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
  81:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****    (#) The LSE oscillator pins OSC32_IN and OSC32_OUT can be used as general purpose
  82:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****        (PC14 and PC15, respectively) when the LSE oscillator is off. The LSE has
  83:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****        priority over the GPIO function.
  84:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
  85:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****    (#) The HSE oscillator pins OSC_IN/OSC_OUT can be used as
  86:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****        general purpose PD0 and PD1, respectively, when the HSE oscillator is off.
  87:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****        The HSE has priority over the GPIO function.
  88:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
  89:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   @endverbatim
  90:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   ******************************************************************************
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 3


  91:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @attention
  92:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *
  93:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
  94:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *
  95:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * Redistribution and use in source and binary forms, with or without modification,
  96:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * are permitted provided that the following conditions are met:
  97:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  98:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *      this list of conditions and the following disclaimer.
  99:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
 100:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *      this list of conditions and the following disclaimer in the documentation
 101:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *      and/or other materials provided with the distribution.
 102:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
 103:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *      may be used to endorse or promote products derived from this software
 104:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *      without specific prior written permission.
 105:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *
 106:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 107:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 108:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 109:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 110:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 111:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 112:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 113:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 114:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 115:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 116:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *
 117:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   ******************************************************************************
 118:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   */
 119:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 120:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /* Includes ------------------------------------------------------------------*/
 121:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** #include "stm32f1xx_hal.h"
 122:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 123:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /** @addtogroup STM32F1xx_HAL_Driver
 124:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @{
 125:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   */
 126:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 127:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /** @defgroup GPIO GPIO
 128:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @brief GPIO HAL module driver
 129:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @{
 130:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   */
 131:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 132:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** #ifdef HAL_GPIO_MODULE_ENABLED
 133:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 134:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /* Private typedef -----------------------------------------------------------*/
 135:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /* Private define ------------------------------------------------------------*/
 136:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /** @addtogroup GPIO_Private_Constants GPIO Private Constants
 137:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @{
 138:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   */
 139:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** #define GPIO_MODE             0x00000003U
 140:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** #define EXTI_MODE             0x10000000U
 141:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** #define GPIO_MODE_IT          0x00010000U
 142:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** #define GPIO_MODE_EVT         0x00020000U
 143:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** #define RISING_EDGE           0x00100000U
 144:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** #define FALLING_EDGE          0x00200000U
 145:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** #define GPIO_OUTPUT_TYPE      0x00000010U
 146:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 147:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** #define GPIO_NUMBER           16U
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 4


 148:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 149:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /* Definitions for bit manipulation of CRL and CRH register */
 150:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** #define  GPIO_CR_MODE_INPUT         0x00000000U /*!< 00: Input mode (reset state)  */
 151:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** #define  GPIO_CR_CNF_ANALOG         0x00000000U /*!< 00: Analog mode  */
 152:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** #define  GPIO_CR_CNF_INPUT_FLOATING 0x00000004U /*!< 01: Floating input (reset state)  */
 153:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** #define  GPIO_CR_CNF_INPUT_PU_PD    0x00000008U /*!< 10: Input with pull-up / pull-down  */
 154:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** #define  GPIO_CR_CNF_GP_OUTPUT_PP   0x00000000U /*!< 00: General purpose output push-pull  */
 155:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** #define  GPIO_CR_CNF_GP_OUTPUT_OD   0x00000004U /*!< 01: General purpose output Open-drain  */
 156:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** #define  GPIO_CR_CNF_AF_OUTPUT_PP   0x00000008U /*!< 10: Alternate function output Push-pull  */
 157:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** #define  GPIO_CR_CNF_AF_OUTPUT_OD   0x0000000CU /*!< 11: Alternate function output Open-drain  */
 158:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 159:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /**
 160:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @}
 161:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   */
 162:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /* Private macro -------------------------------------------------------------*/
 163:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /* Private variables ---------------------------------------------------------*/
 164:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /* Private function prototypes -----------------------------------------------*/
 165:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /* Private functions ---------------------------------------------------------*/
 166:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /* Exported functions --------------------------------------------------------*/
 167:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /** @defgroup GPIO_Exported_Functions GPIO Exported Functions
 168:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @{
 169:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   */
 170:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 171:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /** @defgroup GPIO_Exported_Functions_Group1 Initialization and de-initialization functions
 172:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****  *  @brief    Initialization and Configuration functions
 173:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****  *
 174:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** @verbatim
 175:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****  ===============================================================================
 176:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****               ##### Initialization and de-initialization functions #####
 177:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****  ===============================================================================
 178:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   [..]
 179:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     This section provides functions allowing to initialize and de-initialize the GPIOs
 180:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     to be ready for use.
 181:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 182:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** @endverbatim
 183:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @{
 184:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   */
 185:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 186:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 187:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /**
 188:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @brief  Initializes the GPIOx peripheral according to the specified parameters in the GPIO_Init
 189:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @param  GPIOx: where x can be (A..G depending on device used) to select the GPIO peripheral
 190:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @param  GPIO_Init: pointer to a GPIO_InitTypeDef structure that contains
 191:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *         the configuration information for the specified GPIO peripheral.
 192:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @retval None
 193:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   */
 194:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** void HAL_GPIO_Init(GPIO_TypeDef  *GPIOx, GPIO_InitTypeDef *GPIO_Init)
 195:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** {
  26              		.loc 1 195 0
  27              		.cfi_startproc
  28              		@ args = 0, pretend = 0, frame = 8
  29              		@ frame_needed = 0, uses_anonymous_args = 0
  30              		@ link register save eliminated.
  31              	.LVL0:
  32 0000 F0B4     		push	{r4, r5, r6, r7}
  33              	.LCFI0:
  34              		.cfi_def_cfa_offset 16
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 5


  35              		.cfi_offset 4, -16
  36              		.cfi_offset 5, -12
  37              		.cfi_offset 6, -8
  38              		.cfi_offset 7, -4
  39 0002 82B0     		sub	sp, sp, #8
  40              	.LCFI1:
  41              		.cfi_def_cfa_offset 24
  42              	.LVL1:
 196:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   uint32_t position;
 197:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   uint32_t ioposition = 0x00U;
 198:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   uint32_t iocurrent = 0x00U;
 199:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   uint32_t temp = 0x00U;
 200:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   uint32_t config = 0x00U;
  43              		.loc 1 200 0
  44 0004 0026     		movs	r6, #0
 201:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   __IO uint32_t *configregister; /* Store the address of CRL or CRH register based on pin number */
 202:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   uint32_t registeroffset = 0U; /* offset used during computation of CNF and MODE bits placement in
 203:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 204:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   /* Check the parameters */
 205:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   assert_param(IS_GPIO_ALL_INSTANCE(GPIOx));
 206:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   assert_param(IS_GPIO_PIN(GPIO_Init->Pin));
 207:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   assert_param(IS_GPIO_MODE(GPIO_Init->Mode));
 208:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 209:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   /* Configure the port pins */
 210:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   for (position = 0U; position < GPIO_NUMBER; position++)
  45              		.loc 1 210 0
  46 0006 3546     		mov	r5, r6
  47 0008 A1E0     		b	.L2
  48              	.LVL2:
  49              	.L39:
 211:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   {
 212:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     /* Get the IO position */
 213:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     ioposition = (0x01U << position);
 214:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 215:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     /* Get the current IO position */
 216:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     iocurrent = (uint32_t)(GPIO_Init->Pin) & ioposition;
 217:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 218:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     if (iocurrent == ioposition)
 219:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     {
 220:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       /* Check the Alternate function parameters */
 221:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       assert_param(IS_GPIO_AF_INSTANCE(GPIOx));
 222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 223:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       /* Based on the required mode, filling config variable with MODEy[1:0] and CNFy[3:2] correspo
 224:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       switch (GPIO_Init->Mode)
  50              		.loc 1 224 0
  51 000a 002C     		cmp	r4, #0
  52 000c 59D0     		beq	.L9
  53 000e 012C     		cmp	r4, #1
  54 0010 00D1     		bne	.L11
 225:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       {
 226:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         /* If we are configuring the pin in OUTPUT push-pull mode */
 227:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         case GPIO_MODE_OUTPUT_PP:
 228:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           /* Check the GPIO speed parameter */
 229:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           assert_param(IS_GPIO_SPEED(GPIO_Init->Speed));
 230:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           config = GPIO_Init->Speed + GPIO_CR_CNF_GP_OUTPUT_PP;
  55              		.loc 1 230 0
  56 0012 CE68     		ldr	r6, [r1, #12]
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 6


  57              	.LVL3:
  58              	.L11:
 231:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           break;
 232:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 233:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         /* If we are configuring the pin in OUTPUT open-drain mode */
 234:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         case GPIO_MODE_OUTPUT_OD:
 235:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           /* Check the GPIO speed parameter */
 236:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           assert_param(IS_GPIO_SPEED(GPIO_Init->Speed));
 237:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           config = GPIO_Init->Speed + GPIO_CR_CNF_GP_OUTPUT_OD;
 238:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           break;
 239:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 240:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         /* If we are configuring the pin in ALTERNATE FUNCTION push-pull mode */
 241:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         case GPIO_MODE_AF_PP:
 242:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           /* Check the GPIO speed parameter */
 243:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           assert_param(IS_GPIO_SPEED(GPIO_Init->Speed));
 244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           config = GPIO_Init->Speed + GPIO_CR_CNF_AF_OUTPUT_PP;
 245:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           break;
 246:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 247:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         /* If we are configuring the pin in ALTERNATE FUNCTION open-drain mode */
 248:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         case GPIO_MODE_AF_OD:
 249:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           /* Check the GPIO speed parameter */
 250:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           assert_param(IS_GPIO_SPEED(GPIO_Init->Speed));
 251:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           config = GPIO_Init->Speed + GPIO_CR_CNF_AF_OUTPUT_OD;
 252:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           break;
 253:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 254:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         /* If we are configuring the pin in INPUT (also applicable to EVENT and IT mode) */
 255:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         case GPIO_MODE_INPUT:
 256:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         case GPIO_MODE_IT_RISING:
 257:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         case GPIO_MODE_IT_FALLING:
 258:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         case GPIO_MODE_IT_RISING_FALLING:
 259:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         case GPIO_MODE_EVT_RISING:
 260:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         case GPIO_MODE_EVT_FALLING:
 261:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         case GPIO_MODE_EVT_RISING_FALLING:
 262:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           /* Check the GPIO pull parameter */
 263:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           assert_param(IS_GPIO_PULL(GPIO_Init->Pull));
 264:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           if (GPIO_Init->Pull == GPIO_NOPULL)
 265:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           {
 266:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****             config = GPIO_CR_MODE_INPUT + GPIO_CR_CNF_INPUT_FLOATING;
 267:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           }
 268:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           else if (GPIO_Init->Pull == GPIO_PULLUP)
 269:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           {
 270:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****             config = GPIO_CR_MODE_INPUT + GPIO_CR_CNF_INPUT_PU_PD;
 271:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 272:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****             /* Set the corresponding ODR bit */
 273:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****             GPIOx->BSRR = ioposition;
 274:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           }
 275:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           else /* GPIO_PULLDOWN */
 276:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           {
 277:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****             config = GPIO_CR_MODE_INPUT + GPIO_CR_CNF_INPUT_PU_PD;
 278:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 279:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****             /* Reset the corresponding ODR bit */
 280:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****             GPIOx->BRR = ioposition;
 281:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           }
 282:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           break;
 283:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 284:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         /* If we are configuring the pin in INPUT analog mode */
 285:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         case GPIO_MODE_ANALOG:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 7


 286:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           config = GPIO_CR_MODE_INPUT + GPIO_CR_CNF_ANALOG;
 287:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           break;
 288:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 289:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         /* Parameters are checked with assert_param */
 290:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         default:
 291:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           break;
 292:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       }
 293:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 294:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       /* Check if the current bit belongs to first half or last half of the pin count number
 295:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****        in order to address CRH or CRL register*/
 296:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       configregister = (iocurrent < GPIO_PIN_8) ? &GPIOx->CRL     : &GPIOx->CRH;
  59              		.loc 1 296 0
  60 0014 FF2B     		cmp	r3, #255
  61 0016 68D8     		bhi	.L15
  62              		.loc 1 296 0 is_stmt 0 discriminator 1
  63 0018 8446     		mov	ip, r0
  64              	.L16:
  65              	.LVL4:
 297:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       registeroffset = (iocurrent < GPIO_PIN_8) ? (position << 2U) : ((position - 8U) << 2U);
  66              		.loc 1 297 0 is_stmt 1 discriminator 4
  67 001a FF2B     		cmp	r3, #255
  68 001c 68D8     		bhi	.L17
  69              		.loc 1 297 0 is_stmt 0 discriminator 1
  70 001e AC00     		lsls	r4, r5, #2
  71              	.L18:
  72              	.LVL5:
 298:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 299:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       /* Apply the new configuration of the pin to the register */
 300:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       MODIFY_REG((*configregister), ((GPIO_CRL_MODE0 | GPIO_CRL_CNF0) << registeroffset), (config <
  73              		.loc 1 300 0 is_stmt 1 discriminator 4
  74 0020 DCF80020 		ldr	r2, [ip]
  75              	.LVL6:
  76 0024 0F27     		movs	r7, #15
  77 0026 A740     		lsls	r7, r7, r4
  78 0028 22EA0702 		bic	r2, r2, r7
  79 002c 06FA04F4 		lsl	r4, r6, r4
  80              	.LVL7:
  81 0030 2243     		orrs	r2, r2, r4
  82 0032 CCF80020 		str	r2, [ip]
 301:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 302:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       /*--------------------- EXTI Mode Configuration ------------------------*/
 303:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       /* Configure the External Interrupt or event for the current IO */
 304:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       if ((GPIO_Init->Mode & EXTI_MODE) == EXTI_MODE)
  83              		.loc 1 304 0 discriminator 4
  84 0036 4A68     		ldr	r2, [r1, #4]
  85 0038 12F0805F 		tst	r2, #268435456
  86 003c 00F08680 		beq	.L3
  87              	.LBB2:
 305:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       {
 306:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         /* Enable AFIO Clock */
 307:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         __HAL_RCC_AFIO_CLK_ENABLE();
  88              		.loc 1 307 0
  89 0040 5E4A     		ldr	r2, .L40
  90 0042 9469     		ldr	r4, [r2, #24]
  91 0044 44F00104 		orr	r4, r4, #1
  92 0048 9461     		str	r4, [r2, #24]
  93 004a 9269     		ldr	r2, [r2, #24]
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 8


  94 004c 02F00102 		and	r2, r2, #1
  95 0050 0192     		str	r2, [sp, #4]
  96 0052 019A     		ldr	r2, [sp, #4]
  97              	.LBE2:
 308:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         temp = AFIO->EXTICR[position >> 2U];
  98              		.loc 1 308 0
  99 0054 AC08     		lsrs	r4, r5, #2
 100 0056 A71C     		adds	r7, r4, #2
 101 0058 594A     		ldr	r2, .L40+4
 102 005a 52F82720 		ldr	r2, [r2, r7, lsl #2]
 103              	.LVL8:
 309:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         CLEAR_BIT(temp, (0x0FU) << (4U * (position & 0x03U)));
 104              		.loc 1 309 0
 105 005e 05F00307 		and	r7, r5, #3
 106 0062 BF00     		lsls	r7, r7, #2
 107 0064 4FF00F0C 		mov	ip, #15
 108              	.LVL9:
 109 0068 0CFA07FC 		lsl	ip, ip, r7
 110 006c 22EA0C0C 		bic	ip, r2, ip
 111              	.LVL10:
 310:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         SET_BIT(temp, (GPIO_GET_INDEX(GPIOx)) << (4U * (position & 0x03U)));
 112              		.loc 1 310 0
 113 0070 544A     		ldr	r2, .L40+8
 114 0072 9042     		cmp	r0, r2
 115 0074 42D0     		beq	.L30
 116              		.loc 1 310 0 is_stmt 0 discriminator 1
 117 0076 02F58062 		add	r2, r2, #1024
 118 007a 9042     		cmp	r0, r2
 119 007c 7FD0     		beq	.L31
 120              		.loc 1 310 0 discriminator 3
 121 007e 02F58062 		add	r2, r2, #1024
 122 0082 9042     		cmp	r0, r2
 123 0084 7DD0     		beq	.L32
 124              		.loc 1 310 0 discriminator 5
 125 0086 02F58062 		add	r2, r2, #1024
 126 008a 9042     		cmp	r0, r2
 127 008c 34D0     		beq	.L35
 128              		.loc 1 310 0
 129 008e 0422     		movs	r2, #4
 130 0090 35E0     		b	.L19
 131              	.LVL11:
 132              	.L6:
 224:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       {
 133              		.loc 1 224 0 is_stmt 1
 134 0092 4D4F     		ldr	r7, .L40+12
 135 0094 BC42     		cmp	r4, r7
 136 0096 14D0     		beq	.L9
 137 0098 0BD9     		bls	.L36
 138 009a 4C4F     		ldr	r7, .L40+16
 139 009c BC42     		cmp	r4, r7
 140 009e 10D0     		beq	.L9
 141 00a0 07F58037 		add	r7, r7, #65536
 142 00a4 BC42     		cmp	r4, r7
 143 00a6 0CD0     		beq	.L9
 144 00a8 A7F58017 		sub	r7, r7, #1048576
 145 00ac BC42     		cmp	r4, r7
 146 00ae B1D1     		bne	.L11
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 9


 147 00b0 07E0     		b	.L9
 148              	.L36:
 149 00b2 A7F58017 		sub	r7, r7, #1048576
 150 00b6 BC42     		cmp	r4, r7
 151 00b8 03D0     		beq	.L9
 152 00ba 07F58037 		add	r7, r7, #65536
 153 00be BC42     		cmp	r4, r7
 154 00c0 A8D1     		bne	.L11
 155              	.L9:
 264:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           {
 156              		.loc 1 264 0
 157 00c2 8C68     		ldr	r4, [r1, #8]
 158 00c4 7CB1     		cbz	r4, .L29
 268:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           {
 159              		.loc 1 268 0
 160 00c6 012C     		cmp	r4, #1
 161 00c8 08D0     		beq	.L37
 162              	.LVL12:
 280:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           }
 163              		.loc 1 280 0
 164 00ca 4261     		str	r2, [r0, #20]
 277:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 165              		.loc 1 277 0
 166 00cc 0826     		movs	r6, #8
 167 00ce A1E7     		b	.L11
 168              	.LVL13:
 169              	.L7:
 244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           break;
 170              		.loc 1 244 0
 171 00d0 CE68     		ldr	r6, [r1, #12]
 172              	.LVL14:
 173 00d2 0836     		adds	r6, r6, #8
 174              	.LVL15:
 245:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 175              		.loc 1 245 0
 176 00d4 9EE7     		b	.L11
 177              	.L5:
 251:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           break;
 178              		.loc 1 251 0
 179 00d6 CE68     		ldr	r6, [r1, #12]
 180              	.LVL16:
 181 00d8 0C36     		adds	r6, r6, #12
 182              	.LVL17:
 252:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 183              		.loc 1 252 0
 184 00da 9BE7     		b	.L11
 185              	.L37:
 186              	.LVL18:
 273:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           }
 187              		.loc 1 273 0
 188 00dc 0261     		str	r2, [r0, #16]
 270:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 189              		.loc 1 270 0
 190 00de 0826     		movs	r6, #8
 191 00e0 98E7     		b	.L11
 192              	.LVL19:
 193              	.L28:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 10


 286:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           break;
 194              		.loc 1 286 0
 195 00e2 0026     		movs	r6, #0
 196              	.LVL20:
 197 00e4 96E7     		b	.L11
 198              	.LVL21:
 199              	.L29:
 266:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           }
 200              		.loc 1 266 0
 201 00e6 0426     		movs	r6, #4
 202              	.LVL22:
 203 00e8 94E7     		b	.L11
 204              	.LVL23:
 205              	.L15:
 296:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       registeroffset = (iocurrent < GPIO_PIN_8) ? (position << 2U) : ((position - 8U) << 2U);
 206              		.loc 1 296 0 discriminator 2
 207 00ea 00F1040C 		add	ip, r0, #4
 208 00ee 94E7     		b	.L16
 209              	.LVL24:
 210              	.L17:
 297:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 211              		.loc 1 297 0 discriminator 2
 212 00f0 A5F10804 		sub	r4, r5, #8
 213 00f4 A400     		lsls	r4, r4, #2
 214 00f6 93E7     		b	.L18
 215              	.LVL25:
 216              	.L35:
 217              		.loc 1 310 0
 218 00f8 0322     		movs	r2, #3
 219 00fa 00E0     		b	.L19
 220              	.L30:
 221 00fc 0022     		movs	r2, #0
 222              	.L19:
 223              		.loc 1 310 0 is_stmt 0 discriminator 16
 224 00fe BA40     		lsls	r2, r2, r7
 225 0100 42EA0C02 		orr	r2, r2, ip
 226              	.LVL26:
 311:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         AFIO->EXTICR[position >> 2U] = temp;
 227              		.loc 1 311 0 is_stmt 1 discriminator 16
 228 0104 0234     		adds	r4, r4, #2
 229 0106 2E4F     		ldr	r7, .L40+4
 230 0108 47F82420 		str	r2, [r7, r4, lsl #2]
 312:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 313:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 314:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         /* Configure the interrupt mask */
 315:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         if ((GPIO_Init->Mode & GPIO_MODE_IT) == GPIO_MODE_IT)
 231              		.loc 1 315 0 discriminator 16
 232 010c 4A68     		ldr	r2, [r1, #4]
 233              	.LVL27:
 234 010e 12F4803F 		tst	r2, #65536
 235 0112 38D0     		beq	.L20
 316:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         {
 317:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           SET_BIT(EXTI->IMR, iocurrent);
 236              		.loc 1 317 0
 237 0114 2E4C     		ldr	r4, .L40+20
 238              	.LVL28:
 239 0116 2268     		ldr	r2, [r4]
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 11


 240 0118 1A43     		orrs	r2, r2, r3
 241 011a 2260     		str	r2, [r4]
 242              	.LVL29:
 243              	.L21:
 318:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         }
 319:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         else
 320:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         {
 321:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           CLEAR_BIT(EXTI->IMR, iocurrent);
 322:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         }
 323:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 324:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         /* Configure the event mask */
 325:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         if ((GPIO_Init->Mode & GPIO_MODE_EVT) == GPIO_MODE_EVT)
 244              		.loc 1 325 0
 245 011c 4A68     		ldr	r2, [r1, #4]
 246 011e 12F4003F 		tst	r2, #131072
 247 0122 36D0     		beq	.L22
 326:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         {
 327:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           SET_BIT(EXTI->EMR, iocurrent);
 248              		.loc 1 327 0
 249 0124 2A4C     		ldr	r4, .L40+20
 250 0126 6268     		ldr	r2, [r4, #4]
 251 0128 1A43     		orrs	r2, r2, r3
 252 012a 6260     		str	r2, [r4, #4]
 253              	.L23:
 328:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         }
 329:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         else
 330:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         {
 331:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           CLEAR_BIT(EXTI->EMR, iocurrent);
 332:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         }
 333:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 334:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         /* Enable or disable the rising trigger */
 335:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         if ((GPIO_Init->Mode & RISING_EDGE) == RISING_EDGE)
 254              		.loc 1 335 0
 255 012c 4A68     		ldr	r2, [r1, #4]
 256 012e 12F4801F 		tst	r2, #1048576
 257 0132 34D0     		beq	.L24
 336:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         {
 337:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           SET_BIT(EXTI->RTSR, iocurrent);
 258              		.loc 1 337 0
 259 0134 264C     		ldr	r4, .L40+20
 260 0136 A268     		ldr	r2, [r4, #8]
 261 0138 1A43     		orrs	r2, r2, r3
 262 013a A260     		str	r2, [r4, #8]
 263              	.L25:
 338:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         }
 339:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         else
 340:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         {
 341:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           CLEAR_BIT(EXTI->RTSR, iocurrent);
 342:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         }
 343:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 344:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         /* Enable or disable the falling trigger */
 345:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         if ((GPIO_Init->Mode & FALLING_EDGE) == FALLING_EDGE)
 264              		.loc 1 345 0
 265 013c 4A68     		ldr	r2, [r1, #4]
 266 013e 12F4001F 		tst	r2, #2097152
 267 0142 32D0     		beq	.L26
 346:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         {
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 12


 347:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           SET_BIT(EXTI->FTSR, iocurrent);
 268              		.loc 1 347 0
 269 0144 224C     		ldr	r4, .L40+20
 270 0146 E268     		ldr	r2, [r4, #12]
 271 0148 1343     		orrs	r3, r3, r2
 272              	.LVL30:
 273 014a E360     		str	r3, [r4, #12]
 274              	.L3:
 210:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   {
 275              		.loc 1 210 0 discriminator 2
 276 014c 0135     		adds	r5, r5, #1
 277              	.LVL31:
 278              	.L2:
 210:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   {
 279              		.loc 1 210 0 is_stmt 0 discriminator 1
 280 014e 0F2D     		cmp	r5, #15
 281 0150 31D8     		bhi	.L38
 213:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 282              		.loc 1 213 0 is_stmt 1
 283 0152 0122     		movs	r2, #1
 284 0154 AA40     		lsls	r2, r2, r5
 285              	.LVL32:
 216:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 286              		.loc 1 216 0
 287 0156 0B68     		ldr	r3, [r1]
 288 0158 1340     		ands	r3, r3, r2
 289              	.LVL33:
 218:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     {
 290              		.loc 1 218 0
 291 015a 9A42     		cmp	r2, r3
 292 015c F6D1     		bne	.L3
 224:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       {
 293              		.loc 1 224 0
 294 015e 4C68     		ldr	r4, [r1, #4]
 295 0160 122C     		cmp	r4, #18
 296 0162 B8D0     		beq	.L5
 297 0164 95D8     		bhi	.L6
 298 0166 022C     		cmp	r4, #2
 299 0168 B2D0     		beq	.L7
 300 016a 7FF64EAF 		bls	.L39
 301 016e 032C     		cmp	r4, #3
 302 0170 B7D0     		beq	.L28
 303 0172 112C     		cmp	r4, #17
 304 0174 7FF44EAF 		bne	.L11
 237:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           break;
 305              		.loc 1 237 0
 306 0178 CE68     		ldr	r6, [r1, #12]
 307              	.LVL34:
 308 017a 0436     		adds	r6, r6, #4
 309              	.LVL35:
 238:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 310              		.loc 1 238 0
 311 017c 4AE7     		b	.L11
 312              	.LVL36:
 313              	.L31:
 310:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         AFIO->EXTICR[position >> 2U] = temp;
 314              		.loc 1 310 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 13


 315 017e 0122     		movs	r2, #1
 316              	.LVL37:
 317 0180 BDE7     		b	.L19
 318              	.LVL38:
 319              	.L32:
 320 0182 0222     		movs	r2, #2
 321 0184 BBE7     		b	.L19
 322              	.LVL39:
 323              	.L20:
 321:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         }
 324              		.loc 1 321 0
 325 0186 124C     		ldr	r4, .L40+20
 326              	.LVL40:
 327 0188 2268     		ldr	r2, [r4]
 328 018a 22EA0302 		bic	r2, r2, r3
 329 018e 2260     		str	r2, [r4]
 330              	.LVL41:
 331 0190 C4E7     		b	.L21
 332              	.L22:
 331:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         }
 333              		.loc 1 331 0
 334 0192 0F4C     		ldr	r4, .L40+20
 335 0194 6268     		ldr	r2, [r4, #4]
 336 0196 22EA0302 		bic	r2, r2, r3
 337 019a 6260     		str	r2, [r4, #4]
 338 019c C6E7     		b	.L23
 339              	.L24:
 341:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         }
 340              		.loc 1 341 0
 341 019e 0C4C     		ldr	r4, .L40+20
 342 01a0 A268     		ldr	r2, [r4, #8]
 343 01a2 22EA0302 		bic	r2, r2, r3
 344 01a6 A260     		str	r2, [r4, #8]
 345 01a8 C8E7     		b	.L25
 346              	.L26:
 348:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         }
 349:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         else
 350:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         {
 351:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****           CLEAR_BIT(EXTI->FTSR, iocurrent);
 347              		.loc 1 351 0
 348 01aa 094C     		ldr	r4, .L40+20
 349 01ac E268     		ldr	r2, [r4, #12]
 350 01ae 22EA0303 		bic	r3, r2, r3
 351              	.LVL42:
 352 01b2 E360     		str	r3, [r4, #12]
 353 01b4 CAE7     		b	.L3
 354              	.LVL43:
 355              	.L38:
 352:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         }
 353:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       }
 354:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     }
 355:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   }
 356:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** }
 356              		.loc 1 356 0
 357 01b6 02B0     		add	sp, sp, #8
 358              	.LCFI2:
 359              		.cfi_def_cfa_offset 16
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 14


 360              		@ sp needed
 361 01b8 F0BC     		pop	{r4, r5, r6, r7}
 362              	.LCFI3:
 363              		.cfi_restore 7
 364              		.cfi_restore 6
 365              		.cfi_restore 5
 366              		.cfi_restore 4
 367              		.cfi_def_cfa_offset 0
 368              	.LVL44:
 369 01ba 7047     		bx	lr
 370              	.L41:
 371              		.align	2
 372              	.L40:
 373 01bc 00100240 		.word	1073876992
 374 01c0 00000140 		.word	1073807360
 375 01c4 00080140 		.word	1073809408
 376 01c8 00002110 		.word	270598144
 377 01cc 00003110 		.word	271646720
 378 01d0 00040140 		.word	1073808384
 379              		.cfi_endproc
 380              	.LFE66:
 382              		.section	.text.HAL_GPIO_DeInit,"ax",%progbits
 383              		.align	1
 384              		.global	HAL_GPIO_DeInit
 385              		.syntax unified
 386              		.thumb
 387              		.thumb_func
 388              		.fpu softvfp
 390              	HAL_GPIO_DeInit:
 391              	.LFB67:
 357:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 358:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /**
 359:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @brief  De-initializes the GPIOx peripheral registers to their default reset values.
 360:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @param  GPIOx: where x can be (A..G depending on device used) to select the GPIO peripheral
 361:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @param  GPIO_Pin: specifies the port bit to be written.
 362:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *         This parameter can be one of GPIO_PIN_x where x can be (0..15).
 363:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @retval None
 364:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   */
 365:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** void HAL_GPIO_DeInit(GPIO_TypeDef  *GPIOx, uint32_t GPIO_Pin)
 366:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** {
 392              		.loc 1 366 0
 393              		.cfi_startproc
 394              		@ args = 0, pretend = 0, frame = 0
 395              		@ frame_needed = 0, uses_anonymous_args = 0
 396              		@ link register save eliminated.
 397              	.LVL45:
 398 0000 F0B4     		push	{r4, r5, r6, r7}
 399              	.LCFI4:
 400              		.cfi_def_cfa_offset 16
 401              		.cfi_offset 4, -16
 402              		.cfi_offset 5, -12
 403              		.cfi_offset 6, -8
 404              		.cfi_offset 7, -4
 405              	.LVL46:
 367:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   uint32_t position = 0x00U;
 406              		.loc 1 367 0
 407 0002 0024     		movs	r4, #0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 15


 368:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   uint32_t iocurrent = 0x00U;
 369:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   uint32_t tmp = 0x00U;
 370:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   __IO uint32_t *configregister; /* Store the address of CRL or CRH register based on pin number */
 371:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   uint32_t registeroffset = 0U;
 372:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 373:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   /* Check the parameters */
 374:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   assert_param(IS_GPIO_ALL_INSTANCE(GPIOx));
 375:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   assert_param(IS_GPIO_PIN(GPIO_Pin));
 376:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 377:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   /* Configure the port pins */
 378:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   while ((GPIO_Pin >> position) != 0U)
 408              		.loc 1 378 0
 409 0004 0EE0     		b	.L43
 410              	.LVL47:
 411              	.L45:
 379:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   {
 380:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     /* Get current io position */
 381:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     iocurrent = (GPIO_Pin) & (1U << position);
 382:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 383:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     if (iocurrent)
 384:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     {
 385:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       /*------------------------- GPIO Mode Configuration --------------------*/
 386:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       /* Check if the current bit belongs to first half or last half of the pin count number
 387:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****        in order to address CRH or CRL register */
 388:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       configregister = (iocurrent < GPIO_PIN_8) ? &GPIOx->CRL     : &GPIOx->CRH;
 412              		.loc 1 388 0 discriminator 2
 413 0006 00F1040C 		add	ip, r0, #4
 414 000a 15E0     		b	.L46
 415              	.LVL48:
 416              	.L47:
 389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       registeroffset = (iocurrent < GPIO_PIN_8) ? (position << 2U) : ((position - 8U) << 2U);
 417              		.loc 1 389 0 discriminator 2
 418 000c A4F10806 		sub	r6, r4, #8
 419 0010 B700     		lsls	r7, r6, #2
 420 0012 14E0     		b	.L48
 421              	.LVL49:
 422              	.L58:
 390:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 391:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       /* CRL/CRH default value is floating input(0x04) shifted to correct position */
 392:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       MODIFY_REG(*configregister, ((GPIO_CRL_MODE0 | GPIO_CRL_CNF0) << registeroffset), GPIO_CRL_CN
 393:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 394:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       /* ODR default value is 0 */
 395:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       CLEAR_BIT(GPIOx->ODR, iocurrent);
 396:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 397:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       /*------------------------- EXTI Mode Configuration --------------------*/
 398:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       /* Clear the External Interrupt or Event for the current IO */
 399:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 400:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       tmp = AFIO->EXTICR[position >> 2U];
 401:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       tmp &= 0x0FU << (4U * (position & 0x03U));
 402:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       if (tmp == (GPIO_GET_INDEX(GPIOx) << (4U * (position & 0x03U))))
 423              		.loc 1 402 0
 424 0014 0327     		movs	r7, #3
 425 0016 00E0     		b	.L49
 426              	.L51:
 427 0018 0027     		movs	r7, #0
 428              	.L49:
 429              		.loc 1 402 0 is_stmt 0 discriminator 16
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 16


 430 001a 07FA02F2 		lsl	r2, r7, r2
 431 001e B242     		cmp	r2, r6
 432 0020 3ED0     		beq	.L56
 433              	.LVL50:
 434              	.L44:
 403:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       {
 404:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         tmp = 0x0FU << (4U * (position & 0x03U));
 405:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         CLEAR_BIT(AFIO->EXTICR[position >> 2U], tmp);
 406:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 407:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         /* Clear EXTI line configuration */
 408:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         CLEAR_BIT(EXTI->IMR, (uint32_t)iocurrent);
 409:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         CLEAR_BIT(EXTI->EMR, (uint32_t)iocurrent);
 410:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 411:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         /* Clear Rising Falling edge configuration */
 412:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         CLEAR_BIT(EXTI->RTSR, (uint32_t)iocurrent);
 413:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         CLEAR_BIT(EXTI->FTSR, (uint32_t)iocurrent);
 414:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       }
 415:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     }
 416:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 417:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     position++;
 435              		.loc 1 417 0 is_stmt 1
 436 0022 0134     		adds	r4, r4, #1
 437              	.LVL51:
 438              	.L43:
 378:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   {
 439              		.loc 1 378 0
 440 0024 31FA04F3 		lsrs	r3, r1, r4
 441 0028 51D0     		beq	.L57
 381:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 442              		.loc 1 381 0
 443 002a 0123     		movs	r3, #1
 444 002c A340     		lsls	r3, r3, r4
 445              	.LVL52:
 383:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     {
 446              		.loc 1 383 0
 447 002e 0B40     		ands	r3, r3, r1
 448              	.LVL53:
 449 0030 F7D0     		beq	.L44
 388:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       registeroffset = (iocurrent < GPIO_PIN_8) ? (position << 2U) : ((position - 8U) << 2U);
 450              		.loc 1 388 0
 451 0032 FF2B     		cmp	r3, #255
 452 0034 E7D8     		bhi	.L45
 388:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       registeroffset = (iocurrent < GPIO_PIN_8) ? (position << 2U) : ((position - 8U) << 2U);
 453              		.loc 1 388 0 is_stmt 0 discriminator 1
 454 0036 8446     		mov	ip, r0
 455              	.L46:
 456              	.LVL54:
 389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 457              		.loc 1 389 0 is_stmt 1 discriminator 4
 458 0038 FF2B     		cmp	r3, #255
 459 003a E7D8     		bhi	.L47
 389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 460              		.loc 1 389 0 is_stmt 0 discriminator 1
 461 003c A700     		lsls	r7, r4, #2
 462              	.L48:
 463              	.LVL55:
 392:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 17


 464              		.loc 1 392 0 is_stmt 1 discriminator 4
 465 003e DCF80020 		ldr	r2, [ip]
 466 0042 0F25     		movs	r5, #15
 467 0044 05FA07F6 		lsl	r6, r5, r7
 468 0048 22EA0602 		bic	r2, r2, r6
 469 004c 0426     		movs	r6, #4
 470 004e BE40     		lsls	r6, r6, r7
 471 0050 3243     		orrs	r2, r2, r6
 472 0052 CCF80020 		str	r2, [ip]
 395:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 473              		.loc 1 395 0 discriminator 4
 474 0056 C268     		ldr	r2, [r0, #12]
 475 0058 DB43     		mvns	r3, r3
 476              	.LVL56:
 477 005a 1A40     		ands	r2, r2, r3
 478 005c C260     		str	r2, [r0, #12]
 400:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       tmp &= 0x0FU << (4U * (position & 0x03U));
 479              		.loc 1 400 0 discriminator 4
 480 005e 4FEA940C 		lsr	ip, r4, #2
 481              	.LVL57:
 482 0062 0CF10206 		add	r6, ip, #2
 483 0066 1B4A     		ldr	r2, .L59
 484 0068 52F82660 		ldr	r6, [r2, r6, lsl #2]
 485              	.LVL58:
 401:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       if (tmp == (GPIO_GET_INDEX(GPIOx) << (4U * (position & 0x03U))))
 486              		.loc 1 401 0 discriminator 4
 487 006c 04F00302 		and	r2, r4, #3
 488 0070 9200     		lsls	r2, r2, #2
 489 0072 9540     		lsls	r5, r5, r2
 490 0074 2E40     		ands	r6, r6, r5
 491              	.LVL59:
 402:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       {
 492              		.loc 1 402 0 discriminator 4
 493 0076 184F     		ldr	r7, .L59+4
 494              	.LVL60:
 495 0078 B842     		cmp	r0, r7
 496 007a CDD0     		beq	.L51
 402:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       {
 497              		.loc 1 402 0 is_stmt 0 discriminator 1
 498 007c 07F58067 		add	r7, r7, #1024
 499 0080 B842     		cmp	r0, r7
 500 0082 09D0     		beq	.L52
 402:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       {
 501              		.loc 1 402 0 discriminator 3
 502 0084 07F58067 		add	r7, r7, #1024
 503 0088 B842     		cmp	r0, r7
 504 008a 07D0     		beq	.L53
 402:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       {
 505              		.loc 1 402 0 discriminator 5
 506 008c 07F58067 		add	r7, r7, #1024
 507 0090 B842     		cmp	r0, r7
 508 0092 BFD0     		beq	.L58
 402:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       {
 509              		.loc 1 402 0
 510 0094 0427     		movs	r7, #4
 511 0096 C0E7     		b	.L49
 512              	.L52:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 18


 513 0098 0127     		movs	r7, #1
 514 009a BEE7     		b	.L49
 515              	.L53:
 516 009c 0227     		movs	r7, #2
 517 009e BCE7     		b	.L49
 518              	.L56:
 519              	.LVL61:
 405:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 520              		.loc 1 405 0 is_stmt 1
 521 00a0 0C4F     		ldr	r7, .L59
 522 00a2 0CF10202 		add	r2, ip, #2
 523 00a6 57F82260 		ldr	r6, [r7, r2, lsl #2]
 524 00aa 26EA0505 		bic	r5, r6, r5
 525              	.LVL62:
 526 00ae 47F82250 		str	r5, [r7, r2, lsl #2]
 408:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         CLEAR_BIT(EXTI->EMR, (uint32_t)iocurrent);
 527              		.loc 1 408 0
 528 00b2 0A4A     		ldr	r2, .L59+8
 529 00b4 1568     		ldr	r5, [r2]
 530 00b6 1D40     		ands	r5, r5, r3
 531 00b8 1560     		str	r5, [r2]
 409:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 532              		.loc 1 409 0
 533 00ba 5568     		ldr	r5, [r2, #4]
 534 00bc 1D40     		ands	r5, r5, r3
 535 00be 5560     		str	r5, [r2, #4]
 412:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****         CLEAR_BIT(EXTI->FTSR, (uint32_t)iocurrent);
 536              		.loc 1 412 0
 537 00c0 9568     		ldr	r5, [r2, #8]
 538 00c2 1D40     		ands	r5, r5, r3
 539 00c4 9560     		str	r5, [r2, #8]
 413:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****       }
 540              		.loc 1 413 0
 541 00c6 D568     		ldr	r5, [r2, #12]
 542 00c8 2B40     		ands	r3, r3, r5
 543              	.LVL63:
 544 00ca D360     		str	r3, [r2, #12]
 545 00cc A9E7     		b	.L44
 546              	.LVL64:
 547              	.L57:
 418:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   }
 419:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** }
 548              		.loc 1 419 0
 549 00ce F0BC     		pop	{r4, r5, r6, r7}
 550              	.LCFI5:
 551              		.cfi_restore 7
 552              		.cfi_restore 6
 553              		.cfi_restore 5
 554              		.cfi_restore 4
 555              		.cfi_def_cfa_offset 0
 556              	.LVL65:
 557 00d0 7047     		bx	lr
 558              	.L60:
 559 00d2 00BF     		.align	2
 560              	.L59:
 561 00d4 00000140 		.word	1073807360
 562 00d8 00080140 		.word	1073809408
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 19


 563 00dc 00040140 		.word	1073808384
 564              		.cfi_endproc
 565              	.LFE67:
 567              		.section	.text.HAL_GPIO_ReadPin,"ax",%progbits
 568              		.align	1
 569              		.global	HAL_GPIO_ReadPin
 570              		.syntax unified
 571              		.thumb
 572              		.thumb_func
 573              		.fpu softvfp
 575              	HAL_GPIO_ReadPin:
 576              	.LFB68:
 420:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 421:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /**
 422:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @}
 423:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   */
 424:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 425:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /** @defgroup GPIO_Exported_Functions_Group2 IO operation functions
 426:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****  *  @brief   GPIO Read and Write
 427:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****  *
 428:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** @verbatim
 429:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****  ===============================================================================
 430:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****                        ##### IO operation functions #####
 431:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****  ===============================================================================
 432:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   [..]
 433:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     This subsection provides a set of functions allowing to manage the GPIOs.
 434:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 435:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** @endverbatim
 436:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @{
 437:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   */
 438:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 439:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /**
 440:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @brief  Reads the specified input port pin.
 441:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @param  GPIOx: where x can be (A..G depending on device used) to select the GPIO peripheral
 442:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @param  GPIO_Pin: specifies the port bit to read.
 443:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *         This parameter can be GPIO_PIN_x where x can be (0..15).
 444:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @retval The input port pin value.
 445:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   */
 446:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** GPIO_PinState HAL_GPIO_ReadPin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin)
 447:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** {
 577              		.loc 1 447 0
 578              		.cfi_startproc
 579              		@ args = 0, pretend = 0, frame = 0
 580              		@ frame_needed = 0, uses_anonymous_args = 0
 581              		@ link register save eliminated.
 582              	.LVL66:
 448:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   GPIO_PinState bitstatus;
 449:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 450:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   /* Check the parameters */
 451:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   assert_param(IS_GPIO_PIN(GPIO_Pin));
 452:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 453:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   if ((GPIOx->IDR & GPIO_Pin) != (uint32_t)GPIO_PIN_RESET)
 583              		.loc 1 453 0
 584 0000 8368     		ldr	r3, [r0, #8]
 585 0002 1942     		tst	r1, r3
 586 0004 01D1     		bne	.L64
 454:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   {
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 20


 455:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     bitstatus = GPIO_PIN_SET;
 456:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   }
 457:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   else
 458:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   {
 459:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     bitstatus = GPIO_PIN_RESET;
 587              		.loc 1 459 0
 588 0006 0020     		movs	r0, #0
 589              	.LVL67:
 460:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   }
 461:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   return bitstatus;
 462:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** }
 590              		.loc 1 462 0
 591 0008 7047     		bx	lr
 592              	.LVL68:
 593              	.L64:
 455:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   }
 594              		.loc 1 455 0
 595 000a 0120     		movs	r0, #1
 596              	.LVL69:
 597 000c 7047     		bx	lr
 598              		.cfi_endproc
 599              	.LFE68:
 601              		.section	.text.HAL_GPIO_WritePin,"ax",%progbits
 602              		.align	1
 603              		.global	HAL_GPIO_WritePin
 604              		.syntax unified
 605              		.thumb
 606              		.thumb_func
 607              		.fpu softvfp
 609              	HAL_GPIO_WritePin:
 610              	.LFB69:
 463:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 464:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /**
 465:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @brief  Sets or clears the selected data port bit.
 466:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *
 467:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @note   This function uses GPIOx_BSRR register to allow atomic read/modify
 468:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *         accesses. In this way, there is no risk of an IRQ occurring between
 469:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *         the read and the modify access.
 470:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *
 471:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @param  GPIOx: where x can be (A..G depending on device used) to select the GPIO peripheral
 472:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @param  GPIO_Pin: specifies the port bit to be written.
 473:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *          This parameter can be one of GPIO_PIN_x where x can be (0..15).
 474:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @param  PinState: specifies the value to be written to the selected bit.
 475:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *          This parameter can be one of the GPIO_PinState enum values:
 476:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *            @arg GPIO_PIN_RESET: to clear the port pin
 477:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   *            @arg GPIO_PIN_SET: to set the port pin
 478:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @retval None
 479:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   */
 480:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** void HAL_GPIO_WritePin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin, GPIO_PinState PinState)
 481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** {
 611              		.loc 1 481 0
 612              		.cfi_startproc
 613              		@ args = 0, pretend = 0, frame = 0
 614              		@ frame_needed = 0, uses_anonymous_args = 0
 615              		@ link register save eliminated.
 616              	.LVL70:
 482:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   /* Check the parameters */
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 21


 483:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   assert_param(IS_GPIO_PIN(GPIO_Pin));
 484:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   assert_param(IS_GPIO_PIN_ACTION(PinState));
 485:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 486:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   if (PinState != GPIO_PIN_RESET)
 617              		.loc 1 486 0
 618 0000 12B9     		cbnz	r2, .L68
 487:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   {
 488:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     GPIOx->BSRR = GPIO_Pin;
 489:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   }
 490:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   else
 491:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   {
 492:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     GPIOx->BSRR = (uint32_t)GPIO_Pin << 16U;
 619              		.loc 1 492 0
 620 0002 0904     		lsls	r1, r1, #16
 621              	.LVL71:
 622 0004 0161     		str	r1, [r0, #16]
 493:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   }
 494:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** }
 623              		.loc 1 494 0
 624 0006 7047     		bx	lr
 625              	.LVL72:
 626              	.L68:
 488:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   }
 627              		.loc 1 488 0
 628 0008 0161     		str	r1, [r0, #16]
 629 000a 7047     		bx	lr
 630              		.cfi_endproc
 631              	.LFE69:
 633              		.section	.text.HAL_GPIO_TogglePin,"ax",%progbits
 634              		.align	1
 635              		.global	HAL_GPIO_TogglePin
 636              		.syntax unified
 637              		.thumb
 638              		.thumb_func
 639              		.fpu softvfp
 641              	HAL_GPIO_TogglePin:
 642              	.LFB70:
 495:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 496:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /**
 497:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @brief  Toggles the specified GPIO pin
 498:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @param  GPIOx: where x can be (A..G depending on device used) to select the GPIO peripheral
 499:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @param  GPIO_Pin: Specifies the pins to be toggled.
 500:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @retval None
 501:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   */
 502:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** void HAL_GPIO_TogglePin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin)
 503:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** {
 643              		.loc 1 503 0
 644              		.cfi_startproc
 645              		@ args = 0, pretend = 0, frame = 0
 646              		@ frame_needed = 0, uses_anonymous_args = 0
 647              		@ link register save eliminated.
 648              	.LVL73:
 504:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   /* Check the parameters */
 505:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   assert_param(IS_GPIO_PIN(GPIO_Pin));
 506:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 507:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   GPIOx->ODR ^= GPIO_Pin;
 649              		.loc 1 507 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 22


 650 0000 C368     		ldr	r3, [r0, #12]
 651 0002 5940     		eors	r1, r1, r3
 652              	.LVL74:
 653 0004 C160     		str	r1, [r0, #12]
 508:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** }
 654              		.loc 1 508 0
 655 0006 7047     		bx	lr
 656              		.cfi_endproc
 657              	.LFE70:
 659              		.section	.text.HAL_GPIO_LockPin,"ax",%progbits
 660              		.align	1
 661              		.global	HAL_GPIO_LockPin
 662              		.syntax unified
 663              		.thumb
 664              		.thumb_func
 665              		.fpu softvfp
 667              	HAL_GPIO_LockPin:
 668              	.LFB71:
 509:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 510:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /**
 511:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** * @brief  Locks GPIO Pins configuration registers.
 512:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** * @note   The locking mechanism allows the IO configuration to be frozen. When the LOCK sequence
 513:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** *         has been applied on a port bit, it is no longer possible to modify the value of the port 
 514:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** *         the next reset.
 515:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** * @param  GPIOx: where x can be (A..G depending on device used) to select the GPIO peripheral
 516:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** * @param  GPIO_Pin: specifies the port bit to be locked.
 517:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** *         This parameter can be any combination of GPIO_Pin_x where x can be (0..15).
 518:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** * @retval None
 519:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** */
 520:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** HAL_StatusTypeDef HAL_GPIO_LockPin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin)
 521:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** {
 669              		.loc 1 521 0
 670              		.cfi_startproc
 671              		@ args = 0, pretend = 0, frame = 8
 672              		@ frame_needed = 0, uses_anonymous_args = 0
 673              		@ link register save eliminated.
 674              	.LVL75:
 675 0000 82B0     		sub	sp, sp, #8
 676              	.LCFI6:
 677              		.cfi_def_cfa_offset 8
 522:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   __IO uint32_t tmp = GPIO_LCKR_LCKK;
 678              		.loc 1 522 0
 679 0002 4FF48033 		mov	r3, #65536
 680 0006 0193     		str	r3, [sp, #4]
 523:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 524:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   /* Check the parameters */
 525:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   assert_param(IS_GPIO_LOCK_INSTANCE(GPIOx));
 526:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   assert_param(IS_GPIO_PIN(GPIO_Pin));
 527:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 528:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   /* Apply lock key write sequence */
 529:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   SET_BIT(tmp, GPIO_Pin);
 681              		.loc 1 529 0
 682 0008 019B     		ldr	r3, [sp, #4]
 683 000a 0B43     		orrs	r3, r3, r1
 684 000c 0193     		str	r3, [sp, #4]
 530:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   /* Set LCKx bit(s): LCKK='1' + LCK[15-0] */
 531:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   GPIOx->LCKR = tmp;
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 23


 685              		.loc 1 531 0
 686 000e 019B     		ldr	r3, [sp, #4]
 687 0010 8361     		str	r3, [r0, #24]
 532:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   /* Reset LCKx bit(s): LCKK='0' + LCK[15-0] */
 533:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   GPIOx->LCKR = GPIO_Pin;
 688              		.loc 1 533 0
 689 0012 8161     		str	r1, [r0, #24]
 534:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   /* Set LCKx bit(s): LCKK='1' + LCK[15-0] */
 535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   GPIOx->LCKR = tmp;
 690              		.loc 1 535 0
 691 0014 019B     		ldr	r3, [sp, #4]
 692 0016 8361     		str	r3, [r0, #24]
 536:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   /* Read LCKK bit*/
 537:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   tmp = GPIOx->LCKR;
 693              		.loc 1 537 0
 694 0018 8369     		ldr	r3, [r0, #24]
 695 001a 0193     		str	r3, [sp, #4]
 538:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 539:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   if ((uint32_t)(GPIOx->LCKR & GPIO_LCKR_LCKK))
 696              		.loc 1 539 0
 697 001c 8369     		ldr	r3, [r0, #24]
 698 001e 13F4803F 		tst	r3, #65536
 699 0022 02D1     		bne	.L74
 540:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   {
 541:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     return HAL_OK;
 542:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   }
 543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   else
 544:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   {
 545:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     return HAL_ERROR;
 700              		.loc 1 545 0
 701 0024 0120     		movs	r0, #1
 702              	.LVL76:
 703              	.L71:
 546:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   }
 547:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** }
 704              		.loc 1 547 0
 705 0026 02B0     		add	sp, sp, #8
 706              	.LCFI7:
 707              		.cfi_remember_state
 708              		.cfi_def_cfa_offset 0
 709              		@ sp needed
 710 0028 7047     		bx	lr
 711              	.LVL77:
 712              	.L74:
 713              	.LCFI8:
 714              		.cfi_restore_state
 541:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   }
 715              		.loc 1 541 0
 716 002a 0020     		movs	r0, #0
 717              	.LVL78:
 718 002c FBE7     		b	.L71
 719              		.cfi_endproc
 720              	.LFE71:
 722              		.section	.text.HAL_GPIO_EXTI_Callback,"ax",%progbits
 723              		.align	1
 724              		.weak	HAL_GPIO_EXTI_Callback
 725              		.syntax unified
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 24


 726              		.thumb
 727              		.thumb_func
 728              		.fpu softvfp
 730              	HAL_GPIO_EXTI_Callback:
 731              	.LFB73:
 548:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 549:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /**
 550:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @brief  This function handles EXTI interrupt request.
 551:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @param  GPIO_Pin: Specifies the pins connected EXTI line
 552:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @retval None
 553:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   */
 554:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** void HAL_GPIO_EXTI_IRQHandler(uint16_t GPIO_Pin)
 555:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** {
 556:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   /* EXTI line interrupt detected */
 557:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   if (__HAL_GPIO_EXTI_GET_IT(GPIO_Pin) != RESET)
 558:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   {
 559:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     __HAL_GPIO_EXTI_CLEAR_IT(GPIO_Pin);
 560:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     HAL_GPIO_EXTI_Callback(GPIO_Pin);
 561:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   }
 562:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** }
 563:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 564:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** /**
 565:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @brief  EXTI line detection callbacks.
 566:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @param  GPIO_Pin: Specifies the pins connected EXTI line
 567:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   * @retval None
 568:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   */
 569:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** __weak void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
 570:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** {
 732              		.loc 1 570 0
 733              		.cfi_startproc
 734              		@ args = 0, pretend = 0, frame = 0
 735              		@ frame_needed = 0, uses_anonymous_args = 0
 736              		@ link register save eliminated.
 737              	.LVL79:
 571:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   /* Prevent unused argument(s) compilation warning */
 572:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   UNUSED(GPIO_Pin);
 573:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   /* NOTE: This function Should not be modified, when the callback is needed,
 574:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****            the HAL_GPIO_EXTI_Callback could be implemented in the user file
 575:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****    */
 576:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** }
 738              		.loc 1 576 0
 739 0000 7047     		bx	lr
 740              		.cfi_endproc
 741              	.LFE73:
 743              		.section	.text.HAL_GPIO_EXTI_IRQHandler,"ax",%progbits
 744              		.align	1
 745              		.global	HAL_GPIO_EXTI_IRQHandler
 746              		.syntax unified
 747              		.thumb
 748              		.thumb_func
 749              		.fpu softvfp
 751              	HAL_GPIO_EXTI_IRQHandler:
 752              	.LFB72:
 555:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   /* EXTI line interrupt detected */
 753              		.loc 1 555 0
 754              		.cfi_startproc
 755              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 25


 756              		@ frame_needed = 0, uses_anonymous_args = 0
 757              	.LVL80:
 758 0000 08B5     		push	{r3, lr}
 759              	.LCFI9:
 760              		.cfi_def_cfa_offset 8
 761              		.cfi_offset 3, -8
 762              		.cfi_offset 14, -4
 557:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   {
 763              		.loc 1 557 0
 764 0002 054B     		ldr	r3, .L80
 765 0004 5B69     		ldr	r3, [r3, #20]
 766 0006 0342     		tst	r3, r0
 767 0008 00D1     		bne	.L79
 768              	.LVL81:
 769              	.L76:
 562:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 770              		.loc 1 562 0
 771 000a 08BD     		pop	{r3, pc}
 772              	.LVL82:
 773              	.L79:
 559:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****     HAL_GPIO_EXTI_Callback(GPIO_Pin);
 774              		.loc 1 559 0
 775 000c 024B     		ldr	r3, .L80
 776 000e 5861     		str	r0, [r3, #20]
 560:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c ****   }
 777              		.loc 1 560 0
 778 0010 FFF7FEFF 		bl	HAL_GPIO_EXTI_Callback
 779              	.LVL83:
 562:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c **** 
 780              		.loc 1 562 0
 781 0014 F9E7     		b	.L76
 782              	.L81:
 783 0016 00BF     		.align	2
 784              	.L80:
 785 0018 00040140 		.word	1073808384
 786              		.cfi_endproc
 787              	.LFE72:
 789              		.text
 790              	.Letext0:
 791              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 792              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 793              		.file 4 "Drivers/CMSIS/Include/core_cm3.h"
 794              		.file 5 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/system_stm32f1xx.h"
 795              		.file 6 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
 796              		.file 7 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 797              		.file 8 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 798              		.file 9 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\lib\\gcc\\arm-none-eab
 799              		.file 10 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\includ
 800              		.file 11 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"
 801              		.file 12 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"
 802              		.file 13 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio.h"
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s 			page 26


DEFINED SYMBOLS
                            *ABS*:00000000 stm32f1xx_hal_gpio.c
C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s:16     .text.HAL_GPIO_Init:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s:23     .text.HAL_GPIO_Init:00000000 HAL_GPIO_Init
C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s:373    .text.HAL_GPIO_Init:000001bc $d
C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s:383    .text.HAL_GPIO_DeInit:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s:390    .text.HAL_GPIO_DeInit:00000000 HAL_GPIO_DeInit
C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s:561    .text.HAL_GPIO_DeInit:000000d4 $d
C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s:568    .text.HAL_GPIO_ReadPin:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s:575    .text.HAL_GPIO_ReadPin:00000000 HAL_GPIO_ReadPin
C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s:602    .text.HAL_GPIO_WritePin:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s:609    .text.HAL_GPIO_WritePin:00000000 HAL_GPIO_WritePin
C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s:634    .text.HAL_GPIO_TogglePin:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s:641    .text.HAL_GPIO_TogglePin:00000000 HAL_GPIO_TogglePin
C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s:660    .text.HAL_GPIO_LockPin:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s:667    .text.HAL_GPIO_LockPin:00000000 HAL_GPIO_LockPin
C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s:723    .text.HAL_GPIO_EXTI_Callback:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s:730    .text.HAL_GPIO_EXTI_Callback:00000000 HAL_GPIO_EXTI_Callback
C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s:744    .text.HAL_GPIO_EXTI_IRQHandler:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s:751    .text.HAL_GPIO_EXTI_IRQHandler:00000000 HAL_GPIO_EXTI_IRQHandler
C:\Users\crist\AppData\Local\Temp\cc7OtzEg.s:785    .text.HAL_GPIO_EXTI_IRQHandler:00000018 $d

NO UNDEFINED SYMBOLS
