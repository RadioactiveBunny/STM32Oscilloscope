ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 1


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
  11              		.file	"stm32f1xx_hal_rcc.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.RCC_Delay,"ax",%progbits
  16              		.align	1
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu softvfp
  22              	RCC_Delay:
  23              	.LFB79:
  24              		.file 1 "Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c"
   1:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /**
   2:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   ******************************************************************************
   3:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @file    stm32f1xx_hal_rcc.c
   4:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @author  MCD Application Team
   5:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @brief   RCC HAL module driver.
   6:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *          This file provides firmware functions to manage the following 
   7:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *          functionalities of the Reset and Clock Control (RCC) peripheral:
   8:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *           + Initialization and de-initialization functions
   9:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *           + Peripheral Control functions
  10:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *       
  11:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   @verbatim                
  12:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   ==============================================================================
  13:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****                       ##### RCC specific features #####
  14:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   ==============================================================================
  15:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     [..]  
  16:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       After reset the device is running from Internal High Speed oscillator
  17:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       (HSI 8MHz) with Flash 0 wait state, Flash prefetch buffer is enabled, 
  18:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       and all peripherals are off except internal SRAM, Flash and JTAG.
  19:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       (+) There is no prescaler on High speed (AHB) and Low speed (APB) buses;
  20:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           all peripherals mapped on these buses are running at HSI speed.
  21:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       (+) The clock for all peripherals is switched off, except the SRAM and FLASH.
  22:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       (+) All GPIOs are in input floating state, except the JTAG pins which
  23:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           are assigned to be used for debug purpose.
  24:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     [..] Once the device started from reset, the user application has to:
  25:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       (+) Configure the clock source to be used to drive the System clock
  26:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           (if the application needs higher frequency/performance)
  27:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       (+) Configure the System clock frequency and Flash settings  
  28:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       (+) Configure the AHB and APB buses prescalers
  29:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       (+) Enable the clock for the peripheral(s) to be used
  30:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       (+) Configure the clock source(s) for peripherals whose clocks are not
  31:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           derived from the System clock (I2S, RTC, ADC, USB OTG FS) 
  32:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
  33:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****                       ##### RCC Limitations #####
  34:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   ==============================================================================
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 2


  35:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     [..]  
  36:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       A delay between an RCC peripheral clock enable and the effective peripheral 
  37:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       enabling should be taken into account in order to manage the peripheral read/write 
  38:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       from/to registers.
  39:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       (+) This delay depends on the peripheral mapping.
  40:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         (++) AHB & APB peripherals, 1 dummy read is necessary
  41:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
  42:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     [..]  
  43:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       Workarounds:
  44:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       (#) For AHB & APB peripherals, a dummy read to the peripheral register has been
  45:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           inserted in each __HAL_RCC_PPP_CLK_ENABLE() macro.
  46:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
  47:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   @endverbatim
  48:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   ******************************************************************************
  49:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @attention
  50:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *
  51:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
  52:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *
  53:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * Redistribution and use in source and binary forms, with or without modification,
  54:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * are permitted provided that the following conditions are met:
  55:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  56:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *      this list of conditions and the following disclaimer.
  57:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  58:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *      this list of conditions and the following disclaimer in the documentation
  59:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *      and/or other materials provided with the distribution.
  60:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  61:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *      may be used to endorse or promote products derived from this software
  62:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *      without specific prior written permission.
  63:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *
  64:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  65:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  66:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  67:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  68:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  69:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  70:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  71:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  72:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  73:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  74:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *
  75:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   ******************************************************************************  
  76:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** */
  77:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   
  78:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /* Includes ------------------------------------------------------------------*/
  79:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #include "stm32f1xx_hal.h"
  80:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
  81:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /** @addtogroup STM32F1xx_HAL_Driver
  82:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @{
  83:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
  84:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
  85:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /** @defgroup RCC RCC
  86:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** * @brief RCC HAL module driver
  87:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @{
  88:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
  89:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
  90:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #ifdef HAL_RCC_MODULE_ENABLED
  91:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 3


  92:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /* Private typedef -----------------------------------------------------------*/
  93:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /* Private define ------------------------------------------------------------*/
  94:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /** @defgroup RCC_Private_Constants RCC Private Constants
  95:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****  * @{
  96:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****  */
  97:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /**
  98:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @}
  99:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
 100:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /* Private macro -------------------------------------------------------------*/
 101:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /** @defgroup RCC_Private_Macros RCC Private Macros
 102:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @{
 103:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
 104:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 105:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #define MCO1_CLK_ENABLE()     __HAL_RCC_GPIOA_CLK_ENABLE()
 106:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #define MCO1_GPIO_PORT        GPIOA
 107:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #define MCO1_PIN              GPIO_PIN_8
 108:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 109:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /**
 110:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @}
 111:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
 112:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 113:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /* Private variables ---------------------------------------------------------*/
 114:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /** @defgroup RCC_Private_Variables RCC Private Variables
 115:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @{
 116:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
 117:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /**
 118:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @}
 119:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
 120:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 121:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /* Private function prototypes -----------------------------------------------*/
 122:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** static void RCC_Delay(uint32_t mdelay);
 123:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 124:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /* Exported functions --------------------------------------------------------*/
 125:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 126:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /** @defgroup RCC_Exported_Functions RCC Exported Functions
 127:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @{
 128:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
 129:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 130:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /** @defgroup RCC_Exported_Functions_Group1 Initialization and de-initialization functions 
 131:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *  @brief    Initialization and Configuration functions 
 132:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *
 133:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   @verbatim    
 134:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   ===============================================================================
 135:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****            ##### Initialization and de-initialization functions #####
 136:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   ===============================================================================
 137:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     [..]
 138:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       This section provides functions allowing to configure the internal/external oscillators
 139:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       (HSE, HSI, LSE, LSI, PLL, CSS and MCO) and the System buses clocks (SYSCLK, AHB, APB1
 140:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       and APB2).
 141:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 142:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     [..] Internal/external clock and PLL configuration
 143:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       (#) HSI (high-speed internal), 8 MHz factory-trimmed RC used directly or through
 144:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           the PLL as System clock source.
 145:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       (#) LSI (low-speed internal), ~40 KHz low consumption RC used as IWDG and/or RTC
 146:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           clock source.
 147:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 148:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       (#) HSE (high-speed external), 4 to 24 MHz (STM32F100xx) or 4 to 16 MHz (STM32F101x/STM32F102
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 4


 149:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           through the PLL as System clock source. Can be used also as RTC clock source.
 150:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 151:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       (#) LSE (low-speed external), 32 KHz oscillator used as RTC clock source.   
 152:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 153:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       (#) PLL (clocked by HSI or HSE), featuring different output clocks:
 154:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         (++) The first output is used to generate the high speed system clock (up to 72 MHz for STM
 155:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         (++) The second output is used to generate the clock for the USB OTG FS (48 MHz)
 156:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 157:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       (#) CSS (Clock security system), once enable using the macro __HAL_RCC_CSS_ENABLE()
 158:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           and if a HSE clock failure occurs(HSE used directly or through PLL as System 
 159:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           clock source), the System clocks automatically switched to HSI and an interrupt
 160:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           is generated if enabled. The interrupt is linked to the Cortex-M3 NMI 
 161:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           (Non-Maskable Interrupt) exception vector.   
 162:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 163:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       (#) MCO1 (microcontroller clock output), used to output SYSCLK, HSI,  
 164:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           HSE or PLL clock (divided by 2) on PA8 pin + PLL2CLK, PLL3CLK/2, PLL3CLK and XTI for STM3
 165:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 166:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     [..] System, AHB and APB buses clocks configuration
 167:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       (#) Several clock sources can be used to drive the System clock (SYSCLK): HSI,
 168:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           HSE and PLL.
 169:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           The AHB clock (HCLK) is derived from System clock through configurable
 170:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           prescaler and used to clock the CPU, memory and peripherals mapped
 171:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           on AHB bus (DMA, GPIO...). APB1 (PCLK1) and APB2 (PCLK2) clocks are derived
 172:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           from AHB clock through configurable prescalers and used to clock
 173:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           the peripherals mapped on these buses. You can use
 174:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           "@ref HAL_RCC_GetSysClockFreq()" function to retrieve the frequencies of these clocks.
 175:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 176:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       -@- All the peripheral clocks are derived from the System clock (SYSCLK) except:
 177:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           (+@) RTC: RTC clock can be derived either from the LSI, LSE or HSE clock
 178:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****               divided by 128. 
 179:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           (+@) USB OTG FS and RTC: USB OTG FS require a frequency equal to 48 MHz
 180:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****               to work correctly. This clock is derived of the main PLL through PLL Multiplier.
 181:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           (+@) I2S interface on STM32F105x/STM32F107x can be derived from PLL3CLK
 182:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           (+@) IWDG clock which is always the LSI clock.
 183:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 184:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       (#) For STM32F10xxx, the maximum frequency of the SYSCLK and HCLK/PCLK2 is 72 MHz, PCLK1 36 M
 185:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           For STM32F100xx, the maximum frequency of the SYSCLK and HCLK/PCLK1/PCLK2 is 24 MHz.  
 186:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           Depending on the SYSCLK frequency, the flash latency should be adapted accordingly.
 187:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   @endverbatim
 188:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @{
 189:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
 190:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   
 191:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /*
 192:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   Additional consideration on the SYSCLK based on Latency settings:
 193:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         +-----------------------------------------------+
 194:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         | Latency       | SYSCLK clock frequency (MHz)  |
 195:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         |---------------|-------------------------------|
 196:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         |0WS(1CPU cycle)|       0 < SYSCLK <= 24        |
 197:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         |---------------|-------------------------------|
 198:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         |1WS(2CPU cycle)|      24 < SYSCLK <= 48        |
 199:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         |---------------|-------------------------------|
 200:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         |2WS(3CPU cycle)|      48 < SYSCLK <= 72        |
 201:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         +-----------------------------------------------+
 202:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
 203:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 204:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /**
 205:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @brief  Resets the RCC clock configuration to the default reset state.
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 5


 206:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @note   The default reset state of the clock configuration is given below:
 207:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *            - HSI ON and used as system clock source
 208:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *            - HSE, PLL, PLL2 and PLL3 are OFF
 209:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *            - AHB, APB1 and APB2 prescaler set to 1.
 210:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *            - CSS and MCO1 OFF
 211:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *            - All interrupts disabled
 212:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *            - All flags are cleared
 213:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @note   This function does not modify the configuration of the
 214:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *            - Peripheral clocks
 215:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *            - LSI, LSE and RTC clocks
 216:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @retval HAL_StatusTypeDef
 217:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
 218:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** HAL_StatusTypeDef HAL_RCC_DeInit(void)
 219:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** {
 220:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   uint32_t tickstart;
 221:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Get Start Tick */
 223:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   tickstart = HAL_GetTick();
 224:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 225:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Set HSION bit */
 226:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   SET_BIT(RCC->CR, RCC_CR_HSION);
 227:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 228:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Wait till HSI is ready */
 229:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   while (READ_BIT(RCC->CR, RCC_CR_HSIRDY) == RESET)
 230:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 231:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     if ((HAL_GetTick() - tickstart) > HSI_TIMEOUT_VALUE)
 232:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 233:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       return HAL_TIMEOUT;
 234:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 235:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 236:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 237:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Set HSITRIM bits to the reset value */
 238:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   MODIFY_REG(RCC->CR, RCC_CR_HSITRIM, (0x10U << RCC_CR_HSITRIM_Pos));
 239:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 240:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Get Start Tick */
 241:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   tickstart = HAL_GetTick();
 242:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 243:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Reset CFGR register */
 244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   CLEAR_REG(RCC->CFGR);
 245:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 246:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Wait till clock switch is ready */
 247:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   while (READ_BIT(RCC->CFGR, RCC_CFGR_SWS) != RESET)
 248:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 249:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     if ((HAL_GetTick() - tickstart) > CLOCKSWITCH_TIMEOUT_VALUE)
 250:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 251:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       return HAL_TIMEOUT;
 252:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 253:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 254:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 255:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Update the SystemCoreClock global variable */
 256:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   SystemCoreClock = HSI_VALUE;
 257:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 258:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Adapt Systick interrupt period */
 259:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   if(HAL_InitTick(TICK_INT_PRIORITY) != HAL_OK)
 260:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 261:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     return HAL_ERROR;
 262:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 6


 263:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 264:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Get Start Tick */
 265:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   tickstart = HAL_GetTick();
 266:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 267:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Second step is to clear PLLON bit */
 268:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   CLEAR_BIT(RCC->CR, RCC_CR_PLLON);
 269:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 270:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Wait till PLL is disabled */
 271:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   while (READ_BIT(RCC->CR, RCC_CR_PLLRDY) != RESET)
 272:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 273:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     if ((HAL_GetTick() - tickstart) > PLL_TIMEOUT_VALUE)
 274:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 275:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       return HAL_TIMEOUT;
 276:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 277:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 278:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 279:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Ensure to reset PLLSRC and PLLMUL bits */
 280:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   CLEAR_REG(RCC->CFGR);
 281:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 282:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Get Start Tick */
 283:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   tickstart = HAL_GetTick();
 284:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 285:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Reset HSEON & CSSON bits */
 286:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   CLEAR_BIT(RCC->CR, RCC_CR_HSEON | RCC_CR_CSSON);
 287:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 288:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Wait till HSE is disabled */
 289:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   while (READ_BIT(RCC->CR, RCC_CR_HSERDY) != RESET)
 290:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 291:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     if ((HAL_GetTick() - tickstart) > HSE_TIMEOUT_VALUE)
 292:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 293:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       return HAL_TIMEOUT;
 294:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 295:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 296:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 297:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Reset HSEBYP bit */
 298:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   CLEAR_BIT(RCC->CR, RCC_CR_HSEBYP);
 299:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 300:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #if defined(RCC_PLL2_SUPPORT)
 301:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Get Start Tick */
 302:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   tickstart = HAL_GetTick();
 303:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 304:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Clear PLL2ON bit */
 305:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   CLEAR_BIT(RCC->CR, RCC_CR_PLL2ON);
 306:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 307:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Wait till PLL2 is disabled */
 308:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   while (READ_BIT(RCC->CR, RCC_CR_PLL2RDY) != RESET)
 309:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 310:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     if ((HAL_GetTick() - tickstart) > PLL2_TIMEOUT_VALUE)
 311:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 312:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       return HAL_TIMEOUT;
 313:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 314:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 315:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #endif /* RCC_PLL2_SUPPORT */
 316:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 317:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #if defined(RCC_PLLI2S_SUPPORT)
 318:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Get Start Tick */
 319:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   tickstart = HAL_GetTick();
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 7


 320:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 321:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Clear PLL3ON bit */
 322:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   CLEAR_BIT(RCC->CR, RCC_CR_PLL3ON);
 323:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 324:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Wait till PLL3 is disabled */
 325:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   while (READ_BIT(RCC->CR, RCC_CR_PLL3RDY) != RESET)
 326:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 327:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     if ((HAL_GetTick() - tickstart) > PLLI2S_TIMEOUT_VALUE)
 328:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 329:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       return HAL_TIMEOUT;
 330:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 331:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 332:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #endif /* RCC_PLLI2S_SUPPORT */
 333:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 334:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #if defined(RCC_CFGR2_PREDIV1)
 335:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Reset CFGR2 register */
 336:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   CLEAR_REG(RCC->CFGR2);
 337:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #endif /* RCC_CFGR2_PREDIV1 */
 338:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 339:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Reset all CSR flags */
 340:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   SET_BIT(RCC->CSR, RCC_CSR_RMVF);
 341:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 342:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Disable all interrupts */
 343:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   CLEAR_REG(RCC->CIR);
 344:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 345:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   return HAL_OK;
 346:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** }
 347:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 348:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /**
 349:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @brief  Initializes the RCC Oscillators according to the specified parameters in the
 350:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         RCC_OscInitTypeDef.
 351:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @param  RCC_OscInitStruct pointer to an RCC_OscInitTypeDef structure that
 352:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         contains the configuration information for the RCC Oscillators.
 353:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @note   The PLL is not disabled when used as system clock.
 354:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @note   The PLL is not disabled when USB OTG FS clock is enabled (specific to devices with USB 
 355:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @note   Transitions LSE Bypass to LSE On and LSE On to LSE Bypass are not
 356:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         supported by this macro. User should request a transition to LSE Off
 357:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         first and then LSE On or LSE Bypass.
 358:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @note   Transition HSE Bypass to HSE On and HSE On to HSE Bypass are not
 359:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         supported by this macro. User should request a transition to HSE Off
 360:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         first and then HSE On or HSE Bypass.
 361:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @retval HAL status
 362:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
 363:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** HAL_StatusTypeDef HAL_RCC_OscConfig(RCC_OscInitTypeDef  *RCC_OscInitStruct)
 364:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** {
 365:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****    uint32_t tickstart = 0U;
 366:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   
 367:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Check the parameters */
 368:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   assert_param(RCC_OscInitStruct != NULL);
 369:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   assert_param(IS_RCC_OSCILLATORTYPE(RCC_OscInitStruct->OscillatorType));
 370:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   
 371:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /*------------------------------- HSE Configuration ------------------------*/ 
 372:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSE) == RCC_OSCILLATORTYPE_HSE)
 373:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 374:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* Check the parameters */
 375:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     assert_param(IS_RCC_HSE(RCC_OscInitStruct->HSEState));
 376:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 8


 377:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* When the HSE is used as system clock or clock source for PLL in these cases it is not allowe
 378:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_SYSCLKSOURCE_STATUS_HSE) 
 379:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****        || ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_SYSCLKSOURCE_STATUS_PLLCLK) && (__HAL_RCC_GET_PLL_
 380:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 381:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET) && (RCC_OscInitStruct->HSEState == RCC_HSE_
 382:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 383:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         return HAL_ERROR;
 384:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 385:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 386:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     else
 387:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 388:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       /* Set the new HSE configuration ---------------------------------------*/
 389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       __HAL_RCC_HSE_CONFIG(RCC_OscInitStruct->HSEState);
 390:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       
 391:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 392:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****        /* Check the HSE State */
 393:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       if(RCC_OscInitStruct->HSEState != RCC_HSE_OFF)
 394:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 395:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Get Start Tick */
 396:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         tickstart = HAL_GetTick();
 397:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 398:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Wait till HSE is ready */
 399:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
 400:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 401:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           if((HAL_GetTick() - tickstart ) > HSE_TIMEOUT_VALUE)
 402:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           {
 403:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****             return HAL_TIMEOUT;
 404:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           }
 405:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 406:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 407:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       else
 408:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 409:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Get Start Tick */
 410:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         tickstart = HAL_GetTick();
 411:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 412:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Wait till HSE is disabled */
 413:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET)
 414:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 415:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****            if((HAL_GetTick() - tickstart ) > HSE_TIMEOUT_VALUE)
 416:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           {
 417:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****             return HAL_TIMEOUT;
 418:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           }
 419:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 420:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 421:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 422:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 423:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /*----------------------------- HSI Configuration --------------------------*/ 
 424:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSI) == RCC_OSCILLATORTYPE_HSI)
 425:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 426:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* Check the parameters */
 427:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     assert_param(IS_RCC_HSI(RCC_OscInitStruct->HSIState));
 428:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     assert_param(IS_RCC_CALIBRATION_VALUE(RCC_OscInitStruct->HSICalibrationValue));
 429:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     
 430:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* Check if HSI is used as system clock or as PLL source when PLL is selected as system clock *
 431:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_SYSCLKSOURCE_STATUS_HSI) 
 432:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****        || ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_SYSCLKSOURCE_STATUS_PLLCLK) && (__HAL_RCC_GET_PLL_
 433:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 9


 434:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       /* When HSI is used as system clock it will not disabled */
 435:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET) && (RCC_OscInitStruct->HSIState != RCC_HSI_
 436:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 437:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         return HAL_ERROR;
 438:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 439:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       /* Otherwise, just the calibration is allowed */
 440:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       else
 441:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 442:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Adjusts the Internal High Speed oscillator (HSI) calibration value.*/
 443:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
 444:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 445:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 446:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     else
 447:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 448:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       /* Check the HSI State */
 449:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       if(RCC_OscInitStruct->HSIState != RCC_HSI_OFF)
 450:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 451:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****        /* Enable the Internal High Speed oscillator (HSI). */
 452:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         __HAL_RCC_HSI_ENABLE();
 453:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 454:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Get Start Tick */
 455:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         tickstart = HAL_GetTick();
 456:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 457:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Wait till HSI is ready */
 458:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 459:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 460:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           if((HAL_GetTick() - tickstart ) > HSI_TIMEOUT_VALUE)
 461:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           {
 462:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****             return HAL_TIMEOUT;
 463:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           }
 464:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 465:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****                 
 466:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Adjusts the Internal High Speed oscillator (HSI) calibration value.*/
 467:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
 468:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 469:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       else
 470:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 471:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Disable the Internal High Speed oscillator (HSI). */
 472:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         __HAL_RCC_HSI_DISABLE();
 473:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 474:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Get Start Tick */
 475:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         tickstart = HAL_GetTick();
 476:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 477:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Wait till HSI is disabled */
 478:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET)
 479:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 480:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           if((HAL_GetTick() - tickstart ) > HSI_TIMEOUT_VALUE)
 481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           {
 482:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****             return HAL_TIMEOUT;
 483:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           }
 484:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 485:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 486:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 487:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 488:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /*------------------------------ LSI Configuration -------------------------*/ 
 489:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSI) == RCC_OSCILLATORTYPE_LSI)
 490:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 10


 491:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* Check the parameters */
 492:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     assert_param(IS_RCC_LSI(RCC_OscInitStruct->LSIState));
 493:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     
 494:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* Check the LSI State */
 495:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     if(RCC_OscInitStruct->LSIState != RCC_LSI_OFF)
 496:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 497:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       /* Enable the Internal Low Speed oscillator (LSI). */
 498:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       __HAL_RCC_LSI_ENABLE();
 499:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       
 500:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       /* Get Start Tick */
 501:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       tickstart = HAL_GetTick();
 502:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       
 503:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       /* Wait till LSI is ready */  
 504:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) == RESET)
 505:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 506:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         if((HAL_GetTick() - tickstart ) > LSI_TIMEOUT_VALUE)
 507:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 508:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           return HAL_TIMEOUT;
 509:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 510:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 511:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       /*  To have a fully stabilized clock in the specified range, a software delay of 1ms 
 512:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           should be added.*/
 513:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       RCC_Delay(1);
 514:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 515:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     else
 516:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 517:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       /* Disable the Internal Low Speed oscillator (LSI). */
 518:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       __HAL_RCC_LSI_DISABLE();
 519:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       
 520:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       /* Get Start Tick */
 521:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       tickstart = HAL_GetTick();
 522:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       
 523:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       /* Wait till LSI is disabled */  
 524:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) != RESET)
 525:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 526:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         if((HAL_GetTick() - tickstart ) > LSI_TIMEOUT_VALUE)
 527:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 528:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           return HAL_TIMEOUT;
 529:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 530:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 531:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 532:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 533:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /*------------------------------ LSE Configuration -------------------------*/ 
 534:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSE) == RCC_OSCILLATORTYPE_LSE)
 535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 536:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     FlagStatus       pwrclkchanged = RESET;
 537:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     
 538:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* Check the parameters */
 539:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     assert_param(IS_RCC_LSE(RCC_OscInitStruct->LSEState));
 540:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 541:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* Update LSE configuration in Backup Domain control register    */
 542:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* Requires to enable write access to Backup Domain of necessary */
 543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     if(__HAL_RCC_PWR_IS_CLK_DISABLED())
 544:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 545:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       __HAL_RCC_PWR_CLK_ENABLE();
 546:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       pwrclkchanged = SET;
 547:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 11


 548:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     
 549:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     if(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
 550:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 551:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       /* Enable write access to Backup domain */
 552:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       SET_BIT(PWR->CR, PWR_CR_DBP);
 553:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       
 554:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       /* Wait for Backup domain Write protection disable */
 555:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       tickstart = HAL_GetTick();
 556:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 557:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       while(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
 558:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 559:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         if((HAL_GetTick() - tickstart) > RCC_DBP_TIMEOUT_VALUE)
 560:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 561:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           return HAL_TIMEOUT;
 562:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 563:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 564:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 565:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 566:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* Set the new LSE configuration -----------------------------------------*/
 567:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     __HAL_RCC_LSE_CONFIG(RCC_OscInitStruct->LSEState);
 568:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* Check the LSE State */
 569:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     if(RCC_OscInitStruct->LSEState != RCC_LSE_OFF)
 570:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 571:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       /* Get Start Tick */
 572:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       tickstart = HAL_GetTick();
 573:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       
 574:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       /* Wait till LSE is ready */  
 575:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
 576:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 577:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
 578:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 579:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           return HAL_TIMEOUT;
 580:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 581:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 582:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 583:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     else
 584:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 585:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       /* Get Start Tick */
 586:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       tickstart = HAL_GetTick();
 587:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       
 588:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       /* Wait till LSE is disabled */  
 589:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) != RESET)
 590:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 591:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
 592:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 593:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           return HAL_TIMEOUT;
 594:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 595:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 596:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 597:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 598:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* Require to disable power clock if necessary */
 599:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     if(pwrclkchanged == SET)
 600:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 601:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       __HAL_RCC_PWR_CLK_DISABLE();
 602:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 603:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 604:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 12


 605:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #if defined(RCC_CR_PLL2ON)
 606:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /*-------------------------------- PLL2 Configuration -----------------------*/
 607:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Check the parameters */
 608:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   assert_param(IS_RCC_PLL2(RCC_OscInitStruct->PLL2.PLL2State));
 609:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   if ((RCC_OscInitStruct->PLL2.PLL2State) != RCC_PLL2_NONE)
 610:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 611:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* This bit can not be cleared if the PLL2 clock is used indirectly as system 
 612:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       clock (i.e. it is used as PLL clock entry that is used as system clock). */
 613:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     if((__HAL_RCC_GET_PLL_OSCSOURCE() == RCC_PLLSOURCE_HSE) && \
 614:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         (__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_SYSCLKSOURCE_STATUS_PLLCLK) && \
 615:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         ((READ_BIT(RCC->CFGR2,RCC_CFGR2_PREDIV1SRC)) == RCC_CFGR2_PREDIV1SRC_PLL2))
 616:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 617:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       return HAL_ERROR;
 618:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 619:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     else
 620:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 621:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       if((RCC_OscInitStruct->PLL2.PLL2State) == RCC_PLL2_ON)
 622:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 623:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Check the parameters */
 624:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         assert_param(IS_RCC_PLL2_MUL(RCC_OscInitStruct->PLL2.PLL2MUL));
 625:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         assert_param(IS_RCC_HSE_PREDIV2(RCC_OscInitStruct->PLL2.HSEPrediv2Value));
 626:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 627:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Prediv2 can be written only when the PLLI2S is disabled. */
 628:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Return an error only if new value is different from the programmed value */
 629:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         if (HAL_IS_BIT_SET(RCC->CR,RCC_CR_PLL3ON) && \
 630:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           (__HAL_RCC_HSE_GET_PREDIV2() != RCC_OscInitStruct->PLL2.HSEPrediv2Value))
 631:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 632:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           return HAL_ERROR;
 633:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 634:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 635:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Disable the main PLL2. */
 636:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         __HAL_RCC_PLL2_DISABLE();
 637:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 638:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Get Start Tick */
 639:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         tickstart = HAL_GetTick();
 640:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 641:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Wait till PLL2 is disabled */
 642:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLL2RDY) != RESET)
 643:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 644:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           if((HAL_GetTick() - tickstart ) > PLL2_TIMEOUT_VALUE)
 645:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           {
 646:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****             return HAL_TIMEOUT;
 647:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           }
 648:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 649:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 650:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Configure the HSE prediv2 factor --------------------------------*/
 651:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         __HAL_RCC_HSE_PREDIV2_CONFIG(RCC_OscInitStruct->PLL2.HSEPrediv2Value);
 652:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 653:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Configure the main PLL2 multiplication factors. */
 654:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         __HAL_RCC_PLL2_CONFIG(RCC_OscInitStruct->PLL2.PLL2MUL);
 655:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 656:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Enable the main PLL2. */
 657:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         __HAL_RCC_PLL2_ENABLE();
 658:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 659:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Get Start Tick */
 660:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         tickstart = HAL_GetTick();
 661:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 13


 662:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Wait till PLL2 is ready */
 663:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLL2RDY)  == RESET)
 664:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 665:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           if((HAL_GetTick() - tickstart ) > PLL2_TIMEOUT_VALUE)
 666:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           {
 667:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****             return HAL_TIMEOUT;
 668:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           }
 669:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 670:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 671:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       else
 672:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 673:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****        /* Set PREDIV1 source to HSE */
 674:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         CLEAR_BIT(RCC->CFGR2, RCC_CFGR2_PREDIV1SRC);
 675:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 676:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Disable the main PLL2. */
 677:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         __HAL_RCC_PLL2_DISABLE();
 678:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****  
 679:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Get Start Tick */
 680:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         tickstart = HAL_GetTick();
 681:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 682:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Wait till PLL2 is disabled */  
 683:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLL2RDY)  != RESET)
 684:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 685:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           if((HAL_GetTick() - tickstart ) > PLL2_TIMEOUT_VALUE)
 686:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           {
 687:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****             return HAL_TIMEOUT;
 688:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           }
 689:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 690:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 691:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 692:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 693:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 694:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #endif /* RCC_CR_PLL2ON */
 695:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /*-------------------------------- PLL Configuration -----------------------*/
 696:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Check the parameters */
 697:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   assert_param(IS_RCC_PLL(RCC_OscInitStruct->PLL.PLLState));
 698:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   if ((RCC_OscInitStruct->PLL.PLLState) != RCC_PLL_NONE)
 699:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 700:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* Check if the PLL is used as system clock or not */
 701:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     if(__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_SYSCLKSOURCE_STATUS_PLLCLK)
 702:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     { 
 703:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       if((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_ON)
 704:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 705:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Check the parameters */
 706:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         assert_param(IS_RCC_PLLSOURCE(RCC_OscInitStruct->PLL.PLLSource));
 707:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         assert_param(IS_RCC_PLL_MUL(RCC_OscInitStruct->PLL.PLLMUL));
 708:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   
 709:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Disable the main PLL. */
 710:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         __HAL_RCC_PLL_DISABLE();
 711:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 712:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Get Start Tick */
 713:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         tickstart = HAL_GetTick();
 714:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 715:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Wait till PLL is disabled */
 716:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY)  != RESET)
 717:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 718:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 14


 719:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           {
 720:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****             return HAL_TIMEOUT;
 721:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           }
 722:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 723:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 724:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Configure the HSE prediv factor --------------------------------*/
 725:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* It can be written only when the PLL is disabled. Not used in PLL source is different tha
 726:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         if(RCC_OscInitStruct->PLL.PLLSource == RCC_PLLSOURCE_HSE)
 727:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 728:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           /* Check the parameter */
 729:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           assert_param(IS_RCC_HSE_PREDIV(RCC_OscInitStruct->HSEPredivValue));
 730:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #if defined(RCC_CFGR2_PREDIV1SRC)
 731:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           assert_param(IS_RCC_PREDIV1_SOURCE(RCC_OscInitStruct->Prediv1Source));
 732:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           
 733:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           /* Set PREDIV1 source */
 734:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           SET_BIT(RCC->CFGR2, RCC_OscInitStruct->Prediv1Source);
 735:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #endif /* RCC_CFGR2_PREDIV1SRC */
 736:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 737:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           /* Set PREDIV1 Value */
 738:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           __HAL_RCC_HSE_PREDIV_CONFIG(RCC_OscInitStruct->HSEPredivValue);
 739:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 740:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 741:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Configure the main PLL clock source and multiplication factors. */
 742:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         __HAL_RCC_PLL_CONFIG(RCC_OscInitStruct->PLL.PLLSource,
 743:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****                              RCC_OscInitStruct->PLL.PLLMUL);
 744:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Enable the main PLL. */
 745:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         __HAL_RCC_PLL_ENABLE();
 746:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 747:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Get Start Tick */
 748:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         tickstart = HAL_GetTick();
 749:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 750:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Wait till PLL is ready */
 751:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY)  == RESET)
 752:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 753:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
 754:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           {
 755:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****             return HAL_TIMEOUT;
 756:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           }
 757:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 758:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 759:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       else
 760:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 761:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Disable the main PLL. */
 762:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         __HAL_RCC_PLL_DISABLE();
 763:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****  
 764:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Get Start Tick */
 765:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         tickstart = HAL_GetTick();
 766:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 767:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* Wait till PLL is disabled */  
 768:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY)  != RESET)
 769:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 770:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
 771:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           {
 772:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****             return HAL_TIMEOUT;
 773:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           }
 774:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 775:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 15


 776:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 777:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     else
 778:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 779:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       return HAL_ERROR;
 780:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 781:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 782:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   
 783:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   return HAL_OK;
 784:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** }
 785:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 786:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /**
 787:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @brief  Initializes the CPU, AHB and APB buses clocks according to the specified 
 788:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         parameters in the RCC_ClkInitStruct.
 789:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @param  RCC_ClkInitStruct pointer to an RCC_OscInitTypeDef structure that
 790:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         contains the configuration information for the RCC peripheral.
 791:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @param  FLatency FLASH Latency                   
 792:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *          The value of this parameter depend on device used within the same series
 793:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @note   The SystemCoreClock CMSIS variable is used to store System Clock Frequency 
 794:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         and updated by @ref HAL_RCC_GetHCLKFreq() function called within this function
 795:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *
 796:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @note   The HSI is used (enabled by hardware) as system clock source after
 797:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         start-up from Reset, wake-up from STOP and STANDBY mode, or in case
 798:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         of failure of the HSE used directly or indirectly as system clock
 799:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         (if the Clock Security System CSS is enabled).
 800:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *           
 801:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @note   A switch from one clock source to another occurs only if the target
 802:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         clock source is ready (clock stable after start-up delay or PLL locked). 
 803:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         If a clock source which is not yet ready is selected, the switch will
 804:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         occur when the clock source will be ready. 
 805:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         You can use @ref HAL_RCC_GetClockConfig() function to know which clock is
 806:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         currently used as system clock source.
 807:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @retval HAL status
 808:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
 809:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** HAL_StatusTypeDef HAL_RCC_ClockConfig(RCC_ClkInitTypeDef  *RCC_ClkInitStruct, uint32_t FLatency)
 810:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** {
 811:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   uint32_t tickstart = 0U;
 812:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   
 813:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Check the parameters */
 814:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   assert_param(RCC_ClkInitStruct != NULL);
 815:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   assert_param(IS_RCC_CLOCKTYPE(RCC_ClkInitStruct->ClockType));
 816:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   assert_param(IS_FLASH_LATENCY(FLatency));
 817:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 818:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* To correctly read data from FLASH memory, the number of wait states (LATENCY) 
 819:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   must be correctly programmed according to the frequency of the CPU clock 
 820:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     (HCLK) of the device. */
 821:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 822:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #if defined(FLASH_ACR_LATENCY)
 823:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Increasing the number of wait states because of higher CPU frequency */
 824:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   if(FLatency > (FLASH->ACR & FLASH_ACR_LATENCY))
 825:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {    
 826:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* Program the new number of wait states to the LATENCY bits in the FLASH_ACR register */
 827:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     __HAL_FLASH_SET_LATENCY(FLatency);
 828:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     
 829:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* Check that the new number of wait states is taken into account to access the Flash
 830:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     memory by reading the FLASH_ACR register */
 831:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     if((FLASH->ACR & FLASH_ACR_LATENCY) != FLatency)
 832:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 16


 833:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       return HAL_ERROR;
 834:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 835:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 836:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 837:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #endif /* FLASH_ACR_LATENCY */
 838:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /*-------------------------- HCLK Configuration --------------------------*/
 839:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_HCLK) == RCC_CLOCKTYPE_HCLK)
 840:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 841:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     assert_param(IS_RCC_HCLK(RCC_ClkInitStruct->AHBCLKDivider));
 842:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     MODIFY_REG(RCC->CFGR, RCC_CFGR_HPRE, RCC_ClkInitStruct->AHBCLKDivider);
 843:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 844:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 845:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /*------------------------- SYSCLK Configuration ---------------------------*/ 
 846:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_SYSCLK) == RCC_CLOCKTYPE_SYSCLK)
 847:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {    
 848:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     assert_param(IS_RCC_SYSCLKSOURCE(RCC_ClkInitStruct->SYSCLKSource));
 849:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     
 850:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* HSE is selected as System Clock Source */
 851:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     if(RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_HSE)
 852:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 853:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       /* Check the HSE ready flag */  
 854:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       if(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
 855:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 856:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         return HAL_ERROR;
 857:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 858:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 859:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* PLL is selected as System Clock Source */
 860:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     else if(RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLCLK)
 861:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 862:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       /* Check the PLL ready flag */  
 863:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       if(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
 864:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 865:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         return HAL_ERROR;
 866:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 867:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 868:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* HSI is selected as System Clock Source */
 869:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     else
 870:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 871:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       /* Check the HSI ready flag */  
 872:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       if(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 873:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 874:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         return HAL_ERROR;
 875:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 876:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 877:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     __HAL_RCC_SYSCLK_CONFIG(RCC_ClkInitStruct->SYSCLKSource);
 878:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 879:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* Get Start Tick */
 880:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     tickstart = HAL_GetTick();
 881:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     
 882:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     if(RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_HSE)
 883:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 884:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       while (__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_SYSCLKSOURCE_STATUS_HSE)
 885:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 886:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         if((HAL_GetTick() - tickstart ) > CLOCKSWITCH_TIMEOUT_VALUE)
 887:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 888:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           return HAL_TIMEOUT;
 889:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 17


 890:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 891:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 892:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     else if(RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLCLK)
 893:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 894:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       while (__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_SYSCLKSOURCE_STATUS_PLLCLK)
 895:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 896:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         if((HAL_GetTick() - tickstart ) > CLOCKSWITCH_TIMEOUT_VALUE)
 897:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 898:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           return HAL_TIMEOUT;
 899:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 900:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 901:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 902:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     else
 903:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 904:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       while (__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_SYSCLKSOURCE_STATUS_HSI)
 905:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 906:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         if((HAL_GetTick() - tickstart ) > CLOCKSWITCH_TIMEOUT_VALUE)
 907:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 908:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           return HAL_TIMEOUT;
 909:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 910:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 911:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }      
 912:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }    
 913:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #if defined(FLASH_ACR_LATENCY)
 914:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Decreasing the number of wait states because of lower CPU frequency */
 915:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   if(FLatency < (FLASH->ACR & FLASH_ACR_LATENCY))
 916:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {    
 917:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* Program the new number of wait states to the LATENCY bits in the FLASH_ACR register */
 918:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     __HAL_FLASH_SET_LATENCY(FLatency);
 919:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     
 920:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* Check that the new number of wait states is taken into account to access the Flash
 921:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     memory by reading the FLASH_ACR register */
 922:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     if((FLASH->ACR & FLASH_ACR_LATENCY) != FLatency)
 923:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 924:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       return HAL_ERROR;
 925:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 926:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }    
 927:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #endif /* FLASH_ACR_LATENCY */
 928:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 929:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /*-------------------------- PCLK1 Configuration ---------------------------*/ 
 930:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK1) == RCC_CLOCKTYPE_PCLK1)
 931:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 932:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     assert_param(IS_RCC_PCLK(RCC_ClkInitStruct->APB1CLKDivider));
 933:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, RCC_ClkInitStruct->APB1CLKDivider);
 934:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 935:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   
 936:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /*-------------------------- PCLK2 Configuration ---------------------------*/ 
 937:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK2) == RCC_CLOCKTYPE_PCLK2)
 938:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 939:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     assert_param(IS_RCC_PCLK(RCC_ClkInitStruct->APB2CLKDivider));
 940:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, ((RCC_ClkInitStruct->APB2CLKDivider) << 3));
 941:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 942:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****  
 943:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Update the SystemCoreClock global variable */
 944:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   SystemCoreClock = HAL_RCC_GetSysClockFreq() >> AHBPrescTable[(RCC->CFGR & RCC_CFGR_HPRE)>> RCC_CF
 945:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 946:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Configure the source of time base considering new system clocks settings*/
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 18


 947:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   HAL_InitTick (TICK_INT_PRIORITY);
 948:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   
 949:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   return HAL_OK;
 950:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** }
 951:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 952:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /**
 953:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @}
 954:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
 955:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 956:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /** @defgroup RCC_Exported_Functions_Group2 Peripheral Control functions
 957:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *  @brief   RCC clocks control functions
 958:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *
 959:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   @verbatim   
 960:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   ===============================================================================
 961:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****                   ##### Peripheral Control functions #####
 962:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   ===============================================================================  
 963:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     [..]
 964:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     This subsection provides a set of functions allowing to control the RCC Clocks 
 965:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     frequencies.
 966:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 967:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   @endverbatim
 968:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @{
 969:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
 970:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 971:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /**
 972:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @brief  Selects the clock source to output on MCO pin.
 973:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @note   MCO pin should be configured in alternate function mode.
 974:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @param  RCC_MCOx specifies the output direction for the clock source.
 975:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *          This parameter can be one of the following values:
 976:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *            @arg @ref RCC_MCO1 Clock source to output on MCO1 pin(PA8).
 977:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @param  RCC_MCOSource specifies the clock source to output.
 978:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *          This parameter can be one of the following values:
 979:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *            @arg @ref RCC_MCO1SOURCE_NOCLOCK     No clock selected as MCO clock
 980:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *            @arg @ref RCC_MCO1SOURCE_SYSCLK      System clock selected as MCO clock
 981:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *            @arg @ref RCC_MCO1SOURCE_HSI         HSI selected as MCO clock
 982:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *            @arg @ref RCC_MCO1SOURCE_HSE         HSE selected as MCO clock
 983:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   @if STM32F105xC
 984:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *            @arg @ref RCC_MCO1SOURCE_PLLCLK       PLL clock divided by 2 selected as MCO source
 985:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *            @arg @ref RCC_MCO1SOURCE_PLL2CLK      PLL2 clock selected as MCO source
 986:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *            @arg @ref RCC_MCO1SOURCE_PLL3CLK_DIV2 PLL3 clock divided by 2 selected as MCO source
 987:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *            @arg @ref RCC_MCO1SOURCE_EXT_HSE      XT1 external 3-25 MHz oscillator clock selecte
 988:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *            @arg @ref RCC_MCO1SOURCE_PLL3CLK      PLL3 clock selected as MCO source
 989:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   @endif
 990:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   @if STM32F107xC
 991:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *            @arg @ref RCC_MCO1SOURCE_PLLCLK       PLL clock divided by 2 selected as MCO source
 992:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *            @arg @ref RCC_MCO1SOURCE_PLL2CLK      PLL2 clock selected as MCO source
 993:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *            @arg @ref RCC_MCO1SOURCE_PLL3CLK_DIV2 PLL3 clock divided by 2 selected as MCO source
 994:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *            @arg @ref RCC_MCO1SOURCE_EXT_HSE XT1  external 3-25 MHz oscillator clock selected as
 995:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *            @arg @ref RCC_MCO1SOURCE_PLL3CLK      PLL3 clock selected as MCO source
 996:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   @endif
 997:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @param  RCC_MCODiv specifies the MCO DIV.
 998:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *          This parameter can be one of the following values:
 999:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *            @arg @ref RCC_MCODIV_1 no division applied to MCO clock
1000:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @retval None
1001:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
1002:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** void HAL_RCC_MCOConfig(uint32_t RCC_MCOx, uint32_t RCC_MCOSource, uint32_t RCC_MCODiv)
1003:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** {
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 19


1004:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   GPIO_InitTypeDef gpio = {0U};
1005:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1006:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Check the parameters */
1007:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   assert_param(IS_RCC_MCO(RCC_MCOx));
1008:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   assert_param(IS_RCC_MCODIV(RCC_MCODiv));
1009:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   assert_param(IS_RCC_MCO1SOURCE(RCC_MCOSource));
1010:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1011:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Prevent unused argument(s) compilation warning */
1012:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   UNUSED(RCC_MCOx);
1013:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   UNUSED(RCC_MCODiv);
1014:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1015:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Configure the MCO1 pin in alternate function mode */
1016:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   gpio.Mode      = GPIO_MODE_AF_PP;
1017:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   gpio.Speed     = GPIO_SPEED_FREQ_HIGH;
1018:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   gpio.Pull      = GPIO_NOPULL;
1019:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   gpio.Pin       = MCO1_PIN;
1020:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1021:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* MCO1 Clock Enable */
1022:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   MCO1_CLK_ENABLE();
1023:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1024:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   HAL_GPIO_Init(MCO1_GPIO_PORT, &gpio);
1025:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1026:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Configure the MCO clock source */
1027:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   __HAL_RCC_MCO1_CONFIG(RCC_MCOSource, RCC_MCODiv);
1028:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** }
1029:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1030:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /**
1031:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @brief  Enables the Clock Security System.
1032:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @note   If a failure is detected on the HSE oscillator clock, this oscillator
1033:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         is automatically disabled and an interrupt is generated to inform the
1034:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         software about the failure (Clock Security System Interrupt, CSSI),
1035:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         allowing the MCU to perform rescue operations. The CSSI is linked to 
1036:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         the Cortex-M3 NMI (Non-Maskable Interrupt) exception vector.  
1037:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @retval None
1038:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
1039:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** void HAL_RCC_EnableCSS(void)
1040:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** {
1041:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *(__IO uint32_t *) RCC_CR_CSSON_BB = (uint32_t)ENABLE;
1042:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** }
1043:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1044:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /**
1045:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @brief  Disables the Clock Security System.
1046:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @retval None
1047:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
1048:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** void HAL_RCC_DisableCSS(void)
1049:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** {
1050:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *(__IO uint32_t *) RCC_CR_CSSON_BB = (uint32_t)DISABLE;
1051:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** }
1052:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1053:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /**
1054:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @brief  Returns the SYSCLK frequency     
1055:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @note   The system frequency computed by this function is not the real 
1056:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         frequency in the chip. It is calculated based on the predefined 
1057:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         constant and the selected clock source:
1058:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @note     If SYSCLK source is HSI, function returns values based on HSI_VALUE(*)
1059:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @note     If SYSCLK source is HSE, function returns a value based on HSE_VALUE
1060:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *           divided by PREDIV factor(**)
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 20


1061:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @note     If SYSCLK source is PLL, function returns a value based on HSE_VALUE
1062:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *           divided by PREDIV factor(**) or HSI_VALUE(*) multiplied by the PLL factor.
1063:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @note     (*) HSI_VALUE is a constant defined in stm32f1xx_hal_conf.h file (default value
1064:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *               8 MHz) but the real value may vary depending on the variations
1065:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *               in voltage and temperature.
1066:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @note     (**) HSE_VALUE is a constant defined in stm32f1xx_hal_conf.h file (default value
1067:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *                8 MHz), user has to ensure that HSE_VALUE is same as the real
1068:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *                frequency of the crystal used. Otherwise, this function may
1069:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *                have wrong result.
1070:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *                  
1071:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @note   The result of this function could be not correct when using fractional
1072:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         value for HSE crystal.
1073:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *           
1074:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @note   This function can be used by the user application to compute the 
1075:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         baud-rate for the communication peripherals or configure other parameters.
1076:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *           
1077:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @note   Each time SYSCLK changes, this function must be called to update the
1078:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         right SYSCLK value. Otherwise, any configuration based on this function will be incorre
1079:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         
1080:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @retval SYSCLK frequency
1081:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
1082:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** uint32_t HAL_RCC_GetSysClockFreq(void)
1083:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** {
1084:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #if defined(RCC_CFGR2_PREDIV1SRC)
1085:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   const uint8_t aPLLMULFactorTable[14] = {0, 0, 4, 5, 6, 7, 8, 9, 0, 0, 0, 0, 0, 13};
1086:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   const uint8_t aPredivFactorTable[16] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};
1087:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #else
1088:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   const uint8_t aPLLMULFactorTable[16] = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16};
1089:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #if defined(RCC_CFGR2_PREDIV1)
1090:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   const uint8_t aPredivFactorTable[16] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};
1091:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #else
1092:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   const uint8_t aPredivFactorTable[2] = {1, 2};
1093:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #endif /*RCC_CFGR2_PREDIV1*/
1094:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1095:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #endif
1096:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   uint32_t tmpreg = 0U, prediv = 0U, pllclk = 0U, pllmul = 0U;
1097:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   uint32_t sysclockfreq = 0U;
1098:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #if defined(RCC_CFGR2_PREDIV1SRC)
1099:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   uint32_t prediv2 = 0U, pll2mul = 0U;
1100:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #endif /*RCC_CFGR2_PREDIV1SRC*/
1101:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1102:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   tmpreg = RCC->CFGR;
1103:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1104:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Get SYSCLK source -------------------------------------------------------*/
1105:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   switch (tmpreg & RCC_CFGR_SWS)
1106:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
1107:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     case RCC_SYSCLKSOURCE_STATUS_HSE:  /* HSE used as system clock */
1108:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
1109:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       sysclockfreq = HSE_VALUE;
1110:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       break;
1111:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
1112:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     case RCC_SYSCLKSOURCE_STATUS_PLLCLK:  /* PLL used as system clock */
1113:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
1114:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       pllmul = aPLLMULFactorTable[(uint32_t)(tmpreg & RCC_CFGR_PLLMULL) >> RCC_CFGR_PLLMULL_Pos];
1115:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       if ((tmpreg & RCC_CFGR_PLLSRC) != RCC_PLLSOURCE_HSI_DIV2)
1116:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
1117:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #if defined(RCC_CFGR2_PREDIV1)
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 21


1118:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         prediv = aPredivFactorTable[(uint32_t)(RCC->CFGR2 & RCC_CFGR2_PREDIV1) >> RCC_CFGR2_PREDIV1
1119:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #else
1120:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         prediv = aPredivFactorTable[(uint32_t)(RCC->CFGR & RCC_CFGR_PLLXTPRE) >> RCC_CFGR_PLLXTPRE_
1121:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #endif /*RCC_CFGR2_PREDIV1*/
1122:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #if defined(RCC_CFGR2_PREDIV1SRC)
1123:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1124:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         if(HAL_IS_BIT_SET(RCC->CFGR2, RCC_CFGR2_PREDIV1SRC))
1125:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
1126:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           /* PLL2 selected as Prediv1 source */
1127:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           /* PLLCLK = PLL2CLK / PREDIV1 * PLLMUL with PLL2CLK = HSE/PREDIV2 * PLL2MUL */
1128:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           prediv2 = ((RCC->CFGR2 & RCC_CFGR2_PREDIV2) >> RCC_CFGR2_PREDIV2_Pos) + 1;
1129:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           pll2mul = ((RCC->CFGR2 & RCC_CFGR2_PLL2MUL) >> RCC_CFGR2_PLL2MUL_Pos) + 2;
1130:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           pllclk = (uint32_t)(((uint64_t)HSE_VALUE * (uint64_t)pll2mul * (uint64_t)pllmul) / ((uint
1131:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
1132:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         else
1133:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
1134:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           /* HSE used as PLL clock source : PLLCLK = HSE/PREDIV1 * PLLMUL */
1135:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           pllclk = (uint32_t)((HSE_VALUE * pllmul) / prediv);
1136:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
1137:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1138:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* If PLLMUL was set to 13 means that it was to cover the case PLLMUL 6.5 (avoid using floa
1139:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* In this case need to divide pllclk by 2 */
1140:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         if (pllmul == aPLLMULFactorTable[(uint32_t)(RCC_CFGR_PLLMULL6_5) >> RCC_CFGR_PLLMULL_Pos])
1141:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
1142:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****             pllclk = pllclk / 2;
1143:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
1144:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #else
1145:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* HSE used as PLL clock source : PLLCLK = HSE/PREDIV1 * PLLMUL */
1146:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         pllclk = (uint32_t)((HSE_VALUE  * pllmul) / prediv);
1147:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #endif /*RCC_CFGR2_PREDIV1SRC*/
1148:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
1149:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       else
1150:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
1151:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         /* HSI used as PLL clock source : PLLCLK = HSI/2 * PLLMUL */
1152:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         pllclk = (uint32_t)((HSI_VALUE >> 1) * pllmul);
1153:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
1154:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       sysclockfreq = pllclk;
1155:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       break;
1156:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
1157:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     case RCC_SYSCLKSOURCE_STATUS_HSI:  /* HSI used as system clock source */
1158:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     default: /* HSI used as system clock */
1159:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
1160:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       sysclockfreq = HSI_VALUE;
1161:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       break;
1162:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
1163:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
1164:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   return sysclockfreq;
1165:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** }
1166:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1167:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /**
1168:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @brief  Returns the HCLK frequency     
1169:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @note   Each time HCLK changes, this function must be called to update the
1170:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         right HCLK value. Otherwise, any configuration based on this function will be incorrect
1171:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * 
1172:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @note   The SystemCoreClock CMSIS variable is used to store System Clock Frequency 
1173:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         and updated within this function
1174:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @retval HCLK frequency
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 22


1175:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
1176:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** uint32_t HAL_RCC_GetHCLKFreq(void)
1177:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** {
1178:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   return SystemCoreClock;
1179:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** }
1180:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1181:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /**
1182:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @brief  Returns the PCLK1 frequency     
1183:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @note   Each time PCLK1 changes, this function must be called to update the
1184:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         right PCLK1 value. Otherwise, any configuration based on this function will be incorrec
1185:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @retval PCLK1 frequency
1186:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
1187:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** uint32_t HAL_RCC_GetPCLK1Freq(void)
1188:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** {
1189:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Get HCLK source and Compute PCLK1 frequency ---------------------------*/
1190:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   return (HAL_RCC_GetHCLKFreq() >> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE1) >> RCC_CFGR_PPRE1_Pos
1191:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** }    
1192:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1193:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /**
1194:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @brief  Returns the PCLK2 frequency     
1195:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @note   Each time PCLK2 changes, this function must be called to update the
1196:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *         right PCLK2 value. Otherwise, any configuration based on this function will be incorrec
1197:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @retval PCLK2 frequency
1198:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
1199:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** uint32_t HAL_RCC_GetPCLK2Freq(void)
1200:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** {
1201:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Get HCLK source and Compute PCLK2 frequency ---------------------------*/
1202:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   return (HAL_RCC_GetHCLKFreq()>> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE2) >> RCC_CFGR_PPRE2_Pos]
1203:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** } 
1204:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1205:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /**
1206:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @brief  Configures the RCC_OscInitStruct according to the internal 
1207:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * RCC configuration registers.
1208:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @param  RCC_OscInitStruct pointer to an RCC_OscInitTypeDef structure that 
1209:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * will be configured.
1210:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @retval None
1211:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
1212:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** void HAL_RCC_GetOscConfig(RCC_OscInitTypeDef  *RCC_OscInitStruct)
1213:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** {
1214:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Check the parameters */
1215:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   assert_param(RCC_OscInitStruct != NULL);
1216:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1217:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Set all possible values for the Oscillator type parameter ---------------*/
1218:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   RCC_OscInitStruct->OscillatorType = RCC_OSCILLATORTYPE_HSE | RCC_OSCILLATORTYPE_HSI  \
1219:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****                   | RCC_OSCILLATORTYPE_LSE | RCC_OSCILLATORTYPE_LSI;
1220:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1221:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #if defined(RCC_CFGR2_PREDIV1SRC)
1222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Get the Prediv1 source --------------------------------------------------*/
1223:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   RCC_OscInitStruct->Prediv1Source = READ_BIT(RCC->CFGR2,RCC_CFGR2_PREDIV1SRC);
1224:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #endif /* RCC_CFGR2_PREDIV1SRC */
1225:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1226:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Get the HSE configuration -----------------------------------------------*/
1227:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   if((RCC->CR &RCC_CR_HSEBYP) == RCC_CR_HSEBYP)
1228:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
1229:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     RCC_OscInitStruct->HSEState = RCC_HSE_BYPASS;
1230:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
1231:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   else if((RCC->CR &RCC_CR_HSEON) == RCC_CR_HSEON)
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 23


1232:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
1233:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     RCC_OscInitStruct->HSEState = RCC_HSE_ON;
1234:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
1235:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   else
1236:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
1237:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     RCC_OscInitStruct->HSEState = RCC_HSE_OFF;
1238:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
1239:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   RCC_OscInitStruct->HSEPredivValue = __HAL_RCC_HSE_GET_PREDIV();
1240:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1241:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Get the HSI configuration -----------------------------------------------*/
1242:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   if((RCC->CR &RCC_CR_HSION) == RCC_CR_HSION)
1243:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
1244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     RCC_OscInitStruct->HSIState = RCC_HSI_ON;
1245:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
1246:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   else
1247:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
1248:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     RCC_OscInitStruct->HSIState = RCC_HSI_OFF;
1249:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
1250:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   
1251:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   RCC_OscInitStruct->HSICalibrationValue = (uint32_t)((RCC->CR & RCC_CR_HSITRIM) >> RCC_CR_HSITRIM_
1252:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   
1253:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Get the LSE configuration -----------------------------------------------*/
1254:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   if((RCC->BDCR &RCC_BDCR_LSEBYP) == RCC_BDCR_LSEBYP)
1255:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
1256:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     RCC_OscInitStruct->LSEState = RCC_LSE_BYPASS;
1257:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
1258:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   else if((RCC->BDCR &RCC_BDCR_LSEON) == RCC_BDCR_LSEON)
1259:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
1260:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     RCC_OscInitStruct->LSEState = RCC_LSE_ON;
1261:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
1262:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   else
1263:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
1264:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     RCC_OscInitStruct->LSEState = RCC_LSE_OFF;
1265:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
1266:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   
1267:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Get the LSI configuration -----------------------------------------------*/
1268:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   if((RCC->CSR &RCC_CSR_LSION) == RCC_CSR_LSION)
1269:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
1270:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     RCC_OscInitStruct->LSIState = RCC_LSI_ON;
1271:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
1272:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   else
1273:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
1274:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     RCC_OscInitStruct->LSIState = RCC_LSI_OFF;
1275:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
1276:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   
1277:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1278:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Get the PLL configuration -----------------------------------------------*/
1279:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   if((RCC->CR &RCC_CR_PLLON) == RCC_CR_PLLON)
1280:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
1281:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     RCC_OscInitStruct->PLL.PLLState = RCC_PLL_ON;
1282:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
1283:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   else
1284:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
1285:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     RCC_OscInitStruct->PLL.PLLState = RCC_PLL_OFF;
1286:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
1287:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLSource = (uint32_t)(RCC->CFGR & RCC_CFGR_PLLSRC);
1288:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLMUL = (uint32_t)(RCC->CFGR & RCC_CFGR_PLLMULL);
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 24


1289:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #if defined(RCC_CR_PLL2ON)
1290:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Get the PLL2 configuration -----------------------------------------------*/
1291:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   if((RCC->CR &RCC_CR_PLL2ON) == RCC_CR_PLL2ON)
1292:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
1293:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     RCC_OscInitStruct->PLL2.PLL2State = RCC_PLL2_ON;
1294:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
1295:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   else
1296:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
1297:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     RCC_OscInitStruct->PLL2.PLL2State = RCC_PLL2_OFF;
1298:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
1299:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   RCC_OscInitStruct->PLL2.HSEPrediv2Value = __HAL_RCC_HSE_GET_PREDIV2();
1300:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   RCC_OscInitStruct->PLL2.PLL2MUL = (uint32_t)(RCC->CFGR2 & RCC_CFGR2_PLL2MUL);
1301:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #endif /* RCC_CR_PLL2ON */
1302:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** }
1303:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1304:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /**
1305:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @brief  Get the RCC_ClkInitStruct according to the internal 
1306:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * RCC configuration registers.
1307:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @param  RCC_ClkInitStruct pointer to an RCC_ClkInitTypeDef structure that 
1308:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * contains the current clock configuration.
1309:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @param  pFLatency Pointer on the Flash Latency.
1310:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @retval None
1311:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
1312:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** void HAL_RCC_GetClockConfig(RCC_ClkInitTypeDef  *RCC_ClkInitStruct, uint32_t *pFLatency)
1313:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** {
1314:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Check the parameters */
1315:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   assert_param(RCC_ClkInitStruct != NULL);
1316:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   assert_param(pFLatency != NULL);
1317:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1318:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Set all possible values for the Clock type parameter --------------------*/
1319:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   RCC_ClkInitStruct->ClockType = RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | 
1320:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   
1321:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Get the SYSCLK configuration --------------------------------------------*/ 
1322:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   RCC_ClkInitStruct->SYSCLKSource = (uint32_t)(RCC->CFGR & RCC_CFGR_SW);
1323:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   
1324:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Get the HCLK configuration ----------------------------------------------*/ 
1325:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   RCC_ClkInitStruct->AHBCLKDivider = (uint32_t)(RCC->CFGR & RCC_CFGR_HPRE); 
1326:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   
1327:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Get the APB1 configuration ----------------------------------------------*/ 
1328:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   RCC_ClkInitStruct->APB1CLKDivider = (uint32_t)(RCC->CFGR & RCC_CFGR_PPRE1);   
1329:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   
1330:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Get the APB2 configuration ----------------------------------------------*/ 
1331:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   RCC_ClkInitStruct->APB2CLKDivider = (uint32_t)((RCC->CFGR & RCC_CFGR_PPRE2) >> 3);
1332:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   
1333:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #if   defined(FLASH_ACR_LATENCY)
1334:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Get the Flash Wait State (Latency) configuration ------------------------*/   
1335:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *pFLatency = (uint32_t)(FLASH->ACR & FLASH_ACR_LATENCY); 
1336:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #else
1337:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* For VALUE lines devices, only LATENCY_0 can be set*/
1338:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *pFLatency = (uint32_t)FLASH_LATENCY_0; 
1339:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #endif
1340:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** }
1341:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1342:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /**
1343:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @brief This function handles the RCC CSS interrupt request.
1344:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @note This API should be called under the NMI_Handler().
1345:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @retval None
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 25


1346:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
1347:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** void HAL_RCC_NMI_IRQHandler(void)
1348:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** {
1349:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Check RCC CSSF flag  */
1350:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   if(__HAL_RCC_GET_IT(RCC_IT_CSS))
1351:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
1352:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* RCC Clock Security System interrupt user callback */
1353:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     HAL_RCC_CSSCallback();
1354:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     
1355:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* Clear RCC CSS pending bit */
1356:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     __HAL_RCC_CLEAR_IT(RCC_IT_CSS);
1357:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
1358:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** }
1359:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1360:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /**
1361:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @brief  This function provides delay (in milliseconds) based on CPU cycles method.
1362:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @param  mdelay: specifies the delay time length, in milliseconds.
1363:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @retval None
1364:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
1365:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** static void RCC_Delay(uint32_t mdelay)
1366:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** {
  25              		.loc 1 1366 0
  26              		.cfi_startproc
  27              		@ args = 0, pretend = 0, frame = 8
  28              		@ frame_needed = 0, uses_anonymous_args = 0
  29              		@ link register save eliminated.
  30              	.LVL0:
  31 0000 82B0     		sub	sp, sp, #8
  32              	.LCFI0:
  33              		.cfi_def_cfa_offset 8
1367:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   __IO uint32_t Delay = mdelay * (SystemCoreClock / 8U / 1000U);
  34              		.loc 1 1367 0
  35 0002 084B     		ldr	r3, .L4
  36 0004 1B68     		ldr	r3, [r3]
  37 0006 084A     		ldr	r2, .L4+4
  38 0008 A2FB0323 		umull	r2, r3, r2, r3
  39 000c 5B0A     		lsrs	r3, r3, #9
  40 000e 00FB03F0 		mul	r0, r0, r3
  41              	.LVL1:
  42 0012 0190     		str	r0, [sp, #4]
  43              	.L2:
  44              	.LBB4:
  45              	.LBB5:
  46              		.file 2 "Drivers/CMSIS/Include/cmsis_gcc.h"
   1:Drivers/CMSIS/Include/cmsis_gcc.h **** /**************************************************************************//**
   2:Drivers/CMSIS/Include/cmsis_gcc.h ****  * @file     cmsis_gcc.h
   3:Drivers/CMSIS/Include/cmsis_gcc.h ****  * @brief    CMSIS Cortex-M Core Function/Instruction Header File
   4:Drivers/CMSIS/Include/cmsis_gcc.h ****  * @version  V4.30
   5:Drivers/CMSIS/Include/cmsis_gcc.h ****  * @date     20. October 2015
   6:Drivers/CMSIS/Include/cmsis_gcc.h ****  ******************************************************************************/
   7:Drivers/CMSIS/Include/cmsis_gcc.h **** /* Copyright (c) 2009 - 2015 ARM LIMITED
   8:Drivers/CMSIS/Include/cmsis_gcc.h **** 
   9:Drivers/CMSIS/Include/cmsis_gcc.h ****    All rights reserved.
  10:Drivers/CMSIS/Include/cmsis_gcc.h ****    Redistribution and use in source and binary forms, with or without
  11:Drivers/CMSIS/Include/cmsis_gcc.h ****    modification, are permitted provided that the following conditions are met:
  12:Drivers/CMSIS/Include/cmsis_gcc.h ****    - Redistributions of source code must retain the above copyright
  13:Drivers/CMSIS/Include/cmsis_gcc.h ****      notice, this list of conditions and the following disclaimer.
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 26


  14:Drivers/CMSIS/Include/cmsis_gcc.h ****    - Redistributions in binary form must reproduce the above copyright
  15:Drivers/CMSIS/Include/cmsis_gcc.h ****      notice, this list of conditions and the following disclaimer in the
  16:Drivers/CMSIS/Include/cmsis_gcc.h ****      documentation and/or other materials provided with the distribution.
  17:Drivers/CMSIS/Include/cmsis_gcc.h ****    - Neither the name of ARM nor the names of its contributors may be used
  18:Drivers/CMSIS/Include/cmsis_gcc.h ****      to endorse or promote products derived from this software without
  19:Drivers/CMSIS/Include/cmsis_gcc.h ****      specific prior written permission.
  20:Drivers/CMSIS/Include/cmsis_gcc.h ****    *
  21:Drivers/CMSIS/Include/cmsis_gcc.h ****    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  22:Drivers/CMSIS/Include/cmsis_gcc.h ****    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  23:Drivers/CMSIS/Include/cmsis_gcc.h ****    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  24:Drivers/CMSIS/Include/cmsis_gcc.h ****    ARE DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS AND CONTRIBUTORS BE
  25:Drivers/CMSIS/Include/cmsis_gcc.h ****    LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  26:Drivers/CMSIS/Include/cmsis_gcc.h ****    CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  27:Drivers/CMSIS/Include/cmsis_gcc.h ****    SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  28:Drivers/CMSIS/Include/cmsis_gcc.h ****    INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  29:Drivers/CMSIS/Include/cmsis_gcc.h ****    CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  30:Drivers/CMSIS/Include/cmsis_gcc.h ****    ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  31:Drivers/CMSIS/Include/cmsis_gcc.h ****    POSSIBILITY OF SUCH DAMAGE.
  32:Drivers/CMSIS/Include/cmsis_gcc.h ****    ---------------------------------------------------------------------------*/
  33:Drivers/CMSIS/Include/cmsis_gcc.h **** 
  34:Drivers/CMSIS/Include/cmsis_gcc.h **** 
  35:Drivers/CMSIS/Include/cmsis_gcc.h **** #ifndef __CMSIS_GCC_H
  36:Drivers/CMSIS/Include/cmsis_gcc.h **** #define __CMSIS_GCC_H
  37:Drivers/CMSIS/Include/cmsis_gcc.h **** 
  38:Drivers/CMSIS/Include/cmsis_gcc.h **** /* ignore some GCC warnings */
  39:Drivers/CMSIS/Include/cmsis_gcc.h **** #if defined ( __GNUC__ )
  40:Drivers/CMSIS/Include/cmsis_gcc.h **** #pragma GCC diagnostic push
  41:Drivers/CMSIS/Include/cmsis_gcc.h **** #pragma GCC diagnostic ignored "-Wsign-conversion"
  42:Drivers/CMSIS/Include/cmsis_gcc.h **** #pragma GCC diagnostic ignored "-Wconversion"
  43:Drivers/CMSIS/Include/cmsis_gcc.h **** #pragma GCC diagnostic ignored "-Wunused-parameter"
  44:Drivers/CMSIS/Include/cmsis_gcc.h **** #endif
  45:Drivers/CMSIS/Include/cmsis_gcc.h **** 
  46:Drivers/CMSIS/Include/cmsis_gcc.h **** 
  47:Drivers/CMSIS/Include/cmsis_gcc.h **** /* ###########################  Core Function Access  ########################### */
  48:Drivers/CMSIS/Include/cmsis_gcc.h **** /** \ingroup  CMSIS_Core_FunctionInterface
  49:Drivers/CMSIS/Include/cmsis_gcc.h ****     \defgroup CMSIS_Core_RegAccFunctions CMSIS Core Register Access Functions
  50:Drivers/CMSIS/Include/cmsis_gcc.h ****   @{
  51:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
  52:Drivers/CMSIS/Include/cmsis_gcc.h **** 
  53:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
  54:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Enable IRQ Interrupts
  55:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Enables IRQ interrupts by clearing the I-bit in the CPSR.
  56:Drivers/CMSIS/Include/cmsis_gcc.h ****            Can only be executed in Privileged modes.
  57:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
  58:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __enable_irq(void)
  59:Drivers/CMSIS/Include/cmsis_gcc.h **** {
  60:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("cpsie i" : : : "memory");
  61:Drivers/CMSIS/Include/cmsis_gcc.h **** }
  62:Drivers/CMSIS/Include/cmsis_gcc.h **** 
  63:Drivers/CMSIS/Include/cmsis_gcc.h **** 
  64:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
  65:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Disable IRQ Interrupts
  66:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Disables IRQ interrupts by setting the I-bit in the CPSR.
  67:Drivers/CMSIS/Include/cmsis_gcc.h ****   Can only be executed in Privileged modes.
  68:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
  69:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __disable_irq(void)
  70:Drivers/CMSIS/Include/cmsis_gcc.h **** {
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 27


  71:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("cpsid i" : : : "memory");
  72:Drivers/CMSIS/Include/cmsis_gcc.h **** }
  73:Drivers/CMSIS/Include/cmsis_gcc.h **** 
  74:Drivers/CMSIS/Include/cmsis_gcc.h **** 
  75:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
  76:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Get Control Register
  77:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Returns the content of the Control Register.
  78:Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               Control Register value
  79:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
  80:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_CONTROL(void)
  81:Drivers/CMSIS/Include/cmsis_gcc.h **** {
  82:Drivers/CMSIS/Include/cmsis_gcc.h ****   uint32_t result;
  83:Drivers/CMSIS/Include/cmsis_gcc.h **** 
  84:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, control" : "=r" (result) );
  85:Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
  86:Drivers/CMSIS/Include/cmsis_gcc.h **** }
  87:Drivers/CMSIS/Include/cmsis_gcc.h **** 
  88:Drivers/CMSIS/Include/cmsis_gcc.h **** 
  89:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
  90:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Set Control Register
  91:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Writes the given value to the Control Register.
  92:Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    control  Control Register value to set
  93:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
  94:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_CONTROL(uint32_t control)
  95:Drivers/CMSIS/Include/cmsis_gcc.h **** {
  96:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MSR control, %0" : : "r" (control) : "memory");
  97:Drivers/CMSIS/Include/cmsis_gcc.h **** }
  98:Drivers/CMSIS/Include/cmsis_gcc.h **** 
  99:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 100:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 101:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Get IPSR Register
 102:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Returns the content of the IPSR Register.
 103:Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               IPSR Register value
 104:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 105:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_IPSR(void)
 106:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 107:Drivers/CMSIS/Include/cmsis_gcc.h ****   uint32_t result;
 108:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 109:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, ipsr" : "=r" (result) );
 110:Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
 111:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 112:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 113:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 114:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 115:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Get APSR Register
 116:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Returns the content of the APSR Register.
 117:Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               APSR Register value
 118:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 119:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_APSR(void)
 120:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 121:Drivers/CMSIS/Include/cmsis_gcc.h ****   uint32_t result;
 122:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 123:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, apsr" : "=r" (result) );
 124:Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
 125:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 126:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 127:Drivers/CMSIS/Include/cmsis_gcc.h **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 28


 128:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 129:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Get xPSR Register
 130:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Returns the content of the xPSR Register.
 131:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 132:Drivers/CMSIS/Include/cmsis_gcc.h ****     \return               xPSR Register value
 133:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 134:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_xPSR(void)
 135:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 136:Drivers/CMSIS/Include/cmsis_gcc.h ****   uint32_t result;
 137:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 138:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, xpsr" : "=r" (result) );
 139:Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
 140:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 141:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 142:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 143:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 144:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Get Process Stack Pointer
 145:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Returns the current value of the Process Stack Pointer (PSP).
 146:Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               PSP Register value
 147:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 148:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_PSP(void)
 149:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 150:Drivers/CMSIS/Include/cmsis_gcc.h ****   register uint32_t result;
 151:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 152:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, psp\n"  : "=r" (result) );
 153:Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
 154:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 155:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 156:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 157:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 158:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Set Process Stack Pointer
 159:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Assigns the given value to the Process Stack Pointer (PSP).
 160:Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    topOfProcStack  Process Stack Pointer value to set
 161:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 162:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_PSP(uint32_t topOfProcStack)
 163:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 164:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MSR psp, %0\n" : : "r" (topOfProcStack) : "sp");
 165:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 166:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 167:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 168:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 169:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Get Main Stack Pointer
 170:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Returns the current value of the Main Stack Pointer (MSP).
 171:Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               MSP Register value
 172:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 173:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_MSP(void)
 174:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 175:Drivers/CMSIS/Include/cmsis_gcc.h ****   register uint32_t result;
 176:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 177:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, msp\n" : "=r" (result) );
 178:Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
 179:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 180:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 181:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 182:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 183:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Set Main Stack Pointer
 184:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Assigns the given value to the Main Stack Pointer (MSP).
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 29


 185:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 186:Drivers/CMSIS/Include/cmsis_gcc.h ****     \param [in]    topOfMainStack  Main Stack Pointer value to set
 187:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 188:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_MSP(uint32_t topOfMainStack)
 189:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 190:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MSR msp, %0\n" : : "r" (topOfMainStack) : "sp");
 191:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 192:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 193:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 194:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 195:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Get Priority Mask
 196:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Returns the current state of the priority mask bit from the Priority Mask Register.
 197:Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               Priority Mask value
 198:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 199:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_PRIMASK(void)
 200:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 201:Drivers/CMSIS/Include/cmsis_gcc.h ****   uint32_t result;
 202:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 203:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, primask" : "=r" (result) );
 204:Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
 205:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 206:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 207:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 208:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 209:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Set Priority Mask
 210:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Assigns the given value to the Priority Mask Register.
 211:Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    priMask  Priority Mask
 212:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 213:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_PRIMASK(uint32_t priMask)
 214:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 215:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MSR primask, %0" : : "r" (priMask) : "memory");
 216:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 217:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 218:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 219:Drivers/CMSIS/Include/cmsis_gcc.h **** #if       (__CORTEX_M >= 0x03U)
 220:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 221:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 222:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Enable FIQ
 223:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Enables FIQ interrupts by clearing the F-bit in the CPSR.
 224:Drivers/CMSIS/Include/cmsis_gcc.h ****            Can only be executed in Privileged modes.
 225:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 226:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __enable_fault_irq(void)
 227:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 228:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("cpsie f" : : : "memory");
 229:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 230:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 231:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 232:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 233:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Disable FIQ
 234:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Disables FIQ interrupts by setting the F-bit in the CPSR.
 235:Drivers/CMSIS/Include/cmsis_gcc.h ****            Can only be executed in Privileged modes.
 236:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 237:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __disable_fault_irq(void)
 238:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 239:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("cpsid f" : : : "memory");
 240:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 241:Drivers/CMSIS/Include/cmsis_gcc.h **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 30


 242:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 243:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 244:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Get Base Priority
 245:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Returns the current value of the Base Priority register.
 246:Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               Base Priority register value
 247:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 248:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_BASEPRI(void)
 249:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 250:Drivers/CMSIS/Include/cmsis_gcc.h ****   uint32_t result;
 251:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 252:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, basepri" : "=r" (result) );
 253:Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
 254:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 255:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 256:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 257:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 258:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Set Base Priority
 259:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Assigns the given value to the Base Priority register.
 260:Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    basePri  Base Priority value to set
 261:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 262:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_BASEPRI(uint32_t value)
 263:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 264:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MSR basepri, %0" : : "r" (value) : "memory");
 265:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 266:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 267:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 268:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 269:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Set Base Priority with condition
 270:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Assigns the given value to the Base Priority register only if BASEPRI masking is disable
 271:Drivers/CMSIS/Include/cmsis_gcc.h ****            or the new value increases the BASEPRI priority level.
 272:Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    basePri  Base Priority value to set
 273:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 274:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_BASEPRI_MAX(uint32_t value)
 275:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 276:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MSR basepri_max, %0" : : "r" (value) : "memory");
 277:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 278:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 279:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 280:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 281:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Get Fault Mask
 282:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Returns the current value of the Fault Mask register.
 283:Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               Fault Mask register value
 284:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 285:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_FAULTMASK(void)
 286:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 287:Drivers/CMSIS/Include/cmsis_gcc.h ****   uint32_t result;
 288:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 289:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, faultmask" : "=r" (result) );
 290:Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
 291:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 292:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 293:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 294:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 295:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Set Fault Mask
 296:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Assigns the given value to the Fault Mask register.
 297:Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    faultMask  Fault Mask value to set
 298:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 31


 299:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_FAULTMASK(uint32_t faultMask)
 300:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 301:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MSR faultmask, %0" : : "r" (faultMask) : "memory");
 302:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 303:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 304:Drivers/CMSIS/Include/cmsis_gcc.h **** #endif /* (__CORTEX_M >= 0x03U) */
 305:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 306:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 307:Drivers/CMSIS/Include/cmsis_gcc.h **** #if       (__CORTEX_M == 0x04U) || (__CORTEX_M == 0x07U)
 308:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 309:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 310:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Get FPSCR
 311:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Returns the current value of the Floating Point Status/Control register.
 312:Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               Floating Point Status/Control register value
 313:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 314:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_FPSCR(void)
 315:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 316:Drivers/CMSIS/Include/cmsis_gcc.h **** #if (__FPU_PRESENT == 1U) && (__FPU_USED == 1U)
 317:Drivers/CMSIS/Include/cmsis_gcc.h ****   uint32_t result;
 318:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 319:Drivers/CMSIS/Include/cmsis_gcc.h ****   /* Empty asm statement works as a scheduling barrier */
 320:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("");
 321:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("VMRS %0, fpscr" : "=r" (result) );
 322:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("");
 323:Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
 324:Drivers/CMSIS/Include/cmsis_gcc.h **** #else
 325:Drivers/CMSIS/Include/cmsis_gcc.h ****    return(0);
 326:Drivers/CMSIS/Include/cmsis_gcc.h **** #endif
 327:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 328:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 329:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 330:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 331:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Set FPSCR
 332:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Assigns the given value to the Floating Point Status/Control register.
 333:Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    fpscr  Floating Point Status/Control value to set
 334:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 335:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_FPSCR(uint32_t fpscr)
 336:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 337:Drivers/CMSIS/Include/cmsis_gcc.h **** #if (__FPU_PRESENT == 1U) && (__FPU_USED == 1U)
 338:Drivers/CMSIS/Include/cmsis_gcc.h ****   /* Empty asm statement works as a scheduling barrier */
 339:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("");
 340:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("VMSR fpscr, %0" : : "r" (fpscr) : "vfpcc");
 341:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("");
 342:Drivers/CMSIS/Include/cmsis_gcc.h **** #endif
 343:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 344:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 345:Drivers/CMSIS/Include/cmsis_gcc.h **** #endif /* (__CORTEX_M == 0x04U) || (__CORTEX_M == 0x07U) */
 346:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 347:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 348:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 349:Drivers/CMSIS/Include/cmsis_gcc.h **** /*@} end of CMSIS_Core_RegAccFunctions */
 350:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 351:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 352:Drivers/CMSIS/Include/cmsis_gcc.h **** /* ##########################  Core Instruction Access  ######################### */
 353:Drivers/CMSIS/Include/cmsis_gcc.h **** /** \defgroup CMSIS_Core_InstructionInterface CMSIS Core Instruction Interface
 354:Drivers/CMSIS/Include/cmsis_gcc.h ****   Access to dedicated instructions
 355:Drivers/CMSIS/Include/cmsis_gcc.h ****   @{
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 32


 356:Drivers/CMSIS/Include/cmsis_gcc.h **** */
 357:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 358:Drivers/CMSIS/Include/cmsis_gcc.h **** /* Define macros for porting to both thumb1 and thumb2.
 359:Drivers/CMSIS/Include/cmsis_gcc.h ****  * For thumb1, use low register (r0-r7), specified by constraint "l"
 360:Drivers/CMSIS/Include/cmsis_gcc.h ****  * Otherwise, use general registers, specified by constraint "r" */
 361:Drivers/CMSIS/Include/cmsis_gcc.h **** #if defined (__thumb__) && !defined (__thumb2__)
 362:Drivers/CMSIS/Include/cmsis_gcc.h **** #define __CMSIS_GCC_OUT_REG(r) "=l" (r)
 363:Drivers/CMSIS/Include/cmsis_gcc.h **** #define __CMSIS_GCC_USE_REG(r) "l" (r)
 364:Drivers/CMSIS/Include/cmsis_gcc.h **** #else
 365:Drivers/CMSIS/Include/cmsis_gcc.h **** #define __CMSIS_GCC_OUT_REG(r) "=r" (r)
 366:Drivers/CMSIS/Include/cmsis_gcc.h **** #define __CMSIS_GCC_USE_REG(r) "r" (r)
 367:Drivers/CMSIS/Include/cmsis_gcc.h **** #endif
 368:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 369:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 370:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   No Operation
 371:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details No Operation does nothing. This instruction can be used for code alignment purposes.
 372:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 373:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__((always_inline)) __STATIC_INLINE void __NOP(void)
 374:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 375:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("nop");
  47              		.loc 2 375 0 discriminator 1
  48              		.syntax unified
  49              	@ 375 "Drivers/CMSIS/Include/cmsis_gcc.h" 1
  50 0014 00BF     		nop
  51              	@ 0 "" 2
  52              		.thumb
  53              		.syntax unified
  54              	.LBE5:
  55              	.LBE4:
1368:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   do 
1369:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
1370:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     __NOP();
1371:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   } 
1372:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   while (Delay --);
  56              		.loc 1 1372 0 discriminator 1
  57 0016 019B     		ldr	r3, [sp, #4]
  58 0018 5A1E     		subs	r2, r3, #1
  59 001a 0192     		str	r2, [sp, #4]
  60 001c 002B     		cmp	r3, #0
  61 001e F9D1     		bne	.L2
1373:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** }
  62              		.loc 1 1373 0
  63 0020 02B0     		add	sp, sp, #8
  64              	.LCFI1:
  65              		.cfi_def_cfa_offset 0
  66              		@ sp needed
  67 0022 7047     		bx	lr
  68              	.L5:
  69              		.align	2
  70              	.L4:
  71 0024 00000000 		.word	SystemCoreClock
  72 0028 D34D6210 		.word	274877907
  73              		.cfi_endproc
  74              	.LFE79:
  76              		.section	.text.HAL_RCC_DeInit,"ax",%progbits
  77              		.align	1
  78              		.global	HAL_RCC_DeInit
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 33


  79              		.syntax unified
  80              		.thumb
  81              		.thumb_func
  82              		.fpu softvfp
  84              	HAL_RCC_DeInit:
  85              	.LFB66:
 219:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   uint32_t tickstart;
  86              		.loc 1 219 0
  87              		.cfi_startproc
  88              		@ args = 0, pretend = 0, frame = 0
  89              		@ frame_needed = 0, uses_anonymous_args = 0
  90 0000 70B5     		push	{r4, r5, r6, lr}
  91              	.LCFI2:
  92              		.cfi_def_cfa_offset 16
  93              		.cfi_offset 4, -16
  94              		.cfi_offset 5, -12
  95              		.cfi_offset 6, -8
  96              		.cfi_offset 14, -4
 223:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
  97              		.loc 1 223 0
  98 0002 FFF7FEFF 		bl	HAL_GetTick
  99              	.LVL2:
 100 0006 0446     		mov	r4, r0
 101              	.LVL3:
 226:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 102              		.loc 1 226 0
 103 0008 354A     		ldr	r2, .L27
 104 000a 1368     		ldr	r3, [r2]
 105 000c 43F00103 		orr	r3, r3, #1
 106 0010 1360     		str	r3, [r2]
 107              	.LVL4:
 108              	.L7:
 229:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 109              		.loc 1 229 0
 110 0012 334B     		ldr	r3, .L27
 111 0014 1B68     		ldr	r3, [r3]
 112 0016 13F0020F 		tst	r3, #2
 113 001a 07D1     		bne	.L22
 231:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 114              		.loc 1 231 0
 115 001c FFF7FEFF 		bl	HAL_GetTick
 116              	.LVL5:
 117 0020 001B     		subs	r0, r0, r4
 118 0022 0228     		cmp	r0, #2
 119 0024 F5D9     		bls	.L7
 233:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 120              		.loc 1 233 0
 121 0026 0324     		movs	r4, #3
 122              	.LVL6:
 123              	.L8:
 346:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 124              		.loc 1 346 0
 125 0028 2046     		mov	r0, r4
 126 002a 70BD     		pop	{r4, r5, r6, pc}
 127              	.LVL7:
 128              	.L22:
 238:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 34


 129              		.loc 1 238 0
 130 002c 2C4D     		ldr	r5, .L27
 131 002e 2B68     		ldr	r3, [r5]
 132 0030 23F0F803 		bic	r3, r3, #248
 133 0034 43F08003 		orr	r3, r3, #128
 134 0038 2B60     		str	r3, [r5]
 241:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 135              		.loc 1 241 0
 136 003a FFF7FEFF 		bl	HAL_GetTick
 137              	.LVL8:
 138 003e 0446     		mov	r4, r0
 139              	.LVL9:
 244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 140              		.loc 1 244 0
 141 0040 0023     		movs	r3, #0
 142 0042 6B60     		str	r3, [r5, #4]
 143              	.LVL10:
 144              	.L10:
 247:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 145              		.loc 1 247 0
 146 0044 264B     		ldr	r3, .L27
 147 0046 5B68     		ldr	r3, [r3, #4]
 148 0048 13F00C0F 		tst	r3, #12
 149 004c 08D0     		beq	.L23
 249:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 150              		.loc 1 249 0
 151 004e FFF7FEFF 		bl	HAL_GetTick
 152              	.LVL11:
 153 0052 001B     		subs	r0, r0, r4
 154 0054 41F28833 		movw	r3, #5000
 155 0058 9842     		cmp	r0, r3
 156 005a F3D9     		bls	.L10
 251:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 157              		.loc 1 251 0
 158 005c 0324     		movs	r4, #3
 159              	.LVL12:
 160 005e E3E7     		b	.L8
 161              	.LVL13:
 162              	.L23:
 256:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 163              		.loc 1 256 0
 164 0060 204B     		ldr	r3, .L27+4
 165 0062 214A     		ldr	r2, .L27+8
 166 0064 1A60     		str	r2, [r3]
 259:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 167              		.loc 1 259 0
 168 0066 0020     		movs	r0, #0
 169 0068 FFF7FEFF 		bl	HAL_InitTick
 170              	.LVL14:
 171 006c 0446     		mov	r4, r0
 172              	.LVL15:
 173 006e 08B1     		cbz	r0, .L24
 261:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 174              		.loc 1 261 0
 175 0070 0124     		movs	r4, #1
 176 0072 D9E7     		b	.L8
 177              	.L24:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 35


 265:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 178              		.loc 1 265 0
 179 0074 FFF7FEFF 		bl	HAL_GetTick
 180              	.LVL16:
 181 0078 0546     		mov	r5, r0
 182              	.LVL17:
 268:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 183              		.loc 1 268 0
 184 007a 194A     		ldr	r2, .L27
 185 007c 1368     		ldr	r3, [r2]
 186 007e 23F08073 		bic	r3, r3, #16777216
 187 0082 1360     		str	r3, [r2]
 188              	.LVL18:
 189              	.L12:
 271:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 190              		.loc 1 271 0
 191 0084 164B     		ldr	r3, .L27
 192 0086 1B68     		ldr	r3, [r3]
 193 0088 13F0007F 		tst	r3, #33554432
 194 008c 06D0     		beq	.L25
 273:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 195              		.loc 1 273 0
 196 008e FFF7FEFF 		bl	HAL_GetTick
 197              	.LVL19:
 198 0092 401B     		subs	r0, r0, r5
 199 0094 0228     		cmp	r0, #2
 200 0096 F5D9     		bls	.L12
 275:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 201              		.loc 1 275 0
 202 0098 0324     		movs	r4, #3
 203 009a C5E7     		b	.L8
 204              	.L25:
 280:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 205              		.loc 1 280 0
 206 009c 104E     		ldr	r6, .L27
 207 009e 0023     		movs	r3, #0
 208 00a0 7360     		str	r3, [r6, #4]
 283:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 209              		.loc 1 283 0
 210 00a2 FFF7FEFF 		bl	HAL_GetTick
 211              	.LVL20:
 212 00a6 0546     		mov	r5, r0
 213              	.LVL21:
 286:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 214              		.loc 1 286 0
 215 00a8 3368     		ldr	r3, [r6]
 216 00aa 23F41023 		bic	r3, r3, #589824
 217 00ae 3360     		str	r3, [r6]
 218              	.LVL22:
 219              	.L14:
 289:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 220              		.loc 1 289 0
 221 00b0 0B4B     		ldr	r3, .L27
 222 00b2 1B68     		ldr	r3, [r3]
 223 00b4 13F4003F 		tst	r3, #131072
 224 00b8 06D0     		beq	.L26
 291:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 36


 225              		.loc 1 291 0
 226 00ba FFF7FEFF 		bl	HAL_GetTick
 227              	.LVL23:
 228 00be 401B     		subs	r0, r0, r5
 229 00c0 6428     		cmp	r0, #100
 230 00c2 F5D9     		bls	.L14
 293:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 231              		.loc 1 293 0
 232 00c4 0324     		movs	r4, #3
 233 00c6 AFE7     		b	.L8
 234              	.L26:
 298:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 235              		.loc 1 298 0
 236 00c8 054B     		ldr	r3, .L27
 237 00ca 1A68     		ldr	r2, [r3]
 238 00cc 22F48022 		bic	r2, r2, #262144
 239 00d0 1A60     		str	r2, [r3]
 340:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 240              		.loc 1 340 0
 241 00d2 5A6A     		ldr	r2, [r3, #36]
 242 00d4 42F08072 		orr	r2, r2, #16777216
 243 00d8 5A62     		str	r2, [r3, #36]
 343:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 244              		.loc 1 343 0
 245 00da 0022     		movs	r2, #0
 246 00dc 9A60     		str	r2, [r3, #8]
 345:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** }
 247              		.loc 1 345 0
 248 00de A3E7     		b	.L8
 249              	.L28:
 250              		.align	2
 251              	.L27:
 252 00e0 00100240 		.word	1073876992
 253 00e4 00000000 		.word	SystemCoreClock
 254 00e8 00127A00 		.word	8000000
 255              		.cfi_endproc
 256              	.LFE66:
 258              		.section	.text.HAL_RCC_OscConfig,"ax",%progbits
 259              		.align	1
 260              		.global	HAL_RCC_OscConfig
 261              		.syntax unified
 262              		.thumb
 263              		.thumb_func
 264              		.fpu softvfp
 266              	HAL_RCC_OscConfig:
 267              	.LFB67:
 364:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****    uint32_t tickstart = 0U;
 268              		.loc 1 364 0
 269              		.cfi_startproc
 270              		@ args = 0, pretend = 0, frame = 8
 271              		@ frame_needed = 0, uses_anonymous_args = 0
 272              	.LVL24:
 273 0000 70B5     		push	{r4, r5, r6, lr}
 274              	.LCFI3:
 275              		.cfi_def_cfa_offset 16
 276              		.cfi_offset 4, -16
 277              		.cfi_offset 5, -12
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 37


 278              		.cfi_offset 6, -8
 279              		.cfi_offset 14, -4
 280 0002 82B0     		sub	sp, sp, #8
 281              	.LCFI4:
 282              		.cfi_def_cfa_offset 24
 283 0004 0446     		mov	r4, r0
 284              	.LVL25:
 372:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 285              		.loc 1 372 0
 286 0006 0368     		ldr	r3, [r0]
 287 0008 13F0010F 		tst	r3, #1
 288 000c 2CD0     		beq	.L30
 378:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****        || ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_SYSCLKSOURCE_STATUS_PLLCLK) && (__HAL_RCC_GET_PLL_
 289              		.loc 1 378 0
 290 000e AB4B     		ldr	r3, .L115
 291 0010 5B68     		ldr	r3, [r3, #4]
 292 0012 03F00C03 		and	r3, r3, #12
 293 0016 042B     		cmp	r3, #4
 294 0018 1DD0     		beq	.L31
 379:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 295              		.loc 1 379 0
 296 001a A84B     		ldr	r3, .L115
 297 001c 5B68     		ldr	r3, [r3, #4]
 298 001e 03F00C03 		and	r3, r3, #12
 299 0022 082B     		cmp	r3, #8
 300 0024 12D0     		beq	.L99
 301              	.L32:
 389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       
 302              		.loc 1 389 0
 303 0026 6368     		ldr	r3, [r4, #4]
 304 0028 B3F5803F 		cmp	r3, #65536
 305 002c 41D0     		beq	.L100
 389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       
 306              		.loc 1 389 0 is_stmt 0 discriminator 2
 307 002e 002B     		cmp	r3, #0
 308 0030 55D1     		bne	.L36
 389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       
 309              		.loc 1 389 0 discriminator 3
 310 0032 03F18043 		add	r3, r3, #1073741824
 311 0036 03F50433 		add	r3, r3, #135168
 312 003a 1A68     		ldr	r2, [r3]
 313 003c 22F48032 		bic	r2, r2, #65536
 314 0040 1A60     		str	r2, [r3]
 315 0042 1A68     		ldr	r2, [r3]
 316 0044 22F48022 		bic	r2, r2, #262144
 317 0048 1A60     		str	r2, [r3]
 318 004a 37E0     		b	.L35
 319              	.L99:
 379:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 320              		.loc 1 379 0 is_stmt 1 discriminator 1
 321 004c 9B4B     		ldr	r3, .L115
 322 004e 5B68     		ldr	r3, [r3, #4]
 323 0050 13F4803F 		tst	r3, #65536
 324 0054 E7D0     		beq	.L32
 325              	.L31:
 381:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 326              		.loc 1 381 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 38


 327 0056 994B     		ldr	r3, .L115
 328 0058 1B68     		ldr	r3, [r3]
 329 005a 13F4003F 		tst	r3, #131072
 330 005e 03D0     		beq	.L30
 381:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 331              		.loc 1 381 0 is_stmt 0 discriminator 1
 332 0060 6368     		ldr	r3, [r4, #4]
 333 0062 002B     		cmp	r3, #0
 334 0064 00F0AE81 		beq	.L101
 335              	.LVL26:
 336              	.L30:
 424:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 337              		.loc 1 424 0 is_stmt 1
 338 0068 2368     		ldr	r3, [r4]
 339 006a 13F0020F 		tst	r3, #2
 340 006e 76D0     		beq	.L43
 431:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****        || ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_SYSCLKSOURCE_STATUS_PLLCLK) && (__HAL_RCC_GET_PLL_
 341              		.loc 1 431 0
 342 0070 924B     		ldr	r3, .L115
 343 0072 5B68     		ldr	r3, [r3, #4]
 344 0074 13F00C0F 		tst	r3, #12
 345 0078 5FD0     		beq	.L44
 432:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 346              		.loc 1 432 0
 347 007a 904B     		ldr	r3, .L115
 348 007c 5B68     		ldr	r3, [r3, #4]
 349 007e 03F00C03 		and	r3, r3, #12
 350 0082 082B     		cmp	r3, #8
 351 0084 54D0     		beq	.L102
 352              	.L45:
 449:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 353              		.loc 1 449 0
 354 0086 2369     		ldr	r3, [r4, #16]
 355 0088 002B     		cmp	r3, #0
 356 008a 00F08A80 		beq	.L47
 452:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 357              		.loc 1 452 0
 358 008e 8C4B     		ldr	r3, .L115+4
 359 0090 0122     		movs	r2, #1
 360 0092 1A60     		str	r2, [r3]
 455:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 361              		.loc 1 455 0
 362 0094 FFF7FEFF 		bl	HAL_GetTick
 363              	.LVL27:
 364 0098 0546     		mov	r5, r0
 365              	.LVL28:
 366              	.L48:
 458:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 367              		.loc 1 458 0
 368 009a 884B     		ldr	r3, .L115
 369 009c 1B68     		ldr	r3, [r3]
 370 009e 13F0020F 		tst	r3, #2
 371 00a2 75D1     		bne	.L103
 460:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           {
 372              		.loc 1 460 0
 373 00a4 FFF7FEFF 		bl	HAL_GetTick
 374              	.LVL29:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 39


 375 00a8 401B     		subs	r0, r0, r5
 376 00aa 0228     		cmp	r0, #2
 377 00ac F5D9     		bls	.L48
 462:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           }
 378              		.loc 1 462 0
 379 00ae 0320     		movs	r0, #3
 380 00b0 8BE1     		b	.L33
 381              	.LVL30:
 382              	.L100:
 389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       
 383              		.loc 1 389 0 discriminator 1
 384 00b2 824A     		ldr	r2, .L115
 385 00b4 1368     		ldr	r3, [r2]
 386 00b6 43F48033 		orr	r3, r3, #65536
 387 00ba 1360     		str	r3, [r2]
 388              	.L35:
 393:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 389              		.loc 1 393 0
 390 00bc 6368     		ldr	r3, [r4, #4]
 391 00be 43B3     		cbz	r3, .L38
 396:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 392              		.loc 1 396 0
 393 00c0 FFF7FEFF 		bl	HAL_GetTick
 394              	.LVL31:
 395 00c4 0546     		mov	r5, r0
 396              	.LVL32:
 397              	.L39:
 399:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 398              		.loc 1 399 0
 399 00c6 7D4B     		ldr	r3, .L115
 400 00c8 1B68     		ldr	r3, [r3]
 401 00ca 13F4003F 		tst	r3, #131072
 402 00ce CBD1     		bne	.L30
 401:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           {
 403              		.loc 1 401 0
 404 00d0 FFF7FEFF 		bl	HAL_GetTick
 405              	.LVL33:
 406 00d4 401B     		subs	r0, r0, r5
 407 00d6 6428     		cmp	r0, #100
 408 00d8 F5D9     		bls	.L39
 403:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           }
 409              		.loc 1 403 0
 410 00da 0320     		movs	r0, #3
 411 00dc 75E1     		b	.L33
 412              	.LVL34:
 413              	.L36:
 389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       
 414              		.loc 1 389 0 discriminator 4
 415 00de B3F5A02F 		cmp	r3, #327680
 416 00e2 09D0     		beq	.L104
 389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       
 417              		.loc 1 389 0 is_stmt 0 discriminator 6
 418 00e4 754B     		ldr	r3, .L115
 419 00e6 1A68     		ldr	r2, [r3]
 420 00e8 22F48032 		bic	r2, r2, #65536
 421 00ec 1A60     		str	r2, [r3]
 422 00ee 1A68     		ldr	r2, [r3]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 40


 423 00f0 22F48022 		bic	r2, r2, #262144
 424 00f4 1A60     		str	r2, [r3]
 425 00f6 E1E7     		b	.L35
 426              	.L104:
 389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       
 427              		.loc 1 389 0 discriminator 5
 428 00f8 03F18043 		add	r3, r3, #1073741824
 429 00fc A3F53C33 		sub	r3, r3, #192512
 430 0100 1A68     		ldr	r2, [r3]
 431 0102 42F48022 		orr	r2, r2, #262144
 432 0106 1A60     		str	r2, [r3]
 433 0108 1A68     		ldr	r2, [r3]
 434 010a 42F48032 		orr	r2, r2, #65536
 435 010e 1A60     		str	r2, [r3]
 436 0110 D4E7     		b	.L35
 437              	.L38:
 410:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 438              		.loc 1 410 0 is_stmt 1
 439 0112 FFF7FEFF 		bl	HAL_GetTick
 440              	.LVL35:
 441 0116 0546     		mov	r5, r0
 442              	.LVL36:
 443              	.L41:
 413:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 444              		.loc 1 413 0
 445 0118 684B     		ldr	r3, .L115
 446 011a 1B68     		ldr	r3, [r3]
 447 011c 13F4003F 		tst	r3, #131072
 448 0120 A2D0     		beq	.L30
 415:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           {
 449              		.loc 1 415 0
 450 0122 FFF7FEFF 		bl	HAL_GetTick
 451              	.LVL37:
 452 0126 401B     		subs	r0, r0, r5
 453 0128 6428     		cmp	r0, #100
 454 012a F5D9     		bls	.L41
 417:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           }
 455              		.loc 1 417 0
 456 012c 0320     		movs	r0, #3
 457 012e 4CE1     		b	.L33
 458              	.LVL38:
 459              	.L102:
 432:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 460              		.loc 1 432 0 discriminator 1
 461 0130 624B     		ldr	r3, .L115
 462 0132 5B68     		ldr	r3, [r3, #4]
 463 0134 13F4803F 		tst	r3, #65536
 464 0138 A5D1     		bne	.L45
 465              	.L44:
 435:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 466              		.loc 1 435 0
 467 013a 604B     		ldr	r3, .L115
 468 013c 1B68     		ldr	r3, [r3]
 469 013e 13F0020F 		tst	r3, #2
 470 0142 04D0     		beq	.L46
 435:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 471              		.loc 1 435 0 is_stmt 0 discriminator 1
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 41


 472 0144 2369     		ldr	r3, [r4, #16]
 473 0146 012B     		cmp	r3, #1
 474 0148 01D0     		beq	.L46
 437:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 475              		.loc 1 437 0 is_stmt 1
 476 014a 0120     		movs	r0, #1
 477 014c 3DE1     		b	.L33
 478              	.L46:
 443:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 479              		.loc 1 443 0
 480 014e 5B4A     		ldr	r2, .L115
 481 0150 1368     		ldr	r3, [r2]
 482 0152 23F0F803 		bic	r3, r3, #248
 483 0156 6169     		ldr	r1, [r4, #20]
 484 0158 43EAC103 		orr	r3, r3, r1, lsl #3
 485 015c 1360     		str	r3, [r2]
 486              	.L43:
 489:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 487              		.loc 1 489 0
 488 015e 2368     		ldr	r3, [r4]
 489 0160 13F0080F 		tst	r3, #8
 490 0164 32D0     		beq	.L52
 495:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 491              		.loc 1 495 0
 492 0166 A369     		ldr	r3, [r4, #24]
 493 0168 002B     		cmp	r3, #0
 494 016a 5BD0     		beq	.L53
 498:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       
 495              		.loc 1 498 0
 496 016c 554B     		ldr	r3, .L115+8
 497 016e 0122     		movs	r2, #1
 498 0170 1A60     		str	r2, [r3]
 501:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       
 499              		.loc 1 501 0
 500 0172 FFF7FEFF 		bl	HAL_GetTick
 501              	.LVL39:
 502 0176 0546     		mov	r5, r0
 503              	.LVL40:
 504              	.L54:
 504:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 505              		.loc 1 504 0
 506 0178 504B     		ldr	r3, .L115
 507 017a 5B6A     		ldr	r3, [r3, #36]
 508 017c 13F0020F 		tst	r3, #2
 509 0180 21D1     		bne	.L105
 506:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 510              		.loc 1 506 0
 511 0182 FFF7FEFF 		bl	HAL_GetTick
 512              	.LVL41:
 513 0186 401B     		subs	r0, r0, r5
 514 0188 0228     		cmp	r0, #2
 515 018a F5D9     		bls	.L54
 508:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 516              		.loc 1 508 0
 517 018c 0320     		movs	r0, #3
 518 018e 1CE1     		b	.L33
 519              	.L103:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 42


 467:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 520              		.loc 1 467 0
 521 0190 4A4A     		ldr	r2, .L115
 522 0192 1368     		ldr	r3, [r2]
 523 0194 23F0F803 		bic	r3, r3, #248
 524 0198 6169     		ldr	r1, [r4, #20]
 525 019a 43EAC103 		orr	r3, r3, r1, lsl #3
 526 019e 1360     		str	r3, [r2]
 527 01a0 DDE7     		b	.L43
 528              	.LVL42:
 529              	.L47:
 472:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 530              		.loc 1 472 0
 531 01a2 474B     		ldr	r3, .L115+4
 532 01a4 0022     		movs	r2, #0
 533 01a6 1A60     		str	r2, [r3]
 475:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 534              		.loc 1 475 0
 535 01a8 FFF7FEFF 		bl	HAL_GetTick
 536              	.LVL43:
 537 01ac 0546     		mov	r5, r0
 538              	.LVL44:
 539              	.L50:
 478:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 540              		.loc 1 478 0
 541 01ae 434B     		ldr	r3, .L115
 542 01b0 1B68     		ldr	r3, [r3]
 543 01b2 13F0020F 		tst	r3, #2
 544 01b6 D2D0     		beq	.L43
 480:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           {
 545              		.loc 1 480 0
 546 01b8 FFF7FEFF 		bl	HAL_GetTick
 547              	.LVL45:
 548 01bc 401B     		subs	r0, r0, r5
 549 01be 0228     		cmp	r0, #2
 550 01c0 F5D9     		bls	.L50
 482:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           }
 551              		.loc 1 482 0
 552 01c2 0320     		movs	r0, #3
 553 01c4 01E1     		b	.L33
 554              	.L105:
 513:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 555              		.loc 1 513 0
 556 01c6 0120     		movs	r0, #1
 557 01c8 FFF7FEFF 		bl	RCC_Delay
 558              	.LVL46:
 559              	.L52:
 534:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 560              		.loc 1 534 0
 561 01cc 2368     		ldr	r3, [r4]
 562 01ce 13F0040F 		tst	r3, #4
 563 01d2 00F09780 		beq	.L58
 564              	.LVL47:
 565              	.LBB6:
 543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 566              		.loc 1 543 0
 567 01d6 394B     		ldr	r3, .L115
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 43


 568 01d8 DB69     		ldr	r3, [r3, #28]
 569 01da 13F0805F 		tst	r3, #268435456
 570 01de 33D1     		bne	.L89
 571              	.LBB7:
 545:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       pwrclkchanged = SET;
 572              		.loc 1 545 0
 573 01e0 364B     		ldr	r3, .L115
 574 01e2 DA69     		ldr	r2, [r3, #28]
 575 01e4 42F08052 		orr	r2, r2, #268435456
 576 01e8 DA61     		str	r2, [r3, #28]
 577 01ea DB69     		ldr	r3, [r3, #28]
 578 01ec 03F08053 		and	r3, r3, #268435456
 579 01f0 0193     		str	r3, [sp, #4]
 580 01f2 019B     		ldr	r3, [sp, #4]
 581              	.LVL48:
 582              	.LBE7:
 546:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 583              		.loc 1 546 0
 584 01f4 0125     		movs	r5, #1
 585              	.LVL49:
 586              	.L59:
 549:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 587              		.loc 1 549 0
 588 01f6 344B     		ldr	r3, .L115+12
 589 01f8 1B68     		ldr	r3, [r3]
 590 01fa 13F4807F 		tst	r3, #256
 591 01fe 25D0     		beq	.L106
 592              	.L60:
 567:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* Check the LSE State */
 593              		.loc 1 567 0
 594 0200 E368     		ldr	r3, [r4, #12]
 595 0202 012B     		cmp	r3, #1
 596 0204 36D0     		beq	.L107
 567:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* Check the LSE State */
 597              		.loc 1 567 0 is_stmt 0 discriminator 2
 598 0206 002B     		cmp	r3, #0
 599 0208 4CD1     		bne	.L65
 567:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* Check the LSE State */
 600              		.loc 1 567 0 discriminator 3
 601 020a 03F18043 		add	r3, r3, #1073741824
 602 020e 03F50433 		add	r3, r3, #135168
 603 0212 1A6A     		ldr	r2, [r3, #32]
 604 0214 22F00102 		bic	r2, r2, #1
 605 0218 1A62     		str	r2, [r3, #32]
 606 021a 1A6A     		ldr	r2, [r3, #32]
 607 021c 22F00402 		bic	r2, r2, #4
 608 0220 1A62     		str	r2, [r3, #32]
 609 0222 2CE0     		b	.L64
 610              	.LVL50:
 611              	.L53:
 612              	.LBE6:
 518:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       
 613              		.loc 1 518 0 is_stmt 1
 614 0224 274B     		ldr	r3, .L115+8
 615 0226 0022     		movs	r2, #0
 616 0228 1A60     		str	r2, [r3]
 521:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 44


 617              		.loc 1 521 0
 618 022a FFF7FEFF 		bl	HAL_GetTick
 619              	.LVL51:
 620 022e 0546     		mov	r5, r0
 621              	.LVL52:
 622              	.L56:
 524:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 623              		.loc 1 524 0
 624 0230 224B     		ldr	r3, .L115
 625 0232 5B6A     		ldr	r3, [r3, #36]
 626 0234 13F0020F 		tst	r3, #2
 627 0238 C8D0     		beq	.L52
 526:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 628              		.loc 1 526 0
 629 023a FFF7FEFF 		bl	HAL_GetTick
 630              	.LVL53:
 631 023e 401B     		subs	r0, r0, r5
 632 0240 0228     		cmp	r0, #2
 633 0242 F5D9     		bls	.L56
 528:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 634              		.loc 1 528 0
 635 0244 0320     		movs	r0, #3
 636 0246 C0E0     		b	.L33
 637              	.LVL54:
 638              	.L89:
 639              	.LBB8:
 536:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     
 640              		.loc 1 536 0
 641 0248 0025     		movs	r5, #0
 642 024a D4E7     		b	.L59
 643              	.LVL55:
 644              	.L106:
 552:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       
 645              		.loc 1 552 0
 646 024c 1E4A     		ldr	r2, .L115+12
 647 024e 1368     		ldr	r3, [r2]
 648 0250 43F48073 		orr	r3, r3, #256
 649 0254 1360     		str	r3, [r2]
 555:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 650              		.loc 1 555 0
 651 0256 FFF7FEFF 		bl	HAL_GetTick
 652              	.LVL56:
 653 025a 0646     		mov	r6, r0
 654              	.LVL57:
 655              	.L61:
 557:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 656              		.loc 1 557 0
 657 025c 1A4B     		ldr	r3, .L115+12
 658 025e 1B68     		ldr	r3, [r3]
 659 0260 13F4807F 		tst	r3, #256
 660 0264 CCD1     		bne	.L60
 559:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 661              		.loc 1 559 0
 662 0266 FFF7FEFF 		bl	HAL_GetTick
 663              	.LVL58:
 664 026a 801B     		subs	r0, r0, r6
 665 026c 6428     		cmp	r0, #100
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 45


 666 026e F5D9     		bls	.L61
 561:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 667              		.loc 1 561 0
 668 0270 0320     		movs	r0, #3
 669 0272 AAE0     		b	.L33
 670              	.LVL59:
 671              	.L107:
 567:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* Check the LSE State */
 672              		.loc 1 567 0 discriminator 1
 673 0274 114A     		ldr	r2, .L115
 674 0276 136A     		ldr	r3, [r2, #32]
 675 0278 43F00103 		orr	r3, r3, #1
 676 027c 1362     		str	r3, [r2, #32]
 677              	.L64:
 569:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 678              		.loc 1 569 0
 679 027e E368     		ldr	r3, [r4, #12]
 680 0280 73B3     		cbz	r3, .L67
 572:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       
 681              		.loc 1 572 0
 682 0282 FFF7FEFF 		bl	HAL_GetTick
 683              	.LVL60:
 684 0286 0646     		mov	r6, r0
 685              	.LVL61:
 686              	.L68:
 575:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 687              		.loc 1 575 0
 688 0288 0C4B     		ldr	r3, .L115
 689 028a 1B6A     		ldr	r3, [r3, #32]
 690 028c 13F0020F 		tst	r3, #2
 691 0290 37D1     		bne	.L70
 577:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 692              		.loc 1 577 0
 693 0292 FFF7FEFF 		bl	HAL_GetTick
 694              	.LVL62:
 695 0296 801B     		subs	r0, r0, r6
 696 0298 41F28833 		movw	r3, #5000
 697 029c 9842     		cmp	r0, r3
 698 029e F3D9     		bls	.L68
 579:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 699              		.loc 1 579 0
 700 02a0 0320     		movs	r0, #3
 701 02a2 92E0     		b	.L33
 702              	.LVL63:
 703              	.L65:
 567:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* Check the LSE State */
 704              		.loc 1 567 0 discriminator 4
 705 02a4 052B     		cmp	r3, #5
 706 02a6 11D0     		beq	.L108
 567:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* Check the LSE State */
 707              		.loc 1 567 0 is_stmt 0 discriminator 6
 708 02a8 044B     		ldr	r3, .L115
 709 02aa 1A6A     		ldr	r2, [r3, #32]
 710 02ac 22F00102 		bic	r2, r2, #1
 711 02b0 1A62     		str	r2, [r3, #32]
 712 02b2 1A6A     		ldr	r2, [r3, #32]
 713 02b4 22F00402 		bic	r2, r2, #4
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 46


 714 02b8 1A62     		str	r2, [r3, #32]
 715 02ba E0E7     		b	.L64
 716              	.L116:
 717              		.align	2
 718              	.L115:
 719 02bc 00100240 		.word	1073876992
 720 02c0 00004242 		.word	1111621632
 721 02c4 80044242 		.word	1111622784
 722 02c8 00700040 		.word	1073770496
 723              	.L108:
 567:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     /* Check the LSE State */
 724              		.loc 1 567 0 discriminator 5
 725 02cc 414B     		ldr	r3, .L117
 726 02ce 1A6A     		ldr	r2, [r3, #32]
 727 02d0 42F00402 		orr	r2, r2, #4
 728 02d4 1A62     		str	r2, [r3, #32]
 729 02d6 1A6A     		ldr	r2, [r3, #32]
 730 02d8 42F00102 		orr	r2, r2, #1
 731 02dc 1A62     		str	r2, [r3, #32]
 732 02de CEE7     		b	.L64
 733              	.L67:
 586:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       
 734              		.loc 1 586 0 is_stmt 1
 735 02e0 FFF7FEFF 		bl	HAL_GetTick
 736              	.LVL64:
 737 02e4 0646     		mov	r6, r0
 738              	.LVL65:
 739              	.L71:
 589:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 740              		.loc 1 589 0
 741 02e6 3B4B     		ldr	r3, .L117
 742 02e8 1B6A     		ldr	r3, [r3, #32]
 743 02ea 13F0020F 		tst	r3, #2
 744 02ee 08D0     		beq	.L70
 591:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 745              		.loc 1 591 0
 746 02f0 FFF7FEFF 		bl	HAL_GetTick
 747              	.LVL66:
 748 02f4 801B     		subs	r0, r0, r6
 749 02f6 41F28833 		movw	r3, #5000
 750 02fa 9842     		cmp	r0, r3
 751 02fc F3D9     		bls	.L71
 593:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 752              		.loc 1 593 0
 753 02fe 0320     		movs	r0, #3
 754 0300 63E0     		b	.L33
 755              	.L70:
 599:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 756              		.loc 1 599 0
 757 0302 E5B9     		cbnz	r5, .L109
 758              	.LVL67:
 759              	.L58:
 760              	.LBE8:
 698:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 761              		.loc 1 698 0
 762 0304 E369     		ldr	r3, [r4, #28]
 763 0306 002B     		cmp	r3, #0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 47


 764 0308 5ED0     		beq	.L93
 701:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     { 
 765              		.loc 1 701 0
 766 030a 324A     		ldr	r2, .L117
 767 030c 5268     		ldr	r2, [r2, #4]
 768 030e 02F00C02 		and	r2, r2, #12
 769 0312 082A     		cmp	r2, #8
 770 0314 5BD0     		beq	.L94
 703:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 771              		.loc 1 703 0
 772 0316 022B     		cmp	r3, #2
 773 0318 17D0     		beq	.L110
 762:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****  
 774              		.loc 1 762 0
 775 031a 2F4B     		ldr	r3, .L117+4
 776 031c 0022     		movs	r2, #0
 777 031e 1A60     		str	r2, [r3]
 765:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 778              		.loc 1 765 0
 779 0320 FFF7FEFF 		bl	HAL_GetTick
 780              	.LVL68:
 781 0324 0446     		mov	r4, r0
 782              	.LVL69:
 783              	.L79:
 768:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 784              		.loc 1 768 0
 785 0326 2B4B     		ldr	r3, .L117
 786 0328 1B68     		ldr	r3, [r3]
 787 032a 13F0007F 		tst	r3, #33554432
 788 032e 47D0     		beq	.L111
 770:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           {
 789              		.loc 1 770 0
 790 0330 FFF7FEFF 		bl	HAL_GetTick
 791              	.LVL70:
 792 0334 001B     		subs	r0, r0, r4
 793 0336 0228     		cmp	r0, #2
 794 0338 F5D9     		bls	.L79
 772:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           }
 795              		.loc 1 772 0
 796 033a 0320     		movs	r0, #3
 797 033c 45E0     		b	.L33
 798              	.LVL71:
 799              	.L109:
 800              	.LBB9:
 601:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 801              		.loc 1 601 0
 802 033e 254A     		ldr	r2, .L117
 803 0340 D369     		ldr	r3, [r2, #28]
 804 0342 23F08053 		bic	r3, r3, #268435456
 805 0346 D361     		str	r3, [r2, #28]
 806 0348 DCE7     		b	.L58
 807              	.LVL72:
 808              	.L110:
 809              	.LBE9:
 710:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 810              		.loc 1 710 0
 811 034a 234B     		ldr	r3, .L117+4
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 48


 812 034c 0022     		movs	r2, #0
 813 034e 1A60     		str	r2, [r3]
 713:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 814              		.loc 1 713 0
 815 0350 FFF7FEFF 		bl	HAL_GetTick
 816              	.LVL73:
 817 0354 0546     		mov	r5, r0
 818              	.LVL74:
 819              	.L74:
 716:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 820              		.loc 1 716 0
 821 0356 1F4B     		ldr	r3, .L117
 822 0358 1B68     		ldr	r3, [r3]
 823 035a 13F0007F 		tst	r3, #33554432
 824 035e 06D0     		beq	.L112
 718:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           {
 825              		.loc 1 718 0
 826 0360 FFF7FEFF 		bl	HAL_GetTick
 827              	.LVL75:
 828 0364 401B     		subs	r0, r0, r5
 829 0366 0228     		cmp	r0, #2
 830 0368 F5D9     		bls	.L74
 720:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           }
 831              		.loc 1 720 0
 832 036a 0320     		movs	r0, #3
 833 036c 2DE0     		b	.L33
 834              	.L112:
 726:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 835              		.loc 1 726 0
 836 036e 236A     		ldr	r3, [r4, #32]
 837 0370 B3F5803F 		cmp	r3, #65536
 838 0374 1AD0     		beq	.L113
 839              	.L76:
 742:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****                              RCC_OscInitStruct->PLL.PLLMUL);
 840              		.loc 1 742 0
 841 0376 1749     		ldr	r1, .L117
 842 0378 4B68     		ldr	r3, [r1, #4]
 843 037a 23F47413 		bic	r3, r3, #3997696
 844 037e 226A     		ldr	r2, [r4, #32]
 845 0380 606A     		ldr	r0, [r4, #36]
 846 0382 0243     		orrs	r2, r2, r0
 847 0384 1343     		orrs	r3, r3, r2
 848 0386 4B60     		str	r3, [r1, #4]
 745:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 849              		.loc 1 745 0
 850 0388 134B     		ldr	r3, .L117+4
 851 038a 0122     		movs	r2, #1
 852 038c 1A60     		str	r2, [r3]
 748:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         
 853              		.loc 1 748 0
 854 038e FFF7FEFF 		bl	HAL_GetTick
 855              	.LVL76:
 856 0392 0446     		mov	r4, r0
 857              	.LVL77:
 858              	.L77:
 751:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 859              		.loc 1 751 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 49


 860 0394 0F4B     		ldr	r3, .L117
 861 0396 1B68     		ldr	r3, [r3]
 862 0398 13F0007F 		tst	r3, #33554432
 863 039c 0ED1     		bne	.L114
 753:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           {
 864              		.loc 1 753 0
 865 039e FFF7FEFF 		bl	HAL_GetTick
 866              	.LVL78:
 867 03a2 001B     		subs	r0, r0, r4
 868 03a4 0228     		cmp	r0, #2
 869 03a6 F5D9     		bls	.L77
 755:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****           }
 870              		.loc 1 755 0
 871 03a8 0320     		movs	r0, #3
 872 03aa 0EE0     		b	.L33
 873              	.LVL79:
 874              	.L113:
 738:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 875              		.loc 1 738 0
 876 03ac 094A     		ldr	r2, .L117
 877 03ae 5368     		ldr	r3, [r2, #4]
 878 03b0 23F40033 		bic	r3, r3, #131072
 879 03b4 A168     		ldr	r1, [r4, #8]
 880 03b6 0B43     		orrs	r3, r3, r1
 881 03b8 5360     		str	r3, [r2, #4]
 882 03ba DCE7     		b	.L76
 883              	.LVL80:
 884              	.L114:
 783:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** }
 885              		.loc 1 783 0
 886 03bc 0020     		movs	r0, #0
 887 03be 04E0     		b	.L33
 888              	.L111:
 889 03c0 0020     		movs	r0, #0
 890 03c2 02E0     		b	.L33
 891              	.LVL81:
 892              	.L101:
 383:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 893              		.loc 1 383 0
 894 03c4 0120     		movs	r0, #1
 895              	.LVL82:
 896 03c6 00E0     		b	.L33
 897              	.LVL83:
 898              	.L93:
 783:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** }
 899              		.loc 1 783 0
 900 03c8 0020     		movs	r0, #0
 901              	.LVL84:
 902              	.L33:
 784:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 903              		.loc 1 784 0
 904 03ca 02B0     		add	sp, sp, #8
 905              	.LCFI5:
 906              		.cfi_remember_state
 907              		.cfi_def_cfa_offset 16
 908              		@ sp needed
 909 03cc 70BD     		pop	{r4, r5, r6, pc}
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 50


 910              	.LVL85:
 911              	.L94:
 912              	.LCFI6:
 913              		.cfi_restore_state
 779:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 914              		.loc 1 779 0
 915 03ce 0120     		movs	r0, #1
 916 03d0 FBE7     		b	.L33
 917              	.L118:
 918 03d2 00BF     		.align	2
 919              	.L117:
 920 03d4 00100240 		.word	1073876992
 921 03d8 60004242 		.word	1111621728
 922              		.cfi_endproc
 923              	.LFE67:
 925              		.section	.text.HAL_RCC_MCOConfig,"ax",%progbits
 926              		.align	1
 927              		.global	HAL_RCC_MCOConfig
 928              		.syntax unified
 929              		.thumb
 930              		.thumb_func
 931              		.fpu softvfp
 933              	HAL_RCC_MCOConfig:
 934              	.LFB69:
1003:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   GPIO_InitTypeDef gpio = {0U};
 935              		.loc 1 1003 0
 936              		.cfi_startproc
 937              		@ args = 0, pretend = 0, frame = 24
 938              		@ frame_needed = 0, uses_anonymous_args = 0
 939              	.LVL86:
 940 0000 30B5     		push	{r4, r5, lr}
 941              	.LCFI7:
 942              		.cfi_def_cfa_offset 12
 943              		.cfi_offset 4, -12
 944              		.cfi_offset 5, -8
 945              		.cfi_offset 14, -4
 946 0002 87B0     		sub	sp, sp, #28
 947              	.LCFI8:
 948              		.cfi_def_cfa_offset 40
 949 0004 0D46     		mov	r5, r1
1004:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 950              		.loc 1 1004 0
 951 0006 0023     		movs	r3, #0
 952 0008 0493     		str	r3, [sp, #16]
1016:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   gpio.Speed     = GPIO_SPEED_FREQ_HIGH;
 953              		.loc 1 1016 0
 954 000a 0223     		movs	r3, #2
 955 000c 0393     		str	r3, [sp, #12]
1017:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   gpio.Pull      = GPIO_NOPULL;
 956              		.loc 1 1017 0
 957 000e 0323     		movs	r3, #3
 958 0010 0593     		str	r3, [sp, #20]
1019:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 959              		.loc 1 1019 0
 960 0012 4FF48073 		mov	r3, #256
 961 0016 0293     		str	r3, [sp, #8]
 962              	.LBB10:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 51


1022:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 963              		.loc 1 1022 0
 964 0018 0A4C     		ldr	r4, .L121
 965 001a A369     		ldr	r3, [r4, #24]
 966 001c 43F00403 		orr	r3, r3, #4
 967 0020 A361     		str	r3, [r4, #24]
 968 0022 A369     		ldr	r3, [r4, #24]
 969 0024 03F00403 		and	r3, r3, #4
 970 0028 0193     		str	r3, [sp, #4]
 971 002a 019B     		ldr	r3, [sp, #4]
 972              	.LBE10:
1024:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 973              		.loc 1 1024 0
 974 002c 02A9     		add	r1, sp, #8
 975              	.LVL87:
 976 002e 0648     		ldr	r0, .L121+4
 977              	.LVL88:
 978 0030 FFF7FEFF 		bl	HAL_GPIO_Init
 979              	.LVL89:
1027:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** }
 980              		.loc 1 1027 0
 981 0034 6168     		ldr	r1, [r4, #4]
 982 0036 21F0E061 		bic	r1, r1, #117440512
 983 003a 2943     		orrs	r1, r1, r5
 984 003c 6160     		str	r1, [r4, #4]
1028:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 985              		.loc 1 1028 0
 986 003e 07B0     		add	sp, sp, #28
 987              	.LCFI9:
 988              		.cfi_def_cfa_offset 12
 989              		@ sp needed
 990 0040 30BD     		pop	{r4, r5, pc}
 991              	.LVL90:
 992              	.L122:
 993 0042 00BF     		.align	2
 994              	.L121:
 995 0044 00100240 		.word	1073876992
 996 0048 00080140 		.word	1073809408
 997              		.cfi_endproc
 998              	.LFE69:
 1000              		.section	.text.HAL_RCC_EnableCSS,"ax",%progbits
 1001              		.align	1
 1002              		.global	HAL_RCC_EnableCSS
 1003              		.syntax unified
 1004              		.thumb
 1005              		.thumb_func
 1006              		.fpu softvfp
 1008              	HAL_RCC_EnableCSS:
 1009              	.LFB70:
1040:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *(__IO uint32_t *) RCC_CR_CSSON_BB = (uint32_t)ENABLE;
 1010              		.loc 1 1040 0
 1011              		.cfi_startproc
 1012              		@ args = 0, pretend = 0, frame = 0
 1013              		@ frame_needed = 0, uses_anonymous_args = 0
 1014              		@ link register save eliminated.
1041:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** }
 1015              		.loc 1 1041 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 52


 1016 0000 014B     		ldr	r3, .L124
 1017 0002 0122     		movs	r2, #1
 1018 0004 1A60     		str	r2, [r3]
1042:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 1019              		.loc 1 1042 0
 1020 0006 7047     		bx	lr
 1021              	.L125:
 1022              		.align	2
 1023              	.L124:
 1024 0008 4C004242 		.word	1111621708
 1025              		.cfi_endproc
 1026              	.LFE70:
 1028              		.section	.text.HAL_RCC_DisableCSS,"ax",%progbits
 1029              		.align	1
 1030              		.global	HAL_RCC_DisableCSS
 1031              		.syntax unified
 1032              		.thumb
 1033              		.thumb_func
 1034              		.fpu softvfp
 1036              	HAL_RCC_DisableCSS:
 1037              	.LFB71:
1049:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   *(__IO uint32_t *) RCC_CR_CSSON_BB = (uint32_t)DISABLE;
 1038              		.loc 1 1049 0
 1039              		.cfi_startproc
 1040              		@ args = 0, pretend = 0, frame = 0
 1041              		@ frame_needed = 0, uses_anonymous_args = 0
 1042              		@ link register save eliminated.
1050:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** }
 1043              		.loc 1 1050 0
 1044 0000 014B     		ldr	r3, .L127
 1045 0002 0022     		movs	r2, #0
 1046 0004 1A60     		str	r2, [r3]
1051:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 1047              		.loc 1 1051 0
 1048 0006 7047     		bx	lr
 1049              	.L128:
 1050              		.align	2
 1051              	.L127:
 1052 0008 4C004242 		.word	1111621708
 1053              		.cfi_endproc
 1054              	.LFE71:
 1056              		.section	.text.HAL_RCC_GetSysClockFreq,"ax",%progbits
 1057              		.align	1
 1058              		.global	HAL_RCC_GetSysClockFreq
 1059              		.syntax unified
 1060              		.thumb
 1061              		.thumb_func
 1062              		.fpu softvfp
 1064              	HAL_RCC_GetSysClockFreq:
 1065              	.LFB72:
1083:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #if defined(RCC_CFGR2_PREDIV1SRC)
 1066              		.loc 1 1083 0
 1067              		.cfi_startproc
 1068              		@ args = 0, pretend = 0, frame = 24
 1069              		@ frame_needed = 0, uses_anonymous_args = 0
 1070              		@ link register save eliminated.
 1071 0000 10B4     		push	{r4}
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 53


 1072              	.LCFI10:
 1073              		.cfi_def_cfa_offset 4
 1074              		.cfi_offset 4, -4
 1075 0002 87B0     		sub	sp, sp, #28
 1076              	.LCFI11:
 1077              		.cfi_def_cfa_offset 32
1088:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #if defined(RCC_CFGR2_PREDIV1)
 1078              		.loc 1 1088 0
 1079 0004 164C     		ldr	r4, .L137
 1080 0006 94E80F00 		ldm	r4, {r0, r1, r2, r3}
 1081 000a 0DF1180C 		add	ip, sp, #24
 1082 000e 0CE90F00 		stmdb	ip, {r0, r1, r2, r3}
1092:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #endif /*RCC_CFGR2_PREDIV1*/
 1083              		.loc 1 1092 0
 1084 0012 238A     		ldrh	r3, [r4, #16]
 1085 0014 ADF80430 		strh	r3, [sp, #4]	@ movhi
 1086              	.LVL91:
1102:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 1087              		.loc 1 1102 0
 1088 0018 124B     		ldr	r3, .L137+4
 1089 001a 5B68     		ldr	r3, [r3, #4]
 1090              	.LVL92:
1105:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 1091              		.loc 1 1105 0
 1092 001c 03F00C02 		and	r2, r3, #12
 1093 0020 082A     		cmp	r2, #8
 1094 0022 1AD1     		bne	.L134
1114:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       if ((tmpreg & RCC_CFGR_PLLSRC) != RCC_PLLSOURCE_HSI_DIV2)
 1095              		.loc 1 1114 0
 1096 0024 C3F38342 		ubfx	r2, r3, #18, #4
 1097 0028 6244     		add	r2, r2, ip
 1098 002a 12F8102C 		ldrb	r2, [r2, #-16]	@ zero_extendqisi2
 1099              	.LVL93:
1115:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 1100              		.loc 1 1115 0
 1101 002e 13F4803F 		tst	r3, #65536
 1102 0032 05D1     		bne	.L136
1152:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 1103              		.loc 1 1152 0
 1104 0034 0C48     		ldr	r0, .L137+8
 1105 0036 00FB02F0 		mul	r0, r0, r2
 1106              	.LVL94:
 1107              	.L129:
1165:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 1108              		.loc 1 1165 0
 1109 003a 07B0     		add	sp, sp, #28
 1110              	.LCFI12:
 1111              		.cfi_remember_state
 1112              		.cfi_def_cfa_offset 4
 1113              		@ sp needed
 1114 003c 10BC     		pop	{r4}
 1115              	.LCFI13:
 1116              		.cfi_restore 4
 1117              		.cfi_def_cfa_offset 0
 1118 003e 7047     		bx	lr
 1119              	.LVL95:
 1120              	.L136:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 54


 1121              	.LCFI14:
 1122              		.cfi_restore_state
1120:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #endif /*RCC_CFGR2_PREDIV1*/
 1123              		.loc 1 1120 0
 1124 0040 084B     		ldr	r3, .L137+4
 1125              	.LVL96:
 1126 0042 5B68     		ldr	r3, [r3, #4]
 1127 0044 C3F34043 		ubfx	r3, r3, #17, #1
 1128 0048 6344     		add	r3, r3, ip
 1129 004a 13F8143C 		ldrb	r3, [r3, #-20]	@ zero_extendqisi2
 1130              	.LVL97:
1146:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #endif /*RCC_CFGR2_PREDIV1SRC*/
 1131              		.loc 1 1146 0
 1132 004e 0748     		ldr	r0, .L137+12
 1133 0050 00FB02F0 		mul	r0, r0, r2
 1134 0054 B0FBF3F0 		udiv	r0, r0, r3
 1135              	.LVL98:
 1136 0058 EFE7     		b	.L129
 1137              	.LVL99:
 1138              	.L134:
1109:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       break;
 1139              		.loc 1 1109 0
 1140 005a 0448     		ldr	r0, .L137+12
 1141              	.LVL100:
1164:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** }
 1142              		.loc 1 1164 0
 1143 005c EDE7     		b	.L129
 1144              	.L138:
 1145 005e 00BF     		.align	2
 1146              	.L137:
 1147 0060 00000000 		.word	.LANCHOR0
 1148 0064 00100240 		.word	1073876992
 1149 0068 00093D00 		.word	4000000
 1150 006c 00127A00 		.word	8000000
 1151              		.cfi_endproc
 1152              	.LFE72:
 1154              		.section	.text.HAL_RCC_ClockConfig,"ax",%progbits
 1155              		.align	1
 1156              		.global	HAL_RCC_ClockConfig
 1157              		.syntax unified
 1158              		.thumb
 1159              		.thumb_func
 1160              		.fpu softvfp
 1162              	HAL_RCC_ClockConfig:
 1163              	.LFB68:
 810:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   uint32_t tickstart = 0U;
 1164              		.loc 1 810 0
 1165              		.cfi_startproc
 1166              		@ args = 0, pretend = 0, frame = 0
 1167              		@ frame_needed = 0, uses_anonymous_args = 0
 1168              	.LVL101:
 824:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {    
 1169              		.loc 1 824 0
 1170 0000 594B     		ldr	r3, .L171
 1171 0002 1B68     		ldr	r3, [r3]
 1172 0004 03F00703 		and	r3, r3, #7
 1173 0008 8B42     		cmp	r3, r1
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 55


 1174 000a 0CD2     		bcs	.L140
 827:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     
 1175              		.loc 1 827 0
 1176 000c 564A     		ldr	r2, .L171
 1177 000e 1368     		ldr	r3, [r2]
 1178 0010 23F00703 		bic	r3, r3, #7
 1179 0014 0B43     		orrs	r3, r3, r1
 1180 0016 1360     		str	r3, [r2]
 831:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 1181              		.loc 1 831 0
 1182 0018 1368     		ldr	r3, [r2]
 1183 001a 03F00703 		and	r3, r3, #7
 1184 001e 8B42     		cmp	r3, r1
 1185 0020 01D0     		beq	.L140
 833:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 1186              		.loc 1 833 0
 1187 0022 0120     		movs	r0, #1
 1188              	.LVL102:
 950:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 1189              		.loc 1 950 0
 1190 0024 7047     		bx	lr
 1191              	.LVL103:
 1192              	.L140:
 810:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   uint32_t tickstart = 0U;
 1193              		.loc 1 810 0
 1194 0026 70B5     		push	{r4, r5, r6, lr}
 1195              	.LCFI15:
 1196              		.cfi_def_cfa_offset 16
 1197              		.cfi_offset 4, -16
 1198              		.cfi_offset 5, -12
 1199              		.cfi_offset 6, -8
 1200              		.cfi_offset 14, -4
 839:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 1201              		.loc 1 839 0
 1202 0028 0368     		ldr	r3, [r0]
 1203 002a 13F0020F 		tst	r3, #2
 1204 002e 06D0     		beq	.L142
 842:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 1205              		.loc 1 842 0
 1206 0030 4E4A     		ldr	r2, .L171+4
 1207 0032 5368     		ldr	r3, [r2, #4]
 1208 0034 23F0F003 		bic	r3, r3, #240
 1209 0038 8468     		ldr	r4, [r0, #8]
 1210 003a 2343     		orrs	r3, r3, r4
 1211 003c 5360     		str	r3, [r2, #4]
 1212              	.L142:
 1213 003e 0C46     		mov	r4, r1
 1214 0040 0546     		mov	r5, r0
 846:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {    
 1215              		.loc 1 846 0
 1216 0042 0368     		ldr	r3, [r0]
 1217 0044 13F0010F 		tst	r3, #1
 1218 0048 52D0     		beq	.L143
 851:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 1219              		.loc 1 851 0
 1220 004a 4368     		ldr	r3, [r0, #4]
 1221 004c 012B     		cmp	r3, #1
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 56


 1222 004e 23D0     		beq	.L169
 860:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 1223              		.loc 1 860 0
 1224 0050 022B     		cmp	r3, #2
 1225 0052 28D0     		beq	.L170
 872:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 1226              		.loc 1 872 0
 1227 0054 454A     		ldr	r2, .L171+4
 1228 0056 1268     		ldr	r2, [r2]
 1229 0058 12F0020F 		tst	r2, #2
 1230 005c 00F08280 		beq	.L160
 1231              	.L145:
 877:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 1232              		.loc 1 877 0
 1233 0060 4249     		ldr	r1, .L171+4
 1234              	.LVL104:
 1235 0062 4A68     		ldr	r2, [r1, #4]
 1236 0064 22F00302 		bic	r2, r2, #3
 1237 0068 1343     		orrs	r3, r3, r2
 1238 006a 4B60     		str	r3, [r1, #4]
 880:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     
 1239              		.loc 1 880 0
 1240 006c FFF7FEFF 		bl	HAL_GetTick
 1241              	.LVL105:
 1242 0070 0646     		mov	r6, r0
 1243              	.LVL106:
 882:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 1244              		.loc 1 882 0
 1245 0072 6B68     		ldr	r3, [r5, #4]
 1246 0074 012B     		cmp	r3, #1
 1247 0076 1DD0     		beq	.L147
 892:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 1248              		.loc 1 892 0
 1249 0078 022B     		cmp	r3, #2
 1250 007a 2AD0     		beq	.L150
 1251              	.LVL107:
 1252              	.L151:
 904:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 1253              		.loc 1 904 0
 1254 007c 3B4B     		ldr	r3, .L171+4
 1255 007e 5B68     		ldr	r3, [r3, #4]
 1256 0080 13F00C0F 		tst	r3, #12
 1257 0084 34D0     		beq	.L143
 906:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 1258              		.loc 1 906 0
 1259 0086 FFF7FEFF 		bl	HAL_GetTick
 1260              	.LVL108:
 1261 008a 801B     		subs	r0, r0, r6
 1262 008c 41F28833 		movw	r3, #5000
 1263 0090 9842     		cmp	r0, r3
 1264 0092 F3D9     		bls	.L151
 908:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 1265              		.loc 1 908 0
 1266 0094 0320     		movs	r0, #3
 1267 0096 64E0     		b	.L141
 1268              	.LVL109:
 1269              	.L169:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 57


 854:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 1270              		.loc 1 854 0
 1271 0098 344A     		ldr	r2, .L171+4
 1272 009a 1268     		ldr	r2, [r2]
 1273 009c 12F4003F 		tst	r2, #131072
 1274 00a0 DED1     		bne	.L145
 856:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 1275              		.loc 1 856 0
 1276 00a2 0120     		movs	r0, #1
 1277              	.LVL110:
 1278 00a4 5DE0     		b	.L141
 1279              	.LVL111:
 1280              	.L170:
 863:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 1281              		.loc 1 863 0
 1282 00a6 314A     		ldr	r2, .L171+4
 1283 00a8 1268     		ldr	r2, [r2]
 1284 00aa 12F0007F 		tst	r2, #33554432
 1285 00ae D7D1     		bne	.L145
 865:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 1286              		.loc 1 865 0
 1287 00b0 0120     		movs	r0, #1
 1288              	.LVL112:
 1289 00b2 56E0     		b	.L141
 1290              	.LVL113:
 1291              	.L147:
 884:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 1292              		.loc 1 884 0
 1293 00b4 2D4B     		ldr	r3, .L171+4
 1294 00b6 5B68     		ldr	r3, [r3, #4]
 1295 00b8 03F00C03 		and	r3, r3, #12
 1296 00bc 042B     		cmp	r3, #4
 1297 00be 17D0     		beq	.L143
 886:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 1298              		.loc 1 886 0
 1299 00c0 FFF7FEFF 		bl	HAL_GetTick
 1300              	.LVL114:
 1301 00c4 801B     		subs	r0, r0, r6
 1302 00c6 41F28833 		movw	r3, #5000
 1303 00ca 9842     		cmp	r0, r3
 1304 00cc F2D9     		bls	.L147
 888:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 1305              		.loc 1 888 0
 1306 00ce 0320     		movs	r0, #3
 1307 00d0 47E0     		b	.L141
 1308              	.L150:
 894:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       {
 1309              		.loc 1 894 0
 1310 00d2 264B     		ldr	r3, .L171+4
 1311 00d4 5B68     		ldr	r3, [r3, #4]
 1312 00d6 03F00C03 		and	r3, r3, #12
 1313 00da 082B     		cmp	r3, #8
 1314 00dc 08D0     		beq	.L143
 896:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         {
 1315              		.loc 1 896 0
 1316 00de FFF7FEFF 		bl	HAL_GetTick
 1317              	.LVL115:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 58


 1318 00e2 801B     		subs	r0, r0, r6
 1319 00e4 41F28833 		movw	r3, #5000
 1320 00e8 9842     		cmp	r0, r3
 1321 00ea F2D9     		bls	.L150
 898:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****         }
 1322              		.loc 1 898 0
 1323 00ec 0320     		movs	r0, #3
 1324 00ee 38E0     		b	.L141
 1325              	.LVL116:
 1326              	.L143:
 915:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {    
 1327              		.loc 1 915 0
 1328 00f0 1D4B     		ldr	r3, .L171
 1329 00f2 1B68     		ldr	r3, [r3]
 1330 00f4 03F00703 		and	r3, r3, #7
 1331 00f8 A342     		cmp	r3, r4
 1332 00fa 0CD9     		bls	.L154
 918:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     
 1333              		.loc 1 918 0
 1334 00fc 1A4A     		ldr	r2, .L171
 1335 00fe 1368     		ldr	r3, [r2]
 1336 0100 23F00703 		bic	r3, r3, #7
 1337 0104 2343     		orrs	r3, r3, r4
 1338 0106 1360     		str	r3, [r2]
 922:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     {
 1339              		.loc 1 922 0
 1340 0108 1368     		ldr	r3, [r2]
 1341 010a 03F00703 		and	r3, r3, #7
 1342 010e A342     		cmp	r3, r4
 1343 0110 01D0     		beq	.L154
 924:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     }
 1344              		.loc 1 924 0
 1345 0112 0120     		movs	r0, #1
 1346 0114 25E0     		b	.L141
 1347              	.L154:
 930:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 1348              		.loc 1 930 0
 1349 0116 2B68     		ldr	r3, [r5]
 1350 0118 13F0040F 		tst	r3, #4
 1351 011c 06D0     		beq	.L155
 933:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 1352              		.loc 1 933 0
 1353 011e 134A     		ldr	r2, .L171+4
 1354 0120 5368     		ldr	r3, [r2, #4]
 1355 0122 23F4E063 		bic	r3, r3, #1792
 1356 0126 E968     		ldr	r1, [r5, #12]
 1357 0128 0B43     		orrs	r3, r3, r1
 1358 012a 5360     		str	r3, [r2, #4]
 1359              	.L155:
 937:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 1360              		.loc 1 937 0
 1361 012c 2B68     		ldr	r3, [r5]
 1362 012e 13F0080F 		tst	r3, #8
 1363 0132 07D0     		beq	.L156
 940:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 1364              		.loc 1 940 0
 1365 0134 0D4A     		ldr	r2, .L171+4
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 59


 1366 0136 5368     		ldr	r3, [r2, #4]
 1367 0138 23F46053 		bic	r3, r3, #14336
 1368 013c 2969     		ldr	r1, [r5, #16]
 1369 013e 43EAC103 		orr	r3, r3, r1, lsl #3
 1370 0142 5360     		str	r3, [r2, #4]
 1371              	.L156:
 944:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 1372              		.loc 1 944 0
 1373 0144 FFF7FEFF 		bl	HAL_RCC_GetSysClockFreq
 1374              	.LVL117:
 1375 0148 084B     		ldr	r3, .L171+4
 1376 014a 5B68     		ldr	r3, [r3, #4]
 1377 014c C3F30313 		ubfx	r3, r3, #4, #4
 1378 0150 074A     		ldr	r2, .L171+8
 1379 0152 D35C     		ldrb	r3, [r2, r3]	@ zero_extendqisi2
 1380 0154 D840     		lsrs	r0, r0, r3
 1381 0156 074B     		ldr	r3, .L171+12
 1382 0158 1860     		str	r0, [r3]
 947:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   
 1383              		.loc 1 947 0
 1384 015a 0020     		movs	r0, #0
 1385 015c FFF7FEFF 		bl	HAL_InitTick
 1386              	.LVL118:
 949:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** }
 1387              		.loc 1 949 0
 1388 0160 0020     		movs	r0, #0
 1389              	.L141:
 950:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 1390              		.loc 1 950 0
 1391 0162 70BD     		pop	{r4, r5, r6, pc}
 1392              	.LVL119:
 1393              	.L160:
 874:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****       }
 1394              		.loc 1 874 0
 1395 0164 0120     		movs	r0, #1
 1396              	.LVL120:
 1397 0166 FCE7     		b	.L141
 1398              	.L172:
 1399              		.align	2
 1400              	.L171:
 1401 0168 00200240 		.word	1073881088
 1402 016c 00100240 		.word	1073876992
 1403 0170 00000000 		.word	AHBPrescTable
 1404 0174 00000000 		.word	SystemCoreClock
 1405              		.cfi_endproc
 1406              	.LFE68:
 1408              		.section	.text.HAL_RCC_GetHCLKFreq,"ax",%progbits
 1409              		.align	1
 1410              		.global	HAL_RCC_GetHCLKFreq
 1411              		.syntax unified
 1412              		.thumb
 1413              		.thumb_func
 1414              		.fpu softvfp
 1416              	HAL_RCC_GetHCLKFreq:
 1417              	.LFB73:
1177:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   return SystemCoreClock;
 1418              		.loc 1 1177 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 60


 1419              		.cfi_startproc
 1420              		@ args = 0, pretend = 0, frame = 0
 1421              		@ frame_needed = 0, uses_anonymous_args = 0
 1422              		@ link register save eliminated.
1179:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 1423              		.loc 1 1179 0
 1424 0000 014B     		ldr	r3, .L174
 1425 0002 1868     		ldr	r0, [r3]
 1426 0004 7047     		bx	lr
 1427              	.L175:
 1428 0006 00BF     		.align	2
 1429              	.L174:
 1430 0008 00000000 		.word	SystemCoreClock
 1431              		.cfi_endproc
 1432              	.LFE73:
 1434              		.section	.text.HAL_RCC_GetPCLK1Freq,"ax",%progbits
 1435              		.align	1
 1436              		.global	HAL_RCC_GetPCLK1Freq
 1437              		.syntax unified
 1438              		.thumb
 1439              		.thumb_func
 1440              		.fpu softvfp
 1442              	HAL_RCC_GetPCLK1Freq:
 1443              	.LFB74:
1188:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Get HCLK source and Compute PCLK1 frequency ---------------------------*/
 1444              		.loc 1 1188 0
 1445              		.cfi_startproc
 1446              		@ args = 0, pretend = 0, frame = 0
 1447              		@ frame_needed = 0, uses_anonymous_args = 0
 1448 0000 08B5     		push	{r3, lr}
 1449              	.LCFI16:
 1450              		.cfi_def_cfa_offset 8
 1451              		.cfi_offset 3, -8
 1452              		.cfi_offset 14, -4
1190:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** }    
 1453              		.loc 1 1190 0
 1454 0002 FFF7FEFF 		bl	HAL_RCC_GetHCLKFreq
 1455              	.LVL121:
 1456 0006 044B     		ldr	r3, .L178
 1457 0008 5B68     		ldr	r3, [r3, #4]
 1458 000a C3F30223 		ubfx	r3, r3, #8, #3
 1459 000e 034A     		ldr	r2, .L178+4
 1460 0010 D35C     		ldrb	r3, [r2, r3]	@ zero_extendqisi2
1191:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 1461              		.loc 1 1191 0
 1462 0012 D840     		lsrs	r0, r0, r3
 1463 0014 08BD     		pop	{r3, pc}
 1464              	.L179:
 1465 0016 00BF     		.align	2
 1466              	.L178:
 1467 0018 00100240 		.word	1073876992
 1468 001c 00000000 		.word	APBPrescTable
 1469              		.cfi_endproc
 1470              	.LFE74:
 1472              		.section	.text.HAL_RCC_GetPCLK2Freq,"ax",%progbits
 1473              		.align	1
 1474              		.global	HAL_RCC_GetPCLK2Freq
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 61


 1475              		.syntax unified
 1476              		.thumb
 1477              		.thumb_func
 1478              		.fpu softvfp
 1480              	HAL_RCC_GetPCLK2Freq:
 1481              	.LFB75:
1200:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Get HCLK source and Compute PCLK2 frequency ---------------------------*/
 1482              		.loc 1 1200 0
 1483              		.cfi_startproc
 1484              		@ args = 0, pretend = 0, frame = 0
 1485              		@ frame_needed = 0, uses_anonymous_args = 0
 1486 0000 08B5     		push	{r3, lr}
 1487              	.LCFI17:
 1488              		.cfi_def_cfa_offset 8
 1489              		.cfi_offset 3, -8
 1490              		.cfi_offset 14, -4
1202:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** } 
 1491              		.loc 1 1202 0
 1492 0002 FFF7FEFF 		bl	HAL_RCC_GetHCLKFreq
 1493              	.LVL122:
 1494 0006 044B     		ldr	r3, .L182
 1495 0008 5B68     		ldr	r3, [r3, #4]
 1496 000a C3F3C223 		ubfx	r3, r3, #11, #3
 1497 000e 034A     		ldr	r2, .L182+4
 1498 0010 D35C     		ldrb	r3, [r2, r3]	@ zero_extendqisi2
1203:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 1499              		.loc 1 1203 0
 1500 0012 D840     		lsrs	r0, r0, r3
 1501 0014 08BD     		pop	{r3, pc}
 1502              	.L183:
 1503 0016 00BF     		.align	2
 1504              	.L182:
 1505 0018 00100240 		.word	1073876992
 1506 001c 00000000 		.word	APBPrescTable
 1507              		.cfi_endproc
 1508              	.LFE75:
 1510              		.section	.text.HAL_RCC_GetOscConfig,"ax",%progbits
 1511              		.align	1
 1512              		.global	HAL_RCC_GetOscConfig
 1513              		.syntax unified
 1514              		.thumb
 1515              		.thumb_func
 1516              		.fpu softvfp
 1518              	HAL_RCC_GetOscConfig:
 1519              	.LFB76:
1213:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Check the parameters */
 1520              		.loc 1 1213 0
 1521              		.cfi_startproc
 1522              		@ args = 0, pretend = 0, frame = 0
 1523              		@ frame_needed = 0, uses_anonymous_args = 0
 1524              		@ link register save eliminated.
 1525              	.LVL123:
1218:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****                   | RCC_OSCILLATORTYPE_LSE | RCC_OSCILLATORTYPE_LSI;
 1526              		.loc 1 1218 0
 1527 0000 0F23     		movs	r3, #15
 1528 0002 0360     		str	r3, [r0]
1227:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 62


 1529              		.loc 1 1227 0
 1530 0004 2A4B     		ldr	r3, .L198
 1531 0006 1B68     		ldr	r3, [r3]
 1532 0008 13F4802F 		tst	r3, #262144
 1533 000c 30D0     		beq	.L185
1229:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 1534              		.loc 1 1229 0
 1535 000e 4FF4A023 		mov	r3, #327680
 1536 0012 4360     		str	r3, [r0, #4]
 1537              	.L186:
1239:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 1538              		.loc 1 1239 0
 1539 0014 264A     		ldr	r2, .L198
 1540 0016 5368     		ldr	r3, [r2, #4]
 1541 0018 03F40033 		and	r3, r3, #131072
 1542 001c 8360     		str	r3, [r0, #8]
1242:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 1543              		.loc 1 1242 0
 1544 001e 1368     		ldr	r3, [r2]
 1545 0020 13F0010F 		tst	r3, #1
 1546 0024 30D0     		beq	.L188
1244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 1547              		.loc 1 1244 0
 1548 0026 0123     		movs	r3, #1
 1549 0028 0361     		str	r3, [r0, #16]
 1550              	.L189:
1251:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   
 1551              		.loc 1 1251 0
 1552 002a 214A     		ldr	r2, .L198
 1553 002c 1368     		ldr	r3, [r2]
 1554 002e C3F3C403 		ubfx	r3, r3, #3, #5
 1555 0032 4361     		str	r3, [r0, #20]
1254:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 1556              		.loc 1 1254 0
 1557 0034 136A     		ldr	r3, [r2, #32]
 1558 0036 13F0040F 		tst	r3, #4
 1559 003a 28D0     		beq	.L190
1256:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 1560              		.loc 1 1256 0
 1561 003c 0523     		movs	r3, #5
 1562 003e C360     		str	r3, [r0, #12]
 1563              	.L191:
1268:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 1564              		.loc 1 1268 0
 1565 0040 1B4B     		ldr	r3, .L198
 1566 0042 5B6A     		ldr	r3, [r3, #36]
 1567 0044 13F0010F 		tst	r3, #1
 1568 0048 2CD0     		beq	.L193
1270:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 1569              		.loc 1 1270 0
 1570 004a 0123     		movs	r3, #1
 1571 004c 8361     		str	r3, [r0, #24]
 1572              	.L194:
1279:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 1573              		.loc 1 1279 0
 1574 004e 184B     		ldr	r3, .L198
 1575 0050 1B68     		ldr	r3, [r3]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 63


 1576 0052 13F0807F 		tst	r3, #16777216
 1577 0056 28D1     		bne	.L197
1285:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 1578              		.loc 1 1285 0
 1579 0058 0123     		movs	r3, #1
 1580 005a C361     		str	r3, [r0, #28]
 1581              	.L196:
1287:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLMUL = (uint32_t)(RCC->CFGR & RCC_CFGR_PLLMULL);
 1582              		.loc 1 1287 0
 1583 005c 144A     		ldr	r2, .L198
 1584 005e 5368     		ldr	r3, [r2, #4]
 1585 0060 03F48033 		and	r3, r3, #65536
 1586 0064 0362     		str	r3, [r0, #32]
1288:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #if defined(RCC_CR_PLL2ON)
 1587              		.loc 1 1288 0
 1588 0066 5368     		ldr	r3, [r2, #4]
 1589 0068 03F47013 		and	r3, r3, #3932160
 1590 006c 4362     		str	r3, [r0, #36]
1302:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 1591              		.loc 1 1302 0
 1592 006e 7047     		bx	lr
 1593              	.L185:
1231:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 1594              		.loc 1 1231 0
 1595 0070 0F4B     		ldr	r3, .L198
 1596 0072 1B68     		ldr	r3, [r3]
 1597 0074 13F4803F 		tst	r3, #65536
 1598 0078 03D0     		beq	.L187
1233:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 1599              		.loc 1 1233 0
 1600 007a 4FF48033 		mov	r3, #65536
 1601 007e 4360     		str	r3, [r0, #4]
 1602 0080 C8E7     		b	.L186
 1603              	.L187:
1237:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 1604              		.loc 1 1237 0
 1605 0082 0023     		movs	r3, #0
 1606 0084 4360     		str	r3, [r0, #4]
 1607 0086 C5E7     		b	.L186
 1608              	.L188:
1248:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 1609              		.loc 1 1248 0
 1610 0088 0023     		movs	r3, #0
 1611 008a 0361     		str	r3, [r0, #16]
 1612 008c CDE7     		b	.L189
 1613              	.L190:
1258:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 1614              		.loc 1 1258 0
 1615 008e 084B     		ldr	r3, .L198
 1616 0090 1B6A     		ldr	r3, [r3, #32]
 1617 0092 13F0010F 		tst	r3, #1
 1618 0096 02D0     		beq	.L192
1260:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 1619              		.loc 1 1260 0
 1620 0098 0123     		movs	r3, #1
 1621 009a C360     		str	r3, [r0, #12]
 1622 009c D0E7     		b	.L191
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 64


 1623              	.L192:
1264:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 1624              		.loc 1 1264 0
 1625 009e 0023     		movs	r3, #0
 1626 00a0 C360     		str	r3, [r0, #12]
 1627 00a2 CDE7     		b	.L191
 1628              	.L193:
1274:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 1629              		.loc 1 1274 0
 1630 00a4 0023     		movs	r3, #0
 1631 00a6 8361     		str	r3, [r0, #24]
 1632 00a8 D1E7     		b	.L194
 1633              	.L197:
1281:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 1634              		.loc 1 1281 0
 1635 00aa 0223     		movs	r3, #2
 1636 00ac C361     		str	r3, [r0, #28]
 1637 00ae D5E7     		b	.L196
 1638              	.L199:
 1639              		.align	2
 1640              	.L198:
 1641 00b0 00100240 		.word	1073876992
 1642              		.cfi_endproc
 1643              	.LFE76:
 1645              		.section	.text.HAL_RCC_GetClockConfig,"ax",%progbits
 1646              		.align	1
 1647              		.global	HAL_RCC_GetClockConfig
 1648              		.syntax unified
 1649              		.thumb
 1650              		.thumb_func
 1651              		.fpu softvfp
 1653              	HAL_RCC_GetClockConfig:
 1654              	.LFB77:
1313:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Check the parameters */
 1655              		.loc 1 1313 0
 1656              		.cfi_startproc
 1657              		@ args = 0, pretend = 0, frame = 0
 1658              		@ frame_needed = 0, uses_anonymous_args = 0
 1659              		@ link register save eliminated.
 1660              	.LVL124:
1319:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   
 1661              		.loc 1 1319 0
 1662 0000 0F23     		movs	r3, #15
 1663 0002 0360     		str	r3, [r0]
1322:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   
 1664              		.loc 1 1322 0
 1665 0004 0B4B     		ldr	r3, .L201
 1666 0006 5A68     		ldr	r2, [r3, #4]
 1667 0008 02F00302 		and	r2, r2, #3
 1668 000c 4260     		str	r2, [r0, #4]
1325:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   
 1669              		.loc 1 1325 0
 1670 000e 5A68     		ldr	r2, [r3, #4]
 1671 0010 02F0F002 		and	r2, r2, #240
 1672 0014 8260     		str	r2, [r0, #8]
1328:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   
 1673              		.loc 1 1328 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 65


 1674 0016 5A68     		ldr	r2, [r3, #4]
 1675 0018 02F4E062 		and	r2, r2, #1792
 1676 001c C260     		str	r2, [r0, #12]
1331:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   
 1677              		.loc 1 1331 0
 1678 001e 5B68     		ldr	r3, [r3, #4]
 1679 0020 DB08     		lsrs	r3, r3, #3
 1680 0022 03F4E063 		and	r3, r3, #1792
 1681 0026 0361     		str	r3, [r0, #16]
1335:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** #else
 1682              		.loc 1 1335 0
 1683 0028 034B     		ldr	r3, .L201+4
 1684 002a 1B68     		ldr	r3, [r3]
 1685 002c 03F00703 		and	r3, r3, #7
 1686 0030 0B60     		str	r3, [r1]
1340:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 1687              		.loc 1 1340 0
 1688 0032 7047     		bx	lr
 1689              	.L202:
 1690              		.align	2
 1691              	.L201:
 1692 0034 00100240 		.word	1073876992
 1693 0038 00200240 		.word	1073881088
 1694              		.cfi_endproc
 1695              	.LFE77:
 1697              		.section	.text.HAL_RCC_CSSCallback,"ax",%progbits
 1698              		.align	1
 1699              		.weak	HAL_RCC_CSSCallback
 1700              		.syntax unified
 1701              		.thumb
 1702              		.thumb_func
 1703              		.fpu softvfp
 1705              	HAL_RCC_CSSCallback:
 1706              	.LFB80:
1374:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
1375:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** /**
1376:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @brief  RCC Clock Security System interrupt callback
1377:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   * @retval none
1378:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   */
1379:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** __weak void HAL_RCC_CSSCallback(void)
1380:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** {
 1707              		.loc 1 1380 0
 1708              		.cfi_startproc
 1709              		@ args = 0, pretend = 0, frame = 0
 1710              		@ frame_needed = 0, uses_anonymous_args = 0
 1711              		@ link register save eliminated.
1381:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
1382:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     the HAL_RCC_CSSCallback could be implemented in the user file
1383:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     */ 
1384:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** }
 1712              		.loc 1 1384 0
 1713 0000 7047     		bx	lr
 1714              		.cfi_endproc
 1715              	.LFE80:
 1717              		.section	.text.HAL_RCC_NMI_IRQHandler,"ax",%progbits
 1718              		.align	1
 1719              		.global	HAL_RCC_NMI_IRQHandler
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 66


 1720              		.syntax unified
 1721              		.thumb
 1722              		.thumb_func
 1723              		.fpu softvfp
 1725              	HAL_RCC_NMI_IRQHandler:
 1726              	.LFB78:
1348:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   /* Check RCC CSSF flag  */
 1727              		.loc 1 1348 0
 1728              		.cfi_startproc
 1729              		@ args = 0, pretend = 0, frame = 0
 1730              		@ frame_needed = 0, uses_anonymous_args = 0
 1731 0000 08B5     		push	{r3, lr}
 1732              	.LCFI18:
 1733              		.cfi_def_cfa_offset 8
 1734              		.cfi_offset 3, -8
 1735              		.cfi_offset 14, -4
1350:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   {
 1736              		.loc 1 1350 0
 1737 0002 064B     		ldr	r3, .L208
 1738 0004 9B68     		ldr	r3, [r3, #8]
 1739 0006 13F0800F 		tst	r3, #128
 1740 000a 00D1     		bne	.L207
 1741              	.L204:
1358:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 1742              		.loc 1 1358 0
 1743 000c 08BD     		pop	{r3, pc}
 1744              	.L207:
1353:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****     
 1745              		.loc 1 1353 0
 1746 000e FFF7FEFF 		bl	HAL_RCC_CSSCallback
 1747              	.LVL125:
1356:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c ****   }
 1748              		.loc 1 1356 0
 1749 0012 034B     		ldr	r3, .L208+4
 1750 0014 8022     		movs	r2, #128
 1751 0016 1A70     		strb	r2, [r3]
1358:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c **** 
 1752              		.loc 1 1358 0
 1753 0018 F8E7     		b	.L204
 1754              	.L209:
 1755 001a 00BF     		.align	2
 1756              	.L208:
 1757 001c 00100240 		.word	1073876992
 1758 0020 0A100240 		.word	1073877002
 1759              		.cfi_endproc
 1760              	.LFE78:
 1762              		.section	.rodata
 1763              		.align	2
 1764              		.set	.LANCHOR0,. + 0
 1765              	.LC0:
 1766 0000 02       		.byte	2
 1767 0001 03       		.byte	3
 1768 0002 04       		.byte	4
 1769 0003 05       		.byte	5
 1770 0004 06       		.byte	6
 1771 0005 07       		.byte	7
 1772 0006 08       		.byte	8
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 67


 1773 0007 09       		.byte	9
 1774 0008 0A       		.byte	10
 1775 0009 0B       		.byte	11
 1776 000a 0C       		.byte	12
 1777 000b 0D       		.byte	13
 1778 000c 0E       		.byte	14
 1779 000d 0F       		.byte	15
 1780 000e 10       		.byte	16
 1781 000f 10       		.byte	16
 1782              	.LC1:
 1783 0010 01       		.byte	1
 1784 0011 02       		.byte	2
 1785              		.text
 1786              	.Letext0:
 1787              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 1788              		.file 4 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 1789              		.file 5 "Drivers/CMSIS/Include/core_cm3.h"
 1790              		.file 6 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/system_stm32f1xx.h"
 1791              		.file 7 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
 1792              		.file 8 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"
 1793              		.file 9 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 1794              		.file 10 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\includ
 1795              		.file 11 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\lib\\gcc\\arm-none-ea
 1796              		.file 12 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\includ
 1797              		.file 13 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"
 1798              		.file 14 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"
 1799              		.file 15 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"
 1800              		.file 16 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio.h"
 1801              		.file 17 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 68


DEFINED SYMBOLS
                            *ABS*:00000000 stm32f1xx_hal_rcc.c
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:16     .text.RCC_Delay:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:22     .text.RCC_Delay:00000000 RCC_Delay
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:71     .text.RCC_Delay:00000024 $d
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:77     .text.HAL_RCC_DeInit:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:84     .text.HAL_RCC_DeInit:00000000 HAL_RCC_DeInit
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:252    .text.HAL_RCC_DeInit:000000e0 $d
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:259    .text.HAL_RCC_OscConfig:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:266    .text.HAL_RCC_OscConfig:00000000 HAL_RCC_OscConfig
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:719    .text.HAL_RCC_OscConfig:000002bc $d
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:725    .text.HAL_RCC_OscConfig:000002cc $t
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:920    .text.HAL_RCC_OscConfig:000003d4 $d
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:926    .text.HAL_RCC_MCOConfig:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:933    .text.HAL_RCC_MCOConfig:00000000 HAL_RCC_MCOConfig
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:995    .text.HAL_RCC_MCOConfig:00000044 $d
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1001   .text.HAL_RCC_EnableCSS:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1008   .text.HAL_RCC_EnableCSS:00000000 HAL_RCC_EnableCSS
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1024   .text.HAL_RCC_EnableCSS:00000008 $d
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1029   .text.HAL_RCC_DisableCSS:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1036   .text.HAL_RCC_DisableCSS:00000000 HAL_RCC_DisableCSS
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1052   .text.HAL_RCC_DisableCSS:00000008 $d
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1057   .text.HAL_RCC_GetSysClockFreq:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1064   .text.HAL_RCC_GetSysClockFreq:00000000 HAL_RCC_GetSysClockFreq
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1147   .text.HAL_RCC_GetSysClockFreq:00000060 $d
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1155   .text.HAL_RCC_ClockConfig:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1162   .text.HAL_RCC_ClockConfig:00000000 HAL_RCC_ClockConfig
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1401   .text.HAL_RCC_ClockConfig:00000168 $d
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1409   .text.HAL_RCC_GetHCLKFreq:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1416   .text.HAL_RCC_GetHCLKFreq:00000000 HAL_RCC_GetHCLKFreq
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1430   .text.HAL_RCC_GetHCLKFreq:00000008 $d
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1435   .text.HAL_RCC_GetPCLK1Freq:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1442   .text.HAL_RCC_GetPCLK1Freq:00000000 HAL_RCC_GetPCLK1Freq
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1467   .text.HAL_RCC_GetPCLK1Freq:00000018 $d
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1473   .text.HAL_RCC_GetPCLK2Freq:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1480   .text.HAL_RCC_GetPCLK2Freq:00000000 HAL_RCC_GetPCLK2Freq
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1505   .text.HAL_RCC_GetPCLK2Freq:00000018 $d
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1511   .text.HAL_RCC_GetOscConfig:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1518   .text.HAL_RCC_GetOscConfig:00000000 HAL_RCC_GetOscConfig
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1641   .text.HAL_RCC_GetOscConfig:000000b0 $d
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1646   .text.HAL_RCC_GetClockConfig:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1653   .text.HAL_RCC_GetClockConfig:00000000 HAL_RCC_GetClockConfig
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1692   .text.HAL_RCC_GetClockConfig:00000034 $d
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1698   .text.HAL_RCC_CSSCallback:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1705   .text.HAL_RCC_CSSCallback:00000000 HAL_RCC_CSSCallback
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1718   .text.HAL_RCC_NMI_IRQHandler:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1725   .text.HAL_RCC_NMI_IRQHandler:00000000 HAL_RCC_NMI_IRQHandler
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1757   .text.HAL_RCC_NMI_IRQHandler:0000001c $d
C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s:1763   .rodata:00000000 $d

UNDEFINED SYMBOLS
SystemCoreClock
HAL_GetTick
HAL_InitTick
HAL_GPIO_Init
AHBPrescTable
APBPrescTable
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccSrIQsv.s 			page 69


