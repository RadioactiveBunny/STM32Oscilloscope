ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 1


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
  11              		.file	"stm32f1xx_hal_adc_ex.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.HAL_ADCEx_Calibration_Start,"ax",%progbits
  16              		.align	1
  17              		.global	HAL_ADCEx_Calibration_Start
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu softvfp
  23              	HAL_ADCEx_Calibration_Start:
  24              	.LFB66:
  25              		.file 1 "Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c"
   1:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /**
   2:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   ******************************************************************************
   3:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @file    stm32f1xx_hal_adc_ex.c
   4:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @author  MCD Application Team
   5:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @brief   This file provides firmware functions to manage the following 
   6:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *          functionalities of the Analog to Digital Convertor (ADC)
   7:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *          peripheral:
   8:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *           + Operation functions
   9:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *             ++ Start, stop, get result of conversions of injected
  10:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *                group, using 2 possible modes: polling, interruption.
  11:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *             ++ Multimode feature (available on devices with 2 ADCs or more)
  12:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *             ++ Calibration (ADC automatic self-calibration)
  13:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *           + Control functions
  14:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *             ++ Channels configuration on injected group
  15:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *          Other functions (generic functions) are available in file 
  16:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *          "stm32f1xx_hal_adc.c".
  17:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *
  18:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   @verbatim
  19:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   [..] 
  20:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   (@) Sections "ADC peripheral features" and "How to use this driver" are
  21:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       available in file of generic functions "stm32f1xx_hal_adc.c".
  22:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   [..]
  23:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   @endverbatim
  24:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   ******************************************************************************
  25:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @attention
  26:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *
  27:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
  28:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *
  29:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * Redistribution and use in source and binary forms, with or without modification,
  30:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * are permitted provided that the following conditions are met:
  31:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  32:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *      this list of conditions and the following disclaimer.
  33:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 2


  34:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *      this list of conditions and the following disclaimer in the documentation
  35:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *      and/or other materials provided with the distribution.
  36:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  37:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *      may be used to endorse or promote products derived from this software
  38:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *      without specific prior written permission.
  39:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *
  40:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  41:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  42:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  43:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  44:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  45:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  46:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  47:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  48:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  49:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  50:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *
  51:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   ******************************************************************************  
  52:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   */
  53:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
  54:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /* Includes ------------------------------------------------------------------*/
  55:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** #include "stm32f1xx_hal.h"
  56:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
  57:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /** @addtogroup STM32F1xx_HAL_Driver
  58:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @{
  59:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   */
  60:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
  61:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /** @defgroup ADCEx ADCEx
  62:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @brief ADC Extension HAL module driver
  63:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @{
  64:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   */
  65:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
  66:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** #ifdef HAL_ADC_MODULE_ENABLED
  67:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
  68:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /* Private typedef -----------------------------------------------------------*/
  69:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /* Private define ------------------------------------------------------------*/
  70:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /** @defgroup ADCEx_Private_Constants ADCEx Private Constants
  71:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @{
  72:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   */
  73:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
  74:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Delay for ADC calibration:                                               */
  75:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Hardware prerequisite before starting a calibration: the ADC must have   */
  76:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* been in power-on state for at least two ADC clock cycles.                */
  77:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Unit: ADC clock cycles                                                   */
  78:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   #define ADC_PRECALIBRATION_DELAY_ADCCLOCKCYCLES       2U
  79:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
  80:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Timeout value for ADC calibration                                        */
  81:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Value defined to be higher than worst cases: low clocks freq,            */
  82:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* maximum prescaler.                                                       */
  83:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Ex of profile low frequency : Clock source at 0.1 MHz, ADC clock         */
  84:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* prescaler 4, sampling time 12.5 ADC clock cycles, resolution 12 bits.    */
  85:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Unit: ms                                                                 */
  86:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   #define ADC_CALIBRATION_TIMEOUT          10U
  87:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
  88:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Delay for temperature sensor stabilization time.                         */
  89:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Maximum delay is 10us (refer to device datasheet, parameter tSTART).     */
  90:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Unit: us                                                                 */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 3


  91:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   #define ADC_TEMPSENSOR_DELAY_US         10U
  92:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
  93:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /**
  94:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @}
  95:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   */
  96:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
  97:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /* Private macro -------------------------------------------------------------*/
  98:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /* Private variables ---------------------------------------------------------*/
  99:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /* Private function prototypes -----------------------------------------------*/
 100:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /* Private functions ---------------------------------------------------------*/
 101:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 102:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /** @defgroup ADCEx_Exported_Functions ADCEx Exported Functions
 103:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @{
 104:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   */
 105:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 106:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /** @defgroup ADCEx_Exported_Functions_Group1 Extended Extended IO operation functions
 107:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****  *  @brief    Extended Extended Input and Output operation functions
 108:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****  *
 109:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** @verbatim    
 110:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****  ===============================================================================
 111:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                       ##### IO operation functions #####
 112:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****  ===============================================================================
 113:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     [..]  This section provides functions allowing to:
 114:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       (+) Start conversion of injected group.
 115:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       (+) Stop conversion of injected group.
 116:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       (+) Poll for conversion complete on injected group.
 117:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       (+) Get result of injected channel conversion.
 118:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       (+) Start conversion of injected group and enable interruptions.
 119:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       (+) Stop conversion of injected group and disable interruptions.
 120:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 121:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       (+) Start multimode and enable DMA transfer.
 122:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       (+) Stop multimode and disable ADC DMA transfer.
 123:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       (+) Get result of multimode conversion.
 124:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 125:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       (+) Perform the ADC self-calibration for single or differential ending.
 126:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       (+) Get calibration factors for single or differential ending.
 127:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       (+) Set calibration factors for single or differential ending.
 128:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       
 129:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** @endverbatim
 130:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @{
 131:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   */
 132:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 133:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /**
 134:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @brief  Perform an ADC automatic self-calibration
 135:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         Calibration prerequisite: ADC must be disabled (execute this
 136:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         function before HAL_ADC_Start() or after HAL_ADC_Stop() ).
 137:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         During calibration process, ADC is enabled. ADC is let enabled at
 138:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         the completion of this function.
 139:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @param  hadc: ADC handle
 140:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @retval HAL status
 141:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   */
 142:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** HAL_StatusTypeDef HAL_ADCEx_Calibration_Start(ADC_HandleTypeDef* hadc)
 143:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** {
  26              		.loc 1 143 0
  27              		.cfi_startproc
  28              		@ args = 0, pretend = 0, frame = 8
  29              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 4


  30              	.LVL0:
  31 0000 70B5     		push	{r4, r5, r6, lr}
  32              	.LCFI0:
  33              		.cfi_def_cfa_offset 16
  34              		.cfi_offset 4, -16
  35              		.cfi_offset 5, -12
  36              		.cfi_offset 6, -8
  37              		.cfi_offset 14, -4
  38 0002 82B0     		sub	sp, sp, #8
  39              	.LCFI1:
  40              		.cfi_def_cfa_offset 24
  41              	.LVL1:
 144:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 145:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   uint32_t tickstart;
 146:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   __IO uint32_t wait_loop_index = 0U;
  42              		.loc 1 146 0
  43 0004 0023     		movs	r3, #0
  44 0006 0193     		str	r3, [sp, #4]
 147:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 148:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Check the parameters */
 149:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
 150:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 151:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Process locked */
 152:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   __HAL_LOCK(hadc);
  45              		.loc 1 152 0
  46 0008 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
  47 000c 012B     		cmp	r3, #1
  48 000e 68D0     		beq	.L10
  49 0010 0446     		mov	r4, r0
  50              		.loc 1 152 0 is_stmt 0 discriminator 2
  51 0012 0123     		movs	r3, #1
  52 0014 80F82430 		strb	r3, [r0, #36]
 153:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 154:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* 1. Calibration prerequisite:                                             */
 155:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*    - ADC must be disabled for at least two ADC clock cycles in disable   */
 156:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*      mode before ADC enable                                              */
 157:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Stop potential conversion on going, on regular and injected groups       */
 158:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Disable ADC peripheral */
 159:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   tmp_hal_status = ADC_ConversionStop_Disable(hadc);
  53              		.loc 1 159 0 is_stmt 1 discriminator 2
  54 0018 FFF7FEFF 		bl	ADC_ConversionStop_Disable
  55              	.LVL2:
 160:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 161:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Check if ADC is effectively disabled */
 162:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   if (tmp_hal_status == HAL_OK)
  56              		.loc 1 162 0 discriminator 2
  57 001c 0546     		mov	r5, r0
  58 001e 28B1     		cbz	r0, .L12
  59              	.LVL3:
  60              	.L3:
 163:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
 164:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Set ADC state */
 165:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     ADC_STATE_CLR_SET(hadc->State,
 166:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                       HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 167:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                       HAL_ADC_STATE_BUSY_INTERNAL);
 168:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 169:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Hardware prerequisite: delay before starting the calibration.          */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 5


 170:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /*  - Computation of CPU clock cycles corresponding to ADC clock cycles.  */
 171:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /*  - Wait for the expected ADC clock cycles delay */
 172:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     wait_loop_index = ((SystemCoreClock
 173:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                         / HAL_RCCEx_GetPeriphCLKFreq(RCC_PERIPHCLK_ADC))
 174:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                        * ADC_PRECALIBRATION_DELAY_ADCCLOCKCYCLES        );
 175:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 176:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     while(wait_loop_index != 0U)
 177:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 178:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       wait_loop_index--;
 179:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 180:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 181:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* 2. Enable the ADC peripheral */
 182:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     ADC_Enable(hadc);
 183:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 184:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* 3. Resets ADC calibration registers */  
 185:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     SET_BIT(hadc->Instance->CR2, ADC_CR2_RSTCAL);
 186:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 187:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     tickstart = HAL_GetTick();  
 188:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 189:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Wait for calibration reset completion */
 190:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     while(HAL_IS_BIT_SET(hadc->Instance->CR2, ADC_CR2_RSTCAL))
 191:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 192:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       if((HAL_GetTick() - tickstart) > ADC_CALIBRATION_TIMEOUT)
 193:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       {
 194:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         /* Update ADC state machine to error */
 195:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         ADC_STATE_CLR_SET(hadc->State,
 196:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                           HAL_ADC_STATE_BUSY_INTERNAL,
 197:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                           HAL_ADC_STATE_ERROR_INTERNAL);
 198:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         
 199:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         /* Process unlocked */
 200:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         __HAL_UNLOCK(hadc);
 201:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         
 202:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         return HAL_ERROR;
 203:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       }
 204:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 205:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 206:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 207:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* 4. Start ADC calibration */
 208:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     SET_BIT(hadc->Instance->CR2, ADC_CR2_CAL);
 209:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 210:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     tickstart = HAL_GetTick();  
 211:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 212:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Wait for calibration completion */
 213:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     while(HAL_IS_BIT_SET(hadc->Instance->CR2, ADC_CR2_CAL))
 214:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 215:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       if((HAL_GetTick() - tickstart) > ADC_CALIBRATION_TIMEOUT)
 216:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       {
 217:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         /* Update ADC state machine to error */
 218:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         ADC_STATE_CLR_SET(hadc->State,
 219:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                           HAL_ADC_STATE_BUSY_INTERNAL,
 220:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                           HAL_ADC_STATE_ERROR_INTERNAL);
 221:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         
 222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         /* Process unlocked */
 223:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         __HAL_UNLOCK(hadc);
 224:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         
 225:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         return HAL_ERROR;
 226:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       }
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 6


 227:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 228:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 229:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Set ADC state */
 230:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     ADC_STATE_CLR_SET(hadc->State,
 231:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                       HAL_ADC_STATE_BUSY_INTERNAL,
 232:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                       HAL_ADC_STATE_READY);
 233:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
 234:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 235:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Process unlocked */
 236:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   __HAL_UNLOCK(hadc);
  61              		.loc 1 236 0
  62 0020 0023     		movs	r3, #0
  63 0022 84F82430 		strb	r3, [r4, #36]
  64              	.LVL4:
  65              	.L2:
 237:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 238:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Return function status */
 239:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   return tmp_hal_status;
 240:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** }
  66              		.loc 1 240 0
  67 0026 2846     		mov	r0, r5
  68 0028 02B0     		add	sp, sp, #8
  69              	.LCFI2:
  70              		.cfi_remember_state
  71              		.cfi_def_cfa_offset 16
  72              		@ sp needed
  73 002a 70BD     		pop	{r4, r5, r6, pc}
  74              	.LVL5:
  75              	.L12:
  76              	.LCFI3:
  77              		.cfi_restore_state
 165:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                       HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
  78              		.loc 1 165 0
  79 002c A36A     		ldr	r3, [r4, #40]
  80 002e 23F48853 		bic	r3, r3, #4352
  81 0032 23F00203 		bic	r3, r3, #2
  82 0036 43F00203 		orr	r3, r3, #2
  83 003a A362     		str	r3, [r4, #40]
 173:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                        * ADC_PRECALIBRATION_DELAY_ADCCLOCKCYCLES        );
  84              		.loc 1 173 0
  85 003c 2A4B     		ldr	r3, .L15
  86 003e 1E68     		ldr	r6, [r3]
  87 0040 0220     		movs	r0, #2
  88              	.LVL6:
  89 0042 FFF7FEFF 		bl	HAL_RCCEx_GetPeriphCLKFreq
  90              	.LVL7:
  91 0046 B6FBF0F0 		udiv	r0, r6, r0
 174:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
  92              		.loc 1 174 0
  93 004a 4000     		lsls	r0, r0, #1
 172:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                         / HAL_RCCEx_GetPeriphCLKFreq(RCC_PERIPHCLK_ADC))
  94              		.loc 1 172 0
  95 004c 0190     		str	r0, [sp, #4]
 176:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
  96              		.loc 1 176 0
  97 004e 02E0     		b	.L4
  98              	.L5:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 7


 178:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
  99              		.loc 1 178 0
 100 0050 019B     		ldr	r3, [sp, #4]
 101 0052 013B     		subs	r3, r3, #1
 102 0054 0193     		str	r3, [sp, #4]
 103              	.L4:
 176:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 104              		.loc 1 176 0
 105 0056 019B     		ldr	r3, [sp, #4]
 106 0058 002B     		cmp	r3, #0
 107 005a F9D1     		bne	.L5
 182:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 108              		.loc 1 182 0
 109 005c 2046     		mov	r0, r4
 110 005e FFF7FEFF 		bl	ADC_Enable
 111              	.LVL8:
 185:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 112              		.loc 1 185 0
 113 0062 2268     		ldr	r2, [r4]
 114 0064 9368     		ldr	r3, [r2, #8]
 115 0066 43F00803 		orr	r3, r3, #8
 116 006a 9360     		str	r3, [r2, #8]
 187:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 117              		.loc 1 187 0
 118 006c FFF7FEFF 		bl	HAL_GetTick
 119              	.LVL9:
 120 0070 0646     		mov	r6, r0
 121              	.LVL10:
 122              	.L6:
 190:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 123              		.loc 1 190 0
 124 0072 2368     		ldr	r3, [r4]
 125 0074 9A68     		ldr	r2, [r3, #8]
 126 0076 12F0080F 		tst	r2, #8
 127 007a 0FD0     		beq	.L13
 192:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       {
 128              		.loc 1 192 0
 129 007c FFF7FEFF 		bl	HAL_GetTick
 130              	.LVL11:
 131 0080 801B     		subs	r0, r0, r6
 132 0082 0A28     		cmp	r0, #10
 133 0084 F5D9     		bls	.L6
 195:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                           HAL_ADC_STATE_BUSY_INTERNAL,
 134              		.loc 1 195 0
 135 0086 A36A     		ldr	r3, [r4, #40]
 136 0088 23F01203 		bic	r3, r3, #18
 137 008c 43F01003 		orr	r3, r3, #16
 138 0090 A362     		str	r3, [r4, #40]
 200:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         
 139              		.loc 1 200 0
 140 0092 0023     		movs	r3, #0
 141 0094 84F82430 		strb	r3, [r4, #36]
 202:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       }
 142              		.loc 1 202 0
 143 0098 0125     		movs	r5, #1
 144 009a C4E7     		b	.L2
 145              	.L13:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 8


 208:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 146              		.loc 1 208 0
 147 009c 9A68     		ldr	r2, [r3, #8]
 148 009e 42F00402 		orr	r2, r2, #4
 149 00a2 9A60     		str	r2, [r3, #8]
 210:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 150              		.loc 1 210 0
 151 00a4 FFF7FEFF 		bl	HAL_GetTick
 152              	.LVL12:
 153 00a8 0646     		mov	r6, r0
 154              	.LVL13:
 155              	.L8:
 213:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 156              		.loc 1 213 0
 157 00aa 2368     		ldr	r3, [r4]
 158 00ac 9B68     		ldr	r3, [r3, #8]
 159 00ae 13F0040F 		tst	r3, #4
 160 00b2 0FD0     		beq	.L14
 215:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       {
 161              		.loc 1 215 0
 162 00b4 FFF7FEFF 		bl	HAL_GetTick
 163              	.LVL14:
 164 00b8 801B     		subs	r0, r0, r6
 165 00ba 0A28     		cmp	r0, #10
 166 00bc F5D9     		bls	.L8
 218:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                           HAL_ADC_STATE_BUSY_INTERNAL,
 167              		.loc 1 218 0
 168 00be A36A     		ldr	r3, [r4, #40]
 169 00c0 23F01203 		bic	r3, r3, #18
 170 00c4 43F01003 		orr	r3, r3, #16
 171 00c8 A362     		str	r3, [r4, #40]
 223:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         
 172              		.loc 1 223 0
 173 00ca 0023     		movs	r3, #0
 174 00cc 84F82430 		strb	r3, [r4, #36]
 225:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       }
 175              		.loc 1 225 0
 176 00d0 0125     		movs	r5, #1
 177 00d2 A8E7     		b	.L2
 178              	.L14:
 230:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                       HAL_ADC_STATE_BUSY_INTERNAL,
 179              		.loc 1 230 0
 180 00d4 A36A     		ldr	r3, [r4, #40]
 181 00d6 23F00303 		bic	r3, r3, #3
 182 00da 43F00103 		orr	r3, r3, #1
 183 00de A362     		str	r3, [r4, #40]
 184 00e0 9EE7     		b	.L3
 185              	.LVL15:
 186              	.L10:
 152:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 187              		.loc 1 152 0
 188 00e2 0225     		movs	r5, #2
 189 00e4 9FE7     		b	.L2
 190              	.L16:
 191 00e6 00BF     		.align	2
 192              	.L15:
 193 00e8 00000000 		.word	SystemCoreClock
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 9


 194              		.cfi_endproc
 195              	.LFE66:
 197              		.section	.text.HAL_ADCEx_InjectedStart,"ax",%progbits
 198              		.align	1
 199              		.global	HAL_ADCEx_InjectedStart
 200              		.syntax unified
 201              		.thumb
 202              		.thumb_func
 203              		.fpu softvfp
 205              	HAL_ADCEx_InjectedStart:
 206              	.LFB67:
 241:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 242:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /**
 243:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @brief  Enables ADC, starts conversion of injected group.
 244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         Interruptions enabled in this function: None.
 245:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @param  hadc: ADC handle
 246:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @retval HAL status
 247:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   */
 248:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** HAL_StatusTypeDef HAL_ADCEx_InjectedStart(ADC_HandleTypeDef* hadc)
 249:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** {
 207              		.loc 1 249 0
 208              		.cfi_startproc
 209              		@ args = 0, pretend = 0, frame = 0
 210              		@ frame_needed = 0, uses_anonymous_args = 0
 211              	.LVL16:
 250:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 251:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 252:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Check the parameters */
 253:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
 254:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 255:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Process locked */
 256:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   __HAL_LOCK(hadc);
 212              		.loc 1 256 0
 213 0000 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 214 0004 012B     		cmp	r3, #1
 215 0006 54D0     		beq	.L26
 249:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 216              		.loc 1 249 0 discriminator 2
 217 0008 10B5     		push	{r4, lr}
 218              	.LCFI4:
 219              		.cfi_def_cfa_offset 8
 220              		.cfi_offset 4, -8
 221              		.cfi_offset 14, -4
 222 000a 0446     		mov	r4, r0
 223              		.loc 1 256 0 discriminator 2
 224 000c 0123     		movs	r3, #1
 225 000e 80F82430 		strb	r3, [r0, #36]
 257:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 258:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Enable the ADC peripheral */
 259:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   tmp_hal_status = ADC_Enable(hadc);
 226              		.loc 1 259 0 discriminator 2
 227 0012 FFF7FEFF 		bl	ADC_Enable
 228              	.LVL17:
 260:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 261:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Start conversion if ADC is effectively enabled */
 262:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   if (tmp_hal_status == HAL_OK)
 229              		.loc 1 262 0 discriminator 2
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 10


 230 0016 0246     		mov	r2, r0
 231 0018 0028     		cmp	r0, #0
 232 001a 45D1     		bne	.L19
 263:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
 264:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Set ADC state                                                          */
 265:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* - Clear state bitfield related to injected group conversion results    */
 266:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* - Set state bitfield related to injected operation                     */
 267:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     ADC_STATE_CLR_SET(hadc->State,
 233              		.loc 1 267 0
 234 001c A36A     		ldr	r3, [r4, #40]
 235 001e 23F44053 		bic	r3, r3, #12288
 236 0022 23F00103 		bic	r3, r3, #1
 237 0026 43F48053 		orr	r3, r3, #4096
 238 002a A362     		str	r3, [r4, #40]
 268:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                       HAL_ADC_STATE_READY | HAL_ADC_STATE_INJ_EOC,
 269:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                       HAL_ADC_STATE_INJ_BUSY);
 270:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 271:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Case of independent mode or multimode (for devices with several ADCs): */
 272:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Set multimode state.                                                   */
 273:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     if (ADC_NONMULTIMODE_OR_MULTIMODEMASTER(hadc))
 239              		.loc 1 273 0
 240 002c 2168     		ldr	r1, [r4]
 241 002e 224B     		ldr	r3, .L34
 242 0030 9942     		cmp	r1, r3
 243 0032 1FD0     		beq	.L31
 244              	.L20:
 274:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 275:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       CLEAR_BIT(hadc->State, HAL_ADC_STATE_MULTIMODE_SLAVE);
 245              		.loc 1 275 0
 246 0034 A36A     		ldr	r3, [r4, #40]
 247 0036 23F48013 		bic	r3, r3, #1048576
 248 003a A362     		str	r3, [r4, #40]
 249              	.L22:
 276:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 277:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     else
 278:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 279:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       SET_BIT(hadc->State, HAL_ADC_STATE_MULTIMODE_SLAVE);
 280:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 281:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 282:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Check if a regular conversion is ongoing */
 283:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Note: On this device, there is no ADC error code fields related to     */
 284:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /*       conversions on group injected only. In case of conversion on     */
 285:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /*       going on group regular, no error code is reset.                  */
 286:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_REG_BUSY))
 250              		.loc 1 286 0
 251 003c A36A     		ldr	r3, [r4, #40]
 252 003e 13F4807F 		tst	r3, #256
 253 0042 01D1     		bne	.L23
 287:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 288:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       /* Reset ADC all error code fields */
 289:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       ADC_CLEAR_ERRORCODE(hadc);
 254              		.loc 1 289 0
 255 0044 0023     		movs	r3, #0
 256 0046 E362     		str	r3, [r4, #44]
 257              	.L23:
 290:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 291:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 11


 292:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Process unlocked */
 293:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Unlock before starting ADC conversions: in case of potential           */
 294:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* interruption, to let the process to ADC IRQ Handler.                   */
 295:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     __HAL_UNLOCK(hadc);
 258              		.loc 1 295 0
 259 0048 0023     		movs	r3, #0
 260 004a 84F82430 		strb	r3, [r4, #36]
 296:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 297:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Clear injected group conversion flag */
 298:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* (To ensure of no unknown state from potential previous ADC operations) */
 299:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_JEOC);
 261              		.loc 1 299 0
 262 004e 6FF00403 		mvn	r3, #4
 263 0052 0B60     		str	r3, [r1]
 300:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         
 301:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Enable conversion of injected group.                                   */
 302:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* If software start has been selected, conversion starts immediately.    */
 303:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* If external trigger has been selected, conversion will start at next   */
 304:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* trigger event.                                                         */
 305:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* If automatic injected conversion is enabled, conversion will start     */
 306:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* after next regular group conversion.                                   */
 307:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Case of multimode enabled (for devices with several ADCs): if ADC is   */
 308:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* slave, ADC is enabled only (conversion is not started). If ADC is      */
 309:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* master, ADC is enabled and conversion is started.                      */
 310:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     if (HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO))
 264              		.loc 1 310 0
 265 0054 2368     		ldr	r3, [r4]
 266 0056 5968     		ldr	r1, [r3, #4]
 267 0058 11F4806F 		tst	r1, #1024
 268 005c 27D1     		bne	.L18
 311:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 312:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       if (ADC_IS_SOFTWARE_START_INJECTED(hadc)     &&
 269              		.loc 1 312 0
 270 005e 9968     		ldr	r1, [r3, #8]
 271 0060 01F4E041 		and	r1, r1, #28672
 272 0064 B1F5E04F 		cmp	r1, #28672
 273 0068 0FD0     		beq	.L32
 274              	.L24:
 313:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           ADC_NONMULTIMODE_OR_MULTIMODEMASTER(hadc)  )
 314:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       {
 315:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         /* Start ADC conversion on injected group with SW start */
 316:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         SET_BIT(hadc->Instance->CR2, (ADC_CR2_JSWSTART | ADC_CR2_JEXTTRIG));
 317:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       }
 318:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       else
 319:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       {
 320:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         /* Start ADC conversion on injected group with external trigger */
 321:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         SET_BIT(hadc->Instance->CR2, ADC_CR2_JEXTTRIG);
 275              		.loc 1 321 0
 276 006a 9968     		ldr	r1, [r3, #8]
 277 006c 41F40041 		orr	r1, r1, #32768
 278 0070 9960     		str	r1, [r3, #8]
 279 0072 1CE0     		b	.L18
 280              	.L31:
 273:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 281              		.loc 1 273 0 discriminator 1
 282 0074 A3F58063 		sub	r3, r3, #1024
 283 0078 5B68     		ldr	r3, [r3, #4]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 12


 284 007a 13F4702F 		tst	r3, #983040
 285 007e D9D0     		beq	.L20
 279:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 286              		.loc 1 279 0
 287 0080 A36A     		ldr	r3, [r4, #40]
 288 0082 43F48013 		orr	r3, r3, #1048576
 289 0086 A362     		str	r3, [r4, #40]
 290 0088 D8E7     		b	.L22
 291              	.L32:
 312:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           ADC_NONMULTIMODE_OR_MULTIMODEMASTER(hadc)  )
 292              		.loc 1 312 0 discriminator 1
 293 008a 0B49     		ldr	r1, .L34
 294 008c 8B42     		cmp	r3, r1
 295 008e 04D0     		beq	.L33
 296              	.L25:
 316:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       }
 297              		.loc 1 316 0
 298 0090 9968     		ldr	r1, [r3, #8]
 299 0092 41F40211 		orr	r1, r1, #2129920
 300 0096 9960     		str	r1, [r3, #8]
 301 0098 09E0     		b	.L18
 302              	.L33:
 313:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       {
 303              		.loc 1 313 0 discriminator 2
 304 009a A1F58061 		sub	r1, r1, #1024
 305 009e 4968     		ldr	r1, [r1, #4]
 312:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           ADC_NONMULTIMODE_OR_MULTIMODEMASTER(hadc)  )
 306              		.loc 1 312 0 discriminator 2
 307 00a0 11F4702F 		tst	r1, #983040
 308 00a4 E1D1     		bne	.L24
 309 00a6 F3E7     		b	.L25
 310              	.L19:
 322:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       }
 323:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 324:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
 325:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   else
 326:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
 327:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Process unlocked */
 328:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     __HAL_UNLOCK(hadc);
 311              		.loc 1 328 0
 312 00a8 0023     		movs	r3, #0
 313 00aa 84F82430 		strb	r3, [r4, #36]
 314              	.L18:
 329:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
 330:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 331:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Return function status */
 332:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   return tmp_hal_status;
 333:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** }
 315              		.loc 1 333 0
 316 00ae 1046     		mov	r0, r2
 317              	.LVL18:
 318 00b0 10BD     		pop	{r4, pc}
 319              	.LVL19:
 320              	.L26:
 321              	.LCFI5:
 322              		.cfi_def_cfa_offset 0
 323              		.cfi_restore 4
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 13


 324              		.cfi_restore 14
 256:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 325              		.loc 1 256 0
 326 00b2 0222     		movs	r2, #2
 327              		.loc 1 333 0
 328 00b4 1046     		mov	r0, r2
 329              	.LVL20:
 330 00b6 7047     		bx	lr
 331              	.L35:
 332              		.align	2
 333              	.L34:
 334 00b8 00280140 		.word	1073817600
 335              		.cfi_endproc
 336              	.LFE67:
 338              		.section	.text.HAL_ADCEx_InjectedStop,"ax",%progbits
 339              		.align	1
 340              		.global	HAL_ADCEx_InjectedStop
 341              		.syntax unified
 342              		.thumb
 343              		.thumb_func
 344              		.fpu softvfp
 346              	HAL_ADCEx_InjectedStop:
 347              	.LFB68:
 334:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 335:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /**
 336:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @brief  Stop conversion of injected channels. Disable ADC peripheral if
 337:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         no regular conversion is on going.
 338:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @note   If ADC must be disabled and if conversion is on going on 
 339:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         regular group, function HAL_ADC_Stop must be used to stop both
 340:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         injected and regular groups, and disable the ADC.
 341:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @note   If injected group mode auto-injection is enabled,
 342:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         function HAL_ADC_Stop must be used.
 343:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @note   In case of auto-injection mode, HAL_ADC_Stop must be used.
 344:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @param  hadc: ADC handle
 345:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @retval None
 346:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   */
 347:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** HAL_StatusTypeDef HAL_ADCEx_InjectedStop(ADC_HandleTypeDef* hadc)
 348:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** {
 348              		.loc 1 348 0
 349              		.cfi_startproc
 350              		@ args = 0, pretend = 0, frame = 0
 351              		@ frame_needed = 0, uses_anonymous_args = 0
 352              	.LVL21:
 349:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 350:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 351:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Check the parameters */
 352:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
 353:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 354:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Process locked */
 355:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   __HAL_LOCK(hadc);
 353              		.loc 1 355 0
 354 0000 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 355 0004 012B     		cmp	r3, #1
 356 0006 25D0     		beq	.L40
 348:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 357              		.loc 1 348 0 discriminator 2
 358 0008 10B5     		push	{r4, lr}
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 14


 359              	.LCFI6:
 360              		.cfi_def_cfa_offset 8
 361              		.cfi_offset 4, -8
 362              		.cfi_offset 14, -4
 363 000a 0446     		mov	r4, r0
 364              		.loc 1 355 0 discriminator 2
 365 000c 0123     		movs	r3, #1
 366 000e 80F82430 		strb	r3, [r0, #36]
 356:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 357:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Stop potential conversion and disable ADC peripheral                     */
 358:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Conditioned to:                                                          */
 359:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* - No conversion on the other group (regular group) is intended to        */
 360:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*   continue (injected and regular groups stop conversion and ADC disable  */
 361:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*   are common)                                                            */
 362:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* - In case of auto-injection mode, HAL_ADC_Stop must be used.             */
 363:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   if(((hadc->State & HAL_ADC_STATE_REG_BUSY) == RESET)  &&
 367              		.loc 1 363 0 discriminator 2
 368 0012 836A     		ldr	r3, [r0, #40]
 369 0014 13F4807F 		tst	r3, #256
 370 0018 04D1     		bne	.L38
 364:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****      HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO)   )
 371              		.loc 1 364 0 discriminator 1
 372 001a 0368     		ldr	r3, [r0]
 373 001c 5B68     		ldr	r3, [r3, #4]
 363:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****      HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO)   )
 374              		.loc 1 363 0 discriminator 1
 375 001e 13F4806F 		tst	r3, #1024
 376 0022 09D0     		beq	.L45
 377              	.L38:
 365:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
 366:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Stop potential conversion on going, on regular and injected groups */
 367:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Disable ADC peripheral */
 368:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     tmp_hal_status = ADC_ConversionStop_Disable(hadc);
 369:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 370:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Check if ADC is effectively disabled */
 371:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     if (tmp_hal_status == HAL_OK)
 372:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 373:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       /* Set ADC state */
 374:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       ADC_STATE_CLR_SET(hadc->State,
 375:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                         HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 376:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                         HAL_ADC_STATE_READY);
 377:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 378:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
 379:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   else
 380:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
 381:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Update ADC state machine to error */
 382:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_CONFIG);
 378              		.loc 1 382 0
 379 0024 A36A     		ldr	r3, [r4, #40]
 380 0026 43F02003 		orr	r3, r3, #32
 381 002a A362     		str	r3, [r4, #40]
 382              	.LVL22:
 383:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       
 384:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     tmp_hal_status = HAL_ERROR;
 383              		.loc 1 384 0
 384 002c 0123     		movs	r3, #1
 385              	.LVL23:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 15


 386              	.L39:
 385:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
 386:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 387:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Process unlocked */
 388:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   __HAL_UNLOCK(hadc);
 387              		.loc 1 388 0
 388 002e 0022     		movs	r2, #0
 389 0030 84F82420 		strb	r2, [r4, #36]
 389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 390:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Return function status */
 391:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   return tmp_hal_status;
 392:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** }
 390              		.loc 1 392 0
 391 0034 1846     		mov	r0, r3
 392 0036 10BD     		pop	{r4, pc}
 393              	.LVL24:
 394              	.L45:
 368:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 395              		.loc 1 368 0
 396 0038 FFF7FEFF 		bl	ADC_ConversionStop_Disable
 397              	.LVL25:
 371:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 398              		.loc 1 371 0
 399 003c 0346     		mov	r3, r0
 400 003e 0028     		cmp	r0, #0
 401 0040 F5D1     		bne	.L39
 374:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                         HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 402              		.loc 1 374 0
 403 0042 A26A     		ldr	r2, [r4, #40]
 404 0044 22F48852 		bic	r2, r2, #4352
 405 0048 22F00102 		bic	r2, r2, #1
 406 004c 42F00102 		orr	r2, r2, #1
 407 0050 A262     		str	r2, [r4, #40]
 408 0052 ECE7     		b	.L39
 409              	.LVL26:
 410              	.L40:
 411              	.LCFI7:
 412              		.cfi_def_cfa_offset 0
 413              		.cfi_restore 4
 414              		.cfi_restore 14
 355:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 415              		.loc 1 355 0
 416 0054 0223     		movs	r3, #2
 417              		.loc 1 392 0
 418 0056 1846     		mov	r0, r3
 419              	.LVL27:
 420 0058 7047     		bx	lr
 421              		.cfi_endproc
 422              	.LFE68:
 424              		.section	.text.HAL_ADCEx_InjectedPollForConversion,"ax",%progbits
 425              		.align	1
 426              		.global	HAL_ADCEx_InjectedPollForConversion
 427              		.syntax unified
 428              		.thumb
 429              		.thumb_func
 430              		.fpu softvfp
 432              	HAL_ADCEx_InjectedPollForConversion:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 16


 433              	.LFB69:
 393:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 394:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /**
 395:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @brief  Wait for injected group conversion to be completed.
 396:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @param  hadc: ADC handle
 397:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @param  Timeout: Timeout value in millisecond.
 398:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @retval HAL status
 399:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   */
 400:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** HAL_StatusTypeDef HAL_ADCEx_InjectedPollForConversion(ADC_HandleTypeDef* hadc, uint32_t Timeout)
 401:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** {
 434              		.loc 1 401 0
 435              		.cfi_startproc
 436              		@ args = 0, pretend = 0, frame = 8
 437              		@ frame_needed = 0, uses_anonymous_args = 0
 438              	.LVL28:
 439 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 440              	.LCFI8:
 441              		.cfi_def_cfa_offset 20
 442              		.cfi_offset 4, -20
 443              		.cfi_offset 5, -16
 444              		.cfi_offset 6, -12
 445              		.cfi_offset 7, -8
 446              		.cfi_offset 14, -4
 447 0002 83B0     		sub	sp, sp, #12
 448              	.LCFI9:
 449              		.cfi_def_cfa_offset 32
 450 0004 0546     		mov	r5, r0
 451 0006 0C46     		mov	r4, r1
 402:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   uint32_t tickstart;
 403:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 404:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Variables for polling in case of scan mode enabled and polling for each  */
 405:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* conversion.                                                              */
 406:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   __IO uint32_t Conversion_Timeout_CPU_cycles = 0U;
 452              		.loc 1 406 0
 453 0008 0023     		movs	r3, #0
 454 000a 0193     		str	r3, [sp, #4]
 455              	.LVL29:
 407:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   uint32_t Conversion_Timeout_CPU_cycles_max = 0U;
 408:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 409:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Check the parameters */
 410:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
 411:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 412:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Get timeout */
 413:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   tickstart = HAL_GetTick();  
 456              		.loc 1 413 0
 457 000c FFF7FEFF 		bl	HAL_GetTick
 458              	.LVL30:
 459 0010 0646     		mov	r6, r0
 460              	.LVL31:
 414:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****      
 415:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Polling for end of conversion: differentiation if single/sequence        */
 416:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* conversion.                                                              */
 417:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* For injected group, flag JEOC is set only at the end of the sequence,    */
 418:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* not for each conversion within the sequence.                             */
 419:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*  - If single conversion for injected group (scan mode disabled or        */
 420:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*    InjectedNbrOfConversion ==1), flag JEOC is used to determine the      */
 421:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*    conversion completion.                                                */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 17


 422:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*  - If sequence conversion for injected group (scan mode enabled and      */
 423:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*    InjectedNbrOfConversion >=2), flag JEOC is set only at the end of the */
 424:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*    sequence.                                                             */
 425:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*    To poll for each conversion, the maximum conversion time is computed  */
 426:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*    from ADC conversion time (selected sampling time + conversion time of */
 427:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*    12.5 ADC clock cycles) and APB2/ADC clock prescalers (depending on    */
 428:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*    settings, conversion time range can be from 28 to 32256 CPU cycles).  */
 429:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*    As flag JEOC is not set after each conversion, no timeout status can  */
 430:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*    be set.                                                               */
 431:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   if ((hadc->Instance->JSQR & ADC_JSQR_JL) == RESET)
 461              		.loc 1 431 0
 462 0012 2B68     		ldr	r3, [r5]
 463 0014 9B6B     		ldr	r3, [r3, #56]
 464 0016 13F4401F 		tst	r3, #3145728
 465 001a 16D1     		bne	.L73
 466              	.LVL32:
 467              	.L49:
 432:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
 433:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Wait until End of Conversion flag is raised */
 434:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     while(HAL_IS_BIT_CLR(hadc->Instance->SR, ADC_FLAG_JEOC))
 468              		.loc 1 434 0
 469 001c 2B68     		ldr	r3, [r5]
 470 001e 1B68     		ldr	r3, [r3]
 471 0020 13F0040F 		tst	r3, #4
 472 0024 63D1     		bne	.L53
 435:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 436:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       /* Check if timeout is disabled (set to infinite wait) */
 437:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       if(Timeout != HAL_MAX_DELAY)
 473              		.loc 1 437 0
 474 0026 B4F1FF3F 		cmp	r4, #-1
 475 002a F7D0     		beq	.L49
 438:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       {
 439:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         if((Timeout == 0U) || ((HAL_GetTick() - tickstart ) > Timeout))
 476              		.loc 1 439 0
 477 002c 24B1     		cbz	r4, .L50
 478              		.loc 1 439 0 is_stmt 0 discriminator 1
 479 002e FFF7FEFF 		bl	HAL_GetTick
 480              	.LVL33:
 481 0032 801B     		subs	r0, r0, r6
 482 0034 A042     		cmp	r0, r4
 483 0036 F1D9     		bls	.L49
 484              	.L50:
 440:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         {
 441:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           /* Update ADC state machine to timeout */
 442:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           SET_BIT(hadc->State, HAL_ADC_STATE_TIMEOUT);
 485              		.loc 1 442 0 is_stmt 1
 486 0038 AB6A     		ldr	r3, [r5, #40]
 487 003a 43F00403 		orr	r3, r3, #4
 488 003e AB62     		str	r3, [r5, #40]
 443:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           
 444:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           /* Process unlocked */
 445:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           __HAL_UNLOCK(hadc);
 489              		.loc 1 445 0
 490 0040 0023     		movs	r3, #0
 491 0042 85F82430 		strb	r3, [r5, #36]
 446:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           
 447:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           return HAL_TIMEOUT;
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 18


 492              		.loc 1 447 0
 493 0046 0320     		movs	r0, #3
 494 0048 7DE0     		b	.L51
 495              	.LVL34:
 496              	.L73:
 448:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         }
 449:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       }
 450:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 451:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
 452:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   else
 453:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
 454:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Replace polling by wait for maximum conversion time */
 455:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /*  - Computation of CPU clock cycles corresponding to ADC clock cycles   */
 456:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /*    and ADC maximum conversion cycles on all channels.                  */
 457:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /*  - Wait for the expected ADC clock cycles delay                        */
 458:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     Conversion_Timeout_CPU_cycles_max = ((SystemCoreClock
 459:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                                           / HAL_RCCEx_GetPeriphCLKFreq(RCC_PERIPHCLK_ADC))
 497              		.loc 1 459 0
 498 004a 424B     		ldr	r3, .L75
 499 004c 1F68     		ldr	r7, [r3]
 500 004e 0220     		movs	r0, #2
 501              	.LVL35:
 502 0050 FFF7FEFF 		bl	HAL_RCCEx_GetPeriphCLKFreq
 503              	.LVL36:
 504 0054 B7FBF0F0 		udiv	r0, r7, r0
 460:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                                          * ADC_CONVCYCLES_MAX_RANGE(hadc)                 );
 505              		.loc 1 460 0
 506 0058 2B68     		ldr	r3, [r5]
 507 005a 1969     		ldr	r1, [r3, #16]
 508 005c 3E4A     		ldr	r2, .L75+4
 509 005e 1142     		tst	r1, r2
 510 0060 0ED1     		bne	.L54
 511              		.loc 1 460 0 is_stmt 0 discriminator 1
 512 0062 D968     		ldr	r1, [r3, #12]
 513 0064 02F15C42 		add	r2, r2, #-603979776
 514 0068 1142     		tst	r1, r2
 515 006a 09D1     		bne	.L54
 516              		.loc 1 460 0 discriminator 3
 517 006c 1969     		ldr	r1, [r3, #16]
 518 006e 3B4A     		ldr	r2, .L75+8
 519 0070 1142     		tst	r1, r2
 520 0072 18D1     		bne	.L62
 521              		.loc 1 460 0 discriminator 5
 522 0074 DA68     		ldr	r2, [r3, #12]
 523 0076 3A4B     		ldr	r3, .L75+12
 524 0078 1A42     		tst	r2, r3
 525 007a 16D0     		beq	.L63
 526              		.loc 1 460 0
 527 007c 2927     		movs	r7, #41
 528 007e 19E0     		b	.L55
 529              	.L54:
 530              		.loc 1 460 0 discriminator 4
 531 0080 1969     		ldr	r1, [r3, #16]
 532 0082 364A     		ldr	r2, .L75+8
 533 0084 1142     		tst	r1, r2
 534 0086 04D1     		bne	.L56
 535              		.loc 1 460 0 discriminator 11
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 19


 536 0088 D968     		ldr	r1, [r3, #12]
 537 008a 02F16E42 		add	r2, r2, #-301989888
 538 008e 1142     		tst	r1, r2
 539 0090 0DD0     		beq	.L64
 540              	.L56:
 541              		.loc 1 460 0 discriminator 14
 542 0092 1969     		ldr	r1, [r3, #16]
 543 0094 334A     		ldr	r2, .L75+16
 544 0096 0A40     		ands	r2, r2, r1
 545 0098 5AB9     		cbnz	r2, .L65
 546              		.loc 1 460 0 discriminator 15
 547 009a DA68     		ldr	r2, [r3, #12]
 548 009c 314B     		ldr	r3, .L75+16
 549 009e 1340     		ands	r3, r3, r2
 550 00a0 5BB1     		cbz	r3, .L66
 551              		.loc 1 460 0
 552 00a2 FC27     		movs	r7, #252
 553 00a4 06E0     		b	.L55
 554              	.L62:
 555 00a6 2927     		movs	r7, #41
 556 00a8 04E0     		b	.L55
 557              	.L63:
 558 00aa 1427     		movs	r7, #20
 559 00ac 02E0     		b	.L55
 560              	.L64:
 561 00ae 5427     		movs	r7, #84
 562 00b0 00E0     		b	.L55
 563              	.L65:
 564 00b2 FC27     		movs	r7, #252
 565              	.L55:
 458:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                                           / HAL_RCCEx_GetPeriphCLKFreq(RCC_PERIPHCLK_ADC))
 566              		.loc 1 458 0 is_stmt 1
 567 00b4 07FB00F7 		mul	r7, r7, r0
 568              	.LVL37:
 461:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 462:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     while(Conversion_Timeout_CPU_cycles < Conversion_Timeout_CPU_cycles_max)
 569              		.loc 1 462 0
 570 00b8 04E0     		b	.L57
 571              	.LVL38:
 572              	.L66:
 460:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 573              		.loc 1 460 0
 574 00ba 5427     		movs	r7, #84
 575 00bc FAE7     		b	.L55
 576              	.LVL39:
 577              	.L58:
 463:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 464:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       /* Check if timeout is disabled (set to infinite wait) */
 465:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       if(Timeout != HAL_MAX_DELAY)
 466:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       {
 467:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
 468:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         {
 469:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           /* Update ADC state machine to timeout */
 470:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           SET_BIT(hadc->State, HAL_ADC_STATE_TIMEOUT);
 471:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 472:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           /* Process unlocked */
 473:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           __HAL_UNLOCK(hadc);
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 20


 474:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           
 475:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           return HAL_TIMEOUT;
 476:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         }
 477:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       }
 478:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       Conversion_Timeout_CPU_cycles ++;
 578              		.loc 1 478 0
 579 00be 019B     		ldr	r3, [sp, #4]
 580 00c0 0133     		adds	r3, r3, #1
 581 00c2 0193     		str	r3, [sp, #4]
 582              	.L57:
 462:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 583              		.loc 1 462 0
 584 00c4 019B     		ldr	r3, [sp, #4]
 585 00c6 BB42     		cmp	r3, r7
 586 00c8 11D2     		bcs	.L53
 465:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       {
 587              		.loc 1 465 0
 588 00ca B4F1FF3F 		cmp	r4, #-1
 589 00ce F6D0     		beq	.L58
 467:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         {
 590              		.loc 1 467 0
 591 00d0 24B1     		cbz	r4, .L59
 467:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         {
 592              		.loc 1 467 0 is_stmt 0 discriminator 1
 593 00d2 FFF7FEFF 		bl	HAL_GetTick
 594              	.LVL40:
 595 00d6 801B     		subs	r0, r0, r6
 596 00d8 A042     		cmp	r0, r4
 597 00da F0D9     		bls	.L58
 598              	.L59:
 470:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 599              		.loc 1 470 0 is_stmt 1
 600 00dc AB6A     		ldr	r3, [r5, #40]
 601 00de 43F00403 		orr	r3, r3, #4
 602 00e2 AB62     		str	r3, [r5, #40]
 473:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           
 603              		.loc 1 473 0
 604 00e4 0023     		movs	r3, #0
 605 00e6 85F82430 		strb	r3, [r5, #36]
 475:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         }
 606              		.loc 1 475 0
 607 00ea 0320     		movs	r0, #3
 608 00ec 2BE0     		b	.L51
 609              	.LVL41:
 610              	.L53:
 479:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 480:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
 481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 482:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Clear injected group conversion flag */
 483:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Note: On STM32F1 ADC, clear regular conversion flag raised               */
 484:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* simultaneously.                                                          */
 485:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_JSTRT | ADC_FLAG_JEOC | ADC_FLAG_EOC);
 611              		.loc 1 485 0
 612 00ee 2B68     		ldr	r3, [r5]
 613 00f0 6FF00E02 		mvn	r2, #14
 614 00f4 1A60     		str	r2, [r3]
 486:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 21


 487:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Update ADC state machine */
 488:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   SET_BIT(hadc->State, HAL_ADC_STATE_INJ_EOC);
 615              		.loc 1 488 0
 616 00f6 AB6A     		ldr	r3, [r5, #40]
 617 00f8 43F40053 		orr	r3, r3, #8192
 618 00fc AB62     		str	r3, [r5, #40]
 489:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 490:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Determine whether any further conversion upcoming on group injected      */
 491:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* by external trigger or by automatic injected conversion                  */
 492:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* from group regular.                                                      */
 493:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   if(ADC_IS_SOFTWARE_START_INJECTED(hadc)                     || 
 619              		.loc 1 493 0
 620 00fe 2A68     		ldr	r2, [r5]
 621 0100 9368     		ldr	r3, [r2, #8]
 622 0102 03F4E043 		and	r3, r3, #28672
 623 0106 B3F5E04F 		cmp	r3, #28672
 624 010a 0DD0     		beq	.L61
 494:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****      (HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO) &&     
 625              		.loc 1 494 0 discriminator 1
 626 010c 5368     		ldr	r3, [r2, #4]
 493:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****      (HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO) &&     
 627              		.loc 1 493 0 discriminator 1
 628 010e 13F4806F 		tst	r3, #1024
 629 0112 17D1     		bne	.L67
 495:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****      (ADC_IS_SOFTWARE_START_REGULAR(hadc)        &&
 630              		.loc 1 495 0
 631 0114 9368     		ldr	r3, [r2, #8]
 632 0116 03F46023 		and	r3, r3, #917504
 494:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****      (HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO) &&     
 633              		.loc 1 494 0
 634 011a B3F5602F 		cmp	r3, #917504
 635 011e 01D0     		beq	.L74
 496:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       (hadc->Init.ContinuousConvMode == DISABLE)   )        )   )
 497:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
 498:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Set ADC state */
 499:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     CLEAR_BIT(hadc->State, HAL_ADC_STATE_INJ_BUSY);   
 500:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 501:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_REG_BUSY))
 502:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 503:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       SET_BIT(hadc->State, HAL_ADC_STATE_READY);
 504:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 505:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
 506:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 507:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Return ADC state */
 508:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   return HAL_OK;
 636              		.loc 1 508 0
 637 0120 0020     		movs	r0, #0
 638 0122 10E0     		b	.L51
 639              	.L74:
 496:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       (hadc->Init.ContinuousConvMode == DISABLE)   )        )   )
 640              		.loc 1 496 0
 641 0124 EB68     		ldr	r3, [r5, #12]
 495:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****      (ADC_IS_SOFTWARE_START_REGULAR(hadc)        &&
 642              		.loc 1 495 0
 643 0126 83B9     		cbnz	r3, .L69
 644              	.L61:
 499:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 22


 645              		.loc 1 499 0
 646 0128 AB6A     		ldr	r3, [r5, #40]
 647 012a 23F48053 		bic	r3, r3, #4096
 648 012e AB62     		str	r3, [r5, #40]
 501:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 649              		.loc 1 501 0
 650 0130 AB6A     		ldr	r3, [r5, #40]
 651 0132 13F4807F 		tst	r3, #256
 652 0136 0AD1     		bne	.L70
 503:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 653              		.loc 1 503 0
 654 0138 AB6A     		ldr	r3, [r5, #40]
 655 013a 43F00103 		orr	r3, r3, #1
 656 013e AB62     		str	r3, [r5, #40]
 657              		.loc 1 508 0
 658 0140 0020     		movs	r0, #0
 659 0142 00E0     		b	.L51
 660              	.L67:
 661 0144 0020     		movs	r0, #0
 662              	.L51:
 509:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** }
 663              		.loc 1 509 0
 664 0146 03B0     		add	sp, sp, #12
 665              	.LCFI10:
 666              		.cfi_remember_state
 667              		.cfi_def_cfa_offset 20
 668              		@ sp needed
 669 0148 F0BD     		pop	{r4, r5, r6, r7, pc}
 670              	.LVL42:
 671              	.L69:
 672              	.LCFI11:
 673              		.cfi_restore_state
 508:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** }
 674              		.loc 1 508 0
 675 014a 0020     		movs	r0, #0
 676 014c FBE7     		b	.L51
 677              	.L70:
 678 014e 0020     		movs	r0, #0
 679 0150 F9E7     		b	.L51
 680              	.L76:
 681 0152 00BF     		.align	2
 682              	.L75:
 683 0154 00000000 		.word	SystemCoreClock
 684 0158 24499224 		.word	613566756
 685 015c 92244912 		.word	306783378
 686 0160 92244900 		.word	4793490
 687 0164 49922400 		.word	2396745
 688              		.cfi_endproc
 689              	.LFE69:
 691              		.section	.text.HAL_ADCEx_InjectedStart_IT,"ax",%progbits
 692              		.align	1
 693              		.global	HAL_ADCEx_InjectedStart_IT
 694              		.syntax unified
 695              		.thumb
 696              		.thumb_func
 697              		.fpu softvfp
 699              	HAL_ADCEx_InjectedStart_IT:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 23


 700              	.LFB70:
 510:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 511:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /**
 512:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @brief  Enables ADC, starts conversion of injected group with interruption.
 513:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *          - JEOC (end of conversion of injected group)
 514:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         Each of these interruptions has its dedicated callback function.
 515:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @param  hadc: ADC handle
 516:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @retval HAL status.
 517:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   */
 518:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** HAL_StatusTypeDef HAL_ADCEx_InjectedStart_IT(ADC_HandleTypeDef* hadc)
 519:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** {
 701              		.loc 1 519 0
 702              		.cfi_startproc
 703              		@ args = 0, pretend = 0, frame = 0
 704              		@ frame_needed = 0, uses_anonymous_args = 0
 705              	.LVL43:
 520:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 521:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 522:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Check the parameters */
 523:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
 524:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 525:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Process locked */
 526:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   __HAL_LOCK(hadc);
 706              		.loc 1 526 0
 707 0000 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 708 0004 012B     		cmp	r3, #1
 709 0006 59D0     		beq	.L86
 519:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 710              		.loc 1 519 0 discriminator 2
 711 0008 10B5     		push	{r4, lr}
 712              	.LCFI12:
 713              		.cfi_def_cfa_offset 8
 714              		.cfi_offset 4, -8
 715              		.cfi_offset 14, -4
 716 000a 0446     		mov	r4, r0
 717              		.loc 1 526 0 discriminator 2
 718 000c 0123     		movs	r3, #1
 719 000e 80F82430 		strb	r3, [r0, #36]
 527:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 528:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Enable the ADC peripheral */
 529:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   tmp_hal_status = ADC_Enable(hadc);
 720              		.loc 1 529 0 discriminator 2
 721 0012 FFF7FEFF 		bl	ADC_Enable
 722              	.LVL44:
 530:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 531:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Start conversion if ADC is effectively enabled */
 532:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   if (tmp_hal_status == HAL_OK)
 723              		.loc 1 532 0 discriminator 2
 724 0016 0246     		mov	r2, r0
 725 0018 0028     		cmp	r0, #0
 726 001a 4AD1     		bne	.L79
 533:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
 534:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Set ADC state                                                          */
 535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* - Clear state bitfield related to injected group conversion results    */
 536:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* - Set state bitfield related to injected operation                     */
 537:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     ADC_STATE_CLR_SET(hadc->State,
 727              		.loc 1 537 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 24


 728 001c A36A     		ldr	r3, [r4, #40]
 729 001e 23F44053 		bic	r3, r3, #12288
 730 0022 23F00103 		bic	r3, r3, #1
 731 0026 43F48053 		orr	r3, r3, #4096
 732 002a A362     		str	r3, [r4, #40]
 538:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                       HAL_ADC_STATE_READY | HAL_ADC_STATE_INJ_EOC,
 539:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                       HAL_ADC_STATE_INJ_BUSY);
 540:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 541:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Case of independent mode or multimode (for devices with several ADCs): */
 542:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Set multimode state.                                                   */
 543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     if (ADC_NONMULTIMODE_OR_MULTIMODEMASTER(hadc))
 733              		.loc 1 543 0
 734 002c 2168     		ldr	r1, [r4]
 735 002e 254B     		ldr	r3, .L94
 736 0030 9942     		cmp	r1, r3
 737 0032 24D0     		beq	.L91
 738              	.L80:
 544:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 545:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       CLEAR_BIT(hadc->State, HAL_ADC_STATE_MULTIMODE_SLAVE);
 739              		.loc 1 545 0
 740 0034 A36A     		ldr	r3, [r4, #40]
 741 0036 23F48013 		bic	r3, r3, #1048576
 742 003a A362     		str	r3, [r4, #40]
 743              	.L82:
 546:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 547:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     else
 548:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 549:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       SET_BIT(hadc->State, HAL_ADC_STATE_MULTIMODE_SLAVE);
 550:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 551:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 552:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Check if a regular conversion is ongoing */
 553:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Note: On this device, there is no ADC error code fields related to     */
 554:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /*       conversions on group injected only. In case of conversion on     */
 555:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /*       going on group regular, no error code is reset.                  */
 556:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_REG_BUSY))
 744              		.loc 1 556 0
 745 003c A36A     		ldr	r3, [r4, #40]
 746 003e 13F4807F 		tst	r3, #256
 747 0042 01D1     		bne	.L83
 557:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 558:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       /* Reset ADC all error code fields */
 559:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       ADC_CLEAR_ERRORCODE(hadc);
 748              		.loc 1 559 0
 749 0044 0023     		movs	r3, #0
 750 0046 E362     		str	r3, [r4, #44]
 751              	.L83:
 560:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 561:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 562:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Process unlocked */
 563:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Unlock before starting ADC conversions: in case of potential           */
 564:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* interruption, to let the process to ADC IRQ Handler.                   */
 565:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     __HAL_UNLOCK(hadc);
 752              		.loc 1 565 0
 753 0048 0023     		movs	r3, #0
 754 004a 84F82430 		strb	r3, [r4, #36]
 566:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 567:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Clear injected group conversion flag */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 25


 568:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* (To ensure of no unknown state from potential previous ADC operations) */
 569:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_JEOC);
 755              		.loc 1 569 0
 756 004e 6FF00403 		mvn	r3, #4
 757 0052 0B60     		str	r3, [r1]
 570:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 571:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Enable end of conversion interrupt for injected channels */
 572:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     __HAL_ADC_ENABLE_IT(hadc, ADC_IT_JEOC);
 758              		.loc 1 572 0
 759 0054 2168     		ldr	r1, [r4]
 760 0056 4B68     		ldr	r3, [r1, #4]
 761 0058 43F08003 		orr	r3, r3, #128
 762 005c 4B60     		str	r3, [r1, #4]
 573:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 574:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Start conversion of injected group if software start has been selected */
 575:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* and if automatic injected conversion is disabled.                      */
 576:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* If external trigger has been selected, conversion will start at next   */
 577:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* trigger event.                                                         */
 578:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* If automatic injected conversion is enabled, conversion will start     */
 579:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* after next regular group conversion.                                   */
 580:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     if (HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO))
 763              		.loc 1 580 0
 764 005e 2368     		ldr	r3, [r4]
 765 0060 5968     		ldr	r1, [r3, #4]
 766 0062 11F4806F 		tst	r1, #1024
 767 0066 27D1     		bne	.L78
 581:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 582:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       if (ADC_IS_SOFTWARE_START_INJECTED(hadc)     &&
 768              		.loc 1 582 0
 769 0068 9968     		ldr	r1, [r3, #8]
 770 006a 01F4E041 		and	r1, r1, #28672
 771 006e B1F5E04F 		cmp	r1, #28672
 772 0072 0FD0     		beq	.L92
 773              	.L84:
 583:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           ADC_NONMULTIMODE_OR_MULTIMODEMASTER(hadc)  )
 584:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       {
 585:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         /* Start ADC conversion on injected group with SW start */
 586:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         SET_BIT(hadc->Instance->CR2, (ADC_CR2_JSWSTART | ADC_CR2_JEXTTRIG));
 587:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       }
 588:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       else
 589:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       {
 590:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         /* Start ADC conversion on injected group with external trigger */
 591:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         SET_BIT(hadc->Instance->CR2, ADC_CR2_JEXTTRIG);
 774              		.loc 1 591 0
 775 0074 9968     		ldr	r1, [r3, #8]
 776 0076 41F40041 		orr	r1, r1, #32768
 777 007a 9960     		str	r1, [r3, #8]
 778 007c 1CE0     		b	.L78
 779              	.L91:
 543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 780              		.loc 1 543 0 discriminator 1
 781 007e A3F58063 		sub	r3, r3, #1024
 782 0082 5B68     		ldr	r3, [r3, #4]
 783 0084 13F4702F 		tst	r3, #983040
 784 0088 D4D0     		beq	.L80
 549:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 785              		.loc 1 549 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 26


 786 008a A36A     		ldr	r3, [r4, #40]
 787 008c 43F48013 		orr	r3, r3, #1048576
 788 0090 A362     		str	r3, [r4, #40]
 789 0092 D3E7     		b	.L82
 790              	.L92:
 582:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           ADC_NONMULTIMODE_OR_MULTIMODEMASTER(hadc)  )
 791              		.loc 1 582 0 discriminator 1
 792 0094 0B49     		ldr	r1, .L94
 793 0096 8B42     		cmp	r3, r1
 794 0098 04D0     		beq	.L93
 795              	.L85:
 586:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       }
 796              		.loc 1 586 0
 797 009a 9968     		ldr	r1, [r3, #8]
 798 009c 41F40211 		orr	r1, r1, #2129920
 799 00a0 9960     		str	r1, [r3, #8]
 800 00a2 09E0     		b	.L78
 801              	.L93:
 583:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       {
 802              		.loc 1 583 0 discriminator 2
 803 00a4 A1F58061 		sub	r1, r1, #1024
 804 00a8 4968     		ldr	r1, [r1, #4]
 582:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           ADC_NONMULTIMODE_OR_MULTIMODEMASTER(hadc)  )
 805              		.loc 1 582 0 discriminator 2
 806 00aa 11F4702F 		tst	r1, #983040
 807 00ae E1D1     		bne	.L84
 808 00b0 F3E7     		b	.L85
 809              	.L79:
 592:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       }
 593:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 594:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
 595:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   else
 596:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
 597:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Process unlocked */
 598:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     __HAL_UNLOCK(hadc);
 810              		.loc 1 598 0
 811 00b2 0023     		movs	r3, #0
 812 00b4 84F82430 		strb	r3, [r4, #36]
 813              	.L78:
 599:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
 600:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 601:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Return function status */
 602:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   return tmp_hal_status;
 603:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** }
 814              		.loc 1 603 0
 815 00b8 1046     		mov	r0, r2
 816              	.LVL45:
 817 00ba 10BD     		pop	{r4, pc}
 818              	.LVL46:
 819              	.L86:
 820              	.LCFI13:
 821              		.cfi_def_cfa_offset 0
 822              		.cfi_restore 4
 823              		.cfi_restore 14
 526:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 824              		.loc 1 526 0
 825 00bc 0222     		movs	r2, #2
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 27


 826              		.loc 1 603 0
 827 00be 1046     		mov	r0, r2
 828              	.LVL47:
 829 00c0 7047     		bx	lr
 830              	.L95:
 831 00c2 00BF     		.align	2
 832              	.L94:
 833 00c4 00280140 		.word	1073817600
 834              		.cfi_endproc
 835              	.LFE70:
 837              		.section	.text.HAL_ADCEx_InjectedStop_IT,"ax",%progbits
 838              		.align	1
 839              		.global	HAL_ADCEx_InjectedStop_IT
 840              		.syntax unified
 841              		.thumb
 842              		.thumb_func
 843              		.fpu softvfp
 845              	HAL_ADCEx_InjectedStop_IT:
 846              	.LFB71:
 604:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 605:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /**
 606:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @brief  Stop conversion of injected channels, disable interruption of 
 607:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         end-of-conversion. Disable ADC peripheral if no regular conversion
 608:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         is on going.
 609:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @note   If ADC must be disabled and if conversion is on going on 
 610:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         regular group, function HAL_ADC_Stop must be used to stop both
 611:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         injected and regular groups, and disable the ADC.
 612:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @note   If injected group mode auto-injection is enabled,
 613:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         function HAL_ADC_Stop must be used.
 614:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @param  hadc: ADC handle
 615:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @retval None
 616:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   */
 617:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** HAL_StatusTypeDef HAL_ADCEx_InjectedStop_IT(ADC_HandleTypeDef* hadc)
 618:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** {
 847              		.loc 1 618 0
 848              		.cfi_startproc
 849              		@ args = 0, pretend = 0, frame = 0
 850              		@ frame_needed = 0, uses_anonymous_args = 0
 851              	.LVL48:
 619:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 620:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 621:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Check the parameters */
 622:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
 623:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 624:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Process locked */
 625:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   __HAL_LOCK(hadc);
 852              		.loc 1 625 0
 853 0000 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 854 0004 012B     		cmp	r3, #1
 855 0006 2AD0     		beq	.L100
 618:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 856              		.loc 1 618 0 discriminator 2
 857 0008 10B5     		push	{r4, lr}
 858              	.LCFI14:
 859              		.cfi_def_cfa_offset 8
 860              		.cfi_offset 4, -8
 861              		.cfi_offset 14, -4
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 28


 862 000a 0446     		mov	r4, r0
 863              		.loc 1 625 0 discriminator 2
 864 000c 0123     		movs	r3, #1
 865 000e 80F82430 		strb	r3, [r0, #36]
 626:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 627:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Stop potential conversion and disable ADC peripheral                     */
 628:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Conditioned to:                                                          */
 629:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* - No conversion on the other group (regular group) is intended to        */
 630:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*   continue (injected and regular groups stop conversion and ADC disable  */
 631:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*   are common)                                                            */
 632:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* - In case of auto-injection mode, HAL_ADC_Stop must be used.             */ 
 633:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   if(((hadc->State & HAL_ADC_STATE_REG_BUSY) == RESET)  &&
 866              		.loc 1 633 0 discriminator 2
 867 0012 836A     		ldr	r3, [r0, #40]
 868 0014 13F4807F 		tst	r3, #256
 869 0018 04D1     		bne	.L98
 634:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****      HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO)   )
 870              		.loc 1 634 0 discriminator 1
 871 001a 0368     		ldr	r3, [r0]
 872 001c 5B68     		ldr	r3, [r3, #4]
 633:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****      HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO)   )
 873              		.loc 1 633 0 discriminator 1
 874 001e 13F4806F 		tst	r3, #1024
 875 0022 09D0     		beq	.L105
 876              	.L98:
 635:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
 636:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Stop potential conversion on going, on regular and injected groups */
 637:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Disable ADC peripheral */
 638:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     tmp_hal_status = ADC_ConversionStop_Disable(hadc);
 639:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 640:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Check if ADC is effectively disabled */
 641:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     if (tmp_hal_status == HAL_OK)
 642:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 643:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       /* Disable ADC end of conversion interrupt for injected channels */
 644:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       __HAL_ADC_DISABLE_IT(hadc, ADC_IT_JEOC);
 645:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       
 646:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       /* Set ADC state */
 647:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       ADC_STATE_CLR_SET(hadc->State,
 648:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                         HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 649:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                         HAL_ADC_STATE_READY);
 650:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 651:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
 652:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   else
 653:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
 654:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Update ADC state machine to error */
 655:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_CONFIG);
 877              		.loc 1 655 0
 878 0024 A36A     		ldr	r3, [r4, #40]
 879 0026 43F02003 		orr	r3, r3, #32
 880 002a A362     		str	r3, [r4, #40]
 881              	.LVL49:
 656:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       
 657:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     tmp_hal_status = HAL_ERROR;
 882              		.loc 1 657 0
 883 002c 0123     		movs	r3, #1
 884              	.LVL50:
 885              	.L99:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 29


 658:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
 659:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 660:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Process unlocked */
 661:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   __HAL_UNLOCK(hadc);
 886              		.loc 1 661 0
 887 002e 0022     		movs	r2, #0
 888 0030 84F82420 		strb	r2, [r4, #36]
 662:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 663:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Return function status */
 664:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   return tmp_hal_status;
 665:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** }
 889              		.loc 1 665 0
 890 0034 1846     		mov	r0, r3
 891 0036 10BD     		pop	{r4, pc}
 892              	.LVL51:
 893              	.L105:
 638:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 894              		.loc 1 638 0
 895 0038 FFF7FEFF 		bl	ADC_ConversionStop_Disable
 896              	.LVL52:
 641:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 897              		.loc 1 641 0
 898 003c 0346     		mov	r3, r0
 899 003e 0028     		cmp	r0, #0
 900 0040 F5D1     		bne	.L99
 644:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       
 901              		.loc 1 644 0
 902 0042 2168     		ldr	r1, [r4]
 903 0044 4A68     		ldr	r2, [r1, #4]
 904 0046 22F08002 		bic	r2, r2, #128
 905 004a 4A60     		str	r2, [r1, #4]
 647:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                         HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 906              		.loc 1 647 0
 907 004c A26A     		ldr	r2, [r4, #40]
 908 004e 22F48852 		bic	r2, r2, #4352
 909 0052 22F00102 		bic	r2, r2, #1
 910 0056 42F00102 		orr	r2, r2, #1
 911 005a A262     		str	r2, [r4, #40]
 912 005c E7E7     		b	.L99
 913              	.LVL53:
 914              	.L100:
 915              	.LCFI15:
 916              		.cfi_def_cfa_offset 0
 917              		.cfi_restore 4
 918              		.cfi_restore 14
 625:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 919              		.loc 1 625 0
 920 005e 0223     		movs	r3, #2
 921              		.loc 1 665 0
 922 0060 1846     		mov	r0, r3
 923              	.LVL54:
 924 0062 7047     		bx	lr
 925              		.cfi_endproc
 926              	.LFE71:
 928              		.section	.text.HAL_ADCEx_MultiModeStart_DMA,"ax",%progbits
 929              		.align	1
 930              		.global	HAL_ADCEx_MultiModeStart_DMA
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 30


 931              		.syntax unified
 932              		.thumb
 933              		.thumb_func
 934              		.fpu softvfp
 936              	HAL_ADCEx_MultiModeStart_DMA:
 937              	.LFB72:
 666:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 667:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** #if defined (STM32F103x6) || defined (STM32F103xB) || defined (STM32F105xC) || defined (STM32F107xC
 668:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /**
 669:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @brief  Enables ADC, starts conversion of regular group and transfers result
 670:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         through DMA.
 671:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         Multimode must have been previously configured using 
 672:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         HAL_ADCEx_MultiModeConfigChannel() function.
 673:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         Interruptions enabled in this function:
 674:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *          - DMA transfer complete
 675:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *          - DMA half transfer
 676:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         Each of these interruptions has its dedicated callback function.
 677:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @note:  On STM32F1 devices, ADC slave regular group must be configured 
 678:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         with conversion trigger ADC_SOFTWARE_START.
 679:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @note:  ADC slave can be enabled preliminarily using single-mode  
 680:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         HAL_ADC_Start() function.
 681:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @param  hadc: ADC handle of ADC master (handle of ADC slave must not be used)
 682:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @param  pData: The destination Buffer address.
 683:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @param  Length: The length of data to be transferred from ADC peripheral to memory.
 684:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @retval None
 685:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   */
 686:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** HAL_StatusTypeDef HAL_ADCEx_MultiModeStart_DMA(ADC_HandleTypeDef* hadc, uint32_t* pData, uint32_t L
 687:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** {
 938              		.loc 1 687 0
 939              		.cfi_startproc
 940              		@ args = 0, pretend = 0, frame = 48
 941              		@ frame_needed = 0, uses_anonymous_args = 0
 942              	.LVL55:
 943 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 944              	.LCFI16:
 945              		.cfi_def_cfa_offset 20
 946              		.cfi_offset 4, -20
 947              		.cfi_offset 5, -16
 948              		.cfi_offset 6, -12
 949              		.cfi_offset 7, -8
 950              		.cfi_offset 14, -4
 951 0002 8DB0     		sub	sp, sp, #52
 952              	.LCFI17:
 953              		.cfi_def_cfa_offset 72
 954              	.LVL56:
 688:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 689:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   ADC_HandleTypeDef tmphadcSlave;
 690:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 691:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Check the parameters */
 692:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   assert_param(IS_ADC_MULTIMODE_MASTER_INSTANCE(hadc->Instance));
 693:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   assert_param(IS_FUNCTIONAL_STATE(hadc->Init.ContinuousConvMode));
 694:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 695:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Process locked */
 696:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   __HAL_LOCK(hadc);
 955              		.loc 1 696 0
 956 0004 90F82440 		ldrb	r4, [r0, #36]	@ zero_extendqisi2
 957 0008 012C     		cmp	r4, #1
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 31


 958 000a 67D0     		beq	.L113
 959              		.loc 1 696 0 is_stmt 0 discriminator 2
 960 000c 0124     		movs	r4, #1
 961 000e 80F82440 		strb	r4, [r0, #36]
 697:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 698:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Set a temporary handle of the ADC slave associated to the ADC master     */
 699:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   ADC_MULTI_SLAVE(hadc, &tmphadcSlave);
 962              		.loc 1 699 0 is_stmt 1 discriminator 2
 963 0012 334C     		ldr	r4, .L117
 964 0014 0094     		str	r4, [sp]
 700:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 701:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* On STM32F1 devices, ADC slave regular group must be configured with      */
 702:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* conversion trigger ADC_SOFTWARE_START.                                   */
 703:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Note: External trigger of ADC slave must be enabled, it is already done  */
 704:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*       into function "HAL_ADC_Init()".                                    */
 705:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   if(!ADC_IS_SOFTWARE_START_REGULAR(&tmphadcSlave))  
 965              		.loc 1 705 0 discriminator 2
 966 0016 A468     		ldr	r4, [r4, #8]
 967 0018 04F46024 		and	r4, r4, #917504
 968 001c B4F5602F 		cmp	r4, #917504
 969 0020 0AD0     		beq	.L108
 706:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
 707:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Update ADC state machine to error */
 708:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_CONFIG);
 970              		.loc 1 708 0
 971 0022 836A     		ldr	r3, [r0, #40]
 972 0024 43F02003 		orr	r3, r3, #32
 973 0028 8362     		str	r3, [r0, #40]
 709:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 710:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Process unlocked */
 711:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     __HAL_UNLOCK(hadc);
 974              		.loc 1 711 0
 975 002a 0023     		movs	r3, #0
 976 002c 80F82430 		strb	r3, [r0, #36]
 712:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 713:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     return HAL_ERROR;
 977              		.loc 1 713 0
 978 0030 0124     		movs	r4, #1
 979              	.LVL57:
 980              	.L107:
 714:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
 715:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 716:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Enable the ADC peripherals: master and slave (in case if not already     */
 717:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* enabled previously)                                                      */
 718:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   tmp_hal_status = ADC_Enable(hadc);
 719:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   if (tmp_hal_status == HAL_OK)
 720:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
 721:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     tmp_hal_status = ADC_Enable(&tmphadcSlave);
 722:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
 723:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 724:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Start conversion if all ADCs of multimode are effectively enabled */
 725:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   if (tmp_hal_status == HAL_OK)
 726:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
 727:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Set ADC state (ADC master)                                             */
 728:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* - Clear state bitfield related to regular group conversion results     */
 729:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* - Set state bitfield related to regular operation                      */
 730:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     ADC_STATE_CLR_SET(hadc->State,
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 32


 731:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                       HAL_ADC_STATE_READY | HAL_ADC_STATE_REG_EOC | HAL_ADC_STATE_MULTIMODE_SLAVE,
 732:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                       HAL_ADC_STATE_REG_BUSY);
 733:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       
 734:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* If conversions on group regular are also triggering group injected,    */
 735:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* update ADC state.                                                      */
 736:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     if (READ_BIT(hadc->Instance->CR1, ADC_CR1_JAUTO) != RESET)
 737:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 738:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       ADC_STATE_CLR_SET(hadc->State, HAL_ADC_STATE_INJ_EOC, HAL_ADC_STATE_INJ_BUSY);  
 739:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 740:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 741:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Process unlocked */
 742:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Unlock before starting ADC conversions: in case of potential           */
 743:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* interruption, to let the process to ADC IRQ Handler.                   */
 744:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     __HAL_UNLOCK(hadc);
 745:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 746:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Set ADC error code to none */
 747:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     ADC_CLEAR_ERRORCODE(hadc);
 748:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 749:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 750:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Set the DMA transfer complete callback */
 751:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     hadc->DMA_Handle->XferCpltCallback = ADC_DMAConvCplt;
 752:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****        
 753:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Set the DMA half transfer complete callback */
 754:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     hadc->DMA_Handle->XferHalfCpltCallback = ADC_DMAHalfConvCplt;
 755:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 756:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Set the DMA error callback */
 757:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     hadc->DMA_Handle->XferErrorCallback = ADC_DMAError;
 758:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 759:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 760:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Manage ADC and DMA start: ADC overrun interruption, DMA start, ADC     */
 761:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* start (in case of SW start):                                           */
 762:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 763:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Clear regular group conversion flag and overrun flag */
 764:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* (To ensure of no unknown state from potential previous ADC operations) */
 765:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_EOC);
 766:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 767:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Enable ADC DMA mode of ADC master */
 768:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     SET_BIT(hadc->Instance->CR2, ADC_CR2_DMA);
 769:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 770:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Start the DMA channel */
 771:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     HAL_DMA_Start_IT(hadc->DMA_Handle, (uint32_t)&hadc->Instance->DR, (uint32_t)pData, Length);
 772:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 773:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Start conversion of regular group if software start has been selected. */
 774:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* If external trigger has been selected, conversion will start at next   */
 775:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* trigger event.                                                         */
 776:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Note: Alternate trigger for single conversion could be to force an     */
 777:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /*       additional set of bit ADON "hadc->Instance->CR2 |= ADC_CR2_ADON;"*/
 778:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     if (ADC_IS_SOFTWARE_START_REGULAR(hadc))
 779:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 780:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       /* Start ADC conversion on regular group with SW start */
 781:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       SET_BIT(hadc->Instance->CR2, (ADC_CR2_SWSTART | ADC_CR2_EXTTRIG));
 782:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 783:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     else
 784:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 785:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       /* Start ADC conversion on regular group with external trigger */
 786:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       SET_BIT(hadc->Instance->CR2, ADC_CR2_EXTTRIG);
 787:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 33


 788:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
 789:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   else
 790:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
 791:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Process unlocked */
 792:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     __HAL_UNLOCK(hadc);
 793:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
 794:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 795:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Return function status */
 796:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   return tmp_hal_status;
 797:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** }
 981              		.loc 1 797 0
 982 0032 2046     		mov	r0, r4
 983 0034 0DB0     		add	sp, sp, #52
 984              	.LCFI18:
 985              		.cfi_remember_state
 986              		.cfi_def_cfa_offset 20
 987              		@ sp needed
 988 0036 F0BD     		pop	{r4, r5, r6, r7, pc}
 989              	.LVL58:
 990              	.L108:
 991              	.LCFI19:
 992              		.cfi_restore_state
 993 0038 1746     		mov	r7, r2
 994 003a 0E46     		mov	r6, r1
 995 003c 0546     		mov	r5, r0
 718:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   if (tmp_hal_status == HAL_OK)
 996              		.loc 1 718 0
 997 003e FFF7FEFF 		bl	ADC_Enable
 998              	.LVL59:
 719:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
 999              		.loc 1 719 0
 1000 0042 0446     		mov	r4, r0
 1001 0044 0028     		cmp	r0, #0
 1002 0046 3BD0     		beq	.L115
 1003              	.LVL60:
 1004              	.L109:
 725:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
 1005              		.loc 1 725 0
 1006 0048 002C     		cmp	r4, #0
 1007 004a 43D1     		bne	.L110
 730:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                       HAL_ADC_STATE_READY | HAL_ADC_STATE_REG_EOC | HAL_ADC_STATE_MULTIMODE_SLAVE,
 1008              		.loc 1 730 0
 1009 004c AA6A     		ldr	r2, [r5, #40]
 1010 004e 254B     		ldr	r3, .L117+4
 1011 0050 1340     		ands	r3, r3, r2
 1012 0052 43F48073 		orr	r3, r3, #256
 1013 0056 AB62     		str	r3, [r5, #40]
 736:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 1014              		.loc 1 736 0
 1015 0058 2B68     		ldr	r3, [r5]
 1016 005a 5B68     		ldr	r3, [r3, #4]
 1017 005c 13F4806F 		tst	r3, #1024
 1018 0060 05D0     		beq	.L111
 738:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 1019              		.loc 1 738 0
 1020 0062 AB6A     		ldr	r3, [r5, #40]
 1021 0064 23F44053 		bic	r3, r3, #12288
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 34


 1022 0068 43F48053 		orr	r3, r3, #4096
 1023 006c AB62     		str	r3, [r5, #40]
 1024              	.L111:
 744:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 1025              		.loc 1 744 0
 1026 006e 0023     		movs	r3, #0
 1027 0070 85F82430 		strb	r3, [r5, #36]
 747:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 1028              		.loc 1 747 0
 1029 0074 EB62     		str	r3, [r5, #44]
 751:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****        
 1030              		.loc 1 751 0
 1031 0076 2B6A     		ldr	r3, [r5, #32]
 1032 0078 1B4A     		ldr	r2, .L117+8
 1033 007a 9A62     		str	r2, [r3, #40]
 754:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 1034              		.loc 1 754 0
 1035 007c 2B6A     		ldr	r3, [r5, #32]
 1036 007e 1B4A     		ldr	r2, .L117+12
 1037 0080 DA62     		str	r2, [r3, #44]
 757:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 1038              		.loc 1 757 0
 1039 0082 2B6A     		ldr	r3, [r5, #32]
 1040 0084 1A4A     		ldr	r2, .L117+16
 1041 0086 1A63     		str	r2, [r3, #48]
 765:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 1042              		.loc 1 765 0
 1043 0088 2B68     		ldr	r3, [r5]
 1044 008a 6FF00202 		mvn	r2, #2
 1045 008e 1A60     		str	r2, [r3]
 768:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 1046              		.loc 1 768 0
 1047 0090 2A68     		ldr	r2, [r5]
 1048 0092 9368     		ldr	r3, [r2, #8]
 1049 0094 43F48073 		orr	r3, r3, #256
 1050 0098 9360     		str	r3, [r2, #8]
 771:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 1051              		.loc 1 771 0
 1052 009a 2968     		ldr	r1, [r5]
 1053 009c 3B46     		mov	r3, r7
 1054 009e 3246     		mov	r2, r6
 1055 00a0 4C31     		adds	r1, r1, #76
 1056 00a2 286A     		ldr	r0, [r5, #32]
 1057 00a4 FFF7FEFF 		bl	HAL_DMA_Start_IT
 1058              	.LVL61:
 778:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 1059              		.loc 1 778 0
 1060 00a8 2A68     		ldr	r2, [r5]
 1061 00aa 9368     		ldr	r3, [r2, #8]
 1062 00ac 03F46023 		and	r3, r3, #917504
 1063 00b0 B3F5602F 		cmp	r3, #917504
 1064 00b4 09D0     		beq	.L116
 786:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 1065              		.loc 1 786 0
 1066 00b6 9368     		ldr	r3, [r2, #8]
 1067 00b8 43F48013 		orr	r3, r3, #1048576
 1068 00bc 9360     		str	r3, [r2, #8]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 35


 1069 00be B8E7     		b	.L107
 1070              	.LVL62:
 1071              	.L115:
 721:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
 1072              		.loc 1 721 0
 1073 00c0 6846     		mov	r0, sp
 1074              	.LVL63:
 1075 00c2 FFF7FEFF 		bl	ADC_Enable
 1076              	.LVL64:
 1077 00c6 0446     		mov	r4, r0
 1078              	.LVL65:
 1079 00c8 BEE7     		b	.L109
 1080              	.L116:
 781:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 1081              		.loc 1 781 0
 1082 00ca 9368     		ldr	r3, [r2, #8]
 1083 00cc 43F4A003 		orr	r3, r3, #5242880
 1084 00d0 9360     		str	r3, [r2, #8]
 1085 00d2 AEE7     		b	.L107
 1086              	.L110:
 792:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
 1087              		.loc 1 792 0
 1088 00d4 0023     		movs	r3, #0
 1089 00d6 85F82430 		strb	r3, [r5, #36]
 1090 00da AAE7     		b	.L107
 1091              	.LVL66:
 1092              	.L113:
 696:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 1093              		.loc 1 696 0
 1094 00dc 0224     		movs	r4, #2
 1095 00de A8E7     		b	.L107
 1096              	.L118:
 1097              		.align	2
 1098              	.L117:
 1099 00e0 00280140 		.word	1073817600
 1100 00e4 FEFCEFFF 		.word	-1049346
 1101 00e8 00000000 		.word	ADC_DMAConvCplt
 1102 00ec 00000000 		.word	ADC_DMAHalfConvCplt
 1103 00f0 00000000 		.word	ADC_DMAError
 1104              		.cfi_endproc
 1105              	.LFE72:
 1107              		.section	.text.HAL_ADCEx_MultiModeStop_DMA,"ax",%progbits
 1108              		.align	1
 1109              		.global	HAL_ADCEx_MultiModeStop_DMA
 1110              		.syntax unified
 1111              		.thumb
 1112              		.thumb_func
 1113              		.fpu softvfp
 1115              	HAL_ADCEx_MultiModeStop_DMA:
 1116              	.LFB73:
 798:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 799:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /**
 800:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @brief  Stop ADC conversion of regular group (and injected channels in 
 801:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         case of auto_injection mode), disable ADC DMA transfer, disable 
 802:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         ADC peripheral.
 803:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @note   Multimode is kept enabled after this function. To disable multimode 
 804:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         (set with HAL_ADCEx_MultiModeConfigChannel(), ADC must be 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 36


 805:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         reinitialized using HAL_ADC_Init() or HAL_ADC_ReInit().
 806:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @note   In case of DMA configured in circular mode, function 
 807:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         HAL_ADC_Stop_DMA must be called after this function with handle of
 808:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         ADC slave, to properly disable the DMA channel.
 809:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @param  hadc: ADC handle of ADC master (handle of ADC slave must not be used)
 810:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @retval None
 811:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   */
 812:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** HAL_StatusTypeDef HAL_ADCEx_MultiModeStop_DMA(ADC_HandleTypeDef* hadc)
 813:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** {
 1117              		.loc 1 813 0
 1118              		.cfi_startproc
 1119              		@ args = 0, pretend = 0, frame = 48
 1120              		@ frame_needed = 0, uses_anonymous_args = 0
 1121              	.LVL67:
 814:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 815:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   ADC_HandleTypeDef tmphadcSlave;
 816:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 817:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Check the parameters */
 818:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   assert_param(IS_ADC_MULTIMODE_MASTER_INSTANCE(hadc->Instance));
 819:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 820:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Process locked */
 821:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   __HAL_LOCK(hadc);
 1122              		.loc 1 821 0
 1123 0000 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 1124 0004 012B     		cmp	r3, #1
 1125 0006 36D0     		beq	.L123
 813:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 1126              		.loc 1 813 0 discriminator 2
 1127 0008 10B5     		push	{r4, lr}
 1128              	.LCFI20:
 1129              		.cfi_def_cfa_offset 8
 1130              		.cfi_offset 4, -8
 1131              		.cfi_offset 14, -4
 1132 000a 8CB0     		sub	sp, sp, #48
 1133              	.LCFI21:
 1134              		.cfi_def_cfa_offset 56
 1135 000c 0446     		mov	r4, r0
 1136              		.loc 1 821 0 discriminator 2
 1137 000e 0123     		movs	r3, #1
 1138 0010 80F82430 		strb	r3, [r0, #36]
 822:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 823:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****  
 824:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Stop potential conversion on going, on regular and injected groups */
 825:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Disable ADC master peripheral */
 826:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   tmp_hal_status = ADC_ConversionStop_Disable(hadc);
 1139              		.loc 1 826 0 discriminator 2
 1140 0014 FFF7FEFF 		bl	ADC_ConversionStop_Disable
 1141              	.LVL68:
 827:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 828:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Check if ADC is effectively disabled */
 829:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   if(tmp_hal_status == HAL_OK)
 1142              		.loc 1 829 0 discriminator 2
 1143 0018 0346     		mov	r3, r0
 1144 001a 28B1     		cbz	r0, .L128
 1145              	.LVL69:
 1146              	.L121:
 830:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 37


 831:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Set a temporary handle of the ADC slave associated to the ADC master   */
 832:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     ADC_MULTI_SLAVE(hadc, &tmphadcSlave);
 833:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 834:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Disable ADC slave peripheral */
 835:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     tmp_hal_status = ADC_ConversionStop_Disable(&tmphadcSlave);
 836:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 837:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Check if ADC is effectively disabled */
 838:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     if(tmp_hal_status != HAL_OK)
 839:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 840:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       /* Update ADC state machine to error */
 841:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_INTERNAL);
 842:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 843:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       /* Process unlocked */
 844:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       __HAL_UNLOCK(hadc);
 845:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 846:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       return HAL_ERROR;
 847:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 848:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 849:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Disable ADC DMA mode */
 850:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     CLEAR_BIT(hadc->Instance->CR2, ADC_CR2_DMA);
 851:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 852:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Reset configuration of ADC DMA continuous request for dual mode */
 853:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     CLEAR_BIT(hadc->Instance->CR1, ADC_CR1_DUALMOD);
 854:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         
 855:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Disable the DMA channel (in case of DMA in circular mode or stop while */
 856:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* while DMA transfer is on going)                                        */
 857:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     tmp_hal_status = HAL_DMA_Abort(hadc->DMA_Handle);
 858:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 859:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Change ADC state (ADC master) */
 860:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     ADC_STATE_CLR_SET(hadc->State,
 861:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                       HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 862:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                       HAL_ADC_STATE_READY);
 863:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
 864:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 865:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Process unlocked */
 866:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   __HAL_UNLOCK(hadc);
 1147              		.loc 1 866 0
 1148 001c 0022     		movs	r2, #0
 1149 001e 84F82420 		strb	r2, [r4, #36]
 1150              	.LVL70:
 1151              	.L120:
 867:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 868:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Return function status */
 869:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   return tmp_hal_status;
 870:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** }
 1152              		.loc 1 870 0
 1153 0022 1846     		mov	r0, r3
 1154 0024 0CB0     		add	sp, sp, #48
 1155              	.LCFI22:
 1156              		.cfi_remember_state
 1157              		.cfi_def_cfa_offset 8
 1158              		@ sp needed
 1159 0026 10BD     		pop	{r4, pc}
 1160              	.LVL71:
 1161              	.L128:
 1162              	.LCFI23:
 1163              		.cfi_restore_state
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 38


 832:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 1164              		.loc 1 832 0
 1165 0028 0CA8     		add	r0, sp, #48
 1166              	.LVL72:
 1167 002a 144B     		ldr	r3, .L129
 1168 002c 40F8303D 		str	r3, [r0, #-48]!
 835:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 1169              		.loc 1 835 0
 1170 0030 FFF7FEFF 		bl	ADC_ConversionStop_Disable
 1171              	.LVL73:
 838:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 1172              		.loc 1 838 0
 1173 0034 40B1     		cbz	r0, .L122
 841:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 1174              		.loc 1 841 0
 1175 0036 A36A     		ldr	r3, [r4, #40]
 1176 0038 43F01003 		orr	r3, r3, #16
 1177 003c A362     		str	r3, [r4, #40]
 844:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 1178              		.loc 1 844 0
 1179 003e 0023     		movs	r3, #0
 1180 0040 84F82430 		strb	r3, [r4, #36]
 846:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 1181              		.loc 1 846 0
 1182 0044 0123     		movs	r3, #1
 1183 0046 ECE7     		b	.L120
 1184              	.L122:
 850:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 1185              		.loc 1 850 0
 1186 0048 2268     		ldr	r2, [r4]
 1187 004a 9368     		ldr	r3, [r2, #8]
 1188 004c 23F48073 		bic	r3, r3, #256
 1189 0050 9360     		str	r3, [r2, #8]
 853:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         
 1190              		.loc 1 853 0
 1191 0052 2268     		ldr	r2, [r4]
 1192 0054 5368     		ldr	r3, [r2, #4]
 1193 0056 23F47023 		bic	r3, r3, #983040
 1194 005a 5360     		str	r3, [r2, #4]
 857:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 1195              		.loc 1 857 0
 1196 005c 206A     		ldr	r0, [r4, #32]
 1197              	.LVL74:
 1198 005e FFF7FEFF 		bl	HAL_DMA_Abort
 1199              	.LVL75:
 1200 0062 0346     		mov	r3, r0
 1201              	.LVL76:
 860:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                       HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 1202              		.loc 1 860 0
 1203 0064 A26A     		ldr	r2, [r4, #40]
 1204 0066 22F48852 		bic	r2, r2, #4352
 1205 006a 22F00102 		bic	r2, r2, #1
 1206 006e 42F00102 		orr	r2, r2, #1
 1207 0072 A262     		str	r2, [r4, #40]
 1208 0074 D2E7     		b	.L121
 1209              	.LVL77:
 1210              	.L123:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 39


 1211              	.LCFI24:
 1212              		.cfi_def_cfa_offset 0
 1213              		.cfi_restore 4
 1214              		.cfi_restore 14
 821:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 1215              		.loc 1 821 0
 1216 0076 0223     		movs	r3, #2
 1217              		.loc 1 870 0
 1218 0078 1846     		mov	r0, r3
 1219              	.LVL78:
 1220 007a 7047     		bx	lr
 1221              	.L130:
 1222              		.align	2
 1223              	.L129:
 1224 007c 00280140 		.word	1073817600
 1225              		.cfi_endproc
 1226              	.LFE73:
 1228              		.section	.text.HAL_ADCEx_InjectedGetValue,"ax",%progbits
 1229              		.align	1
 1230              		.global	HAL_ADCEx_InjectedGetValue
 1231              		.syntax unified
 1232              		.thumb
 1233              		.thumb_func
 1234              		.fpu softvfp
 1236              	HAL_ADCEx_InjectedGetValue:
 1237              	.LFB74:
 871:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** #endif /* defined STM32F103x6 || defined STM32F103xB || defined STM32F105xC || defined STM32F107xC 
 872:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 873:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /**
 874:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @brief  Get ADC injected group conversion result.
 875:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @note   Reading register JDRx automatically clears ADC flag JEOC
 876:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         (ADC group injected end of unitary conversion).
 877:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @note   This function does not clear ADC flag JEOS 
 878:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         (ADC group injected end of sequence conversion)
 879:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         Occurrence of flag JEOS rising:
 880:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *          - If sequencer is composed of 1 rank, flag JEOS is equivalent
 881:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *            to flag JEOC.
 882:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *          - If sequencer is composed of several ranks, during the scan
 883:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *            sequence flag JEOC only is raised, at the end of the scan sequence
 884:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *            both flags JEOC and EOS are raised.
 885:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         Flag JEOS must not be cleared by this function because
 886:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         it would not be compliant with low power features
 887:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         (feature low power auto-wait, not available on all STM32 families).
 888:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         To clear this flag, either use function: 
 889:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         in programming model IT: @ref HAL_ADC_IRQHandler(), in programming
 890:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         model polling: @ref HAL_ADCEx_InjectedPollForConversion() 
 891:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         or @ref __HAL_ADC_CLEAR_FLAG(&hadc, ADC_FLAG_JEOS).
 892:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @param  hadc: ADC handle
 893:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @param  InjectedRank: the converted ADC injected rank.
 894:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *          This parameter can be one of the following values:
 895:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *            @arg ADC_INJECTED_RANK_1: Injected Channel1 selected
 896:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *            @arg ADC_INJECTED_RANK_2: Injected Channel2 selected
 897:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *            @arg ADC_INJECTED_RANK_3: Injected Channel3 selected
 898:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *            @arg ADC_INJECTED_RANK_4: Injected Channel4 selected
 899:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @retval ADC group injected conversion data
 900:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   */
 901:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** uint32_t HAL_ADCEx_InjectedGetValue(ADC_HandleTypeDef* hadc, uint32_t InjectedRank)
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 40


 902:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** {
 1238              		.loc 1 902 0
 1239              		.cfi_startproc
 1240              		@ args = 0, pretend = 0, frame = 0
 1241              		@ frame_needed = 0, uses_anonymous_args = 0
 1242              		@ link register save eliminated.
 1243              	.LVL79:
 903:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   uint32_t tmp_jdr = 0U;
 904:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 905:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Check the parameters */
 906:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
 907:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   assert_param(IS_ADC_INJECTED_RANK(InjectedRank));
 908:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 909:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Get ADC converted value */ 
 910:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   switch(InjectedRank)
 1244              		.loc 1 910 0
 1245 0000 0329     		cmp	r1, #3
 1246 0002 09D0     		beq	.L133
 1247 0004 0429     		cmp	r1, #4
 1248 0006 04D0     		beq	.L134
 1249 0008 0229     		cmp	r1, #2
 1250 000a 08D0     		beq	.L138
 911:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {  
 912:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     case ADC_INJECTED_RANK_4: 
 913:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       tmp_jdr = hadc->Instance->JDR4;
 914:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       break;
 915:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     case ADC_INJECTED_RANK_3: 
 916:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       tmp_jdr = hadc->Instance->JDR3;
 917:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       break;
 918:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     case ADC_INJECTED_RANK_2: 
 919:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       tmp_jdr = hadc->Instance->JDR2;
 920:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       break;
 921:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     case ADC_INJECTED_RANK_1:
 922:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     default:
 923:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       tmp_jdr = hadc->Instance->JDR1;
 1251              		.loc 1 923 0
 1252 000c 0368     		ldr	r3, [r0]
 1253 000e D86B     		ldr	r0, [r3, #60]
 1254              	.LVL80:
 924:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       break;
 925:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
 926:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 927:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Return ADC converted value */ 
 928:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   return tmp_jdr;
 929:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** }
 1255              		.loc 1 929 0
 1256 0010 7047     		bx	lr
 1257              	.LVL81:
 1258              	.L134:
 913:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       break;
 1259              		.loc 1 913 0
 1260 0012 0368     		ldr	r3, [r0]
 1261 0014 986C     		ldr	r0, [r3, #72]
 1262              	.LVL82:
 914:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     case ADC_INJECTED_RANK_3: 
 1263              		.loc 1 914 0
 1264 0016 7047     		bx	lr
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 41


 1265              	.LVL83:
 1266              	.L133:
 916:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       break;
 1267              		.loc 1 916 0
 1268 0018 0368     		ldr	r3, [r0]
 1269 001a 586C     		ldr	r0, [r3, #68]
 1270              	.LVL84:
 917:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     case ADC_INJECTED_RANK_2: 
 1271              		.loc 1 917 0
 1272 001c 7047     		bx	lr
 1273              	.LVL85:
 1274              	.L138:
 919:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       break;
 1275              		.loc 1 919 0
 1276 001e 0368     		ldr	r3, [r0]
 1277 0020 186C     		ldr	r0, [r3, #64]
 1278              	.LVL86:
 920:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     case ADC_INJECTED_RANK_1:
 1279              		.loc 1 920 0
 1280 0022 7047     		bx	lr
 1281              		.cfi_endproc
 1282              	.LFE74:
 1284              		.section	.text.HAL_ADCEx_MultiModeGetValue,"ax",%progbits
 1285              		.align	1
 1286              		.global	HAL_ADCEx_MultiModeGetValue
 1287              		.syntax unified
 1288              		.thumb
 1289              		.thumb_func
 1290              		.fpu softvfp
 1292              	HAL_ADCEx_MultiModeGetValue:
 1293              	.LFB75:
 930:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 931:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** #if defined (STM32F103x6) || defined (STM32F103xB) || defined (STM32F105xC) || defined (STM32F107xC
 932:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /**
 933:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @brief  Returns the last ADC Master&Slave regular conversions results data
 934:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         in the selected multi mode.
 935:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @param  hadc: ADC handle of ADC master (handle of ADC slave must not be used)
 936:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @retval The converted data value.
 937:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   */
 938:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** uint32_t HAL_ADCEx_MultiModeGetValue(ADC_HandleTypeDef* hadc)
 939:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** {
 1294              		.loc 1 939 0
 1295              		.cfi_startproc
 1296              		@ args = 0, pretend = 0, frame = 0
 1297              		@ frame_needed = 0, uses_anonymous_args = 0
 1298              		@ link register save eliminated.
 1299              	.LVL87:
 940:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   uint32_t tmpDR = 0U;
 941:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 942:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Check the parameters */
 943:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   assert_param(IS_ADC_MULTIMODE_MASTER_INSTANCE(hadc->Instance));
 944:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 945:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Check the parameters */
 946:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
 947:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 948:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Note: EOC flag is not cleared here by software because automatically     */
 949:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*       cleared by hardware when reading register DR.                      */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 42


 950:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 951:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* On STM32F1 devices, ADC1 data register DR contains ADC2 conversions      */
 952:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* only if ADC1 DMA mode is enabled.                                        */
 953:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   tmpDR = hadc->Instance->DR;
 1300              		.loc 1 953 0
 1301 0000 0368     		ldr	r3, [r0]
 1302 0002 D86C     		ldr	r0, [r3, #76]
 1303              	.LVL88:
 954:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 955:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   if (HAL_IS_BIT_CLR(ADC1->CR2, ADC_CR2_DMA))
 1304              		.loc 1 955 0
 1305 0004 044B     		ldr	r3, .L141
 1306 0006 9B68     		ldr	r3, [r3, #8]
 1307 0008 13F4807F 		tst	r3, #256
 1308 000c 03D1     		bne	.L139
 956:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
 957:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     tmpDR |= (ADC2->DR << 16U);
 1309              		.loc 1 957 0
 1310 000e 034B     		ldr	r3, .L141+4
 1311 0010 DB6C     		ldr	r3, [r3, #76]
 1312 0012 40EA0340 		orr	r0, r0, r3, lsl #16
 1313              	.LVL89:
 1314              	.L139:
 958:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
 959:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
 960:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Return ADC converted value */ 
 961:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   return tmpDR;
 962:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** }
 1315              		.loc 1 962 0
 1316 0016 7047     		bx	lr
 1317              	.L142:
 1318              		.align	2
 1319              	.L141:
 1320 0018 00240140 		.word	1073816576
 1321 001c 00280140 		.word	1073817600
 1322              		.cfi_endproc
 1323              	.LFE75:
 1325              		.section	.text.HAL_ADCEx_InjectedConvCpltCallback,"ax",%progbits
 1326              		.align	1
 1327              		.weak	HAL_ADCEx_InjectedConvCpltCallback
 1328              		.syntax unified
 1329              		.thumb
 1330              		.thumb_func
 1331              		.fpu softvfp
 1333              	HAL_ADCEx_InjectedConvCpltCallback:
 1334              	.LFB76:
 963:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** #endif /* defined STM32F103x6 || defined STM32F103xB || defined STM32F105xC || defined STM32F107xC 
 964:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 965:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /**
 966:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @brief  Injected conversion complete callback in non blocking mode 
 967:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @param  hadc: ADC handle
 968:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @retval None
 969:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   */
 970:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** __weak void HAL_ADCEx_InjectedConvCpltCallback(ADC_HandleTypeDef* hadc)
 971:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** {
 1335              		.loc 1 971 0
 1336              		.cfi_startproc
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 43


 1337              		@ args = 0, pretend = 0, frame = 0
 1338              		@ frame_needed = 0, uses_anonymous_args = 0
 1339              		@ link register save eliminated.
 1340              	.LVL90:
 972:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Prevent unused argument(s) compilation warning */
 973:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   UNUSED(hadc);
 974:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
 975:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****             the HAL_ADCEx_InjectedConvCpltCallback could be implemented in the user file
 976:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   */
 977:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** }
 1341              		.loc 1 977 0
 1342 0000 7047     		bx	lr
 1343              		.cfi_endproc
 1344              	.LFE76:
 1346              		.section	.text.HAL_ADCEx_InjectedConfigChannel,"ax",%progbits
 1347              		.align	1
 1348              		.global	HAL_ADCEx_InjectedConfigChannel
 1349              		.syntax unified
 1350              		.thumb
 1351              		.thumb_func
 1352              		.fpu softvfp
 1354              	HAL_ADCEx_InjectedConfigChannel:
 1355              	.LFB77:
 978:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 979:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /**
 980:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @}
 981:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   */
 982:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 983:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /** @defgroup ADCEx_Exported_Functions_Group2 Extended Peripheral Control functions
 984:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @brief    Extended Peripheral Control functions
 985:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *
 986:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** @verbatim   
 987:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****  ===============================================================================
 988:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****              ##### Peripheral Control functions #####
 989:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****  ===============================================================================  
 990:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     [..]  This section provides functions allowing to:
 991:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       (+) Configure channels on injected group
 992:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       (+) Configure multimode
 993:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 994:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** @endverbatim
 995:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @{
 996:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   */
 997:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
 998:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /**
 999:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @brief  Configures the ADC injected group and the selected channel to be
1000:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         linked to the injected group.
1001:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @note   Possibility to update parameters on the fly:
1002:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         This function initializes injected group, following calls to this 
1003:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         function can be used to reconfigure some parameters of structure
1004:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         "ADC_InjectionConfTypeDef" on the fly, without reseting the ADC.
1005:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         The setting of these parameters is conditioned to ADC state: 
1006:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         this function must be called when ADC is not under conversion.
1007:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @param  hadc: ADC handle
1008:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @param  sConfigInjected: Structure of ADC injected group and ADC channel for
1009:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         injected group.
1010:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @retval None
1011:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 44


1012:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** HAL_StatusTypeDef HAL_ADCEx_InjectedConfigChannel(ADC_HandleTypeDef* hadc, ADC_InjectionConfTypeDef
1013:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** {
 1356              		.loc 1 1013 0
 1357              		.cfi_startproc
 1358              		@ args = 0, pretend = 0, frame = 8
 1359              		@ frame_needed = 0, uses_anonymous_args = 0
 1360              		@ link register save eliminated.
 1361              	.LVL91:
 1362 0000 F0B4     		push	{r4, r5, r6, r7}
 1363              	.LCFI25:
 1364              		.cfi_def_cfa_offset 16
 1365              		.cfi_offset 4, -16
 1366              		.cfi_offset 5, -12
 1367              		.cfi_offset 6, -8
 1368              		.cfi_offset 7, -4
 1369 0002 82B0     		sub	sp, sp, #8
 1370              	.LCFI26:
 1371              		.cfi_def_cfa_offset 24
 1372 0004 0346     		mov	r3, r0
 1373              	.LVL92:
1014:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
1015:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   __IO uint32_t wait_loop_index = 0U;
 1374              		.loc 1 1015 0
 1375 0006 0022     		movs	r2, #0
 1376 0008 0192     		str	r2, [sp, #4]
1016:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
1017:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Check the parameters */
1018:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
1019:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   assert_param(IS_ADC_CHANNEL(sConfigInjected->InjectedChannel));
1020:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   assert_param(IS_ADC_SAMPLE_TIME(sConfigInjected->InjectedSamplingTime));
1021:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   assert_param(IS_FUNCTIONAL_STATE(sConfigInjected->AutoInjectedConv));
1022:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   assert_param(IS_ADC_EXTTRIGINJEC(sConfigInjected->ExternalTrigInjecConv));
1023:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   assert_param(IS_ADC_RANGE(sConfigInjected->InjectedOffset));
1024:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
1025:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   if(hadc->Init.ScanConvMode != ADC_SCAN_DISABLE)
 1377              		.loc 1 1025 0
 1378 000a 8068     		ldr	r0, [r0, #8]
 1379              	.LVL93:
1026:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
1027:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     assert_param(IS_ADC_INJECTED_RANK(sConfigInjected->InjectedRank));
1028:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     assert_param(IS_ADC_INJECTED_NB_CONV(sConfigInjected->InjectedNbrOfConversion));
1029:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     assert_param(IS_FUNCTIONAL_STATE(sConfigInjected->InjectedDiscontinuousConvMode));
1030:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
1031:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
1032:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Process locked */
1033:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   __HAL_LOCK(hadc);
 1380              		.loc 1 1033 0
 1381 000c 93F82420 		ldrb	r2, [r3, #36]	@ zero_extendqisi2
 1382 0010 012A     		cmp	r2, #1
 1383 0012 00F0FC80 		beq	.L167
 1384              		.loc 1 1033 0 is_stmt 0 discriminator 2
 1385 0016 0122     		movs	r2, #1
 1386 0018 83F82420 		strb	r2, [r3, #36]
1034:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
1035:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Configuration of injected group sequencer:                               */
1036:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* - if scan mode is disabled, injected channels sequence length is set to  */
1037:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*   0x00: 1 channel converted (channel on regular rank 1)                  */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 45


1038:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*   Parameter "InjectedNbrOfConversion" is discarded.                      */
1039:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*   Note: Scan mode is present by hardware on this device and, if          */
1040:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*   disabled, discards automatically nb of conversions. Anyway, nb of      */
1041:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*   conversions is forced to 0x00 for alignment over all STM32 devices.    */
1042:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* - if scan mode is enabled, injected channels sequence length is set to   */
1043:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*   parameter "InjectedNbrOfConversion".                                   */
1044:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   if (hadc->Init.ScanConvMode == ADC_SCAN_DISABLE)
 1387              		.loc 1 1044 0 is_stmt 1 discriminator 2
 1388 001c 0028     		cmp	r0, #0
 1389 001e 4CD1     		bne	.L146
1045:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
1046:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     if (sConfigInjected->InjectedRank == ADC_INJECTED_RANK_1)
 1390              		.loc 1 1046 0
 1391 0020 4A68     		ldr	r2, [r1, #4]
 1392 0022 012A     		cmp	r2, #1
 1393 0024 3FD0     		beq	.L170
1047:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
1048:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       /* Clear the old SQx bits for all injected ranks */
1049:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       MODIFY_REG(hadc->Instance->JSQR                             ,
1050:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  ADC_JSQR_JL   |
1051:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  ADC_JSQR_JSQ4 |
1052:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  ADC_JSQR_JSQ3 |
1053:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  ADC_JSQR_JSQ2 |
1054:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  ADC_JSQR_JSQ1                                    ,
1055:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  ADC_JSQR_RK_JL(sConfigInjected->InjectedChannel,
1056:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                                   ADC_INJECTED_RANK_1,
1057:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                                   0x01U));
1058:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
1059:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* If another injected rank than rank1 was intended to be set, and could  */
1060:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* not due to ScanConvMode disabled, error is reported.                   */
1061:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     else
1062:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
1063:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       /* Update ADC state machine to error */
1064:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_CONFIG);
 1394              		.loc 1 1064 0
 1395 0026 9A6A     		ldr	r2, [r3, #40]
 1396 0028 42F02002 		orr	r2, r2, #32
 1397 002c 9A62     		str	r2, [r3, #40]
 1398              	.LVL94:
1065:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       
1066:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       tmp_hal_status = HAL_ERROR;
 1399              		.loc 1 1066 0
 1400 002e 0120     		movs	r0, #1
 1401              	.LVL95:
 1402              	.L148:
1067:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
1068:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
1069:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   else
1070:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
1071:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Since injected channels rank conv. order depends on total number of   */
1072:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* injected conversions, selected rank must be below or equal to total   */
1073:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* number of injected conversions to be updated.                         */
1074:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     if (sConfigInjected->InjectedRank <= sConfigInjected->InjectedNbrOfConversion)
1075:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
1076:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       /* Clear the old SQx bits for the selected rank */
1077:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       /* Set the SQx bits for the selected rank */
1078:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       MODIFY_REG(hadc->Instance->JSQR                                         ,
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 46


1079:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  
1080:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  ADC_JSQR_JL                                               |
1081:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  ADC_JSQR_RK_JL(ADC_JSQR_JSQ1,                         
1082:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                                   sConfigInjected->InjectedRank,         
1083:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                                   sConfigInjected->InjectedNbrOfConversion)   ,
1084:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  
1085:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  ADC_JSQR_JL_SHIFT(sConfigInjected->InjectedNbrOfConversion) |
1086:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  ADC_JSQR_RK_JL(sConfigInjected->InjectedChannel,      
1087:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                                   sConfigInjected->InjectedRank,         
1088:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                                   sConfigInjected->InjectedNbrOfConversion)    );
1089:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
1090:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     else
1091:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
1092:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       /* Clear the old SQx bits for the selected rank */
1093:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       MODIFY_REG(hadc->Instance->JSQR                                       ,
1094:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  
1095:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  ADC_JSQR_JL                                               |
1096:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  ADC_JSQR_RK_JL(ADC_JSQR_JSQ1,                         
1097:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                                   sConfigInjected->InjectedRank,         
1098:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                                   sConfigInjected->InjectedNbrOfConversion) ,
1099:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  
1100:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  0x00000000U);
1101:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
1102:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   } 
1103:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
1104:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Configuration of injected group                                          */
1105:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Parameters update conditioned to ADC state:                              */
1106:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Parameters that can be updated only when ADC is disabled:                */
1107:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*  - external trigger to start conversion                                  */
1108:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Parameters update not conditioned to ADC state:                          */
1109:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*  - Automatic injected conversion                                         */
1110:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*  - Injected discontinuous mode                                           */
1111:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Note: In case of ADC already enabled, caution to not launch an unwanted  */
1112:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*       conversion while modifying register CR2 by writing 1 to bit ADON.  */
1113:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   if (ADC_IS_ENABLE(hadc) == RESET)
 1403              		.loc 1 1113 0
 1404 0030 1C68     		ldr	r4, [r3]
 1405 0032 A268     		ldr	r2, [r4, #8]
 1406 0034 12F0010F 		tst	r2, #1
 1407 0038 07D1     		bne	.L150
1114:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {    
1115:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     MODIFY_REG(hadc->Instance->CR2                                           ,
 1408              		.loc 1 1115 0
 1409 003a A268     		ldr	r2, [r4, #8]
 1410 003c 22F4E042 		bic	r2, r2, #28672
 1411 0040 22F00102 		bic	r2, r2, #1
 1412 0044 CD69     		ldr	r5, [r1, #28]
 1413 0046 2A43     		orrs	r2, r2, r5
 1414 0048 A260     		str	r2, [r4, #8]
 1415              	.L150:
1116:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                ADC_CR2_JEXTSEL |
1117:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                ADC_CR2_ADON                                                  ,
1118:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                ADC_CFGR_JEXTSEL(hadc, sConfigInjected->ExternalTrigInjecConv) );
1119:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
1120:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
1121:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
1122:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Configuration of injected group                                          */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 47


1123:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*  - Automatic injected conversion                                         */
1124:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*  - Injected discontinuous mode                                           */
1125:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
1126:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Automatic injected conversion can be enabled if injected group         */
1127:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* external triggers are disabled.                                        */
1128:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     if (sConfigInjected->AutoInjectedConv == ENABLE)
 1416              		.loc 1 1128 0
 1417 004a 8A69     		ldr	r2, [r1, #24]
 1418 004c 012A     		cmp	r2, #1
 1419 004e 5ED0     		beq	.L171
 1420              	.LVL96:
 1421              	.L151:
1129:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
1130:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       if (sConfigInjected->ExternalTrigInjecConv == ADC_INJECTED_SOFTWARE_START)
1131:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       {
1132:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         SET_BIT(hadc->Instance->CR1, ADC_CR1_JAUTO);
1133:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       }
1134:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       else
1135:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       {
1136:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         /* Update ADC state machine to error */
1137:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_CONFIG);
1138:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         
1139:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         tmp_hal_status = HAL_ERROR;
1140:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       }
1141:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
1142:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
1143:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Injected discontinuous can be enabled only if auto-injected mode is    */
1144:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* disabled.                                                              */  
1145:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     if (sConfigInjected->InjectedDiscontinuousConvMode == ENABLE)
 1422              		.loc 1 1145 0
 1423 0050 4A69     		ldr	r2, [r1, #20]
 1424 0052 012A     		cmp	r2, #1
 1425 0054 6BD0     		beq	.L172
 1426              	.LVL97:
 1427              	.L153:
1146:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
1147:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       if (sConfigInjected->AutoInjectedConv == DISABLE)
1148:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       {
1149:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         SET_BIT(hadc->Instance->CR1, ADC_CR1_JDISCEN);
1150:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       } 
1151:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       else
1152:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       {
1153:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         /* Update ADC state machine to error */
1154:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_CONFIG);
1155:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         
1156:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         tmp_hal_status = HAL_ERROR;
1157:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       }
1158:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
1159:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
1160:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
1161:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* InjectedChannel sampling time configuration */
1162:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* For channels 10 to 17 */
1163:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   if (sConfigInjected->InjectedChannel >= ADC_CHANNEL_10)
 1428              		.loc 1 1163 0
 1429 0056 0A68     		ldr	r2, [r1]
 1430 0058 092A     		cmp	r2, #9
 1431 005a 76D9     		bls	.L155
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 48


1164:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
1165:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     MODIFY_REG(hadc->Instance->SMPR1                                                             ,
 1432              		.loc 1 1165 0
 1433 005c 1E68     		ldr	r6, [r3]
 1434 005e F468     		ldr	r4, [r6, #12]
 1435 0060 02EB4202 		add	r2, r2, r2, lsl #1
 1436 0064 1E3A     		subs	r2, r2, #30
 1437 0066 0725     		movs	r5, #7
 1438 0068 9540     		lsls	r5, r5, r2
 1439 006a 24EA0504 		bic	r4, r4, r5
 1440 006e 8D68     		ldr	r5, [r1, #8]
 1441 0070 05FA02F2 		lsl	r2, r5, r2
 1442 0074 2243     		orrs	r2, r2, r4
 1443 0076 F260     		str	r2, [r6, #12]
 1444              	.L156:
1166:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                ADC_SMPR1(ADC_SMPR1_SMP10, sConfigInjected->InjectedChannel)                      ,
1167:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                ADC_SMPR1(sConfigInjected->InjectedSamplingTime, sConfigInjected->InjectedChannel) )
1168:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
1169:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   else /* For channels 0 to 9 */
1170:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
1171:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     MODIFY_REG(hadc->Instance->SMPR2                                                             ,
1172:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                ADC_SMPR2(ADC_SMPR2_SMP0, sConfigInjected->InjectedChannel)                       ,
1173:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                ADC_SMPR2(sConfigInjected->InjectedSamplingTime, sConfigInjected->InjectedChannel) )
1174:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
1175:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
1176:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* If ADC1 InjectedChannel_16 or InjectedChannel_17 is selected, enable Temperature sensor  */
1177:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* and VREFINT measurement path.                                            */
1178:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   if ((sConfigInjected->InjectedChannel == ADC_CHANNEL_TEMPSENSOR) ||
 1445              		.loc 1 1178 0
 1446 0078 0A68     		ldr	r2, [r1]
 1447 007a 103A     		subs	r2, r2, #16
 1448 007c 012A     		cmp	r2, #1
 1449 007e 72D9     		bls	.L173
 1450              	.L157:
1179:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       (sConfigInjected->InjectedChannel == ADC_CHANNEL_VREFINT)      )
1180:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
1181:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     SET_BIT(hadc->Instance->CR2, ADC_CR2_TSVREFE);
1182:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
1183:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
1184:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
1185:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Configure the offset: offset enable/disable, InjectedChannel, offset value */
1186:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   switch(sConfigInjected->InjectedRank)
 1451              		.loc 1 1186 0
 1452 0080 4A68     		ldr	r2, [r1, #4]
 1453 0082 022A     		cmp	r2, #2
 1454 0084 00F08880 		beq	.L159
 1455 0088 032A     		cmp	r2, #3
 1456 008a 00F08F80 		beq	.L160
 1457 008e 012A     		cmp	r2, #1
 1458 0090 6FD0     		beq	.L174
1187:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
1188:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     case 1:
1189:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       /* Set injected channel 1 offset */
1190:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       MODIFY_REG(hadc->Instance->JOFR1,
1191:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  ADC_JOFR1_JOFFSET1,
1192:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  sConfigInjected->InjectedOffset);
1193:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       break;
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 49


1194:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     case 2:
1195:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       /* Set injected channel 2 offset */
1196:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       MODIFY_REG(hadc->Instance->JOFR2,
1197:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  ADC_JOFR2_JOFFSET2,
1198:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  sConfigInjected->InjectedOffset);
1199:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       break;
1200:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     case 3:
1201:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       /* Set injected channel 3 offset */
1202:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       MODIFY_REG(hadc->Instance->JOFR3,
1203:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  ADC_JOFR3_JOFFSET3,
1204:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  sConfigInjected->InjectedOffset);
1205:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       break;
1206:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     case 4:
1207:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     default:
1208:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       MODIFY_REG(hadc->Instance->JOFR4,
 1459              		.loc 1 1208 0
 1460 0092 1C68     		ldr	r4, [r3]
 1461 0094 226A     		ldr	r2, [r4, #32]
 1462 0096 22F47F62 		bic	r2, r2, #4080
 1463 009a 22F00F02 		bic	r2, r2, #15
 1464 009e CD68     		ldr	r5, [r1, #12]
 1465 00a0 2A43     		orrs	r2, r2, r5
 1466 00a2 2262     		str	r2, [r4, #32]
1209:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  ADC_JOFR4_JOFFSET4,
1210:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  sConfigInjected->InjectedOffset);
1211:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       break;
 1467              		.loc 1 1211 0
 1468 00a4 6EE0     		b	.L162
 1469              	.LVL98:
 1470              	.L170:
1049:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  ADC_JSQR_JL   |
 1471              		.loc 1 1049 0
 1472 00a6 1868     		ldr	r0, [r3]
 1473 00a8 826B     		ldr	r2, [r0, #56]
 1474 00aa 920D     		lsrs	r2, r2, #22
 1475 00ac 9205     		lsls	r2, r2, #22
 1476 00ae 0C68     		ldr	r4, [r1]
 1477 00b0 42EAC432 		orr	r2, r2, r4, lsl #15
 1478 00b4 8263     		str	r2, [r0, #56]
1014:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   __IO uint32_t wait_loop_index = 0U;
 1479              		.loc 1 1014 0
 1480 00b6 0020     		movs	r0, #0
 1481 00b8 BAE7     		b	.L148
 1482              	.L146:
1074:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 1483              		.loc 1 1074 0
 1484 00ba 4A68     		ldr	r2, [r1, #4]
 1485 00bc 0C69     		ldr	r4, [r1, #16]
 1486 00be A242     		cmp	r2, r4
 1487 00c0 15D8     		bhi	.L149
1078:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  
 1488              		.loc 1 1078 0
 1489 00c2 1F68     		ldr	r7, [r3]
 1490 00c4 BD6B     		ldr	r5, [r7, #56]
 1491 00c6 101B     		subs	r0, r2, r4
 1492 00c8 00EB8000 		add	r0, r0, r0, lsl #2
 1493 00cc 0F30     		adds	r0, r0, #15
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 50


 1494 00ce 1F22     		movs	r2, #31
 1495 00d0 8240     		lsls	r2, r2, r0
 1496 00d2 42F44012 		orr	r2, r2, #3145728
 1497 00d6 25EA0205 		bic	r5, r5, r2
 1498 00da 621E     		subs	r2, r4, #1
 1499 00dc 0E68     		ldr	r6, [r1]
 1500 00de 06FA00F0 		lsl	r0, r6, r0
 1501 00e2 40EA0252 		orr	r2, r0, r2, lsl #20
 1502 00e6 2A43     		orrs	r2, r2, r5
 1503 00e8 BA63     		str	r2, [r7, #56]
1014:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   __IO uint32_t wait_loop_index = 0U;
 1504              		.loc 1 1014 0
 1505 00ea 0020     		movs	r0, #0
 1506 00ec A0E7     		b	.L148
 1507              	.L149:
1093:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  
 1508              		.loc 1 1093 0
 1509 00ee 1E68     		ldr	r6, [r3]
 1510 00f0 B56B     		ldr	r5, [r6, #56]
 1511 00f2 121B     		subs	r2, r2, r4
 1512 00f4 02EB8202 		add	r2, r2, r2, lsl #2
 1513 00f8 0F32     		adds	r2, r2, #15
 1514 00fa 1F20     		movs	r0, #31
 1515 00fc 00FA02F2 		lsl	r2, r0, r2
 1516 0100 42F44012 		orr	r2, r2, #3145728
 1517 0104 25EA0202 		bic	r2, r5, r2
 1518 0108 B263     		str	r2, [r6, #56]
1014:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   __IO uint32_t wait_loop_index = 0U;
 1519              		.loc 1 1014 0
 1520 010a 0020     		movs	r0, #0
 1521 010c 90E7     		b	.L148
 1522              	.LVL99:
 1523              	.L171:
1130:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       {
 1524              		.loc 1 1130 0
 1525 010e CA69     		ldr	r2, [r1, #28]
 1526 0110 B2F5E04F 		cmp	r2, #28672
 1527 0114 05D0     		beq	.L175
1137:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         
 1528              		.loc 1 1137 0
 1529 0116 9A6A     		ldr	r2, [r3, #40]
 1530 0118 42F02002 		orr	r2, r2, #32
 1531 011c 9A62     		str	r2, [r3, #40]
 1532              	.LVL100:
1139:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       }
 1533              		.loc 1 1139 0
 1534 011e 0120     		movs	r0, #1
 1535 0120 96E7     		b	.L151
 1536              	.LVL101:
 1537              	.L175:
1132:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       }
 1538              		.loc 1 1132 0
 1539 0122 1C68     		ldr	r4, [r3]
 1540 0124 6268     		ldr	r2, [r4, #4]
 1541 0126 42F48062 		orr	r2, r2, #1024
 1542 012a 6260     		str	r2, [r4, #4]
 1543 012c 90E7     		b	.L151
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 51


 1544              	.L172:
1147:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       {
 1545              		.loc 1 1147 0
 1546 012e 8A69     		ldr	r2, [r1, #24]
 1547 0130 2AB9     		cbnz	r2, .L154
1149:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       } 
 1548              		.loc 1 1149 0
 1549 0132 1C68     		ldr	r4, [r3]
 1550 0134 6268     		ldr	r2, [r4, #4]
 1551 0136 42F48052 		orr	r2, r2, #4096
 1552 013a 6260     		str	r2, [r4, #4]
 1553 013c 8BE7     		b	.L153
 1554              	.L154:
1154:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         
 1555              		.loc 1 1154 0
 1556 013e 9A6A     		ldr	r2, [r3, #40]
 1557 0140 42F02002 		orr	r2, r2, #32
 1558 0144 9A62     		str	r2, [r3, #40]
 1559              	.LVL102:
1156:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       }
 1560              		.loc 1 1156 0
 1561 0146 0120     		movs	r0, #1
 1562 0148 85E7     		b	.L153
 1563              	.LVL103:
 1564              	.L155:
1171:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                ADC_SMPR2(ADC_SMPR2_SMP0, sConfigInjected->InjectedChannel)                       ,
 1565              		.loc 1 1171 0
 1566 014a 1E68     		ldr	r6, [r3]
 1567 014c 3469     		ldr	r4, [r6, #16]
 1568 014e 02EB4202 		add	r2, r2, r2, lsl #1
 1569 0152 0725     		movs	r5, #7
 1570 0154 9540     		lsls	r5, r5, r2
 1571 0156 24EA0504 		bic	r4, r4, r5
 1572 015a 8D68     		ldr	r5, [r1, #8]
 1573 015c 05FA02F2 		lsl	r2, r5, r2
 1574 0160 2243     		orrs	r2, r2, r4
 1575 0162 3261     		str	r2, [r6, #16]
 1576 0164 88E7     		b	.L156
 1577              	.L173:
1181:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
 1578              		.loc 1 1181 0
 1579 0166 1C68     		ldr	r4, [r3]
 1580 0168 A268     		ldr	r2, [r4, #8]
 1581 016a 42F40002 		orr	r2, r2, #8388608
 1582 016e A260     		str	r2, [r4, #8]
 1583 0170 86E7     		b	.L157
 1584              	.L174:
1190:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  ADC_JOFR1_JOFFSET1,
 1585              		.loc 1 1190 0
 1586 0172 1C68     		ldr	r4, [r3]
 1587 0174 6269     		ldr	r2, [r4, #20]
 1588 0176 22F47F62 		bic	r2, r2, #4080
 1589 017a 22F00F02 		bic	r2, r2, #15
 1590 017e CD68     		ldr	r5, [r1, #12]
 1591 0180 2A43     		orrs	r2, r2, r5
 1592 0182 6261     		str	r2, [r4, #20]
 1593              	.L162:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 52


1212:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
1213:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
1214:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* If ADC1 Channel_16 or Channel_17 is selected, enable Temperature sensor  */
1215:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* and VREFINT measurement path.                                            */
1216:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   if ((sConfigInjected->InjectedChannel == ADC_CHANNEL_TEMPSENSOR) ||
 1594              		.loc 1 1216 0
 1595 0184 0A68     		ldr	r2, [r1]
 1596 0186 103A     		subs	r2, r2, #16
 1597 0188 012A     		cmp	r2, #1
 1598 018a 19D9     		bls	.L176
 1599              	.LVL104:
 1600              	.L163:
1217:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       (sConfigInjected->InjectedChannel == ADC_CHANNEL_VREFINT)      )
1218:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
1219:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* For STM32F1 devices with several ADC: Only ADC1 can access internal    */
1220:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* measurement channels (VrefInt/TempSensor). If these channels are       */
1221:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* intended to be set on other ADC instances, an error is reported.       */
1222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     if (hadc->Instance == ADC1)
1223:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
1224:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       if (READ_BIT(hadc->Instance->CR2, ADC_CR2_TSVREFE) == RESET)
1225:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       {
1226:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         SET_BIT(hadc->Instance->CR2, ADC_CR2_TSVREFE);
1227:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         
1228:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         if ((sConfigInjected->InjectedChannel == ADC_CHANNEL_TEMPSENSOR))
1229:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         {
1230:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           /* Delay for temperature sensor stabilization time */
1231:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           /* Compute number of CPU cycles to wait for */
1232:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           wait_loop_index = (ADC_TEMPSENSOR_DELAY_US * (SystemCoreClock / 1000000U));
1233:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           while(wait_loop_index != 0U)
1234:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           {
1235:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****             wait_loop_index--;
1236:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           }
1237:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         }
1238:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       }
1239:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
1240:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     else
1241:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
1242:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       /* Update ADC state machine to error */
1243:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_CONFIG);
1244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       
1245:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       tmp_hal_status = HAL_ERROR;
1246:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
1247:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
1248:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
1249:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Process unlocked */
1250:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   __HAL_UNLOCK(hadc);
 1601              		.loc 1 1250 0
 1602 018c 0022     		movs	r2, #0
 1603 018e 83F82420 		strb	r2, [r3, #36]
 1604              	.LVL105:
 1605              	.L145:
1251:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
1252:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Return function status */
1253:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   return tmp_hal_status;
1254:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** }
 1606              		.loc 1 1254 0
 1607 0192 02B0     		add	sp, sp, #8
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 53


 1608              	.LCFI27:
 1609              		.cfi_remember_state
 1610              		.cfi_def_cfa_offset 16
 1611              		@ sp needed
 1612 0194 F0BC     		pop	{r4, r5, r6, r7}
 1613              	.LCFI28:
 1614              		.cfi_restore 7
 1615              		.cfi_restore 6
 1616              		.cfi_restore 5
 1617              		.cfi_restore 4
 1618              		.cfi_def_cfa_offset 0
 1619 0196 7047     		bx	lr
 1620              	.LVL106:
 1621              	.L159:
 1622              	.LCFI29:
 1623              		.cfi_restore_state
1196:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  ADC_JOFR2_JOFFSET2,
 1624              		.loc 1 1196 0
 1625 0198 1C68     		ldr	r4, [r3]
 1626 019a A269     		ldr	r2, [r4, #24]
 1627 019c 22F47F62 		bic	r2, r2, #4080
 1628 01a0 22F00F02 		bic	r2, r2, #15
 1629 01a4 CD68     		ldr	r5, [r1, #12]
 1630 01a6 2A43     		orrs	r2, r2, r5
 1631 01a8 A261     		str	r2, [r4, #24]
1199:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     case 3:
 1632              		.loc 1 1199 0
 1633 01aa EBE7     		b	.L162
 1634              	.L160:
1202:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                  ADC_JOFR3_JOFFSET3,
 1635              		.loc 1 1202 0
 1636 01ac 1C68     		ldr	r4, [r3]
 1637 01ae E269     		ldr	r2, [r4, #28]
 1638 01b0 22F47F62 		bic	r2, r2, #4080
 1639 01b4 22F00F02 		bic	r2, r2, #15
 1640 01b8 CD68     		ldr	r5, [r1, #12]
 1641 01ba 2A43     		orrs	r2, r2, r5
 1642 01bc E261     		str	r2, [r4, #28]
1205:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     case 4:
 1643              		.loc 1 1205 0
 1644 01be E1E7     		b	.L162
 1645              	.L176:
1222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     {
 1646              		.loc 1 1222 0
 1647 01c0 1A68     		ldr	r2, [r3]
 1648 01c2 144C     		ldr	r4, .L178
 1649 01c4 A242     		cmp	r2, r4
 1650 01c6 05D0     		beq	.L177
1243:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       
 1651              		.loc 1 1243 0
 1652 01c8 9A6A     		ldr	r2, [r3, #40]
 1653 01ca 42F02002 		orr	r2, r2, #32
 1654 01ce 9A62     		str	r2, [r3, #40]
 1655              	.LVL107:
1245:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     }
 1656              		.loc 1 1245 0
 1657 01d0 0120     		movs	r0, #1
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 54


 1658 01d2 DBE7     		b	.L163
 1659              	.LVL108:
 1660              	.L177:
1224:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       {
 1661              		.loc 1 1224 0
 1662 01d4 9468     		ldr	r4, [r2, #8]
 1663 01d6 14F4000F 		tst	r4, #8388608
 1664 01da D7D1     		bne	.L163
1226:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         
 1665              		.loc 1 1226 0
 1666 01dc 9468     		ldr	r4, [r2, #8]
 1667 01de 44F40004 		orr	r4, r4, #8388608
 1668 01e2 9460     		str	r4, [r2, #8]
1228:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****         {
 1669              		.loc 1 1228 0
 1670 01e4 0A68     		ldr	r2, [r1]
 1671 01e6 102A     		cmp	r2, #16
 1672 01e8 D0D1     		bne	.L163
1232:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           while(wait_loop_index != 0U)
 1673              		.loc 1 1232 0
 1674 01ea 0B4A     		ldr	r2, .L178+4
 1675 01ec 1268     		ldr	r2, [r2]
 1676 01ee 0B49     		ldr	r1, .L178+8
 1677              	.LVL109:
 1678 01f0 A1FB0212 		umull	r1, r2, r1, r2
 1679 01f4 920C     		lsrs	r2, r2, #18
 1680 01f6 02EB8202 		add	r2, r2, r2, lsl #2
 1681 01fa 5100     		lsls	r1, r2, #1
 1682 01fc 0191     		str	r1, [sp, #4]
1233:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           {
 1683              		.loc 1 1233 0
 1684 01fe 02E0     		b	.L165
 1685              	.L166:
1235:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           }
 1686              		.loc 1 1235 0
 1687 0200 019A     		ldr	r2, [sp, #4]
 1688 0202 013A     		subs	r2, r2, #1
 1689 0204 0192     		str	r2, [sp, #4]
 1690              	.L165:
1233:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****           {
 1691              		.loc 1 1233 0
 1692 0206 019A     		ldr	r2, [sp, #4]
 1693 0208 002A     		cmp	r2, #0
 1694 020a F9D1     		bne	.L166
 1695 020c BEE7     		b	.L163
 1696              	.LVL110:
 1697              	.L167:
1033:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 1698              		.loc 1 1033 0
 1699 020e 0220     		movs	r0, #2
 1700 0210 BFE7     		b	.L145
 1701              	.L179:
 1702 0212 00BF     		.align	2
 1703              	.L178:
 1704 0214 00240140 		.word	1073816576
 1705 0218 00000000 		.word	SystemCoreClock
 1706 021c 83DE1B43 		.word	1125899907
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 55


 1707              		.cfi_endproc
 1708              	.LFE77:
 1710              		.section	.text.HAL_ADCEx_MultiModeConfigChannel,"ax",%progbits
 1711              		.align	1
 1712              		.global	HAL_ADCEx_MultiModeConfigChannel
 1713              		.syntax unified
 1714              		.thumb
 1715              		.thumb_func
 1716              		.fpu softvfp
 1718              	HAL_ADCEx_MultiModeConfigChannel:
 1719              	.LFB78:
1255:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** 
1256:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** #if defined (STM32F103x6) || defined (STM32F103xB) || defined (STM32F105xC) || defined (STM32F107xC
1257:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** /**
1258:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @brief  Enable ADC multimode and configure multimode parameters
1259:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @note   Possibility to update parameters on the fly:
1260:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         This function initializes multimode parameters, following  
1261:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         calls to this function can be used to reconfigure some parameters 
1262:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         of structure "ADC_MultiModeTypeDef" on the fly, without reseting 
1263:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         the ADCs (both ADCs of the common group).
1264:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         The setting of these parameters is conditioned to ADC state.
1265:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         For parameters constraints, see comments of structure 
1266:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         "ADC_MultiModeTypeDef".
1267:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @note   To change back configuration from multimode to single mode, ADC must
1268:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   *         be reset (using function HAL_ADC_Init() ).
1269:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @param  hadc: ADC handle
1270:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @param  multimode: Structure of ADC multimode configuration
1271:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   * @retval HAL status
1272:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   */
1273:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** HAL_StatusTypeDef HAL_ADCEx_MultiModeConfigChannel(ADC_HandleTypeDef* hadc, ADC_MultiModeTypeDef* m
1274:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** {
 1720              		.loc 1 1274 0
 1721              		.cfi_startproc
 1722              		@ args = 0, pretend = 0, frame = 0
 1723              		@ frame_needed = 0, uses_anonymous_args = 0
 1724              		@ link register save eliminated.
 1725              	.LVL111:
 1726 0000 0346     		mov	r3, r0
 1727              	.LVL112:
1275:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
1276:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   ADC_HandleTypeDef tmphadcSlave;
1277:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
1278:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Check the parameters */
1279:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   assert_param(IS_ADC_MULTIMODE_MASTER_INSTANCE(hadc->Instance));
1280:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   assert_param(IS_ADC_MODE(multimode->Mode));
1281:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
1282:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Process locked */
1283:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   __HAL_LOCK(hadc);
 1728              		.loc 1 1283 0
 1729 0002 90F82420 		ldrb	r2, [r0, #36]	@ zero_extendqisi2
 1730 0006 012A     		cmp	r2, #1
 1731 0008 20D0     		beq	.L184
 1732              		.loc 1 1283 0 is_stmt 0 discriminator 2
 1733 000a 0122     		movs	r2, #1
 1734 000c 80F82420 		strb	r2, [r0, #36]
1284:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
1285:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Set a temporary handle of the ADC slave associated to the ADC master     */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 56


1286:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   ADC_MULTI_SLAVE(hadc, &tmphadcSlave);
1287:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
1288:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Parameters update conditioned to ADC state:                              */
1289:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Parameters that can be updated when ADC is disabled or enabled without   */
1290:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* conversion on going on regular group:                                    */
1291:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*  - ADC master and ADC slave DMA configuration                            */
1292:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Parameters that can be updated only when ADC is disabled:                */
1293:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /*  - Multimode mode selection                                              */
1294:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* To optimize code, all multimode settings can be set when both ADCs of    */
1295:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* the common group are in state: disabled.                                 */
1296:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   if ((ADC_IS_ENABLE(hadc) == RESET)                     &&
 1735              		.loc 1 1296 0 is_stmt 1 discriminator 2
 1736 0010 0268     		ldr	r2, [r0]
 1737 0012 9068     		ldr	r0, [r2, #8]
 1738              	.LVL113:
 1739 0014 10F0010F 		tst	r0, #1
 1740 0018 07D1     		bne	.L182
1297:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       (ADC_IS_ENABLE(&tmphadcSlave) == RESET)            &&
 1741              		.loc 1 1297 0 discriminator 1
 1742 001a 0D48     		ldr	r0, .L186
 1743 001c 8068     		ldr	r0, [r0, #8]
1296:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       (ADC_IS_ENABLE(&tmphadcSlave) == RESET)            &&
 1744              		.loc 1 1296 0 discriminator 1
 1745 001e 10F0010F 		tst	r0, #1
 1746 0022 02D1     		bne	.L182
 1747              		.loc 1 1297 0
 1748 0024 0B48     		ldr	r0, .L186+4
 1749 0026 8242     		cmp	r2, r0
 1750 0028 08D0     		beq	.L185
 1751              	.L182:
1298:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****       (IS_ADC_MULTIMODE_MASTER_INSTANCE(hadc->Instance))   )
1299:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
1300:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     MODIFY_REG(hadc->Instance->CR1,
1301:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                ADC_CR1_DUALMOD    ,
1302:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                multimode->Mode     );
1303:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
1304:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* If one of the ADC sharing the same common group is enabled, no update    */
1305:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* could be done on neither of the multimode structure parameters.          */
1306:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   else
1307:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   {
1308:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     /* Update ADC state machine to error */
1309:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_CONFIG);
 1752              		.loc 1 1309 0
 1753 002a 9A6A     		ldr	r2, [r3, #40]
 1754 002c 42F02002 		orr	r2, r2, #32
 1755 0030 9A62     		str	r2, [r3, #40]
 1756              	.LVL114:
1310:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
1311:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     tmp_hal_status = HAL_ERROR;
 1757              		.loc 1 1311 0
 1758 0032 0120     		movs	r0, #1
 1759              	.LVL115:
 1760              	.L183:
1312:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   }
1313:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
1314:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****     
1315:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Process unlocked */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 57


1316:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   __HAL_UNLOCK(hadc);
 1761              		.loc 1 1316 0
 1762 0034 0022     		movs	r2, #0
 1763 0036 83F82420 		strb	r2, [r3, #36]
1317:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
1318:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   /* Return function status */
1319:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   return tmp_hal_status;
 1764              		.loc 1 1319 0
 1765 003a 7047     		bx	lr
 1766              	.LVL116:
 1767              	.L185:
1300:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                ADC_CR1_DUALMOD    ,
 1768              		.loc 1 1300 0
 1769 003c 5068     		ldr	r0, [r2, #4]
 1770 003e 20F47020 		bic	r0, r0, #983040
 1771 0042 0968     		ldr	r1, [r1]
 1772              	.LVL117:
 1773 0044 0143     		orrs	r1, r1, r0
 1774 0046 5160     		str	r1, [r2, #4]
1275:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   ADC_HandleTypeDef tmphadcSlave;
 1775              		.loc 1 1275 0
 1776 0048 0020     		movs	r0, #0
1300:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****                ADC_CR1_DUALMOD    ,
 1777              		.loc 1 1300 0
 1778 004a F3E7     		b	.L183
 1779              	.LVL118:
 1780              	.L184:
1283:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c ****   
 1781              		.loc 1 1283 0
 1782 004c 0220     		movs	r0, #2
 1783              	.LVL119:
1320:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc_ex.c **** } 
 1784              		.loc 1 1320 0
 1785 004e 7047     		bx	lr
 1786              	.L187:
 1787              		.align	2
 1788              	.L186:
 1789 0050 00280140 		.word	1073817600
 1790 0054 00240140 		.word	1073816576
 1791              		.cfi_endproc
 1792              	.LFE78:
 1794              		.text
 1795              	.Letext0:
 1796              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 1797              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 1798              		.file 4 "Drivers/CMSIS/Include/core_cm3.h"
 1799              		.file 5 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/system_stm32f1xx.h"
 1800              		.file 6 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
 1801              		.file 7 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"
 1802              		.file 8 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 1803              		.file 9 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 1804              		.file 10 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\lib\\gcc\\arm-none-ea
 1805              		.file 11 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\includ
 1806              		.file 12 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"
 1807              		.file 13 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma.h"
 1808              		.file 14 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc.h"
 1809              		.file 15 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc_ex.h"
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 58


 1810              		.file 16 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"
 1811              		.file 17 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccK15pig.s 			page 59


DEFINED SYMBOLS
                            *ABS*:00000000 stm32f1xx_hal_adc_ex.c
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:16     .text.HAL_ADCEx_Calibration_Start:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:23     .text.HAL_ADCEx_Calibration_Start:00000000 HAL_ADCEx_Calibration_Start
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:193    .text.HAL_ADCEx_Calibration_Start:000000e8 $d
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:198    .text.HAL_ADCEx_InjectedStart:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:205    .text.HAL_ADCEx_InjectedStart:00000000 HAL_ADCEx_InjectedStart
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:334    .text.HAL_ADCEx_InjectedStart:000000b8 $d
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:339    .text.HAL_ADCEx_InjectedStop:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:346    .text.HAL_ADCEx_InjectedStop:00000000 HAL_ADCEx_InjectedStop
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:425    .text.HAL_ADCEx_InjectedPollForConversion:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:432    .text.HAL_ADCEx_InjectedPollForConversion:00000000 HAL_ADCEx_InjectedPollForConversion
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:683    .text.HAL_ADCEx_InjectedPollForConversion:00000154 $d
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:692    .text.HAL_ADCEx_InjectedStart_IT:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:699    .text.HAL_ADCEx_InjectedStart_IT:00000000 HAL_ADCEx_InjectedStart_IT
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:833    .text.HAL_ADCEx_InjectedStart_IT:000000c4 $d
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:838    .text.HAL_ADCEx_InjectedStop_IT:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:845    .text.HAL_ADCEx_InjectedStop_IT:00000000 HAL_ADCEx_InjectedStop_IT
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:929    .text.HAL_ADCEx_MultiModeStart_DMA:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:936    .text.HAL_ADCEx_MultiModeStart_DMA:00000000 HAL_ADCEx_MultiModeStart_DMA
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:1099   .text.HAL_ADCEx_MultiModeStart_DMA:000000e0 $d
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:1108   .text.HAL_ADCEx_MultiModeStop_DMA:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:1115   .text.HAL_ADCEx_MultiModeStop_DMA:00000000 HAL_ADCEx_MultiModeStop_DMA
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:1224   .text.HAL_ADCEx_MultiModeStop_DMA:0000007c $d
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:1229   .text.HAL_ADCEx_InjectedGetValue:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:1236   .text.HAL_ADCEx_InjectedGetValue:00000000 HAL_ADCEx_InjectedGetValue
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:1285   .text.HAL_ADCEx_MultiModeGetValue:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:1292   .text.HAL_ADCEx_MultiModeGetValue:00000000 HAL_ADCEx_MultiModeGetValue
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:1320   .text.HAL_ADCEx_MultiModeGetValue:00000018 $d
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:1326   .text.HAL_ADCEx_InjectedConvCpltCallback:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:1333   .text.HAL_ADCEx_InjectedConvCpltCallback:00000000 HAL_ADCEx_InjectedConvCpltCallback
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:1347   .text.HAL_ADCEx_InjectedConfigChannel:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:1354   .text.HAL_ADCEx_InjectedConfigChannel:00000000 HAL_ADCEx_InjectedConfigChannel
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:1704   .text.HAL_ADCEx_InjectedConfigChannel:00000214 $d
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:1711   .text.HAL_ADCEx_MultiModeConfigChannel:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:1718   .text.HAL_ADCEx_MultiModeConfigChannel:00000000 HAL_ADCEx_MultiModeConfigChannel
C:\Users\crist\AppData\Local\Temp\ccK15pig.s:1789   .text.HAL_ADCEx_MultiModeConfigChannel:00000050 $d

UNDEFINED SYMBOLS
ADC_ConversionStop_Disable
HAL_RCCEx_GetPeriphCLKFreq
ADC_Enable
HAL_GetTick
SystemCoreClock
HAL_DMA_Start_IT
ADC_DMAConvCplt
ADC_DMAHalfConvCplt
ADC_DMAError
HAL_DMA_Abort
