ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 1


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
  11              		.file	"stm32f1xx_hal_pwr.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.PWR_OverloadWfe,"ax",%progbits
  16              		.align	1
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu softvfp
  22              	PWR_OverloadWfe:
  23              	.LFB66:
  24              		.file 1 "Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c"
   1:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /**
   2:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   ******************************************************************************
   3:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @file    stm32f1xx_hal_pwr.c
   4:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @author  MCD Application Team
   5:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @brief   PWR HAL module driver.
   6:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *
   7:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *          This file provides firmware functions to manage the following
   8:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *          functionalities of the Power Controller (PWR) peripheral:
   9:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *           + Initialization/de-initialization functions
  10:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *           + Peripheral Control functions 
  11:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *
  12:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   ******************************************************************************
  13:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @attention
  14:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *
  15:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
  16:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *
  17:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * Redistribution and use in source and binary forms, with or without modification,
  18:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * are permitted provided that the following conditions are met:
  19:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  20:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *      this list of conditions and the following disclaimer.
  21:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  22:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *      this list of conditions and the following disclaimer in the documentation
  23:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *      and/or other materials provided with the distribution.
  24:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  25:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *      may be used to endorse or promote products derived from this software
  26:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *      without specific prior written permission.
  27:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *
  28:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  29:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  30:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  31:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  32:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  34:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 2


  35:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  36:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  37:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  38:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *
  39:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   ******************************************************************************
  40:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
  41:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
  42:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /* Includes ------------------------------------------------------------------*/
  43:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** #include "stm32f1xx_hal.h"
  44:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
  45:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /** @addtogroup STM32F1xx_HAL_Driver
  46:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @{
  47:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
  48:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
  49:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /** @defgroup PWR PWR
  50:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @brief    PWR HAL module driver
  51:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @{
  52:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
  53:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
  54:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** #ifdef HAL_PWR_MODULE_ENABLED
  55:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
  56:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /* Private typedef -----------------------------------------------------------*/
  57:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /* Private define ------------------------------------------------------------*/
  58:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
  59:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /** @defgroup PWR_Private_Constants PWR Private Constants
  60:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @{
  61:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
  62:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   
  63:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /** @defgroup PWR_PVD_Mode_Mask PWR PVD Mode Mask
  64:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @{
  65:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */ 
  66:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** #define PVD_MODE_IT               0x00010000U
  67:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** #define PVD_MODE_EVT              0x00020000U
  68:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** #define PVD_RISING_EDGE           0x00000001U
  69:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** #define PVD_FALLING_EDGE          0x00000002U
  70:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /**
  71:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @}
  72:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
  73:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
  74:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
  75:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /** @defgroup PWR_register_alias_address PWR Register alias address
  76:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @{
  77:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */ 
  78:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /* ------------- PWR registers bit address in the alias region ---------------*/
  79:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** #define PWR_OFFSET               (PWR_BASE - PERIPH_BASE)
  80:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** #define PWR_CR_OFFSET            0x00U
  81:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** #define PWR_CSR_OFFSET           0x04U
  82:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** #define PWR_CR_OFFSET_BB         (PWR_OFFSET + PWR_CR_OFFSET)
  83:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** #define PWR_CSR_OFFSET_BB        (PWR_OFFSET + PWR_CSR_OFFSET)
  84:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /**
  85:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @}
  86:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
  87:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****    
  88:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /** @defgroup PWR_CR_register_alias PWR CR Register alias address
  89:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @{
  90:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */  
  91:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /* --- CR Register ---*/
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 3


  92:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /* Alias word address of LPSDSR bit */
  93:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** #define LPSDSR_BIT_NUMBER        PWR_CR_LPDS_Pos
  94:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** #define CR_LPSDSR_BB             ((uint32_t)(PERIPH_BB_BASE + (PWR_CR_OFFSET_BB * 32U) + (LPSDSR_BI
  95:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
  96:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /* Alias word address of DBP bit */
  97:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** #define DBP_BIT_NUMBER            PWR_CR_DBP_Pos
  98:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** #define CR_DBP_BB                ((uint32_t)(PERIPH_BB_BASE + (PWR_CR_OFFSET_BB * 32U) + (DBP_BIT_N
  99:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 100:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /* Alias word address of PVDE bit */
 101:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** #define PVDE_BIT_NUMBER           PWR_CR_PVDE_Pos
 102:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** #define CR_PVDE_BB               ((uint32_t)(PERIPH_BB_BASE + (PWR_CR_OFFSET_BB * 32U) + (PVDE_BIT_
 103:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 104:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /**
 105:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @}
 106:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
 107:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 108:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /** @defgroup PWR_CSR_register_alias PWR CSR Register alias address
 109:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @{
 110:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
 111:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 112:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /* --- CSR Register ---*/
 113:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /* Alias word address of EWUP1 bit */
 114:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** #define CSR_EWUP_BB(VAL)         ((uint32_t)(PERIPH_BB_BASE + (PWR_CSR_OFFSET_BB * 32U) + (POSITION
 115:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /**
 116:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @}
 117:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
 118:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   
 119:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /**
 120:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @}
 121:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
 122:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 123:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /* Private variables ---------------------------------------------------------*/
 124:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /* Private function prototypes -----------------------------------------------*/
 125:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /** @defgroup PWR_Private_Functions PWR Private Functions
 126:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****  * brief   WFE cortex command overloaded for HAL_PWR_EnterSTOPMode usage only (see Workaround secti
 127:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****  * @{
 128:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****  */
 129:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** static void PWR_OverloadWfe(void);
 130:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 131:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /* Private functions ---------------------------------------------------------*/
 132:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** __NOINLINE
 133:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** static void PWR_OverloadWfe(void)
 134:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** {
  25              		.loc 1 134 0
  26              		.cfi_startproc
  27              		@ args = 0, pretend = 0, frame = 0
  28              		@ frame_needed = 0, uses_anonymous_args = 0
  29              		@ link register save eliminated.
 135:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   __asm volatile( "wfe" );
  30              		.loc 1 135 0
  31              		.syntax unified
  32              	@ 135 "Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c" 1
  33 0000 20BF     		wfe
  34              	@ 0 "" 2
 136:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   __asm volatile( "nop" );
  35              		.loc 1 136 0
  36              	@ 136 "Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c" 1
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 4


  37 0002 00BF     		nop
  38              	@ 0 "" 2
 137:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** }
  39              		.loc 1 137 0
  40              		.thumb
  41              		.syntax unified
  42 0004 7047     		bx	lr
  43              		.cfi_endproc
  44              	.LFE66:
  46              		.section	.text.HAL_PWR_DeInit,"ax",%progbits
  47              		.align	1
  48              		.global	HAL_PWR_DeInit
  49              		.syntax unified
  50              		.thumb
  51              		.thumb_func
  52              		.fpu softvfp
  54              	HAL_PWR_DeInit:
  55              	.LFB67:
 138:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 139:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /**
 140:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @}
 141:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
 142:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 143:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 144:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /** @defgroup PWR_Exported_Functions PWR Exported Functions
 145:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @{
 146:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
 147:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 148:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /** @defgroup PWR_Exported_Functions_Group1 Initialization and de-initialization functions 
 149:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *  @brief   Initialization and de-initialization functions
 150:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *
 151:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** @verbatim
 152:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****  ===============================================================================
 153:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****               ##### Initialization and de-initialization functions #####
 154:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****  ===============================================================================
 155:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     [..]
 156:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       After reset, the backup domain (RTC registers, RTC backup data
 157:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       registers) is protected against possible unwanted
 158:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       write accesses.
 159:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       To enable access to the RTC Domain and RTC registers, proceed as follows:
 160:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****         (+) Enable the Power Controller (PWR) APB1 interface clock using the
 161:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****             __HAL_RCC_PWR_CLK_ENABLE() macro.
 162:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****         (+) Enable access to RTC domain using the HAL_PWR_EnableBkUpAccess() function.
 163:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 164:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** @endverbatim
 165:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @{
 166:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
 167:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 168:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /**
 169:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @brief  Deinitializes the PWR peripheral registers to their default reset values.  
 170:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @retval None
 171:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
 172:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** void HAL_PWR_DeInit(void)
 173:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** {
  56              		.loc 1 173 0
  57              		.cfi_startproc
  58              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 5


  59              		@ frame_needed = 0, uses_anonymous_args = 0
  60              		@ link register save eliminated.
 174:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   __HAL_RCC_PWR_FORCE_RESET();
  61              		.loc 1 174 0
  62 0000 044B     		ldr	r3, .L3
  63 0002 1A69     		ldr	r2, [r3, #16]
  64 0004 42F08052 		orr	r2, r2, #268435456
  65 0008 1A61     		str	r2, [r3, #16]
 175:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   __HAL_RCC_PWR_RELEASE_RESET();
  66              		.loc 1 175 0
  67 000a 1A69     		ldr	r2, [r3, #16]
  68 000c 22F08052 		bic	r2, r2, #268435456
  69 0010 1A61     		str	r2, [r3, #16]
 176:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** }
  70              		.loc 1 176 0
  71 0012 7047     		bx	lr
  72              	.L4:
  73              		.align	2
  74              	.L3:
  75 0014 00100240 		.word	1073876992
  76              		.cfi_endproc
  77              	.LFE67:
  79              		.section	.text.HAL_PWR_EnableBkUpAccess,"ax",%progbits
  80              		.align	1
  81              		.global	HAL_PWR_EnableBkUpAccess
  82              		.syntax unified
  83              		.thumb
  84              		.thumb_func
  85              		.fpu softvfp
  87              	HAL_PWR_EnableBkUpAccess:
  88              	.LFB68:
 177:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 178:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /**
 179:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @brief  Enables access to the backup domain (RTC registers, RTC
 180:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *         backup data registers ).
 181:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @note   If the HSE divided by 128 is used as the RTC clock, the
 182:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *         Backup Domain Access should be kept enabled.
 183:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @retval None
 184:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
 185:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** void HAL_PWR_EnableBkUpAccess(void)
 186:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** {
  89              		.loc 1 186 0
  90              		.cfi_startproc
  91              		@ args = 0, pretend = 0, frame = 0
  92              		@ frame_needed = 0, uses_anonymous_args = 0
  93              		@ link register save eliminated.
 187:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Enable access to RTC and backup registers */
 188:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *(__IO uint32_t *) CR_DBP_BB = (uint32_t)ENABLE;
  94              		.loc 1 188 0
  95 0000 014B     		ldr	r3, .L6
  96 0002 0122     		movs	r2, #1
  97 0004 1A60     		str	r2, [r3]
 189:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** }
  98              		.loc 1 189 0
  99 0006 7047     		bx	lr
 100              	.L7:
 101              		.align	2
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 6


 102              	.L6:
 103 0008 20000E42 		.word	1108213792
 104              		.cfi_endproc
 105              	.LFE68:
 107              		.section	.text.HAL_PWR_DisableBkUpAccess,"ax",%progbits
 108              		.align	1
 109              		.global	HAL_PWR_DisableBkUpAccess
 110              		.syntax unified
 111              		.thumb
 112              		.thumb_func
 113              		.fpu softvfp
 115              	HAL_PWR_DisableBkUpAccess:
 116              	.LFB69:
 190:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 191:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /**
 192:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @brief  Disables access to the backup domain (RTC registers, RTC
 193:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *         backup data registers).
 194:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @note   If the HSE divided by 128 is used as the RTC clock, the
 195:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *         Backup Domain Access should be kept enabled.
 196:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @retval None
 197:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
 198:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** void HAL_PWR_DisableBkUpAccess(void)
 199:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** {
 117              		.loc 1 199 0
 118              		.cfi_startproc
 119              		@ args = 0, pretend = 0, frame = 0
 120              		@ frame_needed = 0, uses_anonymous_args = 0
 121              		@ link register save eliminated.
 200:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Disable access to RTC and backup registers */
 201:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *(__IO uint32_t *) CR_DBP_BB = (uint32_t)DISABLE;
 122              		.loc 1 201 0
 123 0000 014B     		ldr	r3, .L9
 124 0002 0022     		movs	r2, #0
 125 0004 1A60     		str	r2, [r3]
 202:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** }
 126              		.loc 1 202 0
 127 0006 7047     		bx	lr
 128              	.L10:
 129              		.align	2
 130              	.L9:
 131 0008 20000E42 		.word	1108213792
 132              		.cfi_endproc
 133              	.LFE69:
 135              		.section	.text.HAL_PWR_ConfigPVD,"ax",%progbits
 136              		.align	1
 137              		.global	HAL_PWR_ConfigPVD
 138              		.syntax unified
 139              		.thumb
 140              		.thumb_func
 141              		.fpu softvfp
 143              	HAL_PWR_ConfigPVD:
 144              	.LFB70:
 203:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 204:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /**
 205:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @}
 206:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
 207:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 7


 208:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /** @defgroup PWR_Exported_Functions_Group2 Peripheral Control functions 
 209:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @brief    Low Power modes configuration functions
 210:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *
 211:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** @verbatim
 212:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****  ===============================================================================
 213:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****                  ##### Peripheral Control functions #####
 214:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****  ===============================================================================
 215:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****      
 216:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     *** PVD configuration ***
 217:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     =========================
 218:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     [..]
 219:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       (+) The PVD is used to monitor the VDD power supply by comparing it to a
 220:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****           threshold selected by the PVD Level (PLS[2:0] bits in the PWR_CR).
 221:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       (+) A PVDO flag is available to indicate if VDD/VDDA is higher or lower
 223:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****           than the PVD threshold. This event is internally connected to the EXTI
 224:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****           line16 and can generate an interrupt if enabled. This is done through
 225:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****           __HAL_PVD_EXTI_ENABLE_IT() macro.
 226:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       (+) The PVD is stopped in Standby mode.
 227:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 228:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     *** WakeUp pin configuration ***
 229:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     ================================
 230:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     [..]
 231:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       (+) WakeUp pin is used to wake up the system from Standby mode. This pin is
 232:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****           forced in input pull-down configuration and is active on rising edges.
 233:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       (+) There is one WakeUp pin:
 234:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****           WakeUp Pin 1 on PA.00.
 235:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 236:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     [..]
 237:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 238:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     *** Low Power modes configuration ***
 239:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     =====================================
 240:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****      [..]
 241:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       The device features 3 low-power modes:
 242:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       (+) Sleep mode: CPU clock off, all peripherals including Cortex-M3 core peripherals like 
 243:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****                       NVIC, SysTick, etc. are kept running
 244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       (+) Stop mode: All clocks are stopped
 245:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       (+) Standby mode: 1.8V domain powered off
 246:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   
 247:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   
 248:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****    *** Sleep mode ***
 249:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****    ==================
 250:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     [..]
 251:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       (+) Entry:
 252:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****           The Sleep mode is entered by using the HAL_PWR_EnterSLEEPMode(PWR_MAINREGULATOR_ON, PWR_S
 253:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****               functions with
 254:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****           (++) PWR_SLEEPENTRY_WFI: enter SLEEP mode with WFI instruction
 255:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****           (++) PWR_SLEEPENTRY_WFE: enter SLEEP mode with WFE instruction
 256:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****      
 257:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       (+) Exit:
 258:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****         (++) WFI entry mode, Any peripheral interrupt acknowledged by the nested vectored interrupt
 259:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****              controller (NVIC) can wake up the device from Sleep mode.
 260:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****         (++) WFE entry mode, Any wakeup event can wake up the device from Sleep mode.
 261:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****            (+++) Any peripheral interrupt w/o NVIC configuration & SEVONPEND bit set in the Cortex 
 262:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****            (+++) Any EXTI Line (Internal or External) configured in Event mode
 263:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 264:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****    *** Stop mode ***
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 8


 265:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****    =================
 266:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     [..]
 267:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       The Stop mode is based on the Cortex-M3 deepsleep mode combined with peripheral
 268:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       clock gating. The voltage regulator can be configured either in normal or low-power mode.
 269:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       In Stop mode, all clocks in the 1.8 V domain are stopped, the PLL, the HSI and the HSE RC 
 270:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       oscillators are disabled. SRAM and register contents are preserved.
 271:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       In Stop mode, all I/O pins keep the same state as in Run mode.
 272:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 273:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       (+) Entry:
 274:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****            The Stop mode is entered using the HAL_PWR_EnterSTOPMode(PWR_REGULATOR_VALUE, PWR_SLEEPE
 275:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****              function with:
 276:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****           (++) PWR_REGULATOR_VALUE= PWR_MAINREGULATOR_ON: Main regulator ON.
 277:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****           (++) PWR_REGULATOR_VALUE= PWR_LOWPOWERREGULATOR_ON: Low Power regulator ON.
 278:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****           (++) PWR_SLEEPENTRY_WFx= PWR_SLEEPENTRY_WFI: enter STOP mode with WFI instruction
 279:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****           (++) PWR_SLEEPENTRY_WFx= PWR_SLEEPENTRY_WFE: enter STOP mode with WFE instruction
 280:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       (+) Exit:
 281:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****           (++) WFI entry mode, Any EXTI Line (Internal or External) configured in Interrupt mode wi
 282:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****           (++) WFE entry mode, Any EXTI Line (Internal or External) configured in Event mode.
 283:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 284:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****    *** Standby mode ***
 285:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****    ====================
 286:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****      [..]
 287:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       The Standby mode allows to achieve the lowest power consumption. It is based on the
 288:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       Cortex-M3 deepsleep mode, with the voltage regulator disabled. The 1.8 V domain is 
 289:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       consequently powered off. The PLL, the HSI oscillator and the HSE oscillator are also 
 290:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       switched off. SRAM and register contents are lost except for registers in the Backup domain 
 291:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       and Standby circuitry
 292:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       
 293:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       (+) Entry:
 294:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****         (++) The Standby mode is entered using the HAL_PWR_EnterSTANDBYMode() function.
 295:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****       (+) Exit:
 296:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****         (++) WKUP pin rising edge, RTC alarm event rising edge, external Reset in 
 297:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****              NRSTpin, IWDG Reset
 298:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 299:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****    *** Auto-wakeup (AWU) from low-power mode ***
 300:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****        =============================================
 301:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****        [..]
 302:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****         
 303:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****        (+) The MCU can be woken up from low-power mode by an RTC Alarm event, 
 304:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****            without depending on an external interrupt (Auto-wakeup mode).
 305:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****    
 306:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****        (+) RTC auto-wakeup (AWU) from the Stop and Standby modes
 307:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 308:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****            (++) To wake up from the Stop mode with an RTC alarm event, it is necessary to 
 309:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****                 configure the RTC to generate the RTC alarm using the HAL_RTC_SetAlarm_IT() functio
 310:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 311:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****    *** PWR Workarounds linked to Silicon Limitation ***
 312:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****        ====================================================
 313:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****        [..]
 314:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****        Below the list of all silicon limitations known on STM32F1xx prouct.
 315:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 316:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****        (#)Workarounds Implemented inside PWR HAL Driver
 317:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****           (##)Debugging Stop mode with WFE entry - overloaded the WFE by an internal function    
 318:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****         
 319:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** @endverbatim
 320:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @{
 321:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 9


 322:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 323:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /**
 324:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @brief  Configures the voltage threshold detected by the Power Voltage Detector(PVD).
 325:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @param  sConfigPVD: pointer to an PWR_PVDTypeDef structure that contains the configuration
 326:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *         information for the PVD.
 327:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @note   Refer to the electrical characteristics of your device datasheet for
 328:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *         more details about the voltage threshold corresponding to each
 329:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *         detection level.
 330:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @retval None
 331:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
 332:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** void HAL_PWR_ConfigPVD(PWR_PVDTypeDef *sConfigPVD)
 333:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** {
 145              		.loc 1 333 0
 146              		.cfi_startproc
 147              		@ args = 0, pretend = 0, frame = 0
 148              		@ frame_needed = 0, uses_anonymous_args = 0
 149              		@ link register save eliminated.
 150              	.LVL0:
 334:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Check the parameters */
 335:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   assert_param(IS_PWR_PVD_LEVEL(sConfigPVD->PVDLevel));
 336:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   assert_param(IS_PWR_PVD_MODE(sConfigPVD->Mode));
 337:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 338:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Set PLS[7:5] bits according to PVDLevel value */
 339:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   MODIFY_REG(PWR->CR, PWR_CR_PLS, sConfigPVD->PVDLevel);
 151              		.loc 1 339 0
 152 0000 1E4A     		ldr	r2, .L16
 153 0002 1368     		ldr	r3, [r2]
 154 0004 23F0E003 		bic	r3, r3, #224
 155 0008 0168     		ldr	r1, [r0]
 156 000a 0B43     		orrs	r3, r3, r1
 157 000c 1360     		str	r3, [r2]
 340:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   
 341:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Clear any previous config. Keep it clear if no event or IT mode is selected */
 342:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   __HAL_PWR_PVD_EXTI_DISABLE_EVENT();
 158              		.loc 1 342 0
 159 000e 1C4B     		ldr	r3, .L16+4
 160 0010 5A68     		ldr	r2, [r3, #4]
 161 0012 22F48032 		bic	r2, r2, #65536
 162 0016 5A60     		str	r2, [r3, #4]
 343:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   __HAL_PWR_PVD_EXTI_DISABLE_IT();
 163              		.loc 1 343 0
 164 0018 1A68     		ldr	r2, [r3]
 165 001a 22F48032 		bic	r2, r2, #65536
 166 001e 1A60     		str	r2, [r3]
 344:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   __HAL_PWR_PVD_EXTI_DISABLE_FALLING_EDGE(); 
 167              		.loc 1 344 0
 168 0020 DA68     		ldr	r2, [r3, #12]
 169 0022 22F48032 		bic	r2, r2, #65536
 170 0026 DA60     		str	r2, [r3, #12]
 345:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   __HAL_PWR_PVD_EXTI_DISABLE_RISING_EDGE();
 171              		.loc 1 345 0
 172 0028 9A68     		ldr	r2, [r3, #8]
 173 002a 22F48032 		bic	r2, r2, #65536
 174 002e 9A60     		str	r2, [r3, #8]
 346:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 347:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Configure interrupt mode */
 348:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   if((sConfigPVD->Mode & PVD_MODE_IT) == PVD_MODE_IT)
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 10


 175              		.loc 1 348 0
 176 0030 4368     		ldr	r3, [r0, #4]
 177 0032 13F4803F 		tst	r3, #65536
 178 0036 04D0     		beq	.L12
 349:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   {
 350:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     __HAL_PWR_PVD_EXTI_ENABLE_IT();
 179              		.loc 1 350 0
 180 0038 114A     		ldr	r2, .L16+4
 181 003a 1368     		ldr	r3, [r2]
 182 003c 43F48033 		orr	r3, r3, #65536
 183 0040 1360     		str	r3, [r2]
 184              	.L12:
 351:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   }
 352:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   
 353:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Configure event mode */
 354:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   if((sConfigPVD->Mode & PVD_MODE_EVT) == PVD_MODE_EVT)
 185              		.loc 1 354 0
 186 0042 4368     		ldr	r3, [r0, #4]
 187 0044 13F4003F 		tst	r3, #131072
 188 0048 04D0     		beq	.L13
 355:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   {
 356:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     __HAL_PWR_PVD_EXTI_ENABLE_EVENT();
 189              		.loc 1 356 0
 190 004a 0D4A     		ldr	r2, .L16+4
 191 004c 5368     		ldr	r3, [r2, #4]
 192 004e 43F48033 		orr	r3, r3, #65536
 193 0052 5360     		str	r3, [r2, #4]
 194              	.L13:
 357:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   }
 358:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   
 359:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Configure the edge */
 360:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   if((sConfigPVD->Mode & PVD_RISING_EDGE) == PVD_RISING_EDGE)
 195              		.loc 1 360 0
 196 0054 4368     		ldr	r3, [r0, #4]
 197 0056 13F0010F 		tst	r3, #1
 198 005a 04D0     		beq	.L14
 361:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   {
 362:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     __HAL_PWR_PVD_EXTI_ENABLE_RISING_EDGE();
 199              		.loc 1 362 0
 200 005c 084A     		ldr	r2, .L16+4
 201 005e 9368     		ldr	r3, [r2, #8]
 202 0060 43F48033 		orr	r3, r3, #65536
 203 0064 9360     		str	r3, [r2, #8]
 204              	.L14:
 363:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   }
 364:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   
 365:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   if((sConfigPVD->Mode & PVD_FALLING_EDGE) == PVD_FALLING_EDGE)
 205              		.loc 1 365 0
 206 0066 4368     		ldr	r3, [r0, #4]
 207 0068 13F0020F 		tst	r3, #2
 208 006c 04D0     		beq	.L11
 366:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   {
 367:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     __HAL_PWR_PVD_EXTI_ENABLE_FALLING_EDGE();
 209              		.loc 1 367 0
 210 006e 044A     		ldr	r2, .L16+4
 211 0070 D368     		ldr	r3, [r2, #12]
 212 0072 43F48033 		orr	r3, r3, #65536
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 11


 213 0076 D360     		str	r3, [r2, #12]
 214              	.L11:
 368:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   }
 369:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** }
 215              		.loc 1 369 0
 216 0078 7047     		bx	lr
 217              	.L17:
 218 007a 00BF     		.align	2
 219              	.L16:
 220 007c 00700040 		.word	1073770496
 221 0080 00040140 		.word	1073808384
 222              		.cfi_endproc
 223              	.LFE70:
 225              		.section	.text.HAL_PWR_EnablePVD,"ax",%progbits
 226              		.align	1
 227              		.global	HAL_PWR_EnablePVD
 228              		.syntax unified
 229              		.thumb
 230              		.thumb_func
 231              		.fpu softvfp
 233              	HAL_PWR_EnablePVD:
 234              	.LFB71:
 370:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 371:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /**
 372:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @brief  Enables the Power Voltage Detector(PVD).
 373:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @retval None
 374:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
 375:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** void HAL_PWR_EnablePVD(void)
 376:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** {
 235              		.loc 1 376 0
 236              		.cfi_startproc
 237              		@ args = 0, pretend = 0, frame = 0
 238              		@ frame_needed = 0, uses_anonymous_args = 0
 239              		@ link register save eliminated.
 377:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Enable the power voltage detector */
 378:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *(__IO uint32_t *) CR_PVDE_BB = (uint32_t)ENABLE;
 240              		.loc 1 378 0
 241 0000 014B     		ldr	r3, .L19
 242 0002 0122     		movs	r2, #1
 243 0004 1A60     		str	r2, [r3]
 379:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** }
 244              		.loc 1 379 0
 245 0006 7047     		bx	lr
 246              	.L20:
 247              		.align	2
 248              	.L19:
 249 0008 10000E42 		.word	1108213776
 250              		.cfi_endproc
 251              	.LFE71:
 253              		.section	.text.HAL_PWR_DisablePVD,"ax",%progbits
 254              		.align	1
 255              		.global	HAL_PWR_DisablePVD
 256              		.syntax unified
 257              		.thumb
 258              		.thumb_func
 259              		.fpu softvfp
 261              	HAL_PWR_DisablePVD:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 12


 262              	.LFB72:
 380:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 381:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /**
 382:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @brief  Disables the Power Voltage Detector(PVD).
 383:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @retval None
 384:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
 385:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** void HAL_PWR_DisablePVD(void)
 386:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** {
 263              		.loc 1 386 0
 264              		.cfi_startproc
 265              		@ args = 0, pretend = 0, frame = 0
 266              		@ frame_needed = 0, uses_anonymous_args = 0
 267              		@ link register save eliminated.
 387:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Disable the power voltage detector */
 388:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *(__IO uint32_t *) CR_PVDE_BB = (uint32_t)DISABLE;
 268              		.loc 1 388 0
 269 0000 014B     		ldr	r3, .L22
 270 0002 0022     		movs	r2, #0
 271 0004 1A60     		str	r2, [r3]
 389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** }
 272              		.loc 1 389 0
 273 0006 7047     		bx	lr
 274              	.L23:
 275              		.align	2
 276              	.L22:
 277 0008 10000E42 		.word	1108213776
 278              		.cfi_endproc
 279              	.LFE72:
 281              		.section	.text.HAL_PWR_EnableWakeUpPin,"ax",%progbits
 282              		.align	1
 283              		.global	HAL_PWR_EnableWakeUpPin
 284              		.syntax unified
 285              		.thumb
 286              		.thumb_func
 287              		.fpu softvfp
 289              	HAL_PWR_EnableWakeUpPin:
 290              	.LFB73:
 390:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 391:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /**
 392:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @brief Enables the WakeUp PINx functionality.
 393:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @param WakeUpPinx: Specifies the Power Wake-Up pin to enable.
 394:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *        This parameter can be one of the following values:
 395:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *           @arg PWR_WAKEUP_PIN1
 396:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @retval None
 397:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
 398:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** void HAL_PWR_EnableWakeUpPin(uint32_t WakeUpPinx)
 399:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** {
 291              		.loc 1 399 0
 292              		.cfi_startproc
 293              		@ args = 0, pretend = 0, frame = 0
 294              		@ frame_needed = 0, uses_anonymous_args = 0
 295              		@ link register save eliminated.
 296              	.LVL1:
 297              	.LBB20:
 298              	.LBB21:
 299              		.file 2 "Drivers/CMSIS/Include/cmsis_gcc.h"
   1:Drivers/CMSIS/Include/cmsis_gcc.h **** /**************************************************************************//**
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 13


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
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 14


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
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 15


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
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 16


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
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 17


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
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 18


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
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 19


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
 376:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 377:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 378:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 379:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 380:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Wait For Interrupt
 381:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Wait For Interrupt is a hint instruction that suspends execution until one of a number o
 382:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 383:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__((always_inline)) __STATIC_INLINE void __WFI(void)
 384:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 385:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("wfi");
 386:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 387:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 388:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 389:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 390:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Wait For Event
 391:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Wait For Event is a hint instruction that permits the processor to enter
 392:Drivers/CMSIS/Include/cmsis_gcc.h ****     a low-power state until one of a number of events occurs.
 393:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 394:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__((always_inline)) __STATIC_INLINE void __WFE(void)
 395:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 396:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("wfe");
 397:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 398:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 399:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 400:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 20


 401:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Send Event
 402:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Send Event is a hint instruction. It causes an event to be signaled to the CPU.
 403:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 404:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__((always_inline)) __STATIC_INLINE void __SEV(void)
 405:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 406:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("sev");
 407:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 408:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 409:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 410:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 411:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Instruction Synchronization Barrier
 412:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Instruction Synchronization Barrier flushes the pipeline in the processor,
 413:Drivers/CMSIS/Include/cmsis_gcc.h ****            so that all instructions following the ISB are fetched from cache or memory,
 414:Drivers/CMSIS/Include/cmsis_gcc.h ****            after the instruction has been completed.
 415:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 416:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__((always_inline)) __STATIC_INLINE void __ISB(void)
 417:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 418:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("isb 0xF":::"memory");
 419:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 420:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 421:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 422:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 423:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Data Synchronization Barrier
 424:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Acts as a special kind of Data Memory Barrier.
 425:Drivers/CMSIS/Include/cmsis_gcc.h ****            It completes when all explicit memory accesses before this instruction complete.
 426:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 427:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__((always_inline)) __STATIC_INLINE void __DSB(void)
 428:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 429:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("dsb 0xF":::"memory");
 430:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 431:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 432:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 433:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 434:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Data Memory Barrier
 435:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Ensures the apparent order of the explicit memory operations before
 436:Drivers/CMSIS/Include/cmsis_gcc.h ****            and after the instruction, without ensuring their completion.
 437:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 438:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__((always_inline)) __STATIC_INLINE void __DMB(void)
 439:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 440:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("dmb 0xF":::"memory");
 441:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 442:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 443:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 444:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 445:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Reverse byte order (32 bit)
 446:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Reverses the byte order in integer value.
 447:Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    value  Value to reverse
 448:Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               Reversed value
 449:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 450:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__((always_inline)) __STATIC_INLINE uint32_t __REV(uint32_t value)
 451:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 452:Drivers/CMSIS/Include/cmsis_gcc.h **** #if (__GNUC__ > 4) || (__GNUC__ == 4 && __GNUC_MINOR__ >= 5)
 453:Drivers/CMSIS/Include/cmsis_gcc.h ****   return __builtin_bswap32(value);
 454:Drivers/CMSIS/Include/cmsis_gcc.h **** #else
 455:Drivers/CMSIS/Include/cmsis_gcc.h ****   uint32_t result;
 456:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 457:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("rev %0, %1" : __CMSIS_GCC_OUT_REG (result) : __CMSIS_GCC_USE_REG (value) );
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 21


 458:Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
 459:Drivers/CMSIS/Include/cmsis_gcc.h **** #endif
 460:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 461:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 462:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 463:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 464:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Reverse byte order (16 bit)
 465:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Reverses the byte order in two unsigned short values.
 466:Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    value  Value to reverse
 467:Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               Reversed value
 468:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 469:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__((always_inline)) __STATIC_INLINE uint32_t __REV16(uint32_t value)
 470:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 471:Drivers/CMSIS/Include/cmsis_gcc.h ****   uint32_t result;
 472:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 473:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("rev16 %0, %1" : __CMSIS_GCC_OUT_REG (result) : __CMSIS_GCC_USE_REG (value) );
 474:Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
 475:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 476:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 477:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 478:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 479:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Reverse byte order in signed short value
 480:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Reverses the byte order in a signed short value with sign extension to integer.
 481:Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    value  Value to reverse
 482:Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               Reversed value
 483:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 484:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__((always_inline)) __STATIC_INLINE int32_t __REVSH(int32_t value)
 485:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 486:Drivers/CMSIS/Include/cmsis_gcc.h **** #if (__GNUC__ > 4) || (__GNUC__ == 4 && __GNUC_MINOR__ >= 8)
 487:Drivers/CMSIS/Include/cmsis_gcc.h ****   return (short)__builtin_bswap16(value);
 488:Drivers/CMSIS/Include/cmsis_gcc.h **** #else
 489:Drivers/CMSIS/Include/cmsis_gcc.h ****   int32_t result;
 490:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 491:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("revsh %0, %1" : __CMSIS_GCC_OUT_REG (result) : __CMSIS_GCC_USE_REG (value) );
 492:Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
 493:Drivers/CMSIS/Include/cmsis_gcc.h **** #endif
 494:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 495:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 496:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 497:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 498:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Rotate Right in unsigned value (32 bit)
 499:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Rotate Right (immediate) provides the value of the contents of a register rotated by a v
 500:Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    value  Value to rotate
 501:Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    value  Number of Bits to rotate
 502:Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               Rotated value
 503:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 504:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__((always_inline)) __STATIC_INLINE uint32_t __ROR(uint32_t op1, uint32_t op2)
 505:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 506:Drivers/CMSIS/Include/cmsis_gcc.h ****   return (op1 >> op2) | (op1 << (32U - op2));
 507:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 508:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 509:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 510:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 511:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Breakpoint
 512:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Causes the processor to enter Debug state.
 513:Drivers/CMSIS/Include/cmsis_gcc.h ****            Debug tools can use this to investigate system state when the instruction at a particula
 514:Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    value  is ignored by the processor.
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 22


 515:Drivers/CMSIS/Include/cmsis_gcc.h ****                  If required, a debugger can use it to store additional information about the break
 516:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 517:Drivers/CMSIS/Include/cmsis_gcc.h **** #define __BKPT(value)                       __ASM volatile ("bkpt "#value)
 518:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 519:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 520:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 521:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Reverse bit order of value
 522:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Reverses the bit order of the given value.
 523:Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    value  Value to reverse
 524:Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               Reversed value
 525:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 526:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__((always_inline)) __STATIC_INLINE uint32_t __RBIT(uint32_t value)
 527:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 528:Drivers/CMSIS/Include/cmsis_gcc.h ****   uint32_t result;
 529:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 530:Drivers/CMSIS/Include/cmsis_gcc.h **** #if       (__CORTEX_M >= 0x03U) || (__CORTEX_SC >= 300U)
 531:Drivers/CMSIS/Include/cmsis_gcc.h ****    __ASM volatile ("rbit %0, %1" : "=r" (result) : "r" (value) );
 300              		.loc 2 531 0
 301              		.syntax unified
 302              	@ 531 "Drivers/CMSIS/Include/cmsis_gcc.h" 1
 303 0000 90FAA0F0 		rbit r0, r0
 304              	@ 0 "" 2
 305              	.LVL2:
 306              		.thumb
 307              		.syntax unified
 308              	.LBE21:
 309              	.LBE20:
 400:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Check the parameter */
 401:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   assert_param(IS_PWR_WAKEUP_PIN(WakeUpPinx));
 402:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Enable the EWUPx pin */
 403:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *(__IO uint32_t *) CSR_EWUP_BB(WakeUpPinx) = (uint32_t)ENABLE;
 310              		.loc 1 403 0
 311 0004 B0FA80F0 		clz	r0, r0
 312 0008 024B     		ldr	r3, .L25
 313 000a 0344     		add	r3, r3, r0
 314 000c 9B00     		lsls	r3, r3, #2
 315 000e 0122     		movs	r2, #1
 316 0010 1A60     		str	r2, [r3]
 404:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** }
 317              		.loc 1 404 0
 318 0012 7047     		bx	lr
 319              	.L26:
 320              		.align	2
 321              	.L25:
 322 0014 20808310 		.word	277053472
 323              		.cfi_endproc
 324              	.LFE73:
 326              		.section	.text.HAL_PWR_DisableWakeUpPin,"ax",%progbits
 327              		.align	1
 328              		.global	HAL_PWR_DisableWakeUpPin
 329              		.syntax unified
 330              		.thumb
 331              		.thumb_func
 332              		.fpu softvfp
 334              	HAL_PWR_DisableWakeUpPin:
 335              	.LFB74:
 405:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 23


 406:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /**
 407:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @brief Disables the WakeUp PINx functionality.
 408:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @param WakeUpPinx: Specifies the Power Wake-Up pin to disable.
 409:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *        This parameter can be one of the following values:
 410:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *           @arg PWR_WAKEUP_PIN1
 411:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @retval None
 412:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
 413:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** void HAL_PWR_DisableWakeUpPin(uint32_t WakeUpPinx)
 414:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** {
 336              		.loc 1 414 0
 337              		.cfi_startproc
 338              		@ args = 0, pretend = 0, frame = 0
 339              		@ frame_needed = 0, uses_anonymous_args = 0
 340              		@ link register save eliminated.
 341              	.LVL3:
 342              	.LBB22:
 343              	.LBB23:
 344              		.loc 2 531 0
 345              		.syntax unified
 346              	@ 531 "Drivers/CMSIS/Include/cmsis_gcc.h" 1
 347 0000 90FAA0F0 		rbit r0, r0
 348              	@ 0 "" 2
 349              	.LVL4:
 350              		.thumb
 351              		.syntax unified
 352              	.LBE23:
 353              	.LBE22:
 415:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Check the parameter */
 416:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   assert_param(IS_PWR_WAKEUP_PIN(WakeUpPinx));
 417:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Disable the EWUPx pin */
 418:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *(__IO uint32_t *) CSR_EWUP_BB(WakeUpPinx) = (uint32_t)DISABLE;
 354              		.loc 1 418 0
 355 0004 B0FA80F0 		clz	r0, r0
 356 0008 024B     		ldr	r3, .L28
 357 000a 0344     		add	r3, r3, r0
 358 000c 9B00     		lsls	r3, r3, #2
 359 000e 0022     		movs	r2, #0
 360 0010 1A60     		str	r2, [r3]
 419:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** }
 361              		.loc 1 419 0
 362 0012 7047     		bx	lr
 363              	.L29:
 364              		.align	2
 365              	.L28:
 366 0014 20808310 		.word	277053472
 367              		.cfi_endproc
 368              	.LFE74:
 370              		.section	.text.HAL_PWR_EnterSLEEPMode,"ax",%progbits
 371              		.align	1
 372              		.global	HAL_PWR_EnterSLEEPMode
 373              		.syntax unified
 374              		.thumb
 375              		.thumb_func
 376              		.fpu softvfp
 378              	HAL_PWR_EnterSLEEPMode:
 379              	.LFB75:
 420:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 24


 421:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /**
 422:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @brief Enters Sleep mode.
 423:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @note  In Sleep mode, all I/O pins keep the same state as in Run mode.
 424:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @param Regulator: Regulator state as no effect in SLEEP mode -  allows to support portability f
 425:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @param SLEEPEntry: Specifies if SLEEP mode is entered with WFI or WFE instruction.
 426:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *           When WFI entry is used, tick interrupt have to be disabled if not desired as 
 427:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *           the interrupt wake up source.
 428:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *           This parameter can be one of the following values:
 429:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *            @arg PWR_SLEEPENTRY_WFI: enter SLEEP mode with WFI instruction
 430:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *            @arg PWR_SLEEPENTRY_WFE: enter SLEEP mode with WFE instruction
 431:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @retval None
 432:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
 433:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** void HAL_PWR_EnterSLEEPMode(uint32_t Regulator, uint8_t SLEEPEntry)
 434:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** {
 380              		.loc 1 434 0
 381              		.cfi_startproc
 382              		@ args = 0, pretend = 0, frame = 0
 383              		@ frame_needed = 0, uses_anonymous_args = 0
 384              		@ link register save eliminated.
 385              	.LVL5:
 435:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Check the parameters */
 436:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* No check on Regulator because parameter not used in SLEEP mode */
 437:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Prevent unused argument(s) compilation warning */
 438:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   UNUSED(Regulator);
 439:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 440:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   assert_param(IS_PWR_SLEEP_ENTRY(SLEEPEntry));
 441:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 442:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Clear SLEEPDEEP bit of Cortex System Control Register */
 443:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   CLEAR_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SLEEPDEEP_Msk));
 386              		.loc 1 443 0
 387 0000 064A     		ldr	r2, .L34
 388 0002 1369     		ldr	r3, [r2, #16]
 389 0004 23F00403 		bic	r3, r3, #4
 390 0008 1361     		str	r3, [r2, #16]
 444:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 445:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Select SLEEP mode entry -------------------------------------------------*/
 446:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   if(SLEEPEntry == PWR_SLEEPENTRY_WFI)
 391              		.loc 1 446 0
 392 000a 0129     		cmp	r1, #1
 393 000c 03D0     		beq	.L33
 394              	.LBB24:
 395              	.LBB25:
 406:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 396              		.loc 2 406 0
 397              		.syntax unified
 398              	@ 406 "Drivers/CMSIS/Include/cmsis_gcc.h" 1
 399 000e 40BF     		sev
 400              	@ 0 "" 2
 401              		.thumb
 402              		.syntax unified
 403              	.LBE25:
 404              	.LBE24:
 405              	.LBB26:
 406              	.LBB27:
 396:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 407              		.loc 2 396 0
 408              		.syntax unified
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 25


 409              	@ 396 "Drivers/CMSIS/Include/cmsis_gcc.h" 1
 410 0010 20BF     		wfe
 411              	@ 0 "" 2
 412              		.thumb
 413              		.syntax unified
 414              	.LBE27:
 415              	.LBE26:
 416              	.LBB28:
 417              	.LBB29:
 418              		.syntax unified
 419              	@ 396 "Drivers/CMSIS/Include/cmsis_gcc.h" 1
 420 0012 20BF     		wfe
 421              	@ 0 "" 2
 422              		.thumb
 423              		.syntax unified
 424              	.LBE29:
 425              	.LBE28:
 447:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   {
 448:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     /* Request Wait For Interrupt */
 449:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     __WFI();
 450:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   }
 451:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   else
 452:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   {
 453:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     /* Request Wait For Event */
 454:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     __SEV();
 455:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     __WFE();
 456:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     __WFE();
 457:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   }
 458:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** }
 426              		.loc 1 458 0
 427 0014 7047     		bx	lr
 428              	.L33:
 429              	.LBB30:
 430              	.LBB31:
 385:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 431              		.loc 2 385 0
 432              		.syntax unified
 433              	@ 385 "Drivers/CMSIS/Include/cmsis_gcc.h" 1
 434 0016 30BF     		wfi
 435              	@ 0 "" 2
 436              		.thumb
 437              		.syntax unified
 438 0018 7047     		bx	lr
 439              	.L35:
 440 001a 00BF     		.align	2
 441              	.L34:
 442 001c 00ED00E0 		.word	-536810240
 443              	.LBE31:
 444              	.LBE30:
 445              		.cfi_endproc
 446              	.LFE75:
 448              		.section	.text.HAL_PWR_EnterSTOPMode,"ax",%progbits
 449              		.align	1
 450              		.global	HAL_PWR_EnterSTOPMode
 451              		.syntax unified
 452              		.thumb
 453              		.thumb_func
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 26


 454              		.fpu softvfp
 456              	HAL_PWR_EnterSTOPMode:
 457              	.LFB76:
 459:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 460:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /**
 461:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @brief Enters Stop mode. 
 462:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @note  In Stop mode, all I/O pins keep the same state as in Run mode.
 463:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @note  When exiting Stop mode by using an interrupt or a wakeup event,
 464:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *        HSI RC oscillator is selected as system clock.
 465:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @note  When the voltage regulator operates in low power mode, an additional
 466:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *         startup delay is incurred when waking up from Stop mode. 
 467:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *         By keeping the internal regulator ON during Stop mode, the consumption
 468:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *         is higher although the startup time is reduced.    
 469:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @param Regulator: Specifies the regulator state in Stop mode.
 470:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *          This parameter can be one of the following values:
 471:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *            @arg PWR_MAINREGULATOR_ON: Stop mode with regulator ON
 472:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *            @arg PWR_LOWPOWERREGULATOR_ON: Stop mode with low power regulator ON
 473:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @param STOPEntry: Specifies if Stop mode in entered with WFI or WFE instruction.
 474:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *          This parameter can be one of the following values:
 475:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *            @arg PWR_STOPENTRY_WFI: Enter Stop mode with WFI instruction
 476:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *            @arg PWR_STOPENTRY_WFE: Enter Stop mode with WFE instruction   
 477:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @retval None
 478:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
 479:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** void HAL_PWR_EnterSTOPMode(uint32_t Regulator, uint8_t STOPEntry)
 480:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** {
 458              		.loc 1 480 0
 459              		.cfi_startproc
 460              		@ args = 0, pretend = 0, frame = 0
 461              		@ frame_needed = 0, uses_anonymous_args = 0
 462              	.LVL6:
 463 0000 08B5     		push	{r3, lr}
 464              	.LCFI0:
 465              		.cfi_def_cfa_offset 8
 466              		.cfi_offset 3, -8
 467              		.cfi_offset 14, -4
 481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Check the parameters */
 482:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   assert_param(IS_PWR_REGULATOR(Regulator));
 483:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   assert_param(IS_PWR_STOP_ENTRY(STOPEntry));
 484:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 485:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Clear PDDS bit in PWR register to specify entering in STOP mode when CPU enter in Deepsleep */
 486:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   CLEAR_BIT(PWR->CR,  PWR_CR_PDDS);
 468              		.loc 1 486 0
 469 0002 0F4A     		ldr	r2, .L41
 470 0004 1368     		ldr	r3, [r2]
 471 0006 23F00203 		bic	r3, r3, #2
 472 000a 1360     		str	r3, [r2]
 487:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 488:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Select the voltage regulator mode by setting LPDS bit in PWR register according to Regulator p
 489:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   MODIFY_REG(PWR->CR, PWR_CR_LPDS, Regulator);
 473              		.loc 1 489 0
 474 000c 1368     		ldr	r3, [r2]
 475 000e 23F00103 		bic	r3, r3, #1
 476 0012 1843     		orrs	r0, r0, r3
 477              	.LVL7:
 478 0014 1060     		str	r0, [r2]
 490:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 491:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Set SLEEPDEEP bit of Cortex System Control Register */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 27


 492:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   SET_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SLEEPDEEP_Msk));
 479              		.loc 1 492 0
 480 0016 0B4A     		ldr	r2, .L41+4
 481 0018 1369     		ldr	r3, [r2, #16]
 482 001a 43F00403 		orr	r3, r3, #4
 483 001e 1361     		str	r3, [r2, #16]
 493:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 494:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Select Stop mode entry --------------------------------------------------*/
 495:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   if(STOPEntry == PWR_STOPENTRY_WFI)
 484              		.loc 1 495 0
 485 0020 0129     		cmp	r1, #1
 486 0022 0AD0     		beq	.L40
 487              	.LBB32:
 488              	.LBB33:
 406:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 489              		.loc 2 406 0
 490              		.syntax unified
 491              	@ 406 "Drivers/CMSIS/Include/cmsis_gcc.h" 1
 492 0024 40BF     		sev
 493              	@ 0 "" 2
 494              		.thumb
 495              		.syntax unified
 496              	.LBE33:
 497              	.LBE32:
 496:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   {
 497:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     /* Request Wait For Interrupt */
 498:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     __WFI();
 499:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   }
 500:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   else
 501:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   {
 502:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     /* Request Wait For Event */
 503:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     __SEV();
 504:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     PWR_OverloadWfe(); /* WFE redefine locally */
 498              		.loc 1 504 0
 499 0026 FFF7FEFF 		bl	PWR_OverloadWfe
 500              	.LVL8:
 505:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     PWR_OverloadWfe(); /* WFE redefine locally */
 501              		.loc 1 505 0
 502 002a FFF7FEFF 		bl	PWR_OverloadWfe
 503              	.LVL9:
 504              	.L38:
 506:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   }
 507:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Reset SLEEPDEEP bit of Cortex System Control Register */
 508:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   CLEAR_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SLEEPDEEP_Msk));
 505              		.loc 1 508 0
 506 002e 054A     		ldr	r2, .L41+4
 507 0030 1369     		ldr	r3, [r2, #16]
 508 0032 23F00403 		bic	r3, r3, #4
 509 0036 1361     		str	r3, [r2, #16]
 509:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** }
 510              		.loc 1 509 0
 511 0038 08BD     		pop	{r3, pc}
 512              	.LVL10:
 513              	.L40:
 514              	.LBB34:
 515              	.LBB35:
 385:Drivers/CMSIS/Include/cmsis_gcc.h **** }
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 28


 516              		.loc 2 385 0
 517              		.syntax unified
 518              	@ 385 "Drivers/CMSIS/Include/cmsis_gcc.h" 1
 519 003a 30BF     		wfi
 520              	@ 0 "" 2
 521              		.thumb
 522              		.syntax unified
 523 003c F7E7     		b	.L38
 524              	.L42:
 525 003e 00BF     		.align	2
 526              	.L41:
 527 0040 00700040 		.word	1073770496
 528 0044 00ED00E0 		.word	-536810240
 529              	.LBE35:
 530              	.LBE34:
 531              		.cfi_endproc
 532              	.LFE76:
 534              		.section	.text.HAL_PWR_EnterSTANDBYMode,"ax",%progbits
 535              		.align	1
 536              		.global	HAL_PWR_EnterSTANDBYMode
 537              		.syntax unified
 538              		.thumb
 539              		.thumb_func
 540              		.fpu softvfp
 542              	HAL_PWR_EnterSTANDBYMode:
 543              	.LFB77:
 510:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 511:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /**
 512:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @brief Enters Standby mode.
 513:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @note  In Standby mode, all I/O pins are high impedance except for:
 514:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *          - Reset pad (still available) 
 515:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *          - TAMPER pin if configured for tamper or calibration out.
 516:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *          - WKUP pin (PA0) if enabled.
 517:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @retval None
 518:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
 519:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** void HAL_PWR_EnterSTANDBYMode(void)
 520:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** {
 544              		.loc 1 520 0
 545              		.cfi_startproc
 546              		@ args = 0, pretend = 0, frame = 0
 547              		@ frame_needed = 0, uses_anonymous_args = 0
 548              		@ link register save eliminated.
 521:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Select Standby mode */
 522:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   SET_BIT(PWR->CR, PWR_CR_PDDS);
 549              		.loc 1 522 0
 550 0000 054A     		ldr	r2, .L44
 551 0002 1368     		ldr	r3, [r2]
 552 0004 43F00203 		orr	r3, r3, #2
 553 0008 1360     		str	r3, [r2]
 523:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 524:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Set SLEEPDEEP bit of Cortex System Control Register */
 525:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   SET_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SLEEPDEEP_Msk));
 554              		.loc 1 525 0
 555 000a 044A     		ldr	r2, .L44+4
 556 000c 1369     		ldr	r3, [r2, #16]
 557 000e 43F00403 		orr	r3, r3, #4
 558 0012 1361     		str	r3, [r2, #16]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 29


 559              	.LBB36:
 560              	.LBB37:
 385:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 561              		.loc 2 385 0
 562              		.syntax unified
 563              	@ 385 "Drivers/CMSIS/Include/cmsis_gcc.h" 1
 564 0014 30BF     		wfi
 565              	@ 0 "" 2
 566              		.thumb
 567              		.syntax unified
 568              	.LBE37:
 569              	.LBE36:
 526:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 527:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* This option is used to ensure that store operations are completed */
 528:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** #if defined ( __CC_ARM)
 529:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   __force_stores();
 530:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** #endif
 531:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Request Wait For Interrupt */
 532:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   __WFI();
 533:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** }
 570              		.loc 1 533 0
 571 0016 7047     		bx	lr
 572              	.L45:
 573              		.align	2
 574              	.L44:
 575 0018 00700040 		.word	1073770496
 576 001c 00ED00E0 		.word	-536810240
 577              		.cfi_endproc
 578              	.LFE77:
 580              		.section	.text.HAL_PWR_EnableSleepOnExit,"ax",%progbits
 581              		.align	1
 582              		.global	HAL_PWR_EnableSleepOnExit
 583              		.syntax unified
 584              		.thumb
 585              		.thumb_func
 586              		.fpu softvfp
 588              	HAL_PWR_EnableSleepOnExit:
 589              	.LFB78:
 534:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 536:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /**
 537:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @brief Indicates Sleep-On-Exit when returning from Handler mode to Thread mode. 
 538:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @note Set SLEEPONEXIT bit of SCR register. When this bit is set, the processor 
 539:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *       re-enters SLEEP mode when an interruption handling is over.
 540:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *       Setting this bit is useful when the processor is expected to run only on
 541:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *       interruptions handling.         
 542:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @retval None
 543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
 544:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** void HAL_PWR_EnableSleepOnExit(void)
 545:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** {
 590              		.loc 1 545 0
 591              		.cfi_startproc
 592              		@ args = 0, pretend = 0, frame = 0
 593              		@ frame_needed = 0, uses_anonymous_args = 0
 594              		@ link register save eliminated.
 546:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Set SLEEPONEXIT bit of Cortex System Control Register */
 547:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   SET_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SLEEPONEXIT_Msk));
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 30


 595              		.loc 1 547 0
 596 0000 024A     		ldr	r2, .L47
 597 0002 1369     		ldr	r3, [r2, #16]
 598 0004 43F00203 		orr	r3, r3, #2
 599 0008 1361     		str	r3, [r2, #16]
 548:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** }
 600              		.loc 1 548 0
 601 000a 7047     		bx	lr
 602              	.L48:
 603              		.align	2
 604              	.L47:
 605 000c 00ED00E0 		.word	-536810240
 606              		.cfi_endproc
 607              	.LFE78:
 609              		.section	.text.HAL_PWR_DisableSleepOnExit,"ax",%progbits
 610              		.align	1
 611              		.global	HAL_PWR_DisableSleepOnExit
 612              		.syntax unified
 613              		.thumb
 614              		.thumb_func
 615              		.fpu softvfp
 617              	HAL_PWR_DisableSleepOnExit:
 618              	.LFB79:
 549:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 550:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 551:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /**
 552:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @brief Disables Sleep-On-Exit feature when returning from Handler mode to Thread mode. 
 553:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @note Clears SLEEPONEXIT bit of SCR register. When this bit is set, the processor 
 554:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *       re-enters SLEEP mode when an interruption handling is over.          
 555:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @retval None
 556:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
 557:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** void HAL_PWR_DisableSleepOnExit(void)
 558:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** {
 619              		.loc 1 558 0
 620              		.cfi_startproc
 621              		@ args = 0, pretend = 0, frame = 0
 622              		@ frame_needed = 0, uses_anonymous_args = 0
 623              		@ link register save eliminated.
 559:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Clear SLEEPONEXIT bit of Cortex System Control Register */
 560:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   CLEAR_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SLEEPONEXIT_Msk));
 624              		.loc 1 560 0
 625 0000 024A     		ldr	r2, .L50
 626 0002 1369     		ldr	r3, [r2, #16]
 627 0004 23F00203 		bic	r3, r3, #2
 628 0008 1361     		str	r3, [r2, #16]
 561:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** }
 629              		.loc 1 561 0
 630 000a 7047     		bx	lr
 631              	.L51:
 632              		.align	2
 633              	.L50:
 634 000c 00ED00E0 		.word	-536810240
 635              		.cfi_endproc
 636              	.LFE79:
 638              		.section	.text.HAL_PWR_EnableSEVOnPend,"ax",%progbits
 639              		.align	1
 640              		.global	HAL_PWR_EnableSEVOnPend
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 31


 641              		.syntax unified
 642              		.thumb
 643              		.thumb_func
 644              		.fpu softvfp
 646              	HAL_PWR_EnableSEVOnPend:
 647              	.LFB80:
 562:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 563:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 564:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /**
 565:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @brief Enables CORTEX M3 SEVONPEND bit. 
 566:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @note Sets SEVONPEND bit of SCR register. When this bit is set, this causes 
 567:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *       WFE to wake up when an interrupt moves from inactive to pended.
 568:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @retval None
 569:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
 570:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** void HAL_PWR_EnableSEVOnPend(void)
 571:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** {
 648              		.loc 1 571 0
 649              		.cfi_startproc
 650              		@ args = 0, pretend = 0, frame = 0
 651              		@ frame_needed = 0, uses_anonymous_args = 0
 652              		@ link register save eliminated.
 572:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Set SEVONPEND bit of Cortex System Control Register */
 573:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   SET_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SEVONPEND_Msk));
 653              		.loc 1 573 0
 654 0000 024A     		ldr	r2, .L53
 655 0002 1369     		ldr	r3, [r2, #16]
 656 0004 43F01003 		orr	r3, r3, #16
 657 0008 1361     		str	r3, [r2, #16]
 574:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** }
 658              		.loc 1 574 0
 659 000a 7047     		bx	lr
 660              	.L54:
 661              		.align	2
 662              	.L53:
 663 000c 00ED00E0 		.word	-536810240
 664              		.cfi_endproc
 665              	.LFE80:
 667              		.section	.text.HAL_PWR_DisableSEVOnPend,"ax",%progbits
 668              		.align	1
 669              		.global	HAL_PWR_DisableSEVOnPend
 670              		.syntax unified
 671              		.thumb
 672              		.thumb_func
 673              		.fpu softvfp
 675              	HAL_PWR_DisableSEVOnPend:
 676              	.LFB81:
 575:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 576:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 577:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /**
 578:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @brief Disables CORTEX M3 SEVONPEND bit. 
 579:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @note Clears SEVONPEND bit of SCR register. When this bit is set, this causes 
 580:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   *       WFE to wake up when an interrupt moves from inactive to pended.         
 581:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @retval None
 582:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
 583:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** void HAL_PWR_DisableSEVOnPend(void)
 584:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** {
 677              		.loc 1 584 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 32


 678              		.cfi_startproc
 679              		@ args = 0, pretend = 0, frame = 0
 680              		@ frame_needed = 0, uses_anonymous_args = 0
 681              		@ link register save eliminated.
 585:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Clear SEVONPEND bit of Cortex System Control Register */
 586:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   CLEAR_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SEVONPEND_Msk));
 682              		.loc 1 586 0
 683 0000 024A     		ldr	r2, .L56
 684 0002 1369     		ldr	r3, [r2, #16]
 685 0004 23F01003 		bic	r3, r3, #16
 686 0008 1361     		str	r3, [r2, #16]
 587:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** }
 687              		.loc 1 587 0
 688 000a 7047     		bx	lr
 689              	.L57:
 690              		.align	2
 691              	.L56:
 692 000c 00ED00E0 		.word	-536810240
 693              		.cfi_endproc
 694              	.LFE81:
 696              		.section	.text.HAL_PWR_PVDCallback,"ax",%progbits
 697              		.align	1
 698              		.weak	HAL_PWR_PVDCallback
 699              		.syntax unified
 700              		.thumb
 701              		.thumb_func
 702              		.fpu softvfp
 704              	HAL_PWR_PVDCallback:
 705              	.LFB83:
 588:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 589:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 590:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 591:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /**
 592:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @brief  This function handles the PWR PVD interrupt request.
 593:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @note   This API should be called under the PVD_IRQHandler().
 594:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @retval None
 595:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
 596:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** void HAL_PWR_PVD_IRQHandler(void)
 597:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** {
 598:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Check PWR exti flag */
 599:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   if(__HAL_PWR_PVD_EXTI_GET_FLAG() != RESET)
 600:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   {
 601:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     /* PWR PVD interrupt user callback */
 602:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     HAL_PWR_PVDCallback();
 603:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 604:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     /* Clear PWR Exti pending bit */
 605:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****     __HAL_PWR_PVD_EXTI_CLEAR_FLAG();
 606:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   }
 607:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** }
 608:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 609:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** /**
 610:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @brief  PWR PVD interrupt callback
 611:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   * @retval None
 612:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   */
 613:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** __weak void HAL_PWR_PVDCallback(void)
 614:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** {
 706              		.loc 1 614 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 33


 707              		.cfi_startproc
 708              		@ args = 0, pretend = 0, frame = 0
 709              		@ frame_needed = 0, uses_anonymous_args = 0
 710              		@ link register save eliminated.
 615:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
 616:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****             the HAL_PWR_PVDCallback could be implemented in the user file
 617:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****    */ 
 618:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** }
 711              		.loc 1 618 0
 712 0000 7047     		bx	lr
 713              		.cfi_endproc
 714              	.LFE83:
 716              		.section	.text.HAL_PWR_PVD_IRQHandler,"ax",%progbits
 717              		.align	1
 718              		.global	HAL_PWR_PVD_IRQHandler
 719              		.syntax unified
 720              		.thumb
 721              		.thumb_func
 722              		.fpu softvfp
 724              	HAL_PWR_PVD_IRQHandler:
 725              	.LFB82:
 597:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   /* Check PWR exti flag */
 726              		.loc 1 597 0
 727              		.cfi_startproc
 728              		@ args = 0, pretend = 0, frame = 0
 729              		@ frame_needed = 0, uses_anonymous_args = 0
 730 0000 08B5     		push	{r3, lr}
 731              	.LCFI1:
 732              		.cfi_def_cfa_offset 8
 733              		.cfi_offset 3, -8
 734              		.cfi_offset 14, -4
 599:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   {
 735              		.loc 1 599 0
 736 0002 064B     		ldr	r3, .L63
 737 0004 5B69     		ldr	r3, [r3, #20]
 738 0006 13F4803F 		tst	r3, #65536
 739 000a 00D1     		bne	.L62
 740              	.L59:
 607:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 741              		.loc 1 607 0
 742 000c 08BD     		pop	{r3, pc}
 743              	.L62:
 602:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 744              		.loc 1 602 0
 745 000e FFF7FEFF 		bl	HAL_PWR_PVDCallback
 746              	.LVL11:
 605:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c ****   }
 747              		.loc 1 605 0
 748 0012 024B     		ldr	r3, .L63
 749 0014 4FF48032 		mov	r2, #65536
 750 0018 5A61     		str	r2, [r3, #20]
 607:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c **** 
 751              		.loc 1 607 0
 752 001a F7E7     		b	.L59
 753              	.L64:
 754              		.align	2
 755              	.L63:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 34


 756 001c 00040140 		.word	1073808384
 757              		.cfi_endproc
 758              	.LFE82:
 760              		.text
 761              	.Letext0:
 762              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 763              		.file 4 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 764              		.file 5 "Drivers/CMSIS/Include/core_cm3.h"
 765              		.file 6 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/system_stm32f1xx.h"
 766              		.file 7 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
 767              		.file 8 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"
 768              		.file 9 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 769              		.file 10 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\includ
 770              		.file 11 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\lib\\gcc\\arm-none-ea
 771              		.file 12 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\includ
 772              		.file 13 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_pwr.h"
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s 			page 35


DEFINED SYMBOLS
                            *ABS*:00000000 stm32f1xx_hal_pwr.c
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:16     .text.PWR_OverloadWfe:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:22     .text.PWR_OverloadWfe:00000000 PWR_OverloadWfe
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:47     .text.HAL_PWR_DeInit:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:54     .text.HAL_PWR_DeInit:00000000 HAL_PWR_DeInit
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:75     .text.HAL_PWR_DeInit:00000014 $d
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:80     .text.HAL_PWR_EnableBkUpAccess:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:87     .text.HAL_PWR_EnableBkUpAccess:00000000 HAL_PWR_EnableBkUpAccess
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:103    .text.HAL_PWR_EnableBkUpAccess:00000008 $d
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:108    .text.HAL_PWR_DisableBkUpAccess:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:115    .text.HAL_PWR_DisableBkUpAccess:00000000 HAL_PWR_DisableBkUpAccess
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:131    .text.HAL_PWR_DisableBkUpAccess:00000008 $d
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:136    .text.HAL_PWR_ConfigPVD:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:143    .text.HAL_PWR_ConfigPVD:00000000 HAL_PWR_ConfigPVD
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:220    .text.HAL_PWR_ConfigPVD:0000007c $d
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:226    .text.HAL_PWR_EnablePVD:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:233    .text.HAL_PWR_EnablePVD:00000000 HAL_PWR_EnablePVD
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:249    .text.HAL_PWR_EnablePVD:00000008 $d
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:254    .text.HAL_PWR_DisablePVD:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:261    .text.HAL_PWR_DisablePVD:00000000 HAL_PWR_DisablePVD
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:277    .text.HAL_PWR_DisablePVD:00000008 $d
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:282    .text.HAL_PWR_EnableWakeUpPin:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:289    .text.HAL_PWR_EnableWakeUpPin:00000000 HAL_PWR_EnableWakeUpPin
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:322    .text.HAL_PWR_EnableWakeUpPin:00000014 $d
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:327    .text.HAL_PWR_DisableWakeUpPin:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:334    .text.HAL_PWR_DisableWakeUpPin:00000000 HAL_PWR_DisableWakeUpPin
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:366    .text.HAL_PWR_DisableWakeUpPin:00000014 $d
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:371    .text.HAL_PWR_EnterSLEEPMode:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:378    .text.HAL_PWR_EnterSLEEPMode:00000000 HAL_PWR_EnterSLEEPMode
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:442    .text.HAL_PWR_EnterSLEEPMode:0000001c $d
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:449    .text.HAL_PWR_EnterSTOPMode:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:456    .text.HAL_PWR_EnterSTOPMode:00000000 HAL_PWR_EnterSTOPMode
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:527    .text.HAL_PWR_EnterSTOPMode:00000040 $d
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:535    .text.HAL_PWR_EnterSTANDBYMode:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:542    .text.HAL_PWR_EnterSTANDBYMode:00000000 HAL_PWR_EnterSTANDBYMode
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:575    .text.HAL_PWR_EnterSTANDBYMode:00000018 $d
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:581    .text.HAL_PWR_EnableSleepOnExit:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:588    .text.HAL_PWR_EnableSleepOnExit:00000000 HAL_PWR_EnableSleepOnExit
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:605    .text.HAL_PWR_EnableSleepOnExit:0000000c $d
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:610    .text.HAL_PWR_DisableSleepOnExit:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:617    .text.HAL_PWR_DisableSleepOnExit:00000000 HAL_PWR_DisableSleepOnExit
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:634    .text.HAL_PWR_DisableSleepOnExit:0000000c $d
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:639    .text.HAL_PWR_EnableSEVOnPend:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:646    .text.HAL_PWR_EnableSEVOnPend:00000000 HAL_PWR_EnableSEVOnPend
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:663    .text.HAL_PWR_EnableSEVOnPend:0000000c $d
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:668    .text.HAL_PWR_DisableSEVOnPend:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:675    .text.HAL_PWR_DisableSEVOnPend:00000000 HAL_PWR_DisableSEVOnPend
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:692    .text.HAL_PWR_DisableSEVOnPend:0000000c $d
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:697    .text.HAL_PWR_PVDCallback:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:704    .text.HAL_PWR_PVDCallback:00000000 HAL_PWR_PVDCallback
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:717    .text.HAL_PWR_PVD_IRQHandler:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:724    .text.HAL_PWR_PVD_IRQHandler:00000000 HAL_PWR_PVD_IRQHandler
C:\Users\crist\AppData\Local\Temp\ccZGKgTb.s:756    .text.HAL_PWR_PVD_IRQHandler:0000001c $d

NO UNDEFINED SYMBOLS
