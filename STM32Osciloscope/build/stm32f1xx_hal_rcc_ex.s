ARM GAS  C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s 			page 1


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
  11              		.file	"stm32f1xx_hal_rcc_ex.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.HAL_RCCEx_PeriphCLKConfig,"ax",%progbits
  16              		.align	1
  17              		.global	HAL_RCCEx_PeriphCLKConfig
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu softvfp
  23              	HAL_RCCEx_PeriphCLKConfig:
  24              	.LFB66:
  25              		.file 1 "Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c"
   1:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** /**
   2:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   ******************************************************************************
   3:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * @file    stm32f1xx_hal_rcc_ex.c
   4:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * @author  MCD Application Team
   5:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * @brief   Extended RCC HAL module driver.
   6:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *          This file provides firmware functions to manage the following 
   7:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *          functionalities RCC extension peripheral:
   8:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *           + Extended Peripheral Control functions
   9:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *  
  10:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   ******************************************************************************
  11:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * @attention
  12:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *
  13:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
  14:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *
  15:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * Redistribution and use in source and binary forms, with or without modification,
  16:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * are permitted provided that the following conditions are met:
  17:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  18:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *      this list of conditions and the following disclaimer.
  19:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  20:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *      this list of conditions and the following disclaimer in the documentation
  21:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *      and/or other materials provided with the distribution.
  22:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  23:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *      may be used to endorse or promote products derived from this software
  24:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *      without specific prior written permission.
  25:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *
  26:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  27:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  28:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  29:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  30:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  31:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  32:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  33:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s 			page 2


  34:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  35:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  36:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *
  37:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   ******************************************************************************  
  38:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   */ 
  39:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
  40:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** /* Includes ------------------------------------------------------------------*/
  41:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #include "stm32f1xx_hal.h"
  42:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
  43:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** /** @addtogroup STM32F1xx_HAL_Driver
  44:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * @{
  45:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   */
  46:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
  47:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #ifdef HAL_RCC_MODULE_ENABLED
  48:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
  49:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** /** @defgroup RCCEx RCCEx
  50:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * @brief RCC Extension HAL module driver.
  51:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * @{
  52:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   */
  53:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
  54:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** /* Private typedef -----------------------------------------------------------*/
  55:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** /* Private define ------------------------------------------------------------*/
  56:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** /** @defgroup RCCEx_Private_Constants RCCEx Private Constants
  57:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * @{
  58:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   */
  59:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** /**
  60:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * @}
  61:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   */
  62:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
  63:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** /* Private macro -------------------------------------------------------------*/
  64:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** /** @defgroup RCCEx_Private_Macros RCCEx Private Macros
  65:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * @{
  66:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   */
  67:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** /**
  68:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * @}
  69:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   */
  70:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
  71:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** /* Private variables ---------------------------------------------------------*/
  72:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** /* Private function prototypes -----------------------------------------------*/
  73:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** /* Private functions ---------------------------------------------------------*/
  74:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
  75:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** /** @defgroup RCCEx_Exported_Functions RCCEx Exported Functions
  76:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * @{
  77:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   */
  78:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
  79:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** /** @defgroup RCCEx_Exported_Functions_Group1 Peripheral Control functions 
  80:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *  @brief  Extended Peripheral Control functions  
  81:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *
  82:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** @verbatim   
  83:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****  ===============================================================================
  84:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****                 ##### Extended Peripheral Control functions  #####
  85:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****  ===============================================================================  
  86:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     [..]
  87:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     This subsection provides a set of functions allowing to control the RCC Clocks 
  88:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     frequencies.
  89:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     [..] 
  90:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     (@) Important note: Care must be taken when HAL_RCCEx_PeriphCLKConfig() is used to
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s 			page 3


  91:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         select the RTC clock source; in this case the Backup domain will be reset in  
  92:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         order to modify the RTC Clock source, as consequence RTC registers (including 
  93:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         the backup registers) are set to their reset values.
  94:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       
  95:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** @endverbatim
  96:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * @{
  97:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   */
  98:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
  99:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** /**
 100:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * @brief  Initializes the RCC extended peripherals clocks according to the specified parameters i
 101:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *         RCC_PeriphCLKInitTypeDef.
 102:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * @param  PeriphClkInit pointer to an RCC_PeriphCLKInitTypeDef structure that
 103:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *         contains the configuration information for the Extended Peripherals clocks(RTC clock).
 104:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *
 105:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * @note   Care must be taken when HAL_RCCEx_PeriphCLKConfig() is used to select 
 106:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *         the RTC clock source; in this case the Backup domain will be reset in  
 107:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *         order to modify the RTC Clock source, as consequence RTC registers (including 
 108:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *         the backup registers) are set to their reset values.
 109:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *
 110:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * @note   In case of STM32F105xC or STM32F107xC devices, PLLI2S will be enabled if requested on 
 111:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *         one of 2 I2S interfaces. When PLLI2S is enabled, you need to call HAL_RCCEx_DisablePLLI
 112:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *         manually disable it.
 113:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *
 114:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * @retval HAL status
 115:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   */
 116:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** HAL_StatusTypeDef HAL_RCCEx_PeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit)
 117:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** {
  26              		.loc 1 117 0
  27              		.cfi_startproc
  28              		@ args = 0, pretend = 0, frame = 8
  29              		@ frame_needed = 0, uses_anonymous_args = 0
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
  41 0004 0446     		mov	r4, r0
  42              	.LVL1:
 118:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   uint32_t tickstart = 0U, temp_reg = 0U;
 119:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #if defined(STM32F105xC) || defined(STM32F107xC)
 120:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   uint32_t  pllactive = 0U;
 121:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #endif /* STM32F105xC || STM32F107xC */
 122:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 123:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   /* Check the parameters */
 124:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   assert_param(IS_RCC_PERIPHCLOCK(PeriphClkInit->PeriphClockSelection));
 125:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   
 126:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   /*------------------------------- RTC/LCD Configuration ------------------------*/ 
 127:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   if ((((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_RTC) == RCC_PERIPHCLK_RTC))
  43              		.loc 1 127 0
  44 0006 0368     		ldr	r3, [r0]
  45 0008 13F0010F 		tst	r3, #1
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s 			page 4


  46 000c 34D0     		beq	.L2
  47              	.LVL2:
  48              	.LBB2:
 128:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   {
 129:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     /* check for RTC Parameters used to output RTCCLK */
 130:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     assert_param(IS_RCC_RTCCLKSOURCE(PeriphClkInit->RTCClockSelection));
 131:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 132:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     FlagStatus       pwrclkchanged = RESET;
 133:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 134:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     /* As soon as function is called to change RTC clock source, activation of the 
 135:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****        power domain is done. */
 136:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     /* Requires to enable write access to Backup Domain of necessary */
 137:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     if(__HAL_RCC_PWR_IS_CLK_DISABLED())
  49              		.loc 1 137 0
  50 000e 3E4B     		ldr	r3, .L20
  51 0010 DB69     		ldr	r3, [r3, #28]
  52 0012 13F0805F 		tst	r3, #268435456
  53 0016 48D1     		bne	.L12
  54              	.LBB3:
 138:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     {
 139:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     __HAL_RCC_PWR_CLK_ENABLE();
  55              		.loc 1 139 0
  56 0018 3B4B     		ldr	r3, .L20
  57 001a DA69     		ldr	r2, [r3, #28]
  58 001c 42F08052 		orr	r2, r2, #268435456
  59 0020 DA61     		str	r2, [r3, #28]
  60 0022 DB69     		ldr	r3, [r3, #28]
  61 0024 03F08053 		and	r3, r3, #268435456
  62 0028 0193     		str	r3, [sp, #4]
  63 002a 019B     		ldr	r3, [sp, #4]
  64              	.LVL3:
  65              	.LBE3:
 140:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       pwrclkchanged = SET;
  66              		.loc 1 140 0
  67 002c 0125     		movs	r5, #1
  68              	.LVL4:
  69              	.L3:
 141:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     }
 142:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     
 143:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     if(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
  70              		.loc 1 143 0
  71 002e 374B     		ldr	r3, .L20+4
  72 0030 1B68     		ldr	r3, [r3]
  73 0032 13F4807F 		tst	r3, #256
  74 0036 3AD0     		beq	.L17
  75              	.LVL5:
  76              	.L4:
 144:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     {
 145:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       /* Enable write access to Backup domain */
 146:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       SET_BIT(PWR->CR, PWR_CR_DBP);
 147:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       
 148:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       /* Wait for Backup domain Write protection disable */
 149:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       tickstart = HAL_GetTick();
 150:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       
 151:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       while(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
 152:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       {
 153:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         if((HAL_GetTick() - tickstart) > RCC_DBP_TIMEOUT_VALUE)
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s 			page 5


 154:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         {
 155:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           return HAL_TIMEOUT;
 156:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         }
 157:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       }
 158:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     }
 159:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       
 160:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     /* Reset the Backup domain only if the RTC Clock source selection is modified from reset value 
 161:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     temp_reg = (RCC->BDCR & RCC_BDCR_RTCSEL);
  77              		.loc 1 161 0
  78 0038 334B     		ldr	r3, .L20
  79 003a 1B6A     		ldr	r3, [r3, #32]
  80              	.LVL6:
 162:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     if((temp_reg != 0x00000000U) && (temp_reg != (PeriphClkInit->RTCClockSelection & RCC_BDCR_RTCSE
  81              		.loc 1 162 0
  82 003c 13F44073 		ands	r3, r3, #768
  83              	.LVL7:
  84 0040 11D0     		beq	.L8
  85              		.loc 1 162 0 is_stmt 0 discriminator 1
  86 0042 6268     		ldr	r2, [r4, #4]
  87 0044 02F44072 		and	r2, r2, #768
  88 0048 9A42     		cmp	r2, r3
  89 004a 0CD0     		beq	.L8
 163:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     {
 164:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       /* Store the content of BDCR register before the reset of Backup Domain */
 165:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       temp_reg = (RCC->BDCR & ~(RCC_BDCR_RTCSEL));
  90              		.loc 1 165 0 is_stmt 1
  91 004c 2E4A     		ldr	r2, .L20
  92 004e 136A     		ldr	r3, [r2, #32]
  93              	.LVL8:
  94 0050 23F44070 		bic	r0, r3, #768
  95              	.LVL9:
 166:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       /* RTC Clock selection can be changed only if the Backup Domain is reset */
 167:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       __HAL_RCC_BACKUPRESET_FORCE();
  96              		.loc 1 167 0
  97 0054 2E49     		ldr	r1, .L20+8
  98 0056 0126     		movs	r6, #1
  99 0058 0E60     		str	r6, [r1]
 168:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       __HAL_RCC_BACKUPRESET_RELEASE();
 100              		.loc 1 168 0
 101 005a 0026     		movs	r6, #0
 102 005c 0E60     		str	r6, [r1]
 169:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       /* Restore the Content of BDCR register */
 170:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       RCC->BDCR = temp_reg;
 103              		.loc 1 170 0
 104 005e 1062     		str	r0, [r2, #32]
 171:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 172:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       /* Wait for LSERDY if LSE was enabled */
 173:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       if (HAL_IS_BIT_SET(temp_reg, RCC_BDCR_LSEON))
 105              		.loc 1 173 0
 106 0060 13F0010F 		tst	r3, #1
 107 0064 37D1     		bne	.L18
 108              	.LVL10:
 109              	.L8:
 174:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       {
 175:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         /* Get Start Tick */
 176:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         tickstart = HAL_GetTick();
 177:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s 			page 6


 178:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         /* Wait till LSE is ready */  
 179:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
 180:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         {
 181:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           if((HAL_GetTick() - tickstart) > RCC_LSE_TIMEOUT_VALUE)
 182:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           {
 183:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****             return HAL_TIMEOUT;
 184:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           }      
 185:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         }  
 186:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       }
 187:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     }
 188:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     __HAL_RCC_RTC_CONFIG(PeriphClkInit->RTCClockSelection); 
 110              		.loc 1 188 0
 111 0066 284A     		ldr	r2, .L20
 112 0068 136A     		ldr	r3, [r2, #32]
 113 006a 23F44073 		bic	r3, r3, #768
 114 006e 6168     		ldr	r1, [r4, #4]
 115 0070 0B43     		orrs	r3, r3, r1
 116 0072 1362     		str	r3, [r2, #32]
 189:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 190:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     /* Require to disable power clock if necessary */
 191:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     if(pwrclkchanged == SET)
 117              		.loc 1 191 0
 118 0074 002D     		cmp	r5, #0
 119 0076 3FD1     		bne	.L19
 120              	.LVL11:
 121              	.L2:
 122              	.LBE2:
 192:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     {
 193:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       __HAL_RCC_PWR_CLK_DISABLE();
 194:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     }
 195:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   }
 196:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 197:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   /*------------------------------ ADC clock Configuration ------------------*/ 
 198:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_ADC) == RCC_PERIPHCLK_ADC)
 123              		.loc 1 198 0
 124 0078 2368     		ldr	r3, [r4]
 125 007a 13F0020F 		tst	r3, #2
 126 007e 06D0     		beq	.L11
 199:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   {
 200:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     /* Check the parameters */
 201:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     assert_param(IS_RCC_ADCPLLCLK_DIV(PeriphClkInit->AdcClockSelection));
 202:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     
 203:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     /* Configure the ADC clock source */
 204:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     __HAL_RCC_ADC_CONFIG(PeriphClkInit->AdcClockSelection);
 127              		.loc 1 204 0
 128 0080 214A     		ldr	r2, .L20
 129 0082 5368     		ldr	r3, [r2, #4]
 130 0084 23F44043 		bic	r3, r3, #49152
 131 0088 A168     		ldr	r1, [r4, #8]
 132 008a 0B43     		orrs	r3, r3, r1
 133 008c 5360     		str	r3, [r2, #4]
 134              	.L11:
 205:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   }
 206:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 207:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #if defined(STM32F105xC) || defined(STM32F107xC)
 208:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   /*------------------------------ I2S2 Configuration ------------------------*/ 
 209:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_I2S2) == RCC_PERIPHCLK_I2S2)
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s 			page 7


 210:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   {
 211:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     /* Check the parameters */
 212:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     assert_param(IS_RCC_I2S2CLKSOURCE(PeriphClkInit->I2s2ClockSelection));
 213:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 214:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     /* Configure the I2S2 clock source */
 215:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     __HAL_RCC_I2S2_CONFIG(PeriphClkInit->I2s2ClockSelection);
 216:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   }
 217:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 218:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   /*------------------------------ I2S3 Configuration ------------------------*/ 
 219:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_I2S3) == RCC_PERIPHCLK_I2S3)
 220:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   {
 221:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     /* Check the parameters */
 222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     assert_param(IS_RCC_I2S3CLKSOURCE(PeriphClkInit->I2s3ClockSelection));
 223:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     
 224:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     /* Configure the I2S3 clock source */
 225:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     __HAL_RCC_I2S3_CONFIG(PeriphClkInit->I2s3ClockSelection);
 226:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   }
 227:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 228:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   /*------------------------------ PLL I2S Configuration ----------------------*/ 
 229:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   /* Check that PLLI2S need to be enabled */
 230:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   if (HAL_IS_BIT_SET(RCC->CFGR2, RCC_CFGR2_I2S2SRC) || HAL_IS_BIT_SET(RCC->CFGR2, RCC_CFGR2_I2S3SRC
 231:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   {
 232:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     /* Update flag to indicate that PLL I2S should be active */
 233:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     pllactive = 1;
 234:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   }
 235:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 236:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   /* Check if PLL I2S need to be enabled */
 237:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   if (pllactive == 1)
 238:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   {
 239:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     /* Enable PLL I2S only if not active */
 240:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     if (HAL_IS_BIT_CLR(RCC->CR, RCC_CR_PLL3ON))
 241:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     {
 242:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       /* Check the parameters */
 243:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       assert_param(IS_RCC_PLLI2S_MUL(PeriphClkInit->PLLI2S.PLLI2SMUL));
 244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       assert_param(IS_RCC_HSE_PREDIV2(PeriphClkInit->PLLI2S.HSEPrediv2Value));
 245:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 246:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       /* Prediv2 can be written only when the PLL2 is disabled. */
 247:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       /* Return an error only if new value is different from the programmed value */
 248:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       if (HAL_IS_BIT_SET(RCC->CR,RCC_CR_PLL2ON) && \
 249:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         (__HAL_RCC_HSE_GET_PREDIV2() != PeriphClkInit->PLLI2S.HSEPrediv2Value))
 250:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       {
 251:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         return HAL_ERROR;
 252:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       }
 253:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 254:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       /* Configure the HSE prediv2 factor --------------------------------*/
 255:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       __HAL_RCC_HSE_PREDIV2_CONFIG(PeriphClkInit->PLLI2S.HSEPrediv2Value);
 256:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 257:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       /* Configure the main PLLI2S multiplication factors. */
 258:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       __HAL_RCC_PLLI2S_CONFIG(PeriphClkInit->PLLI2S.PLLI2SMUL);
 259:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       
 260:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       /* Enable the main PLLI2S. */
 261:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       __HAL_RCC_PLLI2S_ENABLE();
 262:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       
 263:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       /* Get Start Tick*/
 264:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       tickstart = HAL_GetTick();
 265:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       
 266:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       /* Wait till PLLI2S is ready */
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s 			page 8


 267:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLI2SRDY)  == RESET)
 268:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       {
 269:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         if((HAL_GetTick() - tickstart ) > PLLI2S_TIMEOUT_VALUE)
 270:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         {
 271:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           return HAL_TIMEOUT;
 272:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         }
 273:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       }
 274:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     }
 275:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     else
 276:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     {
 277:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       /* Return an error only if user wants to change the PLLI2SMUL whereas PLLI2S is active */
 278:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       if (READ_BIT(RCC->CFGR2, RCC_CFGR2_PLL3MUL) != PeriphClkInit->PLLI2S.PLLI2SMUL)
 279:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       {
 280:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           return HAL_ERROR;
 281:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       }
 282:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     }
 283:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   }
 284:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #endif /* STM32F105xC || STM32F107xC */
 285:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 286:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #if defined(STM32F102x6) || defined(STM32F102xB) || defined(STM32F103x6)\
 287:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****  || defined(STM32F103xB) || defined(STM32F103xE) || defined(STM32F103xG)\
 288:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****  || defined(STM32F105xC) || defined(STM32F107xC)
 289:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   /*------------------------------ USB clock Configuration ------------------*/ 
 290:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_USB) == RCC_PERIPHCLK_USB)
 135              		.loc 1 290 0
 136 008e 2368     		ldr	r3, [r4]
 137 0090 13F0100F 		tst	r3, #16
 138 0094 35D0     		beq	.L15
 291:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   {
 292:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     /* Check the parameters */
 293:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     assert_param(IS_RCC_USBPLLCLK_DIV(PeriphClkInit->UsbClockSelection));
 294:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     
 295:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     /* Configure the USB clock source */
 296:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     __HAL_RCC_USB_CONFIG(PeriphClkInit->UsbClockSelection);
 139              		.loc 1 296 0
 140 0096 1C4A     		ldr	r2, .L20
 141 0098 5368     		ldr	r3, [r2, #4]
 142 009a 23F48003 		bic	r3, r3, #4194304
 143 009e E168     		ldr	r1, [r4, #12]
 144 00a0 0B43     		orrs	r3, r3, r1
 145 00a2 5360     		str	r3, [r2, #4]
 297:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   }
 298:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #endif /* STM32F102x6 || STM32F102xB || STM32F103x6 || STM32F103xB || STM32F103xE || STM32F103xG ||
 299:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 300:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   return HAL_OK;
 146              		.loc 1 300 0
 147 00a4 0020     		movs	r0, #0
 148              	.L6:
 301:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** }
 149              		.loc 1 301 0
 150 00a6 02B0     		add	sp, sp, #8
 151              	.LCFI2:
 152              		.cfi_remember_state
 153              		.cfi_def_cfa_offset 16
 154              		@ sp needed
 155 00a8 70BD     		pop	{r4, r5, r6, pc}
 156              	.LVL12:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s 			page 9


 157              	.L12:
 158              	.LCFI3:
 159              		.cfi_restore_state
 160              	.LBB4:
 132:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 161              		.loc 1 132 0
 162 00aa 0025     		movs	r5, #0
 163 00ac BFE7     		b	.L3
 164              	.LVL13:
 165              	.L17:
 146:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       
 166              		.loc 1 146 0
 167 00ae 174A     		ldr	r2, .L20+4
 168 00b0 1368     		ldr	r3, [r2]
 169 00b2 43F48073 		orr	r3, r3, #256
 170 00b6 1360     		str	r3, [r2]
 149:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       
 171              		.loc 1 149 0
 172 00b8 FFF7FEFF 		bl	HAL_GetTick
 173              	.LVL14:
 174 00bc 0646     		mov	r6, r0
 175              	.LVL15:
 176              	.L5:
 151:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       {
 177              		.loc 1 151 0
 178 00be 134B     		ldr	r3, .L20+4
 179 00c0 1B68     		ldr	r3, [r3]
 180 00c2 13F4807F 		tst	r3, #256
 181 00c6 B7D1     		bne	.L4
 153:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         {
 182              		.loc 1 153 0
 183 00c8 FFF7FEFF 		bl	HAL_GetTick
 184              	.LVL16:
 185 00cc 801B     		subs	r0, r0, r6
 186 00ce 6428     		cmp	r0, #100
 187 00d0 F5D9     		bls	.L5
 155:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         }
 188              		.loc 1 155 0
 189 00d2 0320     		movs	r0, #3
 190 00d4 E7E7     		b	.L6
 191              	.LVL17:
 192              	.L18:
 176:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       
 193              		.loc 1 176 0
 194 00d6 FFF7FEFF 		bl	HAL_GetTick
 195              	.LVL18:
 196 00da 0646     		mov	r6, r0
 197              	.LVL19:
 198              	.L9:
 179:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         {
 199              		.loc 1 179 0
 200 00dc 0A4B     		ldr	r3, .L20
 201 00de 1B6A     		ldr	r3, [r3, #32]
 202 00e0 13F0020F 		tst	r3, #2
 203 00e4 BFD1     		bne	.L8
 181:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           {
 204              		.loc 1 181 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s 			page 10


 205 00e6 FFF7FEFF 		bl	HAL_GetTick
 206              	.LVL20:
 207 00ea 801B     		subs	r0, r0, r6
 208 00ec 41F28833 		movw	r3, #5000
 209 00f0 9842     		cmp	r0, r3
 210 00f2 F3D9     		bls	.L9
 183:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           }      
 211              		.loc 1 183 0
 212 00f4 0320     		movs	r0, #3
 213 00f6 D6E7     		b	.L6
 214              	.LVL21:
 215              	.L19:
 193:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     }
 216              		.loc 1 193 0
 217 00f8 D369     		ldr	r3, [r2, #28]
 218 00fa 23F08053 		bic	r3, r3, #268435456
 219 00fe D361     		str	r3, [r2, #28]
 220 0100 BAE7     		b	.L2
 221              	.LVL22:
 222              	.L15:
 223              	.LBE4:
 300:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** }
 224              		.loc 1 300 0
 225 0102 0020     		movs	r0, #0
 226 0104 CFE7     		b	.L6
 227              	.L21:
 228 0106 00BF     		.align	2
 229              	.L20:
 230 0108 00100240 		.word	1073876992
 231 010c 00700040 		.word	1073770496
 232 0110 40044242 		.word	1111622720
 233              		.cfi_endproc
 234              	.LFE66:
 236              		.section	.text.HAL_RCCEx_GetPeriphCLKConfig,"ax",%progbits
 237              		.align	1
 238              		.global	HAL_RCCEx_GetPeriphCLKConfig
 239              		.syntax unified
 240              		.thumb
 241              		.thumb_func
 242              		.fpu softvfp
 244              	HAL_RCCEx_GetPeriphCLKConfig:
 245              	.LFB67:
 302:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 303:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** /**
 304:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * @brief  Get the PeriphClkInit according to the internal
 305:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * RCC configuration registers.
 306:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * @param  PeriphClkInit pointer to an RCC_PeriphCLKInitTypeDef structure that 
 307:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *         returns the configuration information for the Extended Peripherals clocks(RTC, I2S, ADC
 308:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * @retval None
 309:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   */
 310:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** void HAL_RCCEx_GetPeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit)
 311:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** {
 246              		.loc 1 311 0
 247              		.cfi_startproc
 248              		@ args = 0, pretend = 0, frame = 0
 249              		@ frame_needed = 0, uses_anonymous_args = 0
 250              		@ link register save eliminated.
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s 			page 11


 251              	.LVL23:
 312:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   uint32_t srcclk = 0U;
 313:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   
 314:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   /* Set all possible values for the extended clock type parameter------------*/
 315:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   PeriphClkInit->PeriphClockSelection = RCC_PERIPHCLK_RTC;
 252              		.loc 1 315 0
 253 0000 0123     		movs	r3, #1
 254 0002 0360     		str	r3, [r0]
 316:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 317:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   /* Get the RTC configuration -----------------------------------------------*/
 318:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   srcclk = __HAL_RCC_GET_RTC_SOURCE();
 255              		.loc 1 318 0
 256 0004 084B     		ldr	r3, .L23
 257 0006 1A6A     		ldr	r2, [r3, #32]
 258 0008 02F44072 		and	r2, r2, #768
 259              	.LVL24:
 319:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   /* Source clock is LSE or LSI*/
 320:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   PeriphClkInit->RTCClockSelection = srcclk;
 260              		.loc 1 320 0
 261 000c 4260     		str	r2, [r0, #4]
 321:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 322:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   /* Get the ADC clock configuration -----------------------------------------*/
 323:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   PeriphClkInit->PeriphClockSelection |= RCC_PERIPHCLK_ADC;
 262              		.loc 1 323 0
 263 000e 0322     		movs	r2, #3
 264              	.LVL25:
 265 0010 0260     		str	r2, [r0]
 324:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   PeriphClkInit->AdcClockSelection = __HAL_RCC_GET_ADC_SOURCE();
 266              		.loc 1 324 0
 267 0012 5A68     		ldr	r2, [r3, #4]
 268 0014 02F44042 		and	r2, r2, #49152
 269 0018 8260     		str	r2, [r0, #8]
 325:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 326:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #if defined(STM32F105xC) || defined(STM32F107xC)
 327:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   /* Get the I2S2 clock configuration -----------------------------------------*/
 328:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   PeriphClkInit->PeriphClockSelection |= RCC_PERIPHCLK_I2S2;
 329:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   PeriphClkInit->I2s2ClockSelection = __HAL_RCC_GET_I2S2_SOURCE();
 330:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 331:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   /* Get the I2S3 clock configuration -----------------------------------------*/
 332:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   PeriphClkInit->PeriphClockSelection |= RCC_PERIPHCLK_I2S3;
 333:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   PeriphClkInit->I2s3ClockSelection = __HAL_RCC_GET_I2S3_SOURCE();
 334:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 335:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #endif /* STM32F105xC || STM32F107xC */
 336:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 337:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #if defined(STM32F103xE) || defined(STM32F103xG)
 338:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   /* Get the I2S2 clock configuration -----------------------------------------*/
 339:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   PeriphClkInit->PeriphClockSelection |= RCC_PERIPHCLK_I2S2;
 340:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   PeriphClkInit->I2s2ClockSelection = RCC_I2S2CLKSOURCE_SYSCLK;
 341:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 342:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   /* Get the I2S3 clock configuration -----------------------------------------*/
 343:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   PeriphClkInit->PeriphClockSelection |= RCC_PERIPHCLK_I2S3;
 344:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   PeriphClkInit->I2s3ClockSelection = RCC_I2S3CLKSOURCE_SYSCLK;
 345:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 346:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #endif /* STM32F103xE || STM32F103xG */
 347:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 348:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #if defined(STM32F102x6) || defined(STM32F102xB) || defined(STM32F103x6)\
 349:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****  || defined(STM32F103xB) || defined(STM32F103xE) || defined(STM32F103xG)\
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s 			page 12


 350:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****  || defined(STM32F105xC) || defined(STM32F107xC)
 351:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   /* Get the USB clock configuration -----------------------------------------*/
 352:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   PeriphClkInit->PeriphClockSelection |= RCC_PERIPHCLK_USB;
 270              		.loc 1 352 0
 271 001a 1322     		movs	r2, #19
 272 001c 0260     		str	r2, [r0]
 353:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   PeriphClkInit->UsbClockSelection = __HAL_RCC_GET_USB_SOURCE();
 273              		.loc 1 353 0
 274 001e 5B68     		ldr	r3, [r3, #4]
 275 0020 03F48003 		and	r3, r3, #4194304
 276 0024 C360     		str	r3, [r0, #12]
 354:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #endif /* STM32F102x6 || STM32F102xB || STM32F103x6 || STM32F103xB || STM32F103xE || STM32F103xG ||
 355:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** }
 277              		.loc 1 355 0
 278 0026 7047     		bx	lr
 279              	.L24:
 280              		.align	2
 281              	.L23:
 282 0028 00100240 		.word	1073876992
 283              		.cfi_endproc
 284              	.LFE67:
 286              		.section	.text.HAL_RCCEx_GetPeriphCLKFreq,"ax",%progbits
 287              		.align	1
 288              		.global	HAL_RCCEx_GetPeriphCLKFreq
 289              		.syntax unified
 290              		.thumb
 291              		.thumb_func
 292              		.fpu softvfp
 294              	HAL_RCCEx_GetPeriphCLKFreq:
 295              	.LFB68:
 356:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 357:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** /**
 358:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * @brief  Returns the peripheral clock frequency
 359:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * @note   Returns 0 if peripheral clock is unknown
 360:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * @param  PeriphClk Peripheral clock identifier
 361:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *         This parameter can be one of the following values:
 362:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_RTC  RTC peripheral clock
 363:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_ADC  ADC peripheral clock
 364:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   @if STM32F103xE
 365:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2S2 I2S2 peripheral clock
 366:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2S3 I2S3 peripheral clock
 367:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2S3 I2S3 peripheral clock
 368:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   @endif
 369:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   @if STM32F103xG
 370:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2S2 I2S2 peripheral clock
 371:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2S3 I2S3 peripheral clock
 372:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2S3 I2S3 peripheral clock
 373:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2S2 I2S2 peripheral clock
 374:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   @endif
 375:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   @if STM32F105xC
 376:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2S2 I2S2 peripheral clock
 377:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2S3 I2S3 peripheral clock
 378:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2S3 I2S3 peripheral clock
 379:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2S2 I2S2 peripheral clock
 380:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2S3 I2S3 peripheral clock
 381:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2S3 I2S3 peripheral clock
 382:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2S2 I2S2 peripheral clock
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s 			page 13


 383:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_USB  USB peripheral clock
 384:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   @endif
 385:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   @if STM32F107xC
 386:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2S2 I2S2 peripheral clock
 387:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2S3 I2S3 peripheral clock
 388:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2S3 I2S3 peripheral clock
 389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2S2 I2S2 peripheral clock
 390:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2S3 I2S3 peripheral clock
 391:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2S3 I2S3 peripheral clock
 392:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2S2 I2S2 peripheral clock
 393:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_USB  USB peripheral clock
 394:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   @endif
 395:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   @if STM32F102xx
 396:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_USB  USB peripheral clock
 397:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   @endif
 398:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   @if STM32F103xx
 399:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_USB  USB peripheral clock
 400:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   @endif
 401:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   * @retval Frequency in Hz (0: means that no available frequency for the peripheral)
 402:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   */
 403:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** uint32_t HAL_RCCEx_GetPeriphCLKFreq(uint32_t PeriphClk)
 404:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** {
 296              		.loc 1 404 0
 297              		.cfi_startproc
 298              		@ args = 0, pretend = 0, frame = 24
 299              		@ frame_needed = 0, uses_anonymous_args = 0
 300              	.LVL26:
 301 0000 30B5     		push	{r4, r5, lr}
 302              	.LCFI4:
 303              		.cfi_def_cfa_offset 12
 304              		.cfi_offset 4, -12
 305              		.cfi_offset 5, -8
 306              		.cfi_offset 14, -4
 307 0002 87B0     		sub	sp, sp, #28
 308              	.LCFI5:
 309              		.cfi_def_cfa_offset 40
 310 0004 0546     		mov	r5, r0
 405:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #if defined(STM32F105xC) || defined(STM32F107xC)
 406:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   const uint8_t aPLLMULFactorTable[14] = {0, 0, 4, 5, 6, 7, 8, 9, 0, 0, 0, 0, 0, 13};
 407:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   const uint8_t aPredivFactorTable[16] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};
 408:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 409:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   uint32_t prediv1 = 0U, pllclk = 0U, pllmul = 0U;
 410:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   uint32_t pll2mul = 0U, pll3mul = 0U, prediv2 = 0U;
 411:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #endif /* STM32F105xC || STM32F107xC */
 412:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #if defined(STM32F102x6) || defined(STM32F102xB) || defined(STM32F103x6) || \
 413:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     defined(STM32F103xB) || defined(STM32F103xE) || defined(STM32F103xG)
 414:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   const uint8_t aPLLMULFactorTable[16] = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16};
 311              		.loc 1 414 0
 312 0006 384C     		ldr	r4, .L44
 313 0008 94E80F00 		ldm	r4, {r0, r1, r2, r3}
 314              	.LVL27:
 315 000c 0DF1180C 		add	ip, sp, #24
 316 0010 0CE90F00 		stmdb	ip, {r0, r1, r2, r3}
 415:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   const uint8_t aPredivFactorTable[2] = {1, 2};
 317              		.loc 1 415 0
 318 0014 238A     		ldrh	r3, [r4, #16]
 319 0016 ADF80430 		strh	r3, [sp, #4]	@ movhi
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s 			page 14


 320              	.LVL28:
 416:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 417:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   uint32_t prediv1 = 0U, pllclk = 0U, pllmul = 0U;
 418:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #endif /* STM32F102x6 || STM32F102xB || STM32F103x6 || STM32F103xB || STM32F103xE || STM32F103xG */
 419:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   uint32_t temp_reg = 0U, frequency = 0U;
 420:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 421:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   /* Check the parameters */
 422:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   assert_param(IS_RCC_PERIPHCLOCK(PeriphClk));
 423:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   
 424:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   switch (PeriphClk)
 321              		.loc 1 424 0
 322 001a 022D     		cmp	r5, #2
 323 001c 50D0     		beq	.L27
 324 001e 102D     		cmp	r5, #16
 325 0020 03D0     		beq	.L28
 326 0022 012D     		cmp	r5, #1
 327 0024 2BD0     		beq	.L41
 419:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 328              		.loc 1 419 0
 329 0026 0020     		movs	r0, #0
 330 0028 54E0     		b	.L25
 331              	.L28:
 425:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   {
 426:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #if defined(STM32F102x6) || defined(STM32F102xB) || defined(STM32F103x6)\
 427:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****  || defined(STM32F103xB) || defined(STM32F103xE) || defined(STM32F103xG)\
 428:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****  || defined(STM32F105xC) || defined(STM32F107xC)
 429:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   case RCC_PERIPHCLK_USB:  
 430:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     {
 431:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       /* Get RCC configuration ------------------------------------------------------*/
 432:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       temp_reg = RCC->CFGR;
 332              		.loc 1 432 0
 333 002a 304B     		ldr	r3, .L44+4
 334 002c 5A68     		ldr	r2, [r3, #4]
 335              	.LVL29:
 433:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   
 434:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       /* Check if PLL is enabled */
 435:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       if (HAL_IS_BIT_SET(RCC->CR,RCC_CR_PLLON))
 336              		.loc 1 435 0
 337 002e 1B68     		ldr	r3, [r3]
 338 0030 13F0807F 		tst	r3, #16777216
 339 0034 50D0     		beq	.L34
 436:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       {
 437:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         pllmul = aPLLMULFactorTable[(uint32_t)(temp_reg & RCC_CFGR_PLLMULL) >> RCC_CFGR_PLLMULL_Pos
 340              		.loc 1 437 0
 341 0036 C2F38343 		ubfx	r3, r2, #18, #4
 342 003a 06A9     		add	r1, sp, #24
 343 003c 0B44     		add	r3, r3, r1
 344 003e 13F8100C 		ldrb	r0, [r3, #-16]	@ zero_extendqisi2
 345              	.LVL30:
 438:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         if ((temp_reg & RCC_CFGR_PLLSRC) != RCC_PLLSOURCE_HSI_DIV2)
 346              		.loc 1 438 0
 347 0042 12F4803F 		tst	r2, #65536
 348 0046 16D0     		beq	.L30
 439:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         {
 440:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #if defined(STM32F105xC) || defined(STM32F107xC) || defined(STM32F100xB)\
 441:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****  || defined(STM32F100xE)
 442:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           prediv1 = aPredivFactorTable[(uint32_t)(RCC->CFGR2 & RCC_CFGR2_PREDIV1) >> RCC_CFGR2_PRED
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s 			page 15


 443:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #else
 444:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           prediv1 = aPredivFactorTable[(uint32_t)(RCC->CFGR & RCC_CFGR_PLLXTPRE) >> RCC_CFGR_PLLXTP
 349              		.loc 1 444 0
 350 0048 284B     		ldr	r3, .L44+4
 351 004a 5B68     		ldr	r3, [r3, #4]
 352 004c C3F34043 		ubfx	r3, r3, #17, #1
 353 0050 0B44     		add	r3, r3, r1
 354 0052 13F8142C 		ldrb	r2, [r3, #-20]	@ zero_extendqisi2
 355              	.LVL31:
 445:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #endif /* STM32F105xC || STM32F107xC || STM32F100xB || STM32F100xE */
 446:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 447:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #if defined(STM32F105xC) || defined(STM32F107xC)
 448:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           if(HAL_IS_BIT_SET(RCC->CFGR2, RCC_CFGR2_PREDIV1SRC))
 449:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           {
 450:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****             /* PLL2 selected as Prediv1 source */
 451:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****             /* PLLCLK = PLL2CLK / PREDIV1 * PLLMUL with PLL2CLK = HSE/PREDIV2 * PLL2MUL */
 452:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****             prediv2 = ((RCC->CFGR2 & RCC_CFGR2_PREDIV2) >> RCC_CFGR2_PREDIV2_Pos) + 1;
 453:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****             pll2mul = ((RCC->CFGR2 & RCC_CFGR2_PLL2MUL) >> RCC_CFGR2_PLL2MUL_Pos) + 2;
 454:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****             pllclk = (uint32_t)((((HSE_VALUE / prediv2) * pll2mul) / prediv1) * pllmul);
 455:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           }
 456:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           else
 457:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           {
 458:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****             /* HSE used as PLL clock source : PLLCLK = HSE/PREDIV1 * PLLMUL */
 459:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****             pllclk = (uint32_t)((HSE_VALUE / prediv1) * pllmul);
 460:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           }
 461:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           
 462:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           /* If PLLMUL was set to 13 means that it was to cover the case PLLMUL 6.5 (avoid using fl
 463:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           /* In this case need to divide pllclk by 2 */
 464:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           if (pllmul == aPLLMULFactorTable[(uint32_t)(RCC_CFGR_PLLMULL6_5) >> RCC_CFGR_PLLMULL_Pos]
 465:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           {
 466:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****               pllclk = pllclk / 2;
 467:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           }
 468:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #else
 469:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           if ((temp_reg & RCC_CFGR_PLLSRC) != RCC_PLLSOURCE_HSI_DIV2)
 470:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           {
 471:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****             /* HSE used as PLL clock source : PLLCLK = HSE/PREDIV1 * PLLMUL */
 472:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****             pllclk = (uint32_t)((HSE_VALUE / prediv1) * pllmul);
 356              		.loc 1 472 0
 357 0056 264B     		ldr	r3, .L44+8
 358 0058 B3FBF2F3 		udiv	r3, r3, r2
 359 005c 00FB03F0 		mul	r0, r0, r3
 360              	.LVL32:
 361              	.L31:
 473:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           }
 474:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #endif /* STM32F105xC || STM32F107xC */
 475:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         }
 476:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         else
 477:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         {
 478:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           /* HSI used as PLL clock source : PLLCLK = HSI/2 * PLLMUL */
 479:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           pllclk = (uint32_t)((HSI_VALUE >> 1) * pllmul);
 480:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         }
 481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 482:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         /* Calcul of the USB frequency*/
 483:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #if defined(STM32F105xC) || defined(STM32F107xC)
 484:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         /* USBCLK = PLLVCO = (2 x PLLCLK) / USB prescaler */
 485:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         if (__HAL_RCC_GET_USB_SOURCE() == RCC_USBCLKSOURCE_PLL_DIV2)
 486:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         {
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s 			page 16


 487:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           /* Prescaler of 2 selected for USB */ 
 488:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           frequency = pllclk;
 489:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         }
 490:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         else
 491:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         {
 492:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           /* Prescaler of 3 selected for USB */ 
 493:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           frequency = (2 * pllclk) / 3;
 494:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         }
 495:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #else
 496:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         /* USBCLK = PLLCLK / USB prescaler */
 497:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         if (__HAL_RCC_GET_USB_SOURCE() == RCC_USBCLKSOURCE_PLL)
 362              		.loc 1 497 0
 363 0060 224B     		ldr	r3, .L44+4
 364 0062 5B68     		ldr	r3, [r3, #4]
 365 0064 13F4800F 		tst	r3, #4194304
 366 0068 34D1     		bne	.L25
 498:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         {
 499:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           /* No prescaler selected for USB */
 500:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           frequency = pllclk;
 501:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         }
 502:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         else
 503:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         {
 504:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           /* Prescaler of 1.5 selected for USB */ 
 505:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           frequency = (pllclk * 2) / 3;
 367              		.loc 1 505 0
 368 006a 4000     		lsls	r0, r0, #1
 369              	.LVL33:
 370 006c 214B     		ldr	r3, .L44+12
 371 006e A3FB0030 		umull	r3, r0, r3, r0
 372 0072 4008     		lsrs	r0, r0, #1
 373              	.LVL34:
 374 0074 2EE0     		b	.L25
 375              	.LVL35:
 376              	.L30:
 479:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         }
 377              		.loc 1 479 0
 378 0076 204B     		ldr	r3, .L44+16
 379 0078 03FB00F0 		mul	r0, r3, r0
 380              	.LVL36:
 381 007c F0E7     		b	.L31
 382              	.LVL37:
 383              	.L41:
 506:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         }
 507:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #endif
 508:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       }
 509:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       break;
 510:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     }
 511:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #endif /* STM32F102x6 || STM32F102xB || STM32F103x6 || STM32F103xB || STM32F103xE || STM32F103xG ||
 512:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #if defined(STM32F103xE) || defined(STM32F103xG) || defined(STM32F105xC) || defined(STM32F107xC)
 513:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   case RCC_PERIPHCLK_I2S2:  
 514:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     {
 515:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #if defined(STM32F103xE) || defined(STM32F103xG)
 516:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       /* SYSCLK used as source clock for I2S2 */
 517:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       frequency = HAL_RCC_GetSysClockFreq();
 518:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #else
 519:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       if (__HAL_RCC_GET_I2S2_SOURCE() == RCC_I2S2CLKSOURCE_SYSCLK)
 520:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       {
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s 			page 17


 521:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         /* SYSCLK used as source clock for I2S2 */
 522:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetSysClockFreq();
 523:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       }
 524:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       else
 525:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       {
 526:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****          /* Check if PLLI2S is enabled */
 527:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         if (HAL_IS_BIT_SET(RCC->CR, RCC_CR_PLL3ON))
 528:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         {
 529:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           /* PLLI2SVCO = 2 * PLLI2SCLK = 2 * (HSE/PREDIV2 * PLL3MUL) */
 530:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           prediv2 = ((RCC->CFGR2 & RCC_CFGR2_PREDIV2) >> RCC_CFGR2_PREDIV2_Pos) + 1;
 531:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           pll3mul = ((RCC->CFGR2 & RCC_CFGR2_PLL3MUL) >> RCC_CFGR2_PLL3MUL_Pos) + 2;
 532:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           frequency = (uint32_t)(2 * ((HSE_VALUE / prediv2) * pll3mul));
 533:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         }
 534:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       }
 535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #endif /* STM32F103xE || STM32F103xG */
 536:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       break;
 537:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     }
 538:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   case RCC_PERIPHCLK_I2S3:
 539:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     {
 540:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #if defined(STM32F103xE) || defined(STM32F103xG)
 541:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       /* SYSCLK used as source clock for I2S3 */
 542:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       frequency = HAL_RCC_GetSysClockFreq();
 543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #else
 544:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       if (__HAL_RCC_GET_I2S3_SOURCE() == RCC_I2S3CLKSOURCE_SYSCLK)
 545:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       {
 546:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         /* SYSCLK used as source clock for I2S3 */
 547:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetSysClockFreq();
 548:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       }
 549:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       else
 550:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       {
 551:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****          /* Check if PLLI2S is enabled */
 552:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         if (HAL_IS_BIT_SET(RCC->CR, RCC_CR_PLL3ON))
 553:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         {
 554:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           /* PLLI2SVCO = 2 * PLLI2SCLK = 2 * (HSE/PREDIV2 * PLL3MUL) */
 555:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           prediv2 = ((RCC->CFGR2 & RCC_CFGR2_PREDIV2) >> RCC_CFGR2_PREDIV2_Pos) + 1;
 556:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           pll3mul = ((RCC->CFGR2 & RCC_CFGR2_PLL3MUL) >> RCC_CFGR2_PLL3MUL_Pos) + 2;
 557:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****           frequency = (uint32_t)(2 * ((HSE_VALUE / prediv2) * pll3mul));
 558:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         }
 559:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       }
 560:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #endif /* STM32F103xE || STM32F103xG */
 561:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       break;
 562:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     }
 563:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** #endif /* STM32F103xE || STM32F103xG || STM32F105xC || STM32F107xC */
 564:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   case RCC_PERIPHCLK_RTC:  
 565:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     {
 566:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       /* Get RCC BDCR configuration ------------------------------------------------------*/
 567:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       temp_reg = RCC->BDCR;
 384              		.loc 1 567 0
 385 007e 1B4B     		ldr	r3, .L44+4
 386 0080 1B6A     		ldr	r3, [r3, #32]
 387              	.LVL38:
 568:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 569:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       /* Check if LSE is ready if RTC clock selection is LSE */
 570:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       if (((temp_reg & RCC_BDCR_RTCSEL) == RCC_RTCCLKSOURCE_LSE) && (HAL_IS_BIT_SET(temp_reg, RCC_B
 388              		.loc 1 570 0
 389 0082 40F20232 		movw	r2, #770
 390 0086 1A40     		ands	r2, r2, r3
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s 			page 18


 391 0088 B2F5817F 		cmp	r2, #258
 392 008c 26D0     		beq	.L35
 571:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       {
 572:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         frequency = LSE_VALUE;
 573:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       }
 574:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       /* Check if LSI is ready if RTC clock selection is LSI */
 575:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       else if (((temp_reg & RCC_BDCR_RTCSEL) == RCC_RTCCLKSOURCE_LSI) && (HAL_IS_BIT_SET(RCC->CSR, 
 393              		.loc 1 575 0
 394 008e 03F44073 		and	r3, r3, #768
 395              	.LVL39:
 396 0092 B3F5007F 		cmp	r3, #512
 397 0096 04D0     		beq	.L42
 398              	.L32:
 576:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       {
 577:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         frequency = LSI_VALUE;
 578:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       }
 579:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       else if (((temp_reg & RCC_BDCR_RTCSEL) == RCC_RTCCLKSOURCE_HSE_DIV128) && (HAL_IS_BIT_SET(RCC
 399              		.loc 1 579 0
 400 0098 B3F5407F 		cmp	r3, #768
 401 009c 09D0     		beq	.L43
 580:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       {
 581:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         frequency = HSE_VALUE / 128U;
 582:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       }
 583:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       /* Clock not enabled for RTC*/
 584:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       else
 585:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       {
 586:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****         frequency = 0U;
 402              		.loc 1 586 0
 403 009e 0020     		movs	r0, #0
 404 00a0 18E0     		b	.L25
 405              	.L42:
 575:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       {
 406              		.loc 1 575 0 discriminator 1
 407 00a2 124A     		ldr	r2, .L44+4
 408 00a4 526A     		ldr	r2, [r2, #36]
 409 00a6 12F0020F 		tst	r2, #2
 410 00aa F5D0     		beq	.L32
 577:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       }
 411              		.loc 1 577 0
 412 00ac 49F64040 		movw	r0, #40000
 413 00b0 10E0     		b	.L25
 414              	.L43:
 579:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       {
 415              		.loc 1 579 0 discriminator 1
 416 00b2 0E4B     		ldr	r3, .L44+4
 417 00b4 1B68     		ldr	r3, [r3]
 418 00b6 13F4003F 		tst	r3, #131072
 419 00ba 12D1     		bne	.L38
 420              		.loc 1 586 0
 421 00bc 0020     		movs	r0, #0
 422 00be 09E0     		b	.L25
 423              	.LVL40:
 424              	.L27:
 587:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       }
 588:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       break;
 589:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     }
 590:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   case RCC_PERIPHCLK_ADC:  
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s 			page 19


 591:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     {
 592:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       frequency = HAL_RCC_GetPCLK2Freq() / (((__HAL_RCC_GET_ADC_SOURCE() >> RCC_CFGR_ADCPRE_Pos) + 
 425              		.loc 1 592 0
 426 00c0 FFF7FEFF 		bl	HAL_RCC_GetPCLK2Freq
 427              	.LVL41:
 428 00c4 094B     		ldr	r3, .L44+4
 429 00c6 5B68     		ldr	r3, [r3, #4]
 430 00c8 C3F38133 		ubfx	r3, r3, #14, #2
 431 00cc 0133     		adds	r3, r3, #1
 432 00ce 5B00     		lsls	r3, r3, #1
 433 00d0 B0FBF3F0 		udiv	r0, r0, r3
 434              	.LVL42:
 435              	.L25:
 593:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       break;
 594:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     }
 595:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   default: 
 596:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     {
 597:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       break;
 598:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****     }
 599:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   }
 600:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****   return(frequency);
 601:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** }
 436              		.loc 1 601 0
 437 00d4 07B0     		add	sp, sp, #28
 438              	.LCFI6:
 439              		.cfi_remember_state
 440              		.cfi_def_cfa_offset 12
 441              		@ sp needed
 442 00d6 30BD     		pop	{r4, r5, pc}
 443              	.LVL43:
 444              	.L34:
 445              	.LCFI7:
 446              		.cfi_restore_state
 419:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** 
 447              		.loc 1 419 0
 448 00d8 0020     		movs	r0, #0
 449 00da FBE7     		b	.L25
 450              	.LVL44:
 451              	.L35:
 572:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       }
 452              		.loc 1 572 0
 453 00dc 4FF40040 		mov	r0, #32768
 454 00e0 F8E7     		b	.L25
 455              	.LVL45:
 456              	.L38:
 581:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c ****       }
 457              		.loc 1 581 0
 458 00e2 4FF22440 		movw	r0, #62500
 459              	.LVL46:
 600:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c **** }
 460              		.loc 1 600 0
 461 00e6 F5E7     		b	.L25
 462              	.L45:
 463              		.align	2
 464              	.L44:
 465 00e8 00000000 		.word	.LANCHOR0
 466 00ec 00100240 		.word	1073876992
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s 			page 20


 467 00f0 00127A00 		.word	8000000
 468 00f4 ABAAAAAA 		.word	-1431655765
 469 00f8 00093D00 		.word	4000000
 470              		.cfi_endproc
 471              	.LFE68:
 473              		.section	.rodata
 474              		.align	2
 475              		.set	.LANCHOR0,. + 0
 476              	.LC0:
 477 0000 02       		.byte	2
 478 0001 03       		.byte	3
 479 0002 04       		.byte	4
 480 0003 05       		.byte	5
 481 0004 06       		.byte	6
 482 0005 07       		.byte	7
 483 0006 08       		.byte	8
 484 0007 09       		.byte	9
 485 0008 0A       		.byte	10
 486 0009 0B       		.byte	11
 487 000a 0C       		.byte	12
 488 000b 0D       		.byte	13
 489 000c 0E       		.byte	14
 490 000d 0F       		.byte	15
 491 000e 10       		.byte	16
 492 000f 10       		.byte	16
 493              	.LC1:
 494 0010 01       		.byte	1
 495 0011 02       		.byte	2
 496              		.text
 497              	.Letext0:
 498              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 499              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 500              		.file 4 "Drivers/CMSIS/Include/core_cm3.h"
 501              		.file 5 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/system_stm32f1xx.h"
 502              		.file 6 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
 503              		.file 7 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"
 504              		.file 8 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 505              		.file 9 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 506              		.file 10 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\lib\\gcc\\arm-none-ea
 507              		.file 11 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\includ
 508              		.file 12 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"
 509              		.file 13 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"
 510              		.file 14 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"
 511              		.file 15 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s 			page 21


DEFINED SYMBOLS
                            *ABS*:00000000 stm32f1xx_hal_rcc_ex.c
C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s:16     .text.HAL_RCCEx_PeriphCLKConfig:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s:23     .text.HAL_RCCEx_PeriphCLKConfig:00000000 HAL_RCCEx_PeriphCLKConfig
C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s:230    .text.HAL_RCCEx_PeriphCLKConfig:00000108 $d
C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s:237    .text.HAL_RCCEx_GetPeriphCLKConfig:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s:244    .text.HAL_RCCEx_GetPeriphCLKConfig:00000000 HAL_RCCEx_GetPeriphCLKConfig
C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s:282    .text.HAL_RCCEx_GetPeriphCLKConfig:00000028 $d
C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s:287    .text.HAL_RCCEx_GetPeriphCLKFreq:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s:294    .text.HAL_RCCEx_GetPeriphCLKFreq:00000000 HAL_RCCEx_GetPeriphCLKFreq
C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s:465    .text.HAL_RCCEx_GetPeriphCLKFreq:000000e8 $d
C:\Users\crist\AppData\Local\Temp\cc8J5cs9.s:474    .rodata:00000000 $d

UNDEFINED SYMBOLS
HAL_GetTick
HAL_RCC_GetPCLK2Freq
