ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 1


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
  11              		.file	"stm32f1xx_hal.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.HAL_MspInit,"ax",%progbits
  16              		.align	1
  17              		.weak	HAL_MspInit
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu softvfp
  23              	HAL_MspInit:
  24              	.LFB68:
  25              		.file 1 "Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c"
   1:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
   2:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   ******************************************************************************
   3:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @file    stm32f1xx_hal.c
   4:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @author  MCD Application Team
   5:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @brief   HAL module driver.
   6:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *          This is the common part of the HAL initialization
   7:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *
   8:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   @verbatim
   9:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   ==============================================================================
  10:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****                      ##### How to use this driver #####
  11:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   ==============================================================================
  12:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****     [..]
  13:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****     The common HAL driver contains a set of generic and common APIs that can be
  14:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****     used by the PPP peripheral drivers and the user to start using the HAL.
  15:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****     [..]
  16:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****     The HAL contains two APIs' categories:
  17:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****          (+) Common HAL APIs
  18:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****          (+) Services HAL APIs
  19:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
  20:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   @endverbatim
  21:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   ******************************************************************************
  22:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @attention
  23:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *
  24:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
  25:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *
  26:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * Redistribution and use in source and binary forms, with or without modification,
  27:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * are permitted provided that the following conditions are met:
  28:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  29:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *      this list of conditions and the following disclaimer.
  30:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  31:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *      this list of conditions and the following disclaimer in the documentation
  32:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *      and/or other materials provided with the distribution.
  33:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 2


  34:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *      may be used to endorse or promote products derived from this software
  35:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *      without specific prior written permission.
  36:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *
  37:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  38:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  39:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  40:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  41:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  42:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  43:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  44:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  45:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  46:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  47:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *
  48:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   ******************************************************************************
  49:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
  50:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
  51:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /* Includes ------------------------------------------------------------------*/
  52:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** #include "stm32f1xx_hal.h"
  53:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
  54:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /** @addtogroup STM32F1xx_HAL_Driver
  55:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @{
  56:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
  57:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
  58:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /** @defgroup HAL HAL
  59:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @brief HAL module driver.
  60:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @{
  61:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
  62:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
  63:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** #ifdef HAL_MODULE_ENABLED
  64:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
  65:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /* Private typedef -----------------------------------------------------------*/
  66:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /* Private define ------------------------------------------------------------*/
  67:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
  68:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /** @defgroup HAL_Private_Constants HAL Private Constants
  69:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @{
  70:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
  71:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
  72:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****  * @brief STM32F1xx HAL Driver version number V1.1.2
  73:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****    */
  74:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** #define __STM32F1xx_HAL_VERSION_MAIN   (0x01U) /*!< [31:24] main version */
  75:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** #define __STM32F1xx_HAL_VERSION_SUB1   (0x01U) /*!< [23:16] sub1 version */
  76:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** #define __STM32F1xx_HAL_VERSION_SUB2   (0x02U) /*!< [15:8]  sub2 version */
  77:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** #define __STM32F1xx_HAL_VERSION_RC     (0x00U) /*!< [7:0]  release candidate */
  78:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** #define __STM32F1xx_HAL_VERSION         ((__STM32F1xx_HAL_VERSION_MAIN << 24)\
  79:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****                                         |(__STM32F1xx_HAL_VERSION_SUB1 << 16)\
  80:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****                                         |(__STM32F1xx_HAL_VERSION_SUB2 << 8 )\
  81:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****                                         |(__STM32F1xx_HAL_VERSION_RC))
  82:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
  83:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** #define IDCODE_DEVID_MASK    0x00000FFFU
  84:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
  85:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
  86:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @}
  87:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
  88:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
  89:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /* Private macro -------------------------------------------------------------*/
  90:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /* Private variables ---------------------------------------------------------*/
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 3


  91:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
  92:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /** @defgroup HAL_Private_Variables HAL Private Variables
  93:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @{
  94:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
  95:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** __IO uint32_t uwTick;
  96:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** uint32_t uwTickPrio   = (1UL << __NVIC_PRIO_BITS); /* Invalid PRIO */
  97:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** HAL_TickFreqTypeDef uwTickFreq = HAL_TICK_FREQ_DEFAULT;  /* 1KHz */
  98:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
  99:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @}
 100:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 101:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /* Private function prototypes -----------------------------------------------*/
 102:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /* Exported functions ---------------------------------------------------------*/
 103:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 104:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /** @defgroup HAL_Exported_Functions HAL Exported Functions
 105:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @{
 106:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 107:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 108:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /** @defgroup HAL_Exported_Functions_Group1 Initialization and de-initialization Functions
 109:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****  *  @brief    Initialization and de-initialization functions
 110:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****  *
 111:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** @verbatim
 112:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****  ===============================================================================
 113:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****               ##### Initialization and de-initialization functions #####
 114:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****  ===============================================================================
 115:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****    [..]  This section provides functions allowing to:
 116:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****       (+) Initializes the Flash interface, the NVIC allocation and initial clock
 117:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****           configuration. It initializes the systick also when timeout is needed
 118:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****           and the backup domain when enabled.
 119:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****       (+) de-Initializes common part of the HAL.
 120:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****       (+) Configure The time base source to have 1ms time base with a dedicated
 121:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****           Tick interrupt priority.
 122:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****         (++) SysTick timer is used by default as source of time base, but user
 123:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****              can eventually implement his proper time base source (a general purpose
 124:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****              timer for example or other time source), keeping in mind that Time base
 125:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****              duration should be kept 1ms since PPP_TIMEOUT_VALUEs are defined and
 126:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****              handled in milliseconds basis.
 127:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****         (++) Time base configuration function (HAL_InitTick ()) is called automatically
 128:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****              at the beginning of the program after reset by HAL_Init() or at any time
 129:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****              when clock is configured, by HAL_RCC_ClockConfig().
 130:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****         (++) Source of time base is configured  to generate interrupts at regular
 131:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****              time intervals. Care must be taken if HAL_Delay() is called from a
 132:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****              peripheral ISR process, the Tick interrupt line must have higher priority
 133:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****             (numerically lower) than the peripheral interrupt. Otherwise the caller
 134:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****             ISR process will be blocked.
 135:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****        (++) functions affecting time base configurations are declared as __weak
 136:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****              to make  override possible  in case of other  implementations in user file.
 137:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** @endverbatim
 138:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @{
 139:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 140:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 141:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
 142:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @brief  This function is used to initialize the HAL Library; it must be the first
 143:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *         instruction to be executed in the main program (before to call any other
 144:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *         HAL function), it performs the following:
 145:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *           Configure the Flash prefetch.
 146:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *           Configures the SysTick to generate an interrupt each 1 millisecond,
 147:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *           which is clocked by the HSI (at this stage, the clock is not yet
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 4


 148:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *           configured and thus the system is running from the internal HSI at 16 MHz).
 149:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *           Set NVIC Group Priority to 4.
 150:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *           Calls the HAL_MspInit() callback function defined in user file
 151:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *           "stm32f1xx_hal_msp.c" to do the global low level hardware initialization
 152:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *
 153:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @note   SysTick is used as time base for the HAL_Delay() function, the application
 154:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *         need to ensure that the SysTick time base is always set to 1 millisecond
 155:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *         to have correct HAL operation.
 156:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @retval HAL status
 157:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 158:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** HAL_StatusTypeDef HAL_Init(void)
 159:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** {
 160:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   /* Configure Flash prefetch */
 161:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** #if (PREFETCH_ENABLE != 0)
 162:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** #if defined(STM32F101x6) || defined(STM32F101xB) || defined(STM32F101xE) || defined(STM32F101xG) ||
 163:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****     defined(STM32F102x6) || defined(STM32F102xB) || \
 164:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****     defined(STM32F103x6) || defined(STM32F103xB) || defined(STM32F103xE) || defined(STM32F103xG) ||
 165:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****     defined(STM32F105xC) || defined(STM32F107xC)
 166:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 167:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   /* Prefetch buffer is not available on value line devices */
 168:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   __HAL_FLASH_PREFETCH_BUFFER_ENABLE();
 169:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** #endif
 170:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** #endif /* PREFETCH_ENABLE */
 171:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 172:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   /* Set Interrupt Group Priority */
 173:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   HAL_NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_4);
 174:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 175:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   /* Use systick as time base source and configure 1ms tick (default clock after Reset is HSI) */
 176:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   HAL_InitTick(TICK_INT_PRIORITY);
 177:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 178:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   /* Init the low level hardware */
 179:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   HAL_MspInit();
 180:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 181:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   /* Return function status */
 182:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   return HAL_OK;
 183:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** }
 184:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 185:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
 186:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @brief This function de-Initializes common part of the HAL and stops the systick.
 187:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *        of time base.
 188:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @note This function is optional.
 189:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @retval HAL status
 190:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 191:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** HAL_StatusTypeDef HAL_DeInit(void)
 192:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** {
 193:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   /* Reset of all peripherals */
 194:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   __HAL_RCC_APB1_FORCE_RESET();
 195:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   __HAL_RCC_APB1_RELEASE_RESET();
 196:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 197:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   __HAL_RCC_APB2_FORCE_RESET();
 198:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   __HAL_RCC_APB2_RELEASE_RESET();
 199:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 200:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** #if defined(STM32F105xC) || defined(STM32F107xC)
 201:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   __HAL_RCC_AHB_FORCE_RESET();
 202:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   __HAL_RCC_AHB_RELEASE_RESET();
 203:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** #endif
 204:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 5


 205:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   /* De-Init the low level hardware */
 206:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   HAL_MspDeInit();
 207:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 208:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   /* Return function status */
 209:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   return HAL_OK;
 210:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** }
 211:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 212:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
 213:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @brief  Initialize the MSP.
 214:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @retval None
 215:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 216:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** __weak void HAL_MspInit(void)
 217:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** {
  26              		.loc 1 217 0
  27              		.cfi_startproc
  28              		@ args = 0, pretend = 0, frame = 0
  29              		@ frame_needed = 0, uses_anonymous_args = 0
  30              		@ link register save eliminated.
 218:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   /* NOTE : This function should not be modified, when the callback is needed,
 219:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****             the HAL_MspInit could be implemented in the user file
 220:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****    */
 221:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** }
  31              		.loc 1 221 0
  32 0000 7047     		bx	lr
  33              		.cfi_endproc
  34              	.LFE68:
  36              		.section	.text.HAL_MspDeInit,"ax",%progbits
  37              		.align	1
  38              		.weak	HAL_MspDeInit
  39              		.syntax unified
  40              		.thumb
  41              		.thumb_func
  42              		.fpu softvfp
  44              	HAL_MspDeInit:
  45              	.LFB69:
 222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 223:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
 224:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @brief  DeInitializes the MSP.
 225:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @retval None
 226:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 227:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** __weak void HAL_MspDeInit(void)
 228:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** {
  46              		.loc 1 228 0
  47              		.cfi_startproc
  48              		@ args = 0, pretend = 0, frame = 0
  49              		@ frame_needed = 0, uses_anonymous_args = 0
  50              		@ link register save eliminated.
 229:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   /* NOTE : This function should not be modified, when the callback is needed,
 230:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****             the HAL_MspDeInit could be implemented in the user file
 231:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****    */
 232:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** }
  51              		.loc 1 232 0
  52 0000 7047     		bx	lr
  53              		.cfi_endproc
  54              	.LFE69:
  56              		.section	.text.HAL_DeInit,"ax",%progbits
  57              		.align	1
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 6


  58              		.global	HAL_DeInit
  59              		.syntax unified
  60              		.thumb
  61              		.thumb_func
  62              		.fpu softvfp
  64              	HAL_DeInit:
  65              	.LFB67:
 192:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   /* Reset of all peripherals */
  66              		.loc 1 192 0
  67              		.cfi_startproc
  68              		@ args = 0, pretend = 0, frame = 0
  69              		@ frame_needed = 0, uses_anonymous_args = 0
  70 0000 10B5     		push	{r4, lr}
  71              	.LCFI0:
  72              		.cfi_def_cfa_offset 8
  73              		.cfi_offset 4, -8
  74              		.cfi_offset 14, -4
 194:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   __HAL_RCC_APB1_RELEASE_RESET();
  75              		.loc 1 194 0
  76 0002 064B     		ldr	r3, .L5
  77 0004 4FF0FF32 		mov	r2, #-1
  78 0008 DA60     		str	r2, [r3, #12]
 195:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
  79              		.loc 1 195 0
  80 000a 0024     		movs	r4, #0
  81 000c 1C61     		str	r4, [r3, #16]
 197:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   __HAL_RCC_APB2_RELEASE_RESET();
  82              		.loc 1 197 0
  83 000e DA60     		str	r2, [r3, #12]
 198:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
  84              		.loc 1 198 0
  85 0010 DC60     		str	r4, [r3, #12]
 206:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
  86              		.loc 1 206 0
  87 0012 FFF7FEFF 		bl	HAL_MspDeInit
  88              	.LVL0:
 210:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
  89              		.loc 1 210 0
  90 0016 2046     		mov	r0, r4
  91 0018 10BD     		pop	{r4, pc}
  92              	.L6:
  93 001a 00BF     		.align	2
  94              	.L5:
  95 001c 00100240 		.word	1073876992
  96              		.cfi_endproc
  97              	.LFE67:
  99              		.section	.text.HAL_InitTick,"ax",%progbits
 100              		.align	1
 101              		.weak	HAL_InitTick
 102              		.syntax unified
 103              		.thumb
 104              		.thumb_func
 105              		.fpu softvfp
 107              	HAL_InitTick:
 108              	.LFB70:
 233:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 234:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 7


 235:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @brief This function configures the source of the time base.
 236:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *        The time source is configured  to have 1ms time base with a dedicated
 237:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *        Tick interrupt priority.
 238:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @note This function is called  automatically at the beginning of program after
 239:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       reset by HAL_Init() or at any time when clock is reconfigured  by HAL_RCC_ClockConfig().
 240:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @note In the default implementation, SysTick timer is the source of time base.
 241:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       It is used to generate interrupts at regular time intervals.
 242:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       Care must be taken if HAL_Delay() is called from a peripheral ISR process,
 243:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       The SysTick interrupt must have higher priority (numerically lower)
 244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       than the peripheral interrupt. Otherwise the caller ISR process will be blocked.
 245:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       The function is declared as __weak  to be overwritten  in case of other
 246:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       implementation  in user file.
 247:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @param TickPriority Tick interrupt priority.
 248:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @retval HAL status
 249:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 250:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** __weak HAL_StatusTypeDef HAL_InitTick(uint32_t TickPriority)
 251:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** {
 109              		.loc 1 251 0
 110              		.cfi_startproc
 111              		@ args = 0, pretend = 0, frame = 0
 112              		@ frame_needed = 0, uses_anonymous_args = 0
 113              	.LVL1:
 114 0000 10B5     		push	{r4, lr}
 115              	.LCFI1:
 116              		.cfi_def_cfa_offset 8
 117              		.cfi_offset 4, -8
 118              		.cfi_offset 14, -4
 119 0002 0446     		mov	r4, r0
 252:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   /* Configure the SysTick to have interrupt in 1ms time basis*/
 253:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   if (HAL_SYSTICK_Config(SystemCoreClock / (1000U / uwTickFreq)) > 0U)
 120              		.loc 1 253 0
 121 0004 0E4B     		ldr	r3, .L13
 122 0006 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 123              	.LVL2:
 124 0008 4FF47A73 		mov	r3, #1000
 125 000c B3FBF0F3 		udiv	r3, r3, r0
 126 0010 0C4A     		ldr	r2, .L13+4
 127 0012 1068     		ldr	r0, [r2]
 128 0014 B0FBF3F0 		udiv	r0, r0, r3
 129 0018 FFF7FEFF 		bl	HAL_SYSTICK_Config
 130              	.LVL3:
 131 001c 68B9     		cbnz	r0, .L9
 254:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   {
 255:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****     return HAL_ERROR;
 256:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   }
 257:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 258:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   /* Configure the SysTick IRQ priority */
 259:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   if (TickPriority < (1UL << __NVIC_PRIO_BITS))
 132              		.loc 1 259 0
 133 001e 0F2C     		cmp	r4, #15
 134 0020 01D9     		bls	.L12
 260:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   {
 261:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****     HAL_NVIC_SetPriority(SysTick_IRQn, TickPriority, 0U);
 262:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****     uwTickPrio = TickPriority;
 263:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   }
 264:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   else
 265:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   {
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 8


 266:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****     return HAL_ERROR;
 135              		.loc 1 266 0
 136 0022 0120     		movs	r0, #1
 137 0024 0AE0     		b	.L8
 138              	.L12:
 261:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****     uwTickPrio = TickPriority;
 139              		.loc 1 261 0
 140 0026 0022     		movs	r2, #0
 141 0028 2146     		mov	r1, r4
 142 002a 4FF0FF30 		mov	r0, #-1
 143 002e FFF7FEFF 		bl	HAL_NVIC_SetPriority
 144              	.LVL4:
 262:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   }
 145              		.loc 1 262 0
 146 0032 054B     		ldr	r3, .L13+8
 147 0034 1C60     		str	r4, [r3]
 267:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   }
 268:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 269:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   /* Return function status */
 270:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   return HAL_OK;
 148              		.loc 1 270 0
 149 0036 0020     		movs	r0, #0
 150 0038 00E0     		b	.L8
 151              	.L9:
 255:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   }
 152              		.loc 1 255 0
 153 003a 0120     		movs	r0, #1
 154              	.L8:
 271:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** }
 155              		.loc 1 271 0
 156 003c 10BD     		pop	{r4, pc}
 157              	.LVL5:
 158              	.L14:
 159 003e 00BF     		.align	2
 160              	.L13:
 161 0040 00000000 		.word	.LANCHOR0
 162 0044 00000000 		.word	SystemCoreClock
 163 0048 00000000 		.word	.LANCHOR1
 164              		.cfi_endproc
 165              	.LFE70:
 167              		.section	.text.HAL_Init,"ax",%progbits
 168              		.align	1
 169              		.global	HAL_Init
 170              		.syntax unified
 171              		.thumb
 172              		.thumb_func
 173              		.fpu softvfp
 175              	HAL_Init:
 176              	.LFB66:
 159:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   /* Configure Flash prefetch */
 177              		.loc 1 159 0
 178              		.cfi_startproc
 179              		@ args = 0, pretend = 0, frame = 0
 180              		@ frame_needed = 0, uses_anonymous_args = 0
 181 0000 08B5     		push	{r3, lr}
 182              	.LCFI2:
 183              		.cfi_def_cfa_offset 8
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 9


 184              		.cfi_offset 3, -8
 185              		.cfi_offset 14, -4
 168:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** #endif
 186              		.loc 1 168 0
 187 0002 074A     		ldr	r2, .L17
 188 0004 1368     		ldr	r3, [r2]
 189 0006 43F01003 		orr	r3, r3, #16
 190 000a 1360     		str	r3, [r2]
 173:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 191              		.loc 1 173 0
 192 000c 0320     		movs	r0, #3
 193 000e FFF7FEFF 		bl	HAL_NVIC_SetPriorityGrouping
 194              	.LVL6:
 176:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 195              		.loc 1 176 0
 196 0012 0020     		movs	r0, #0
 197 0014 FFF7FEFF 		bl	HAL_InitTick
 198              	.LVL7:
 179:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 199              		.loc 1 179 0
 200 0018 FFF7FEFF 		bl	HAL_MspInit
 201              	.LVL8:
 183:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 202              		.loc 1 183 0
 203 001c 0020     		movs	r0, #0
 204 001e 08BD     		pop	{r3, pc}
 205              	.L18:
 206              		.align	2
 207              	.L17:
 208 0020 00200240 		.word	1073881088
 209              		.cfi_endproc
 210              	.LFE66:
 212              		.section	.text.HAL_IncTick,"ax",%progbits
 213              		.align	1
 214              		.weak	HAL_IncTick
 215              		.syntax unified
 216              		.thumb
 217              		.thumb_func
 218              		.fpu softvfp
 220              	HAL_IncTick:
 221              	.LFB71:
 272:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 273:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
 274:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @}
 275:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 276:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 277:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /** @defgroup HAL_Exported_Functions_Group2 HAL Control functions
 278:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *  @brief    HAL Control functions
 279:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *
 280:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** @verbatim
 281:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****  ===============================================================================
 282:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****                       ##### HAL Control functions #####
 283:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****  ===============================================================================
 284:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****     [..]  This section provides functions allowing to:
 285:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****       (+) Provide a tick value in millisecond
 286:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****       (+) Provide a blocking delay in millisecond
 287:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****       (+) Suspend the time base source interrupt
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 10


 288:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****       (+) Resume the time base source interrupt
 289:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****       (+) Get the HAL API driver version
 290:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****       (+) Get the device identifier
 291:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****       (+) Get the device revision identifier
 292:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****       (+) Enable/Disable Debug module during SLEEP mode
 293:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****       (+) Enable/Disable Debug module during STOP mode
 294:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****       (+) Enable/Disable Debug module during STANDBY mode
 295:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 296:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** @endverbatim
 297:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @{
 298:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 299:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 300:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
 301:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @brief This function is called to increment  a global variable "uwTick"
 302:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *        used as application time base.
 303:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @note In the default implementation, this variable is incremented each 1ms
 304:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       in SysTick ISR.
 305:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @note This function is declared as __weak to be overwritten in case of other
 306:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *      implementations in user file.
 307:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @retval None
 308:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 309:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** __weak void HAL_IncTick(void)
 310:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** {
 222              		.loc 1 310 0
 223              		.cfi_startproc
 224              		@ args = 0, pretend = 0, frame = 0
 225              		@ frame_needed = 0, uses_anonymous_args = 0
 226              		@ link register save eliminated.
 311:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   uwTick += uwTickFreq;
 227              		.loc 1 311 0
 228 0000 034A     		ldr	r2, .L20
 229 0002 1168     		ldr	r1, [r2]
 230 0004 034B     		ldr	r3, .L20+4
 231 0006 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 232 0008 0B44     		add	r3, r3, r1
 233 000a 1360     		str	r3, [r2]
 312:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** }
 234              		.loc 1 312 0
 235 000c 7047     		bx	lr
 236              	.L21:
 237 000e 00BF     		.align	2
 238              	.L20:
 239 0010 00000000 		.word	uwTick
 240 0014 00000000 		.word	.LANCHOR0
 241              		.cfi_endproc
 242              	.LFE71:
 244              		.section	.text.HAL_GetTick,"ax",%progbits
 245              		.align	1
 246              		.weak	HAL_GetTick
 247              		.syntax unified
 248              		.thumb
 249              		.thumb_func
 250              		.fpu softvfp
 252              	HAL_GetTick:
 253              	.LFB72:
 313:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 314:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 11


 315:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @brief Provides a tick value in millisecond.
 316:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @note  This function is declared as __weak to be overwritten in case of other
 317:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       implementations in user file.
 318:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @retval tick value
 319:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 320:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** __weak uint32_t HAL_GetTick(void)
 321:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** {
 254              		.loc 1 321 0
 255              		.cfi_startproc
 256              		@ args = 0, pretend = 0, frame = 0
 257              		@ frame_needed = 0, uses_anonymous_args = 0
 258              		@ link register save eliminated.
 322:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   return uwTick;
 259              		.loc 1 322 0
 260 0000 014B     		ldr	r3, .L23
 261 0002 1868     		ldr	r0, [r3]
 323:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** }
 262              		.loc 1 323 0
 263 0004 7047     		bx	lr
 264              	.L24:
 265 0006 00BF     		.align	2
 266              	.L23:
 267 0008 00000000 		.word	uwTick
 268              		.cfi_endproc
 269              	.LFE72:
 271              		.section	.text.HAL_GetTickPrio,"ax",%progbits
 272              		.align	1
 273              		.global	HAL_GetTickPrio
 274              		.syntax unified
 275              		.thumb
 276              		.thumb_func
 277              		.fpu softvfp
 279              	HAL_GetTickPrio:
 280              	.LFB73:
 324:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 325:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
 326:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @brief This function returns a tick priority.
 327:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @retval tick priority
 328:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 329:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** uint32_t HAL_GetTickPrio(void)
 330:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** {
 281              		.loc 1 330 0
 282              		.cfi_startproc
 283              		@ args = 0, pretend = 0, frame = 0
 284              		@ frame_needed = 0, uses_anonymous_args = 0
 285              		@ link register save eliminated.
 331:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   return uwTickPrio;
 332:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** }
 286              		.loc 1 332 0
 287 0000 014B     		ldr	r3, .L26
 288 0002 1868     		ldr	r0, [r3]
 289 0004 7047     		bx	lr
 290              	.L27:
 291 0006 00BF     		.align	2
 292              	.L26:
 293 0008 00000000 		.word	.LANCHOR1
 294              		.cfi_endproc
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 12


 295              	.LFE73:
 297              		.section	.text.HAL_SetTickFreq,"ax",%progbits
 298              		.align	1
 299              		.global	HAL_SetTickFreq
 300              		.syntax unified
 301              		.thumb
 302              		.thumb_func
 303              		.fpu softvfp
 305              	HAL_SetTickFreq:
 306              	.LFB74:
 333:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 334:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
 335:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @brief Set new tick Freq.
 336:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @retval Status
 337:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 338:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** HAL_StatusTypeDef HAL_SetTickFreq(HAL_TickFreqTypeDef Freq)
 339:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** {
 307              		.loc 1 339 0
 308              		.cfi_startproc
 309              		@ args = 0, pretend = 0, frame = 0
 310              		@ frame_needed = 0, uses_anonymous_args = 0
 311              	.LVL9:
 312 0000 08B5     		push	{r3, lr}
 313              	.LCFI3:
 314              		.cfi_def_cfa_offset 8
 315              		.cfi_offset 3, -8
 316              		.cfi_offset 14, -4
 317              	.LVL10:
 340:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   HAL_StatusTypeDef status  = HAL_OK;
 341:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   assert_param(IS_TICKFREQ(Freq));
 342:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 343:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   if (uwTickFreq != Freq)
 318              		.loc 1 343 0
 319 0002 064B     		ldr	r3, .L32
 320 0004 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 321 0006 8342     		cmp	r3, r0
 322 0008 06D0     		beq	.L30
 344:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   {
 345:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****     uwTickFreq = Freq;
 323              		.loc 1 345 0
 324 000a 044B     		ldr	r3, .L32
 325 000c 1870     		strb	r0, [r3]
 346:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 347:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****     /* Apply the new tick Freq  */
 348:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****     status = HAL_InitTick(uwTickPrio);
 326              		.loc 1 348 0
 327 000e 044B     		ldr	r3, .L32+4
 328 0010 1868     		ldr	r0, [r3]
 329              	.LVL11:
 330 0012 FFF7FEFF 		bl	HAL_InitTick
 331              	.LVL12:
 332              	.L29:
 349:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   }
 350:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 351:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   return status;
 352:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** }
 333              		.loc 1 352 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 13


 334 0016 08BD     		pop	{r3, pc}
 335              	.LVL13:
 336              	.L30:
 340:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   assert_param(IS_TICKFREQ(Freq));
 337              		.loc 1 340 0
 338 0018 0020     		movs	r0, #0
 339              	.LVL14:
 340 001a FCE7     		b	.L29
 341              	.L33:
 342              		.align	2
 343              	.L32:
 344 001c 00000000 		.word	.LANCHOR0
 345 0020 00000000 		.word	.LANCHOR1
 346              		.cfi_endproc
 347              	.LFE74:
 349              		.section	.text.HAL_GetTickFreq,"ax",%progbits
 350              		.align	1
 351              		.global	HAL_GetTickFreq
 352              		.syntax unified
 353              		.thumb
 354              		.thumb_func
 355              		.fpu softvfp
 357              	HAL_GetTickFreq:
 358              	.LFB75:
 353:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 354:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
 355:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @brief Return tick frequency.
 356:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @retval tick period in Hz
 357:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 358:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** HAL_TickFreqTypeDef HAL_GetTickFreq(void)
 359:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** {
 359              		.loc 1 359 0
 360              		.cfi_startproc
 361              		@ args = 0, pretend = 0, frame = 0
 362              		@ frame_needed = 0, uses_anonymous_args = 0
 363              		@ link register save eliminated.
 360:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   return uwTickFreq;
 361:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** }
 364              		.loc 1 361 0
 365 0000 014B     		ldr	r3, .L35
 366 0002 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 367 0004 7047     		bx	lr
 368              	.L36:
 369 0006 00BF     		.align	2
 370              	.L35:
 371 0008 00000000 		.word	.LANCHOR0
 372              		.cfi_endproc
 373              	.LFE75:
 375              		.section	.text.HAL_Delay,"ax",%progbits
 376              		.align	1
 377              		.weak	HAL_Delay
 378              		.syntax unified
 379              		.thumb
 380              		.thumb_func
 381              		.fpu softvfp
 383              	HAL_Delay:
 384              	.LFB76:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 14


 362:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 363:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
 364:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @brief This function provides minimum delay (in milliseconds) based
 365:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *        on variable incremented.
 366:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @note In the default implementation , SysTick timer is the source of time base.
 367:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       It is used to generate interrupts at regular time intervals where uwTick
 368:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       is incremented.
 369:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @note This function is declared as __weak to be overwritten in case of other
 370:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       implementations in user file.
 371:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @param Delay specifies the delay time length, in milliseconds.
 372:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @retval None
 373:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 374:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** __weak void HAL_Delay(uint32_t Delay)
 375:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** {
 385              		.loc 1 375 0
 386              		.cfi_startproc
 387              		@ args = 0, pretend = 0, frame = 0
 388              		@ frame_needed = 0, uses_anonymous_args = 0
 389              	.LVL15:
 390 0000 38B5     		push	{r3, r4, r5, lr}
 391              	.LCFI4:
 392              		.cfi_def_cfa_offset 16
 393              		.cfi_offset 3, -16
 394              		.cfi_offset 4, -12
 395              		.cfi_offset 5, -8
 396              		.cfi_offset 14, -4
 397 0002 0446     		mov	r4, r0
 376:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   uint32_t tickstart = HAL_GetTick();
 398              		.loc 1 376 0
 399 0004 FFF7FEFF 		bl	HAL_GetTick
 400              	.LVL16:
 401 0008 0546     		mov	r5, r0
 402              	.LVL17:
 377:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   uint32_t wait = Delay;
 378:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 379:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   /* Add a freq to guarantee minimum wait */
 380:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   if (wait < HAL_MAX_DELAY)
 403              		.loc 1 380 0
 404 000a B4F1FF3F 		cmp	r4, #-1
 405 000e 02D0     		beq	.L39
 381:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   {
 382:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****     wait += (uint32_t)(uwTickFreq);
 406              		.loc 1 382 0
 407 0010 044B     		ldr	r3, .L41
 408 0012 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 409 0014 1C44     		add	r4, r4, r3
 410              	.LVL18:
 411              	.L39:
 383:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   }
 384:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 385:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   while ((HAL_GetTick() - tickstart) < wait)
 412              		.loc 1 385 0 discriminator 1
 413 0016 FFF7FEFF 		bl	HAL_GetTick
 414              	.LVL19:
 415 001a 401B     		subs	r0, r0, r5
 416 001c A042     		cmp	r0, r4
 417 001e FAD3     		bcc	.L39
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 15


 386:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   {
 387:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   }
 388:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** }
 418              		.loc 1 388 0
 419 0020 38BD     		pop	{r3, r4, r5, pc}
 420              	.LVL20:
 421              	.L42:
 422 0022 00BF     		.align	2
 423              	.L41:
 424 0024 00000000 		.word	.LANCHOR0
 425              		.cfi_endproc
 426              	.LFE76:
 428              		.section	.text.HAL_SuspendTick,"ax",%progbits
 429              		.align	1
 430              		.weak	HAL_SuspendTick
 431              		.syntax unified
 432              		.thumb
 433              		.thumb_func
 434              		.fpu softvfp
 436              	HAL_SuspendTick:
 437              	.LFB77:
 389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 390:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
 391:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @brief Suspend Tick increment.
 392:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @note In the default implementation , SysTick timer is the source of time base. It is
 393:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       used to generate interrupts at regular time intervals. Once HAL_SuspendTick()
 394:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       is called, the SysTick interrupt will be disabled and so Tick increment
 395:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       is suspended.
 396:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @note This function is declared as __weak to be overwritten in case of other
 397:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       implementations in user file.
 398:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @retval None
 399:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 400:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** __weak void HAL_SuspendTick(void)
 401:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** {
 438              		.loc 1 401 0
 439              		.cfi_startproc
 440              		@ args = 0, pretend = 0, frame = 0
 441              		@ frame_needed = 0, uses_anonymous_args = 0
 442              		@ link register save eliminated.
 402:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   /* Disable SysTick Interrupt */
 403:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   CLEAR_BIT(SysTick->CTRL, SysTick_CTRL_TICKINT_Msk);
 443              		.loc 1 403 0
 444 0000 024A     		ldr	r2, .L44
 445 0002 1368     		ldr	r3, [r2]
 446 0004 23F00203 		bic	r3, r3, #2
 447 0008 1360     		str	r3, [r2]
 404:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** }
 448              		.loc 1 404 0
 449 000a 7047     		bx	lr
 450              	.L45:
 451              		.align	2
 452              	.L44:
 453 000c 10E000E0 		.word	-536813552
 454              		.cfi_endproc
 455              	.LFE77:
 457              		.section	.text.HAL_ResumeTick,"ax",%progbits
 458              		.align	1
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 16


 459              		.weak	HAL_ResumeTick
 460              		.syntax unified
 461              		.thumb
 462              		.thumb_func
 463              		.fpu softvfp
 465              	HAL_ResumeTick:
 466              	.LFB78:
 405:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 406:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
 407:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @brief Resume Tick increment.
 408:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @note In the default implementation , SysTick timer is the source of time base. It is
 409:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       used to generate interrupts at regular time intervals. Once HAL_ResumeTick()
 410:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       is called, the SysTick interrupt will be enabled and so Tick increment
 411:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       is resumed.
 412:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @note This function is declared as __weak to be overwritten in case of other
 413:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       implementations in user file.
 414:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @retval None
 415:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 416:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** __weak void HAL_ResumeTick(void)
 417:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** {
 467              		.loc 1 417 0
 468              		.cfi_startproc
 469              		@ args = 0, pretend = 0, frame = 0
 470              		@ frame_needed = 0, uses_anonymous_args = 0
 471              		@ link register save eliminated.
 418:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   /* Enable SysTick Interrupt */
 419:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   SET_BIT(SysTick->CTRL, SysTick_CTRL_TICKINT_Msk);
 472              		.loc 1 419 0
 473 0000 024A     		ldr	r2, .L47
 474 0002 1368     		ldr	r3, [r2]
 475 0004 43F00203 		orr	r3, r3, #2
 476 0008 1360     		str	r3, [r2]
 420:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** }
 477              		.loc 1 420 0
 478 000a 7047     		bx	lr
 479              	.L48:
 480              		.align	2
 481              	.L47:
 482 000c 10E000E0 		.word	-536813552
 483              		.cfi_endproc
 484              	.LFE78:
 486              		.section	.text.HAL_GetHalVersion,"ax",%progbits
 487              		.align	1
 488              		.global	HAL_GetHalVersion
 489              		.syntax unified
 490              		.thumb
 491              		.thumb_func
 492              		.fpu softvfp
 494              	HAL_GetHalVersion:
 495              	.LFB79:
 421:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 422:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
 423:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @brief  Returns the HAL revision
 424:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @retval version 0xXYZR (8bits for each decimal, R for RC)
 425:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 426:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** uint32_t HAL_GetHalVersion(void)
 427:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** {
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 17


 496              		.loc 1 427 0
 497              		.cfi_startproc
 498              		@ args = 0, pretend = 0, frame = 0
 499              		@ frame_needed = 0, uses_anonymous_args = 0
 500              		@ link register save eliminated.
 428:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   return __STM32F1xx_HAL_VERSION;
 429:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** }
 501              		.loc 1 429 0
 502 0000 0048     		ldr	r0, .L50
 503 0002 7047     		bx	lr
 504              	.L51:
 505              		.align	2
 506              	.L50:
 507 0004 00020101 		.word	16843264
 508              		.cfi_endproc
 509              	.LFE79:
 511              		.section	.text.HAL_GetREVID,"ax",%progbits
 512              		.align	1
 513              		.global	HAL_GetREVID
 514              		.syntax unified
 515              		.thumb
 516              		.thumb_func
 517              		.fpu softvfp
 519              	HAL_GetREVID:
 520              	.LFB80:
 430:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 431:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
 432:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @brief Returns the device revision identifier.
 433:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * Note: On devices STM32F10xx8 and STM32F10xxB,
 434:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *                  STM32F101xC/D/E and STM32F103xC/D/E,
 435:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *                  STM32F101xF/G and STM32F103xF/G
 436:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *                  STM32F10xx4 and STM32F10xx6
 437:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       Debug registers DBGMCU_IDCODE and DBGMCU_CR are accessible only in
 438:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       debug mode (not accessible by the user software in normal mode).
 439:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       Refer to errata sheet of these devices for more details.
 440:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @retval Device revision identifier
 441:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 442:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** uint32_t HAL_GetREVID(void)
 443:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** {
 521              		.loc 1 443 0
 522              		.cfi_startproc
 523              		@ args = 0, pretend = 0, frame = 0
 524              		@ frame_needed = 0, uses_anonymous_args = 0
 525              		@ link register save eliminated.
 444:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   return ((DBGMCU->IDCODE) >> DBGMCU_IDCODE_REV_ID_Pos);
 526              		.loc 1 444 0
 527 0000 014B     		ldr	r3, .L53
 528 0002 1868     		ldr	r0, [r3]
 445:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** }
 529              		.loc 1 445 0
 530 0004 000C     		lsrs	r0, r0, #16
 531 0006 7047     		bx	lr
 532              	.L54:
 533              		.align	2
 534              	.L53:
 535 0008 002004E0 		.word	-536600576
 536              		.cfi_endproc
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 18


 537              	.LFE80:
 539              		.section	.text.HAL_GetDEVID,"ax",%progbits
 540              		.align	1
 541              		.global	HAL_GetDEVID
 542              		.syntax unified
 543              		.thumb
 544              		.thumb_func
 545              		.fpu softvfp
 547              	HAL_GetDEVID:
 548              	.LFB81:
 446:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 447:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
 448:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @brief  Returns the device identifier.
 449:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * Note: On devices STM32F10xx8 and STM32F10xxB,
 450:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *                  STM32F101xC/D/E and STM32F103xC/D/E,
 451:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *                  STM32F101xF/G and STM32F103xF/G
 452:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *                  STM32F10xx4 and STM32F10xx6
 453:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       Debug registers DBGMCU_IDCODE and DBGMCU_CR are accessible only in
 454:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       debug mode (not accessible by the user software in normal mode).
 455:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       Refer to errata sheet of these devices for more details.
 456:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @retval Device identifier
 457:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 458:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** uint32_t HAL_GetDEVID(void)
 459:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** {
 549              		.loc 1 459 0
 550              		.cfi_startproc
 551              		@ args = 0, pretend = 0, frame = 0
 552              		@ frame_needed = 0, uses_anonymous_args = 0
 553              		@ link register save eliminated.
 460:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   return ((DBGMCU->IDCODE) & IDCODE_DEVID_MASK);
 554              		.loc 1 460 0
 555 0000 024B     		ldr	r3, .L56
 556 0002 1868     		ldr	r0, [r3]
 461:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** }
 557              		.loc 1 461 0
 558 0004 C0F30B00 		ubfx	r0, r0, #0, #12
 559 0008 7047     		bx	lr
 560              	.L57:
 561 000a 00BF     		.align	2
 562              	.L56:
 563 000c 002004E0 		.word	-536600576
 564              		.cfi_endproc
 565              	.LFE81:
 567              		.section	.text.HAL_DBGMCU_EnableDBGSleepMode,"ax",%progbits
 568              		.align	1
 569              		.global	HAL_DBGMCU_EnableDBGSleepMode
 570              		.syntax unified
 571              		.thumb
 572              		.thumb_func
 573              		.fpu softvfp
 575              	HAL_DBGMCU_EnableDBGSleepMode:
 576              	.LFB82:
 462:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 463:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
 464:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @brief  Enable the Debug Module during SLEEP mode
 465:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @retval None
 466:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 19


 467:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** void HAL_DBGMCU_EnableDBGSleepMode(void)
 468:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** {
 577              		.loc 1 468 0
 578              		.cfi_startproc
 579              		@ args = 0, pretend = 0, frame = 0
 580              		@ frame_needed = 0, uses_anonymous_args = 0
 581              		@ link register save eliminated.
 469:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   SET_BIT(DBGMCU->CR, DBGMCU_CR_DBG_SLEEP);
 582              		.loc 1 469 0
 583 0000 024A     		ldr	r2, .L59
 584 0002 5368     		ldr	r3, [r2, #4]
 585 0004 43F00103 		orr	r3, r3, #1
 586 0008 5360     		str	r3, [r2, #4]
 470:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** }
 587              		.loc 1 470 0
 588 000a 7047     		bx	lr
 589              	.L60:
 590              		.align	2
 591              	.L59:
 592 000c 002004E0 		.word	-536600576
 593              		.cfi_endproc
 594              	.LFE82:
 596              		.section	.text.HAL_DBGMCU_DisableDBGSleepMode,"ax",%progbits
 597              		.align	1
 598              		.global	HAL_DBGMCU_DisableDBGSleepMode
 599              		.syntax unified
 600              		.thumb
 601              		.thumb_func
 602              		.fpu softvfp
 604              	HAL_DBGMCU_DisableDBGSleepMode:
 605              	.LFB83:
 471:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 472:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
 473:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @brief  Disable the Debug Module during SLEEP mode
 474:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * Note: On devices STM32F10xx8 and STM32F10xxB,
 475:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *                  STM32F101xC/D/E and STM32F103xC/D/E,
 476:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *                  STM32F101xF/G and STM32F103xF/G
 477:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *                  STM32F10xx4 and STM32F10xx6
 478:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       Debug registers DBGMCU_IDCODE and DBGMCU_CR are accessible only in
 479:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       debug mode (not accessible by the user software in normal mode).
 480:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       Refer to errata sheet of these devices for more details.
 481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @retval None
 482:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 483:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** void HAL_DBGMCU_DisableDBGSleepMode(void)
 484:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** {
 606              		.loc 1 484 0
 607              		.cfi_startproc
 608              		@ args = 0, pretend = 0, frame = 0
 609              		@ frame_needed = 0, uses_anonymous_args = 0
 610              		@ link register save eliminated.
 485:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   CLEAR_BIT(DBGMCU->CR, DBGMCU_CR_DBG_SLEEP);
 611              		.loc 1 485 0
 612 0000 024A     		ldr	r2, .L62
 613 0002 5368     		ldr	r3, [r2, #4]
 614 0004 23F00103 		bic	r3, r3, #1
 615 0008 5360     		str	r3, [r2, #4]
 486:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** }
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 20


 616              		.loc 1 486 0
 617 000a 7047     		bx	lr
 618              	.L63:
 619              		.align	2
 620              	.L62:
 621 000c 002004E0 		.word	-536600576
 622              		.cfi_endproc
 623              	.LFE83:
 625              		.section	.text.HAL_DBGMCU_EnableDBGStopMode,"ax",%progbits
 626              		.align	1
 627              		.global	HAL_DBGMCU_EnableDBGStopMode
 628              		.syntax unified
 629              		.thumb
 630              		.thumb_func
 631              		.fpu softvfp
 633              	HAL_DBGMCU_EnableDBGStopMode:
 634              	.LFB84:
 487:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 488:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
 489:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @brief  Enable the Debug Module during STOP mode
 490:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * Note: On devices STM32F10xx8 and STM32F10xxB,
 491:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *                  STM32F101xC/D/E and STM32F103xC/D/E,
 492:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *                  STM32F101xF/G and STM32F103xF/G
 493:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *                  STM32F10xx4 and STM32F10xx6
 494:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       Debug registers DBGMCU_IDCODE and DBGMCU_CR are accessible only in
 495:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       debug mode (not accessible by the user software in normal mode).
 496:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       Refer to errata sheet of these devices for more details.
 497:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * Note: On all STM32F1 devices:
 498:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       If the system tick timer interrupt is enabled during the Stop mode
 499:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       debug (DBG_STOP bit set in the DBGMCU_CR register ), it will wakeup
 500:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       the system from Stop mode.
 501:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       Workaround: To debug the Stop mode, disable the system tick timer
 502:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       interrupt.
 503:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       Refer to errata sheet of these devices for more details.
 504:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * Note: On all STM32F1 devices:
 505:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       If the system tick timer interrupt is enabled during the Stop mode
 506:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       debug (DBG_STOP bit set in the DBGMCU_CR register ), it will wakeup
 507:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       the system from Stop mode.
 508:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       Workaround: To debug the Stop mode, disable the system tick timer
 509:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       interrupt.
 510:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       Refer to errata sheet of these devices for more details.
 511:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @retval None
 512:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 513:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** void HAL_DBGMCU_EnableDBGStopMode(void)
 514:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** {
 635              		.loc 1 514 0
 636              		.cfi_startproc
 637              		@ args = 0, pretend = 0, frame = 0
 638              		@ frame_needed = 0, uses_anonymous_args = 0
 639              		@ link register save eliminated.
 515:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   SET_BIT(DBGMCU->CR, DBGMCU_CR_DBG_STOP);
 640              		.loc 1 515 0
 641 0000 024A     		ldr	r2, .L65
 642 0002 5368     		ldr	r3, [r2, #4]
 643 0004 43F00203 		orr	r3, r3, #2
 644 0008 5360     		str	r3, [r2, #4]
 516:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** }
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 21


 645              		.loc 1 516 0
 646 000a 7047     		bx	lr
 647              	.L66:
 648              		.align	2
 649              	.L65:
 650 000c 002004E0 		.word	-536600576
 651              		.cfi_endproc
 652              	.LFE84:
 654              		.section	.text.HAL_DBGMCU_DisableDBGStopMode,"ax",%progbits
 655              		.align	1
 656              		.global	HAL_DBGMCU_DisableDBGStopMode
 657              		.syntax unified
 658              		.thumb
 659              		.thumb_func
 660              		.fpu softvfp
 662              	HAL_DBGMCU_DisableDBGStopMode:
 663              	.LFB85:
 517:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 518:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
 519:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @brief  Disable the Debug Module during STOP mode
 520:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * Note: On devices STM32F10xx8 and STM32F10xxB,
 521:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *                  STM32F101xC/D/E and STM32F103xC/D/E,
 522:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *                  STM32F101xF/G and STM32F103xF/G
 523:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *                  STM32F10xx4 and STM32F10xx6
 524:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       Debug registers DBGMCU_IDCODE and DBGMCU_CR are accessible only in
 525:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       debug mode (not accessible by the user software in normal mode).
 526:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       Refer to errata sheet of these devices for more details.
 527:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @retval None
 528:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 529:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** void HAL_DBGMCU_DisableDBGStopMode(void)
 530:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** {
 664              		.loc 1 530 0
 665              		.cfi_startproc
 666              		@ args = 0, pretend = 0, frame = 0
 667              		@ frame_needed = 0, uses_anonymous_args = 0
 668              		@ link register save eliminated.
 531:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   CLEAR_BIT(DBGMCU->CR, DBGMCU_CR_DBG_STOP);
 669              		.loc 1 531 0
 670 0000 024A     		ldr	r2, .L68
 671 0002 5368     		ldr	r3, [r2, #4]
 672 0004 23F00203 		bic	r3, r3, #2
 673 0008 5360     		str	r3, [r2, #4]
 532:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** }
 674              		.loc 1 532 0
 675 000a 7047     		bx	lr
 676              	.L69:
 677              		.align	2
 678              	.L68:
 679 000c 002004E0 		.word	-536600576
 680              		.cfi_endproc
 681              	.LFE85:
 683              		.section	.text.HAL_DBGMCU_EnableDBGStandbyMode,"ax",%progbits
 684              		.align	1
 685              		.global	HAL_DBGMCU_EnableDBGStandbyMode
 686              		.syntax unified
 687              		.thumb
 688              		.thumb_func
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 22


 689              		.fpu softvfp
 691              	HAL_DBGMCU_EnableDBGStandbyMode:
 692              	.LFB86:
 533:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 534:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
 535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @brief  Enable the Debug Module during STANDBY mode
 536:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * Note: On devices STM32F10xx8 and STM32F10xxB,
 537:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *                  STM32F101xC/D/E and STM32F103xC/D/E,
 538:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *                  STM32F101xF/G and STM32F103xF/G
 539:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *                  STM32F10xx4 and STM32F10xx6
 540:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       Debug registers DBGMCU_IDCODE and DBGMCU_CR are accessible only in
 541:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       debug mode (not accessible by the user software in normal mode).
 542:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       Refer to errata sheet of these devices for more details.
 543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @retval None
 544:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 545:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** void HAL_DBGMCU_EnableDBGStandbyMode(void)
 546:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** {
 693              		.loc 1 546 0
 694              		.cfi_startproc
 695              		@ args = 0, pretend = 0, frame = 0
 696              		@ frame_needed = 0, uses_anonymous_args = 0
 697              		@ link register save eliminated.
 547:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   SET_BIT(DBGMCU->CR, DBGMCU_CR_DBG_STANDBY);
 698              		.loc 1 547 0
 699 0000 024A     		ldr	r2, .L71
 700 0002 5368     		ldr	r3, [r2, #4]
 701 0004 43F00403 		orr	r3, r3, #4
 702 0008 5360     		str	r3, [r2, #4]
 548:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** }
 703              		.loc 1 548 0
 704 000a 7047     		bx	lr
 705              	.L72:
 706              		.align	2
 707              	.L71:
 708 000c 002004E0 		.word	-536600576
 709              		.cfi_endproc
 710              	.LFE86:
 712              		.section	.text.HAL_DBGMCU_DisableDBGStandbyMode,"ax",%progbits
 713              		.align	1
 714              		.global	HAL_DBGMCU_DisableDBGStandbyMode
 715              		.syntax unified
 716              		.thumb
 717              		.thumb_func
 718              		.fpu softvfp
 720              	HAL_DBGMCU_DisableDBGStandbyMode:
 721              	.LFB87:
 549:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 550:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
 551:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @brief  Disable the Debug Module during STANDBY mode
 552:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * Note: On devices STM32F10xx8 and STM32F10xxB,
 553:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *                  STM32F101xC/D/E and STM32F103xC/D/E,
 554:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *                  STM32F101xF/G and STM32F103xF/G
 555:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *                  STM32F10xx4 and STM32F10xx6
 556:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       Debug registers DBGMCU_IDCODE and DBGMCU_CR are accessible only in
 557:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       debug mode (not accessible by the user software in normal mode).
 558:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   *       Refer to errata sheet of these devices for more details.
 559:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @retval None
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 23


 560:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 561:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** void HAL_DBGMCU_DisableDBGStandbyMode(void)
 562:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** {
 722              		.loc 1 562 0
 723              		.cfi_startproc
 724              		@ args = 0, pretend = 0, frame = 0
 725              		@ frame_needed = 0, uses_anonymous_args = 0
 726              		@ link register save eliminated.
 563:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   CLEAR_BIT(DBGMCU->CR, DBGMCU_CR_DBG_STANDBY);
 727              		.loc 1 563 0
 728 0000 024A     		ldr	r2, .L74
 729 0002 5368     		ldr	r3, [r2, #4]
 730 0004 23F00403 		bic	r3, r3, #4
 731 0008 5360     		str	r3, [r2, #4]
 564:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** }
 732              		.loc 1 564 0
 733 000a 7047     		bx	lr
 734              	.L75:
 735              		.align	2
 736              	.L74:
 737 000c 002004E0 		.word	-536600576
 738              		.cfi_endproc
 739              	.LFE87:
 741              		.section	.text.HAL_GetUID,"ax",%progbits
 742              		.align	1
 743              		.global	HAL_GetUID
 744              		.syntax unified
 745              		.thumb
 746              		.thumb_func
 747              		.fpu softvfp
 749              	HAL_GetUID:
 750              	.LFB88:
 565:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** 
 566:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** /**
 567:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @brief Return the unique device identifier (UID based on 96 bits)
 568:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @param UID pointer to 3 words array.
 569:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   * @retval Device identifier
 570:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   */
 571:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** void HAL_GetUID(uint32_t *UID)
 572:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** {
 751              		.loc 1 572 0
 752              		.cfi_startproc
 753              		@ args = 0, pretend = 0, frame = 0
 754              		@ frame_needed = 0, uses_anonymous_args = 0
 755              		@ link register save eliminated.
 756              	.LVL21:
 573:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   UID[0] = (uint32_t)(READ_REG(*((uint32_t *)UID_BASE)));
 757              		.loc 1 573 0
 758 0000 044B     		ldr	r3, .L77
 759 0002 1B68     		ldr	r3, [r3]
 760 0004 0360     		str	r3, [r0]
 574:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   UID[1] = (uint32_t)(READ_REG(*((uint32_t *)(UID_BASE + 4U))));
 761              		.loc 1 574 0
 762 0006 044B     		ldr	r3, .L77+4
 763 0008 1B68     		ldr	r3, [r3]
 764 000a 4360     		str	r3, [r0, #4]
 575:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c ****   UID[2] = (uint32_t)(READ_REG(*((uint32_t *)(UID_BASE + 8U))));
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 24


 765              		.loc 1 575 0
 766 000c 034B     		ldr	r3, .L77+8
 767 000e 1B68     		ldr	r3, [r3]
 768 0010 8360     		str	r3, [r0, #8]
 576:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c **** }
 769              		.loc 1 576 0
 770 0012 7047     		bx	lr
 771              	.L78:
 772              		.align	2
 773              	.L77:
 774 0014 E8F7FF1F 		.word	536868840
 775 0018 ECF7FF1F 		.word	536868844
 776 001c F0F7FF1F 		.word	536868848
 777              		.cfi_endproc
 778              	.LFE88:
 780              		.global	uwTickFreq
 781              		.global	uwTickPrio
 782              		.comm	uwTick,4,4
 783              		.section	.data.uwTickFreq,"aw",%progbits
 784              		.set	.LANCHOR0,. + 0
 787              	uwTickFreq:
 788 0000 01       		.byte	1
 789              		.section	.data.uwTickPrio,"aw",%progbits
 790              		.align	2
 791              		.set	.LANCHOR1,. + 0
 794              	uwTickPrio:
 795 0000 10000000 		.word	16
 796              		.text
 797              	.Letext0:
 798              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 799              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 800              		.file 4 "Drivers/CMSIS/Include/core_cm3.h"
 801              		.file 5 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/system_stm32f1xx.h"
 802              		.file 6 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
 803              		.file 7 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 804              		.file 8 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 805              		.file 9 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\lib\\gcc\\arm-none-eab
 806              		.file 10 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\includ
 807              		.file 11 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"
 808              		.file 12 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"
 809              		.file 13 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_cortex.h"
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 25


DEFINED SYMBOLS
                            *ABS*:00000000 stm32f1xx_hal.c
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:16     .text.HAL_MspInit:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:23     .text.HAL_MspInit:00000000 HAL_MspInit
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:37     .text.HAL_MspDeInit:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:44     .text.HAL_MspDeInit:00000000 HAL_MspDeInit
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:57     .text.HAL_DeInit:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:64     .text.HAL_DeInit:00000000 HAL_DeInit
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:95     .text.HAL_DeInit:0000001c $d
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:100    .text.HAL_InitTick:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:107    .text.HAL_InitTick:00000000 HAL_InitTick
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:161    .text.HAL_InitTick:00000040 $d
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:168    .text.HAL_Init:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:175    .text.HAL_Init:00000000 HAL_Init
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:208    .text.HAL_Init:00000020 $d
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:213    .text.HAL_IncTick:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:220    .text.HAL_IncTick:00000000 HAL_IncTick
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:239    .text.HAL_IncTick:00000010 $d
                            *COM*:00000004 uwTick
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:245    .text.HAL_GetTick:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:252    .text.HAL_GetTick:00000000 HAL_GetTick
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:267    .text.HAL_GetTick:00000008 $d
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:272    .text.HAL_GetTickPrio:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:279    .text.HAL_GetTickPrio:00000000 HAL_GetTickPrio
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:293    .text.HAL_GetTickPrio:00000008 $d
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:298    .text.HAL_SetTickFreq:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:305    .text.HAL_SetTickFreq:00000000 HAL_SetTickFreq
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:344    .text.HAL_SetTickFreq:0000001c $d
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:350    .text.HAL_GetTickFreq:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:357    .text.HAL_GetTickFreq:00000000 HAL_GetTickFreq
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:371    .text.HAL_GetTickFreq:00000008 $d
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:376    .text.HAL_Delay:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:383    .text.HAL_Delay:00000000 HAL_Delay
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:424    .text.HAL_Delay:00000024 $d
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:429    .text.HAL_SuspendTick:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:436    .text.HAL_SuspendTick:00000000 HAL_SuspendTick
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:453    .text.HAL_SuspendTick:0000000c $d
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:458    .text.HAL_ResumeTick:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:465    .text.HAL_ResumeTick:00000000 HAL_ResumeTick
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:482    .text.HAL_ResumeTick:0000000c $d
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:487    .text.HAL_GetHalVersion:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:494    .text.HAL_GetHalVersion:00000000 HAL_GetHalVersion
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:507    .text.HAL_GetHalVersion:00000004 $d
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:512    .text.HAL_GetREVID:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:519    .text.HAL_GetREVID:00000000 HAL_GetREVID
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:535    .text.HAL_GetREVID:00000008 $d
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:540    .text.HAL_GetDEVID:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:547    .text.HAL_GetDEVID:00000000 HAL_GetDEVID
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:563    .text.HAL_GetDEVID:0000000c $d
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:568    .text.HAL_DBGMCU_EnableDBGSleepMode:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:575    .text.HAL_DBGMCU_EnableDBGSleepMode:00000000 HAL_DBGMCU_EnableDBGSleepMode
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:592    .text.HAL_DBGMCU_EnableDBGSleepMode:0000000c $d
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:597    .text.HAL_DBGMCU_DisableDBGSleepMode:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:604    .text.HAL_DBGMCU_DisableDBGSleepMode:00000000 HAL_DBGMCU_DisableDBGSleepMode
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:621    .text.HAL_DBGMCU_DisableDBGSleepMode:0000000c $d
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:626    .text.HAL_DBGMCU_EnableDBGStopMode:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:633    .text.HAL_DBGMCU_EnableDBGStopMode:00000000 HAL_DBGMCU_EnableDBGStopMode
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s 			page 26


C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:650    .text.HAL_DBGMCU_EnableDBGStopMode:0000000c $d
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:655    .text.HAL_DBGMCU_DisableDBGStopMode:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:662    .text.HAL_DBGMCU_DisableDBGStopMode:00000000 HAL_DBGMCU_DisableDBGStopMode
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:679    .text.HAL_DBGMCU_DisableDBGStopMode:0000000c $d
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:684    .text.HAL_DBGMCU_EnableDBGStandbyMode:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:691    .text.HAL_DBGMCU_EnableDBGStandbyMode:00000000 HAL_DBGMCU_EnableDBGStandbyMode
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:708    .text.HAL_DBGMCU_EnableDBGStandbyMode:0000000c $d
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:713    .text.HAL_DBGMCU_DisableDBGStandbyMode:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:720    .text.HAL_DBGMCU_DisableDBGStandbyMode:00000000 HAL_DBGMCU_DisableDBGStandbyMode
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:737    .text.HAL_DBGMCU_DisableDBGStandbyMode:0000000c $d
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:742    .text.HAL_GetUID:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:749    .text.HAL_GetUID:00000000 HAL_GetUID
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:774    .text.HAL_GetUID:00000014 $d
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:787    .data.uwTickFreq:00000000 uwTickFreq
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:794    .data.uwTickPrio:00000000 uwTickPrio
C:\Users\crist\AppData\Local\Temp\cc0VuHXf.s:790    .data.uwTickPrio:00000000 $d

UNDEFINED SYMBOLS
HAL_SYSTICK_Config
HAL_NVIC_SetPriority
SystemCoreClock
HAL_NVIC_SetPriorityGrouping
