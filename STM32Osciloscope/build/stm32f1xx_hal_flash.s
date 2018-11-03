ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 1


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
  11              		.file	"stm32f1xx_hal_flash.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.FLASH_Program_HalfWord,"ax",%progbits
  16              		.align	1
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu softvfp
  22              	FLASH_Program_HalfWord:
  23              	.LFB77:
  24              		.file 1 "Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c"
   1:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /**
   2:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   ******************************************************************************
   3:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @file    stm32f1xx_hal_flash.c
   4:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @author  MCD Application Team
   5:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @brief   FLASH HAL module driver.
   6:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *          This file provides firmware functions to manage the following 
   7:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *          functionalities of the internal FLASH memory:
   8:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *           + Program operations functions
   9:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *           + Memory Control functions 
  10:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *           + Peripheral State functions
  11:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *         
  12:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   @verbatim
  13:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   ==============================================================================
  14:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****                         ##### FLASH peripheral features #####
  15:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   ==============================================================================
  16:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   [..] The Flash memory interface manages CPU AHB I-Code and D-Code accesses 
  17:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****        to the Flash memory. It implements the erase and program Flash memory operations 
  18:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****        and the read and write protection mechanisms.
  19:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
  20:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   [..] The Flash memory interface accelerates code execution with a system of instruction
  21:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       prefetch. 
  22:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
  23:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   [..] The FLASH main features are:
  24:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       (+) Flash memory read operations
  25:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       (+) Flash memory program/erase operations
  26:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       (+) Read / write protections
  27:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       (+) Prefetch on I-Code
  28:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       (+) Option Bytes programming
  29:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
  30:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
  31:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****                      ##### How to use this driver #####
  32:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   ==============================================================================
  33:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   [..]                             
  34:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       This driver provides functions and macros to configure and program the FLASH 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 2


  35:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       memory of all STM32F1xx devices.
  36:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     
  37:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       (#) FLASH Memory I/O Programming functions: this group includes all needed
  38:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           functions to erase and program the main memory:
  39:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         (++) Lock and Unlock the FLASH interface
  40:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         (++) Erase function: Erase page, erase all pages
  41:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         (++) Program functions: half word, word and doubleword
  42:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       (#) FLASH Option Bytes Programming functions: this group includes all needed
  43:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           functions to manage the Option Bytes:
  44:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         (++) Lock and Unlock the Option Bytes
  45:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         (++) Set/Reset the write protection
  46:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         (++) Set the Read protection Level
  47:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         (++) Program the user Option Bytes
  48:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         (++) Launch the Option Bytes loader
  49:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         (++) Erase Option Bytes
  50:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         (++) Program the data Option Bytes
  51:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         (++) Get the Write protection.
  52:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         (++) Get the user option bytes.
  53:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     
  54:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       (#) Interrupts and flags management functions : this group 
  55:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           includes all needed functions to:
  56:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         (++) Handle FLASH interrupts
  57:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         (++) Wait for last FLASH operation according to its status
  58:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         (++) Get error flag status
  59:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
  60:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   [..] In addition to these function, this driver includes a set of macros allowing
  61:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****        to handle the following operations:
  62:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       
  63:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       (+) Set/Get the latency
  64:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       (+) Enable/Disable the prefetch buffer
  65:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       (+) Enable/Disable the half cycle access
  66:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       (+) Enable/Disable the FLASH interrupts
  67:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       (+) Monitor the FLASH flags status
  68:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           
  69:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   @endverbatim
  70:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   ******************************************************************************
  71:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @attention
  72:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *
  73:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
  74:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *
  75:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * Redistribution and use in source and binary forms, with or without modification,
  76:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * are permitted provided that the following conditions are met:
  77:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  78:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *      this list of conditions and the following disclaimer.
  79:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  80:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *      this list of conditions and the following disclaimer in the documentation
  81:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *      and/or other materials provided with the distribution.
  82:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  83:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *      may be used to endorse or promote products derived from this software
  84:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *      without specific prior written permission.
  85:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *
  86:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  87:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  88:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  89:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  90:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  91:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 3


  92:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  93:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  94:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  95:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  96:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *
  97:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   ******************************************************************************  
  98:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
  99:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 100:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /* Includes ------------------------------------------------------------------*/
 101:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #include "stm32f1xx_hal.h"
 102:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 103:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /** @addtogroup STM32F1xx_HAL_Driver
 104:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @{
 105:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 106:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 107:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #ifdef HAL_FLASH_MODULE_ENABLED
 108:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 109:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /** @defgroup FLASH FLASH
 110:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @brief FLASH HAL module driver
 111:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @{
 112:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 113:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 114:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /* Private typedef -----------------------------------------------------------*/
 115:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /* Private define ------------------------------------------------------------*/
 116:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /** @defgroup FLASH_Private_Constants FLASH Private Constants
 117:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @{
 118:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 119:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /**
 120:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @}
 121:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 122:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 123:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /* Private macro ---------------------------- ---------------------------------*/
 124:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /** @defgroup FLASH_Private_Macros FLASH Private Macros
 125:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @{
 126:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 127:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****  
 128:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /**
 129:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @}
 130:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 131:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 132:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /* Private variables ---------------------------------------------------------*/
 133:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /** @defgroup FLASH_Private_Variables FLASH Private Variables
 134:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @{
 135:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 136:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /* Variables used for Erase pages under interruption*/
 137:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** FLASH_ProcessTypeDef pFlash;
 138:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /**
 139:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @}
 140:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 141:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 142:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /* Private function prototypes -----------------------------------------------*/
 143:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /** @defgroup FLASH_Private_Functions FLASH Private Functions
 144:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @{
 145:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 146:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** static  void   FLASH_Program_HalfWord(uint32_t Address, uint16_t Data);
 147:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** static  void   FLASH_SetErrorCode(void);
 148:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** extern void    FLASH_PageErase(uint32_t PageAddress);
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 4


 149:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /**
 150:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @}
 151:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 152:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 153:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /* Exported functions ---------------------------------------------------------*/
 154:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /** @defgroup FLASH_Exported_Functions FLASH Exported Functions
 155:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @{
 156:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 157:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   
 158:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /** @defgroup FLASH_Exported_Functions_Group1 Programming operation functions 
 159:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *  @brief   Programming operation functions 
 160:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *
 161:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** @verbatim   
 162:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** @endverbatim
 163:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @{
 164:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 165:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 166:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /**
 167:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @brief  Program halfword, word or double word at a specified address
 168:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @note   The function HAL_FLASH_Unlock() should be called before to unlock the FLASH interface
 169:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *         The function HAL_FLASH_Lock() should be called after to lock the FLASH interface
 170:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *
 171:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @note   If an erase and a program operations are requested simultaneously,    
 172:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *         the erase operation is performed before the program one.
 173:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *  
 174:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @note   FLASH should be previously erased before new programmation (only exception to this 
 175:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *         is when 0x0000 is programmed)
 176:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *
 177:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @param  TypeProgram:  Indicate the way to program at a specified address.
 178:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *                       This parameter can be a value of @ref FLASH_Type_Program
 179:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @param  Address:      Specifies the address to be programmed.
 180:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @param  Data:         Specifies the data to be programmed
 181:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * 
 182:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @retval HAL_StatusTypeDef HAL Status
 183:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 184:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** HAL_StatusTypeDef HAL_FLASH_Program(uint32_t TypeProgram, uint32_t Address, uint64_t Data)
 185:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** {
 186:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   HAL_StatusTypeDef status = HAL_ERROR;
 187:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   uint8_t index = 0;
 188:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   uint8_t nbiterations = 0;
 189:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   
 190:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Process Locked */
 191:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   __HAL_LOCK(&pFlash);
 192:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 193:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Check the parameters */
 194:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   assert_param(IS_FLASH_TYPEPROGRAM(TypeProgram));
 195:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   assert_param(IS_FLASH_PROGRAM_ADDRESS(Address));
 196:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 197:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #if defined(FLASH_BANK2_END)
 198:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   if(Address <= FLASH_BANK1_END)
 199:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 200:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #endif /* FLASH_BANK2_END */
 201:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Wait for last operation to be completed */
 202:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
 203:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #if defined(FLASH_BANK2_END)
 204:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 205:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   else
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 5


 206:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 207:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Wait for last operation to be completed */
 208:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     status = FLASH_WaitForLastOperationBank2(FLASH_TIMEOUT_VALUE);
 209:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 210:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #endif /* FLASH_BANK2_END */
 211:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   
 212:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   if(status == HAL_OK)
 213:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 214:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     if(TypeProgram == FLASH_TYPEPROGRAM_HALFWORD)
 215:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     {
 216:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       /* Program halfword (16-bit) at a specified address. */
 217:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       nbiterations = 1U;
 218:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     }
 219:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     else if(TypeProgram == FLASH_TYPEPROGRAM_WORD)
 220:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     {
 221:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       /* Program word (32-bit = 2*16-bit) at a specified address. */
 222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       nbiterations = 2U;
 223:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     }
 224:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     else
 225:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     {
 226:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       /* Program double word (64-bit = 4*16-bit) at a specified address. */
 227:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       nbiterations = 4U;
 228:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     }
 229:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 230:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     for (index = 0U; index < nbiterations; index++)
 231:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     {
 232:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       FLASH_Program_HalfWord((Address + (2U*index)), (uint16_t)(Data >> (16U*index)));
 233:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 234:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #if defined(FLASH_BANK2_END)
 235:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       if(Address <= FLASH_BANK1_END)
 236:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       {
 237:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #endif /* FLASH_BANK2_END */
 238:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         /* Wait for last operation to be completed */
 239:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
 240:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     
 241:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         /* If the program operation is completed, disable the PG Bit */
 242:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         CLEAR_BIT(FLASH->CR, FLASH_CR_PG);
 243:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #if defined(FLASH_BANK2_END)
 244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       }
 245:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       else
 246:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       {
 247:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         /* Wait for last operation to be completed */
 248:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         status = FLASH_WaitForLastOperationBank2(FLASH_TIMEOUT_VALUE);
 249:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         
 250:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         /* If the program operation is completed, disable the PG Bit */
 251:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         CLEAR_BIT(FLASH->CR2, FLASH_CR2_PG);
 252:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       }
 253:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #endif /* FLASH_BANK2_END */
 254:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       /* In case of error, stop programation procedure */
 255:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       if (status != HAL_OK)
 256:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       {
 257:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         break;
 258:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       }
 259:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     }
 260:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 261:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 262:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Process Unlocked */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 6


 263:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   __HAL_UNLOCK(&pFlash);
 264:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 265:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   return status;
 266:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** }
 267:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 268:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /**
 269:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @brief  Program halfword, word or double word at a specified address  with interrupt enabled.
 270:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @note   The function HAL_FLASH_Unlock() should be called before to unlock the FLASH interface
 271:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *         The function HAL_FLASH_Lock() should be called after to lock the FLASH interface
 272:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *
 273:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @note   If an erase and a program operations are requested simultaneously,    
 274:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *         the erase operation is performed before the program one.
 275:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *
 276:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @param  TypeProgram: Indicate the way to program at a specified address.
 277:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *                      This parameter can be a value of @ref FLASH_Type_Program
 278:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @param  Address:     Specifies the address to be programmed.
 279:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @param  Data:        Specifies the data to be programmed
 280:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * 
 281:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @retval HAL_StatusTypeDef HAL Status
 282:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 283:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** HAL_StatusTypeDef HAL_FLASH_Program_IT(uint32_t TypeProgram, uint32_t Address, uint64_t Data)
 284:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** {
 285:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   HAL_StatusTypeDef status = HAL_OK;
 286:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   
 287:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Process Locked */
 288:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   __HAL_LOCK(&pFlash);
 289:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 290:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Check the parameters */
 291:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   assert_param(IS_FLASH_TYPEPROGRAM(TypeProgram));
 292:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   assert_param(IS_FLASH_PROGRAM_ADDRESS(Address));
 293:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 294:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #if defined(FLASH_BANK2_END)
 295:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* If procedure already ongoing, reject the next one */
 296:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   if (pFlash.ProcedureOnGoing != FLASH_PROC_NONE)
 297:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 298:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     return HAL_ERROR;
 299:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 300:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   
 301:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   if(Address <= FLASH_BANK1_END)
 302:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 303:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Enable End of FLASH Operation and Error source interrupts */
 304:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     __HAL_FLASH_ENABLE_IT(FLASH_IT_EOP_BANK1 | FLASH_IT_ERR_BANK1);
 305:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 306:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }else
 307:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 308:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Enable End of FLASH Operation and Error source interrupts */
 309:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     __HAL_FLASH_ENABLE_IT(FLASH_IT_EOP_BANK2 | FLASH_IT_ERR_BANK2);
 310:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 311:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #else
 312:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Enable End of FLASH Operation and Error source interrupts */
 313:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   __HAL_FLASH_ENABLE_IT(FLASH_IT_EOP | FLASH_IT_ERR);
 314:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #endif /* FLASH_BANK2_END */
 315:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   
 316:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   pFlash.Address = Address;
 317:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   pFlash.Data = Data;
 318:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 319:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   if(TypeProgram == FLASH_TYPEPROGRAM_HALFWORD)
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 7


 320:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 321:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     pFlash.ProcedureOnGoing = FLASH_PROC_PROGRAMHALFWORD;
 322:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Program halfword (16-bit) at a specified address. */
 323:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     pFlash.DataRemaining = 1U;
 324:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 325:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   else if(TypeProgram == FLASH_TYPEPROGRAM_WORD)
 326:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 327:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     pFlash.ProcedureOnGoing = FLASH_PROC_PROGRAMWORD;
 328:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Program word (32-bit : 2*16-bit) at a specified address. */
 329:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     pFlash.DataRemaining = 2U;
 330:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 331:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   else
 332:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 333:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     pFlash.ProcedureOnGoing = FLASH_PROC_PROGRAMDOUBLEWORD;
 334:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Program double word (64-bit : 4*16-bit) at a specified address. */
 335:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     pFlash.DataRemaining = 4U;
 336:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 337:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 338:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Program halfword (16-bit) at a specified address. */
 339:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   FLASH_Program_HalfWord(Address, (uint16_t)Data);
 340:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 341:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   return status;
 342:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** }
 343:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 344:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /**
 345:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @brief This function handles FLASH interrupt request.
 346:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @retval None
 347:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 348:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** void HAL_FLASH_IRQHandler(void)
 349:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** {
 350:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   uint32_t addresstmp = 0U;
 351:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   
 352:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Check FLASH operation error flags */
 353:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #if defined(FLASH_BANK2_END)
 354:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_WRPERR_BANK1) || __HAL_FLASH_GET_FLAG(FLASH_FLAG_PGERR_BANK1) 
 355:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     (__HAL_FLASH_GET_FLAG(FLASH_FLAG_WRPERR_BANK2) || __HAL_FLASH_GET_FLAG(FLASH_FLAG_PGERR_BANK2))
 356:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #else
 357:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_WRPERR) ||__HAL_FLASH_GET_FLAG(FLASH_FLAG_PGERR))
 358:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #endif /* FLASH_BANK2_END */
 359:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 360:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Return the faulty address */
 361:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     addresstmp = pFlash.Address;
 362:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Reset address */
 363:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     pFlash.Address = 0xFFFFFFFFU;
 364:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   
 365:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Save the Error code */
 366:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     FLASH_SetErrorCode();
 367:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     
 368:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* FLASH error interrupt user callback */
 369:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     HAL_FLASH_OperationErrorCallback(addresstmp);
 370:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 371:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Stop the procedure ongoing */
 372:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     pFlash.ProcedureOnGoing = FLASH_PROC_NONE;
 373:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 374:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 375:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Check FLASH End of Operation flag  */
 376:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #if defined(FLASH_BANK2_END)
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 8


 377:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_EOP_BANK1))
 378:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 379:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Clear FLASH End of Operation pending bit */
 380:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_EOP_BANK1);
 381:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #else
 382:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_EOP))
 383:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 384:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Clear FLASH End of Operation pending bit */
 385:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_EOP);
 386:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #endif /* FLASH_BANK2_END */
 387:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     
 388:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Process can continue only if no error detected */
 389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     if(pFlash.ProcedureOnGoing != FLASH_PROC_NONE)
 390:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     {
 391:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       if(pFlash.ProcedureOnGoing == FLASH_PROC_PAGEERASE)
 392:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       {
 393:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         /* Nb of pages to erased can be decreased */
 394:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         pFlash.DataRemaining--;
 395:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 396:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         /* Check if there are still pages to erase */
 397:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         if(pFlash.DataRemaining != 0U)
 398:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         {
 399:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           addresstmp = pFlash.Address;
 400:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /*Indicate user which sector has been erased */
 401:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           HAL_FLASH_EndOfOperationCallback(addresstmp);
 402:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 403:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /*Increment sector number*/
 404:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           addresstmp = pFlash.Address + FLASH_PAGE_SIZE;
 405:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           pFlash.Address = addresstmp;
 406:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 407:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /* If the erase operation is completed, disable the PER Bit */
 408:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           CLEAR_BIT(FLASH->CR, FLASH_CR_PER);
 409:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 410:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           FLASH_PageErase(addresstmp);
 411:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         }
 412:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         else
 413:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         {
 414:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /* No more pages to Erase, user callback can be called. */
 415:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /* Reset Sector and stop Erase pages procedure */
 416:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           pFlash.Address = addresstmp = 0xFFFFFFFFU;
 417:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           pFlash.ProcedureOnGoing = FLASH_PROC_NONE;
 418:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /* FLASH EOP interrupt user callback */
 419:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           HAL_FLASH_EndOfOperationCallback(addresstmp);
 420:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         }
 421:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       }
 422:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       else if(pFlash.ProcedureOnGoing == FLASH_PROC_MASSERASE)
 423:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       {
 424:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         /* Operation is completed, disable the MER Bit */
 425:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         CLEAR_BIT(FLASH->CR, FLASH_CR_MER);
 426:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 427:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #if defined(FLASH_BANK2_END)
 428:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         /* Stop Mass Erase procedure if no pending mass erase on other bank */
 429:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         if (HAL_IS_BIT_CLR(FLASH->CR2, FLASH_CR2_MER))
 430:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         {
 431:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #endif /* FLASH_BANK2_END */
 432:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /* MassErase ended. Return the selected bank */
 433:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /* FLASH EOP interrupt user callback */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 9


 434:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           HAL_FLASH_EndOfOperationCallback(0U);
 435:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 436:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /* Stop Mass Erase procedure*/
 437:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           pFlash.ProcedureOnGoing = FLASH_PROC_NONE;
 438:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         }
 439:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #if defined(FLASH_BANK2_END)
 440:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       }
 441:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #endif /* FLASH_BANK2_END */
 442:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       else
 443:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       {
 444:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         /* Nb of 16-bit data to program can be decreased */
 445:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         pFlash.DataRemaining--;
 446:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         
 447:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         /* Check if there are still 16-bit data to program */
 448:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         if(pFlash.DataRemaining != 0U)
 449:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         {
 450:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /* Increment address to 16-bit */
 451:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           pFlash.Address += 2U;
 452:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           addresstmp = pFlash.Address;
 453:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           
 454:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /* Shift to have next 16-bit data */
 455:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           pFlash.Data = (pFlash.Data >> 16U);
 456:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           
 457:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /* Operation is completed, disable the PG Bit */
 458:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           CLEAR_BIT(FLASH->CR, FLASH_CR_PG);
 459:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 460:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /*Program halfword (16-bit) at a specified address.*/
 461:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           FLASH_Program_HalfWord(addresstmp, (uint16_t)pFlash.Data);
 462:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         }
 463:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         else
 464:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         {
 465:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /* Program ended. Return the selected address */
 466:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /* FLASH EOP interrupt user callback */
 467:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           if (pFlash.ProcedureOnGoing == FLASH_PROC_PROGRAMHALFWORD)
 468:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           {
 469:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****             HAL_FLASH_EndOfOperationCallback(pFlash.Address);
 470:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           }
 471:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           else if (pFlash.ProcedureOnGoing == FLASH_PROC_PROGRAMWORD)
 472:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           {
 473:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****             HAL_FLASH_EndOfOperationCallback(pFlash.Address - 2U);
 474:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           }
 475:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           else 
 476:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           {
 477:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****             HAL_FLASH_EndOfOperationCallback(pFlash.Address - 6U);
 478:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           }
 479:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         
 480:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /* Reset Address and stop Program procedure */
 481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           pFlash.Address = 0xFFFFFFFFU;
 482:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           pFlash.ProcedureOnGoing = FLASH_PROC_NONE;
 483:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         }
 484:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       }
 485:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     }
 486:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 487:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   
 488:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #if defined(FLASH_BANK2_END)
 489:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Check FLASH End of Operation flag  */
 490:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   if(__HAL_FLASH_GET_FLAG( FLASH_FLAG_EOP_BANK2))
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 10


 491:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 492:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Clear FLASH End of Operation pending bit */
 493:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_EOP_BANK2);
 494:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     
 495:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Process can continue only if no error detected */
 496:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     if(pFlash.ProcedureOnGoing != FLASH_PROC_NONE)
 497:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     {
 498:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       if(pFlash.ProcedureOnGoing == FLASH_PROC_PAGEERASE)
 499:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       {
 500:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         /* Nb of pages to erased can be decreased */
 501:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         pFlash.DataRemaining--;
 502:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         
 503:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         /* Check if there are still pages to erase*/
 504:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         if(pFlash.DataRemaining != 0U)
 505:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         {
 506:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /* Indicate user which page address has been erased*/
 507:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           HAL_FLASH_EndOfOperationCallback(pFlash.Address);
 508:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         
 509:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /* Increment page address to next page */
 510:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           pFlash.Address += FLASH_PAGE_SIZE;
 511:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           addresstmp = pFlash.Address;
 512:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 513:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /* Operation is completed, disable the PER Bit */
 514:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           CLEAR_BIT(FLASH->CR2, FLASH_CR2_PER);
 515:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 516:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           FLASH_PageErase(addresstmp);
 517:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         }
 518:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         else
 519:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         {
 520:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /*No more pages to Erase*/
 521:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           
 522:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /*Reset Address and stop Erase pages procedure*/
 523:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           pFlash.Address = 0xFFFFFFFFU;
 524:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           pFlash.ProcedureOnGoing = FLASH_PROC_NONE;
 525:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 526:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /* FLASH EOP interrupt user callback */
 527:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           HAL_FLASH_EndOfOperationCallback(pFlash.Address);
 528:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         }
 529:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       }
 530:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       else if(pFlash.ProcedureOnGoing == FLASH_PROC_MASSERASE)
 531:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       {
 532:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         /* Operation is completed, disable the MER Bit */
 533:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         CLEAR_BIT(FLASH->CR2, FLASH_CR2_MER);
 534:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         if (HAL_IS_BIT_CLR(FLASH->CR, FLASH_CR_MER))
 536:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         {
 537:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /* MassErase ended. Return the selected bank*/
 538:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /* FLASH EOP interrupt user callback */
 539:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           HAL_FLASH_EndOfOperationCallback(0U);
 540:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         
 541:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           pFlash.ProcedureOnGoing = FLASH_PROC_NONE;
 542:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         }
 543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       }
 544:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       else
 545:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       {
 546:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         /* Nb of 16-bit data to program can be decreased */
 547:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         pFlash.DataRemaining--;
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 11


 548:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         
 549:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         /* Check if there are still 16-bit data to program */
 550:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         if(pFlash.DataRemaining != 0U)
 551:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         {
 552:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /* Increment address to 16-bit */
 553:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           pFlash.Address += 2U;
 554:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           addresstmp = pFlash.Address;
 555:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           
 556:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /* Shift to have next 16-bit data */
 557:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           pFlash.Data = (pFlash.Data >> 16U);
 558:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           
 559:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /* Operation is completed, disable the PG Bit */
 560:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           CLEAR_BIT(FLASH->CR2, FLASH_CR2_PG);
 561:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 562:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /*Program halfword (16-bit) at a specified address.*/
 563:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           FLASH_Program_HalfWord(addresstmp, (uint16_t)pFlash.Data);
 564:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         }
 565:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         else
 566:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         {
 567:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /*Program ended. Return the selected address*/
 568:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /* FLASH EOP interrupt user callback */
 569:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           if (pFlash.ProcedureOnGoing == FLASH_PROC_PROGRAMHALFWORD)
 570:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           {
 571:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****             HAL_FLASH_EndOfOperationCallback(pFlash.Address);
 572:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           }
 573:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           else if (pFlash.ProcedureOnGoing == FLASH_PROC_PROGRAMWORD)
 574:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           {
 575:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****             HAL_FLASH_EndOfOperationCallback(pFlash.Address-2U);
 576:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           }
 577:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           else 
 578:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           {
 579:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****             HAL_FLASH_EndOfOperationCallback(pFlash.Address-6U);
 580:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           }
 581:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           
 582:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /* Reset Address and stop Program procedure*/
 583:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           pFlash.Address = 0xFFFFFFFFU;
 584:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           pFlash.ProcedureOnGoing = FLASH_PROC_NONE;
 585:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         }
 586:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       }
 587:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     }
 588:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 589:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #endif 
 590:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 591:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   if(pFlash.ProcedureOnGoing == FLASH_PROC_NONE)
 592:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 593:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #if defined(FLASH_BANK2_END)
 594:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Operation is completed, disable the PG, PER and MER Bits for both bank */
 595:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     CLEAR_BIT(FLASH->CR, (FLASH_CR_PG | FLASH_CR_PER | FLASH_CR_MER));
 596:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     CLEAR_BIT(FLASH->CR2, (FLASH_CR2_PG | FLASH_CR2_PER | FLASH_CR2_MER));  
 597:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   
 598:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Disable End of FLASH Operation and Error source interrupts for both banks */
 599:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     __HAL_FLASH_DISABLE_IT(FLASH_IT_EOP_BANK1 | FLASH_IT_ERR_BANK1 | FLASH_IT_EOP_BANK2 | FLASH_IT_
 600:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #else
 601:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Operation is completed, disable the PG, PER and MER Bits */
 602:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     CLEAR_BIT(FLASH->CR, (FLASH_CR_PG | FLASH_CR_PER | FLASH_CR_MER));
 603:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 604:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Disable End of FLASH Operation and Error source interrupts */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 12


 605:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     __HAL_FLASH_DISABLE_IT(FLASH_IT_EOP | FLASH_IT_ERR);
 606:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #endif /* FLASH_BANK2_END */
 607:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 608:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Process Unlocked */
 609:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     __HAL_UNLOCK(&pFlash);
 610:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 611:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** }
 612:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 613:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /**
 614:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @brief  FLASH end of operation interrupt callback
 615:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @param  ReturnValue: The value saved in this parameter depends on the ongoing procedure
 616:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *                 - Mass Erase: No return value expected
 617:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *                 - Pages Erase: Address of the page which has been erased 
 618:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *                    (if 0xFFFFFFFF, it means that all the selected pages have been erased)
 619:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *                 - Program: Address which was selected for data program
 620:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @retval none
 621:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 622:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** __weak void HAL_FLASH_EndOfOperationCallback(uint32_t ReturnValue)
 623:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** {
 624:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Prevent unused argument(s) compilation warning */
 625:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   UNUSED(ReturnValue);
 626:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 627:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
 628:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****             the HAL_FLASH_EndOfOperationCallback could be implemented in the user file
 629:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****    */ 
 630:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** }
 631:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 632:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /**
 633:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @brief  FLASH operation error interrupt callback
 634:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @param  ReturnValue: The value saved in this parameter depends on the ongoing procedure
 635:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *                 - Mass Erase: No return value expected
 636:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *                 - Pages Erase: Address of the page which returned an error
 637:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *                 - Program: Address which was selected for data program
 638:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @retval none
 639:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 640:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** __weak void HAL_FLASH_OperationErrorCallback(uint32_t ReturnValue)
 641:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** {
 642:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Prevent unused argument(s) compilation warning */
 643:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   UNUSED(ReturnValue);
 644:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 645:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
 646:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****             the HAL_FLASH_OperationErrorCallback could be implemented in the user file
 647:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****    */ 
 648:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** }
 649:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 650:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /**
 651:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @}
 652:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 653:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 654:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /** @defgroup FLASH_Exported_Functions_Group2 Peripheral Control functions 
 655:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****  *  @brief   management functions 
 656:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****  *
 657:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** @verbatim   
 658:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****  ===============================================================================
 659:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****                       ##### Peripheral Control functions #####
 660:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****  ===============================================================================  
 661:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     [..]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 13


 662:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     This subsection provides a set of functions allowing to control the FLASH 
 663:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     memory operations.
 664:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 665:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** @endverbatim
 666:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @{
 667:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 668:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 669:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /**
 670:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @brief  Unlock the FLASH control register access
 671:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @retval HAL Status
 672:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 673:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** HAL_StatusTypeDef HAL_FLASH_Unlock(void)
 674:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** {
 675:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   HAL_StatusTypeDef status = HAL_OK;
 676:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 677:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   if(READ_BIT(FLASH->CR, FLASH_CR_LOCK) != RESET)
 678:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 679:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Authorize the FLASH Registers access */
 680:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     WRITE_REG(FLASH->KEYR, FLASH_KEY1);
 681:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     WRITE_REG(FLASH->KEYR, FLASH_KEY2);
 682:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 683:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Verify Flash is unlocked */
 684:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     if(READ_BIT(FLASH->CR, FLASH_CR_LOCK) != RESET)
 685:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     {
 686:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       status = HAL_ERROR;
 687:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     }
 688:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 689:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #if defined(FLASH_BANK2_END)
 690:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   if(READ_BIT(FLASH->CR2, FLASH_CR2_LOCK) != RESET)
 691:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 692:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Authorize the FLASH BANK2 Registers access */
 693:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     WRITE_REG(FLASH->KEYR2, FLASH_KEY1);
 694:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     WRITE_REG(FLASH->KEYR2, FLASH_KEY2);
 695:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     
 696:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Verify Flash BANK2 is unlocked */
 697:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     if(READ_BIT(FLASH->CR2, FLASH_CR2_LOCK) != RESET)
 698:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     {
 699:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       status = HAL_ERROR;
 700:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     }
 701:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 702:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #endif /* FLASH_BANK2_END */
 703:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 704:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   return status;
 705:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** }
 706:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 707:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /**
 708:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @brief  Locks the FLASH control register access
 709:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @retval HAL Status
 710:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 711:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** HAL_StatusTypeDef HAL_FLASH_Lock(void)
 712:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** {
 713:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Set the LOCK Bit to lock the FLASH Registers access */
 714:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   SET_BIT(FLASH->CR, FLASH_CR_LOCK);
 715:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   
 716:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #if defined(FLASH_BANK2_END)
 717:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Set the LOCK Bit to lock the FLASH BANK2 Registers access */
 718:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   SET_BIT(FLASH->CR2, FLASH_CR2_LOCK);
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 14


 719:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 720:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #endif /* FLASH_BANK2_END */
 721:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   return HAL_OK;  
 722:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** }
 723:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 724:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /**
 725:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @brief  Unlock the FLASH Option Control Registers access.
 726:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @retval HAL Status
 727:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 728:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** HAL_StatusTypeDef HAL_FLASH_OB_Unlock(void)
 729:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** {
 730:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   if (HAL_IS_BIT_CLR(FLASH->CR, FLASH_CR_OPTWRE))
 731:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 732:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Authorizes the Option Byte register programming */
 733:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     WRITE_REG(FLASH->OPTKEYR, FLASH_OPTKEY1);
 734:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     WRITE_REG(FLASH->OPTKEYR, FLASH_OPTKEY2);
 735:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 736:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   else
 737:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 738:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     return HAL_ERROR;
 739:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }  
 740:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   
 741:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   return HAL_OK;  
 742:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** }
 743:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 744:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /**
 745:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @brief  Lock the FLASH Option Control Registers access.
 746:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @retval HAL Status 
 747:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 748:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** HAL_StatusTypeDef HAL_FLASH_OB_Lock(void)
 749:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** {
 750:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Clear the OPTWRE Bit to lock the FLASH Option Byte Registers access */
 751:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   CLEAR_BIT(FLASH->CR, FLASH_CR_OPTWRE);
 752:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   
 753:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   return HAL_OK;  
 754:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** }
 755:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   
 756:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /**
 757:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @brief  Launch the option byte loading.
 758:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @note   This function will reset automatically the MCU.
 759:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @retval None
 760:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 761:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** void HAL_FLASH_OB_Launch(void)
 762:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** {
 763:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Initiates a system reset request to launch the option byte loading */
 764:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   HAL_NVIC_SystemReset();
 765:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** }
 766:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 767:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /**
 768:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @}
 769:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */  
 770:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 771:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /** @defgroup FLASH_Exported_Functions_Group3 Peripheral errors functions 
 772:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****  *  @brief    Peripheral errors functions 
 773:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****  *
 774:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** @verbatim   
 775:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****  ===============================================================================
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 15


 776:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****                       ##### Peripheral Errors functions #####
 777:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****  ===============================================================================  
 778:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     [..]
 779:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     This subsection permit to get in run-time errors of  the FLASH peripheral.
 780:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 781:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** @endverbatim
 782:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @{
 783:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 784:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 785:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /**
 786:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @brief  Get the specific FLASH error flag.
 787:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @retval FLASH_ErrorCode The returned value can be:
 788:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *            @ref FLASH_Error_Codes
 789:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 790:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** uint32_t HAL_FLASH_GetError(void)
 791:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** {
 792:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****    return pFlash.ErrorCode;
 793:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** }
 794:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 795:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /**
 796:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @}
 797:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 798:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 799:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /**
 800:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @}
 801:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 802:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 803:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /** @addtogroup FLASH_Private_Functions
 804:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****  * @{
 805:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****  */
 806:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 807:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /**
 808:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @brief  Program a half-word (16-bit) at a specified address.
 809:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @param  Address specify the address to be programmed.
 810:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @param  Data    specify the data to be programmed.
 811:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @retval None
 812:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 813:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** static void FLASH_Program_HalfWord(uint32_t Address, uint16_t Data)
 814:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** {
  25              		.loc 1 814 0
  26              		.cfi_startproc
  27              		@ args = 0, pretend = 0, frame = 0
  28              		@ frame_needed = 0, uses_anonymous_args = 0
  29              		@ link register save eliminated.
  30              	.LVL0:
 815:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Clean the error context */
 816:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
  31              		.loc 1 816 0
  32 0000 044B     		ldr	r3, .L2
  33 0002 0022     		movs	r2, #0
  34 0004 DA61     		str	r2, [r3, #28]
 817:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   
 818:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #if defined(FLASH_BANK2_END)
 819:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   if(Address <= FLASH_BANK1_END)
 820:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 821:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #endif /* FLASH_BANK2_END */
 822:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Proceed to program the new data */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 16


 823:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     SET_BIT(FLASH->CR, FLASH_CR_PG);
  35              		.loc 1 823 0
  36 0006 044A     		ldr	r2, .L2+4
  37 0008 1369     		ldr	r3, [r2, #16]
  38 000a 43F00103 		orr	r3, r3, #1
  39 000e 1361     		str	r3, [r2, #16]
 824:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #if defined(FLASH_BANK2_END)
 825:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 826:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   else
 827:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 828:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Proceed to program the new data */
 829:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     SET_BIT(FLASH->CR2, FLASH_CR2_PG);
 830:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 831:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #endif /* FLASH_BANK2_END */
 832:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 833:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Write data in the address */
 834:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   *(__IO uint16_t*)Address = Data;
  40              		.loc 1 834 0
  41 0010 0180     		strh	r1, [r0]	@ movhi
 835:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** }
  42              		.loc 1 835 0
  43 0012 7047     		bx	lr
  44              	.L3:
  45              		.align	2
  46              	.L2:
  47 0014 00000000 		.word	pFlash
  48 0018 00200240 		.word	1073881088
  49              		.cfi_endproc
  50              	.LFE77:
  52              		.section	.text.FLASH_SetErrorCode,"ax",%progbits
  53              		.align	1
  54              		.syntax unified
  55              		.thumb
  56              		.thumb_func
  57              		.fpu softvfp
  59              	FLASH_SetErrorCode:
  60              	.LFB79:
 836:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 837:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /**
 838:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @brief  Wait for a FLASH operation to complete.
 839:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @param  Timeout  maximum flash operation timeout
 840:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @retval HAL Status
 841:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 842:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** HAL_StatusTypeDef FLASH_WaitForLastOperation(uint32_t Timeout)
 843:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** {
 844:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Wait for the FLASH operation to complete by polling on BUSY flag to be reset.
 845:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****      Even if the FLASH operation fails, the BUSY flag will be reset and an error
 846:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****      flag will be set */
 847:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****      
 848:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   uint32_t tickstart = HAL_GetTick();
 849:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****      
 850:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   while(__HAL_FLASH_GET_FLAG(FLASH_FLAG_BSY)) 
 851:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   { 
 852:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     if (Timeout != HAL_MAX_DELAY)
 853:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     {
 854:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       if((Timeout == 0U) || ((HAL_GetTick()-tickstart) > Timeout))
 855:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       {
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 17


 856:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         return HAL_TIMEOUT;
 857:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       }
 858:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     }
 859:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 860:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   
 861:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Check FLASH End of Operation flag  */
 862:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   if (__HAL_FLASH_GET_FLAG(FLASH_FLAG_EOP))
 863:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 864:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Clear FLASH End of Operation pending bit */
 865:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_EOP);
 866:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 867:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   
 868:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_WRPERR)  || 
 869:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****      __HAL_FLASH_GET_FLAG(FLASH_FLAG_OPTVERR) || 
 870:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****      __HAL_FLASH_GET_FLAG(FLASH_FLAG_PGERR))
 871:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 872:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /*Save the error code*/
 873:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     FLASH_SetErrorCode();
 874:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     return HAL_ERROR;
 875:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 876:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 877:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* There is no error flag set */
 878:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   return HAL_OK;
 879:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** }
 880:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 881:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #if defined(FLASH_BANK2_END)
 882:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /**
 883:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @brief  Wait for a FLASH BANK2 operation to complete.
 884:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @param  Timeout maximum flash operation timeout
 885:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @retval HAL_StatusTypeDef HAL Status
 886:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 887:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** HAL_StatusTypeDef FLASH_WaitForLastOperationBank2(uint32_t Timeout)
 888:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** { 
 889:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Wait for the FLASH BANK2 operation to complete by polling on BUSY flag to be reset.
 890:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****      Even if the FLASH BANK2 operation fails, the BUSY flag will be reset and an error
 891:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****      flag will be set */
 892:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****      
 893:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   uint32_t tickstart = HAL_GetTick();
 894:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****      
 895:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   while(__HAL_FLASH_GET_FLAG(FLASH_FLAG_BSY_BANK2)) 
 896:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   { 
 897:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     if (Timeout != HAL_MAX_DELAY)
 898:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     {
 899:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       if((Timeout == 0U) || ((HAL_GetTick()-tickstart) > Timeout))
 900:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       {
 901:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         return HAL_TIMEOUT;
 902:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       }
 903:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     }
 904:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 905:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   
 906:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Check FLASH End of Operation flag  */
 907:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   if (__HAL_FLASH_GET_FLAG(FLASH_FLAG_EOP_BANK2))
 908:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 909:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Clear FLASH End of Operation pending bit */
 910:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_EOP_BANK2);
 911:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 912:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 18


 913:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_WRPERR_BANK2) || __HAL_FLASH_GET_FLAG(FLASH_FLAG_PGERR_BANK2))
 914:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 915:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /*Save the error code*/
 916:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     FLASH_SetErrorCode();
 917:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     return HAL_ERROR;
 918:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 919:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 920:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* If there is an error flag set */
 921:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   return HAL_OK;
 922:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   
 923:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** }
 924:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #endif /* FLASH_BANK2_END */
 925:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 926:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** /**
 927:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @brief  Set the specific FLASH error flag.
 928:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   * @retval None
 929:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   */
 930:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** static void FLASH_SetErrorCode(void)
 931:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** {
  61              		.loc 1 931 0
  62              		.cfi_startproc
  63              		@ args = 0, pretend = 0, frame = 0
  64              		@ frame_needed = 0, uses_anonymous_args = 0
  65              		@ link register save eliminated.
  66              	.LVL1:
 932:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   uint32_t flags = 0U;
 933:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   
 934:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #if defined(FLASH_BANK2_END)
 935:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_WRPERR) || __HAL_FLASH_GET_FLAG(FLASH_FLAG_WRPERR_BANK2))
 936:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #else
 937:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_WRPERR))
  67              		.loc 1 937 0
  68 0000 1A4B     		ldr	r3, .L12
  69 0002 DB68     		ldr	r3, [r3, #12]
  70 0004 13F0100F 		tst	r3, #16
  71 0008 27D0     		beq	.L10
 938:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #endif /* FLASH_BANK2_END */
 939:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 940:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     pFlash.ErrorCode |= HAL_FLASH_ERROR_WRP;
  72              		.loc 1 940 0
  73 000a 194A     		ldr	r2, .L12+4
  74 000c D369     		ldr	r3, [r2, #28]
  75 000e 43F00203 		orr	r3, r3, #2
  76 0012 D361     		str	r3, [r2, #28]
  77              	.LVL2:
 941:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #if defined(FLASH_BANK2_END)
 942:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     flags |= FLASH_FLAG_WRPERR | FLASH_FLAG_WRPERR_BANK2;
 943:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #else
 944:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     flags |= FLASH_FLAG_WRPERR;
  78              		.loc 1 944 0
  79 0014 1023     		movs	r3, #16
  80              	.LVL3:
  81              	.L5:
 945:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #endif /* FLASH_BANK2_END */
 946:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 947:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #if defined(FLASH_BANK2_END)
 948:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_PGERR) || __HAL_FLASH_GET_FLAG(FLASH_FLAG_PGERR_BANK2))
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 19


 949:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #else
 950:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_PGERR))
  82              		.loc 1 950 0
  83 0016 154A     		ldr	r2, .L12
  84 0018 D268     		ldr	r2, [r2, #12]
  85 001a 12F0040F 		tst	r2, #4
  86 001e 06D0     		beq	.L6
 951:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #endif /* FLASH_BANK2_END */
 952:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 953:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     pFlash.ErrorCode |= HAL_FLASH_ERROR_PROG;
  87              		.loc 1 953 0
  88 0020 1349     		ldr	r1, .L12+4
  89 0022 CA69     		ldr	r2, [r1, #28]
  90 0024 42F00102 		orr	r2, r2, #1
  91 0028 CA61     		str	r2, [r1, #28]
 954:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #if defined(FLASH_BANK2_END)
 955:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     flags |= FLASH_FLAG_PGERR | FLASH_FLAG_PGERR_BANK2;
 956:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #else
 957:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     flags |= FLASH_FLAG_PGERR;
  92              		.loc 1 957 0
  93 002a 43F00403 		orr	r3, r3, #4
  94              	.LVL4:
  95              	.L6:
 958:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #endif /* FLASH_BANK2_END */
 959:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 960:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_OPTVERR))
  96              		.loc 1 960 0
  97 002e 0F4A     		ldr	r2, .L12
  98 0030 D269     		ldr	r2, [r2, #28]
  99 0032 12F0010F 		tst	r2, #1
 100 0036 09D0     		beq	.L7
 961:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 962:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     pFlash.ErrorCode |= HAL_FLASH_ERROR_OPTV;
 101              		.loc 1 962 0
 102 0038 0D49     		ldr	r1, .L12+4
 103 003a CA69     		ldr	r2, [r1, #28]
 104 003c 42F00402 		orr	r2, r2, #4
 105 0040 CA61     		str	r2, [r1, #28]
 963:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_OPTVERR);
 106              		.loc 1 963 0
 107 0042 0A49     		ldr	r1, .L12
 108 0044 CA69     		ldr	r2, [r1, #28]
 109 0046 22F00102 		bic	r2, r2, #1
 110 004a CA61     		str	r2, [r1, #28]
 111              	.L7:
 964:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 965:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 966:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Clear FLASH error pending bits */
 967:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   __HAL_FLASH_CLEAR_FLAG(flags);
 112              		.loc 1 967 0
 113 004c 40F20112 		movw	r2, #257
 114 0050 9342     		cmp	r3, r2
 115 0052 04D0     		beq	.L11
 116              		.loc 1 967 0 is_stmt 0 discriminator 2
 117 0054 054A     		ldr	r2, .L12
 118 0056 D360     		str	r3, [r2, #12]
 968:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** }  
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 20


 119              		.loc 1 968 0 is_stmt 1 discriminator 2
 120 0058 7047     		bx	lr
 121              	.LVL5:
 122              	.L10:
 932:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   
 123              		.loc 1 932 0
 124 005a 0023     		movs	r3, #0
 125 005c DBE7     		b	.L5
 126              	.LVL6:
 127              	.L11:
 967:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** }  
 128              		.loc 1 967 0 discriminator 1
 129 005e 034A     		ldr	r2, .L12
 130 0060 D369     		ldr	r3, [r2, #28]
 131              	.LVL7:
 132 0062 23F00103 		bic	r3, r3, #1
 133 0066 D361     		str	r3, [r2, #28]
 134 0068 7047     		bx	lr
 135              	.L13:
 136 006a 00BF     		.align	2
 137              	.L12:
 138 006c 00200240 		.word	1073881088
 139 0070 00000000 		.word	pFlash
 140              		.cfi_endproc
 141              	.LFE79:
 143              		.section	.text.HAL_FLASH_Program_IT,"ax",%progbits
 144              		.align	1
 145              		.global	HAL_FLASH_Program_IT
 146              		.syntax unified
 147              		.thumb
 148              		.thumb_func
 149              		.fpu softvfp
 151              	HAL_FLASH_Program_IT:
 152              	.LFB67:
 284:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   HAL_StatusTypeDef status = HAL_OK;
 153              		.loc 1 284 0
 154              		.cfi_startproc
 155              		@ args = 0, pretend = 0, frame = 0
 156              		@ frame_needed = 0, uses_anonymous_args = 0
 157              	.LVL8:
 158 0000 70B5     		push	{r4, r5, r6, lr}
 159              	.LCFI0:
 160              		.cfi_def_cfa_offset 16
 161              		.cfi_offset 4, -16
 162              		.cfi_offset 5, -12
 163              		.cfi_offset 6, -8
 164              		.cfi_offset 14, -4
 165              	.LVL9:
 288:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 166              		.loc 1 288 0
 167 0002 164C     		ldr	r4, .L23
 168 0004 247E     		ldrb	r4, [r4, #24]	@ zero_extendqisi2
 169 0006 012C     		cmp	r4, #1
 170 0008 25D0     		beq	.L19
 288:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 171              		.loc 1 288 0 is_stmt 0 discriminator 2
 172 000a 144C     		ldr	r4, .L23
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 21


 173 000c 0125     		movs	r5, #1
 174 000e 2576     		strb	r5, [r4, #24]
 313:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #endif /* FLASH_BANK2_END */
 175              		.loc 1 313 0 is_stmt 1 discriminator 2
 176 0010 134E     		ldr	r6, .L23+4
 177 0012 3569     		ldr	r5, [r6, #16]
 178 0014 45F4A055 		orr	r5, r5, #5120
 179 0018 3561     		str	r5, [r6, #16]
 316:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   pFlash.Data = Data;
 180              		.loc 1 316 0 discriminator 2
 181 001a A160     		str	r1, [r4, #8]
 317:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 182              		.loc 1 317 0 discriminator 2
 183 001c C4E90423 		strd	r2, [r4, #16]
 319:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 184              		.loc 1 319 0 discriminator 2
 185 0020 0128     		cmp	r0, #1
 186 0022 0CD0     		beq	.L21
 325:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 187              		.loc 1 325 0
 188 0024 0228     		cmp	r0, #2
 189 0026 10D0     		beq	.L22
 333:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Program double word (64-bit : 4*16-bit) at a specified address. */
 190              		.loc 1 333 0
 191 0028 0C48     		ldr	r0, .L23
 192              	.LVL10:
 193 002a 0524     		movs	r4, #5
 194 002c 0470     		strb	r4, [r0]
 335:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 195              		.loc 1 335 0
 196 002e 0424     		movs	r4, #4
 197 0030 4460     		str	r4, [r0, #4]
 198              	.L17:
 199 0032 0846     		mov	r0, r1
 339:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 200              		.loc 1 339 0
 201 0034 91B2     		uxth	r1, r2
 202              	.LVL11:
 203 0036 FFF7FEFF 		bl	FLASH_Program_HalfWord
 204              	.LVL12:
 341:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** }
 205              		.loc 1 341 0
 206 003a 0020     		movs	r0, #0
 207              	.L15:
 342:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 208              		.loc 1 342 0
 209 003c 70BD     		pop	{r4, r5, r6, pc}
 210              	.LVL13:
 211              	.L21:
 321:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Program halfword (16-bit) at a specified address. */
 212              		.loc 1 321 0
 213 003e 2046     		mov	r0, r4
 214              	.LVL14:
 215 0040 0324     		movs	r4, #3
 216 0042 0470     		strb	r4, [r0]
 323:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 217              		.loc 1 323 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 22


 218 0044 0124     		movs	r4, #1
 219 0046 4460     		str	r4, [r0, #4]
 220 0048 F3E7     		b	.L17
 221              	.LVL15:
 222              	.L22:
 327:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Program word (32-bit : 2*16-bit) at a specified address. */
 223              		.loc 1 327 0
 224 004a 0448     		ldr	r0, .L23
 225              	.LVL16:
 226 004c 0424     		movs	r4, #4
 227 004e 0470     		strb	r4, [r0]
 329:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 228              		.loc 1 329 0
 229 0050 0224     		movs	r4, #2
 230 0052 4460     		str	r4, [r0, #4]
 231 0054 EDE7     		b	.L17
 232              	.LVL17:
 233              	.L19:
 288:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 234              		.loc 1 288 0
 235 0056 0220     		movs	r0, #2
 236              	.LVL18:
 237 0058 F0E7     		b	.L15
 238              	.L24:
 239 005a 00BF     		.align	2
 240              	.L23:
 241 005c 00000000 		.word	pFlash
 242 0060 00200240 		.word	1073881088
 243              		.cfi_endproc
 244              	.LFE67:
 246              		.section	.text.HAL_FLASH_EndOfOperationCallback,"ax",%progbits
 247              		.align	1
 248              		.weak	HAL_FLASH_EndOfOperationCallback
 249              		.syntax unified
 250              		.thumb
 251              		.thumb_func
 252              		.fpu softvfp
 254              	HAL_FLASH_EndOfOperationCallback:
 255              	.LFB69:
 623:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Prevent unused argument(s) compilation warning */
 256              		.loc 1 623 0
 257              		.cfi_startproc
 258              		@ args = 0, pretend = 0, frame = 0
 259              		@ frame_needed = 0, uses_anonymous_args = 0
 260              		@ link register save eliminated.
 261              	.LVL19:
 630:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 262              		.loc 1 630 0
 263 0000 7047     		bx	lr
 264              		.cfi_endproc
 265              	.LFE69:
 267              		.section	.text.HAL_FLASH_OperationErrorCallback,"ax",%progbits
 268              		.align	1
 269              		.weak	HAL_FLASH_OperationErrorCallback
 270              		.syntax unified
 271              		.thumb
 272              		.thumb_func
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 23


 273              		.fpu softvfp
 275              	HAL_FLASH_OperationErrorCallback:
 276              	.LFB70:
 641:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Prevent unused argument(s) compilation warning */
 277              		.loc 1 641 0
 278              		.cfi_startproc
 279              		@ args = 0, pretend = 0, frame = 0
 280              		@ frame_needed = 0, uses_anonymous_args = 0
 281              		@ link register save eliminated.
 282              	.LVL20:
 648:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 283              		.loc 1 648 0
 284 0000 7047     		bx	lr
 285              		.cfi_endproc
 286              	.LFE70:
 288              		.section	.text.HAL_FLASH_IRQHandler,"ax",%progbits
 289              		.align	1
 290              		.global	HAL_FLASH_IRQHandler
 291              		.syntax unified
 292              		.thumb
 293              		.thumb_func
 294              		.fpu softvfp
 296              	HAL_FLASH_IRQHandler:
 297              	.LFB68:
 349:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   uint32_t addresstmp = 0U;
 298              		.loc 1 349 0
 299              		.cfi_startproc
 300              		@ args = 0, pretend = 0, frame = 0
 301              		@ frame_needed = 0, uses_anonymous_args = 0
 302 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 303              	.LCFI1:
 304              		.cfi_def_cfa_offset 24
 305              		.cfi_offset 3, -24
 306              		.cfi_offset 4, -20
 307              		.cfi_offset 5, -16
 308              		.cfi_offset 6, -12
 309              		.cfi_offset 7, -8
 310              		.cfi_offset 14, -4
 311              	.LVL21:
 357:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #endif /* FLASH_BANK2_END */
 312              		.loc 1 357 0
 313 0002 524B     		ldr	r3, .L45
 314 0004 DB68     		ldr	r3, [r3, #12]
 315 0006 13F0100F 		tst	r3, #16
 316 000a 04D1     		bne	.L28
 357:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #endif /* FLASH_BANK2_END */
 317              		.loc 1 357 0 is_stmt 0 discriminator 1
 318 000c 4F4B     		ldr	r3, .L45
 319 000e DB68     		ldr	r3, [r3, #12]
 320 0010 13F0040F 		tst	r3, #4
 321 0014 0BD0     		beq	.L29
 322              	.L28:
 361:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     /* Reset address */
 323              		.loc 1 361 0 is_stmt 1
 324 0016 4E4C     		ldr	r4, .L45+4
 325 0018 A568     		ldr	r5, [r4, #8]
 326              	.LVL22:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 24


 363:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   
 327              		.loc 1 363 0
 328 001a 4FF0FF33 		mov	r3, #-1
 329 001e A360     		str	r3, [r4, #8]
 366:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     
 330              		.loc 1 366 0
 331 0020 FFF7FEFF 		bl	FLASH_SetErrorCode
 332              	.LVL23:
 369:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 333              		.loc 1 369 0
 334 0024 2846     		mov	r0, r5
 335 0026 FFF7FEFF 		bl	HAL_FLASH_OperationErrorCallback
 336              	.LVL24:
 372:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 337              		.loc 1 372 0
 338 002a 0023     		movs	r3, #0
 339 002c 2370     		strb	r3, [r4]
 340              	.LVL25:
 341              	.L29:
 382:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 342              		.loc 1 382 0
 343 002e 474B     		ldr	r3, .L45
 344 0030 DB68     		ldr	r3, [r3, #12]
 345 0032 13F0200F 		tst	r3, #32
 346 0036 2BD0     		beq	.L30
 385:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #endif /* FLASH_BANK2_END */
 347              		.loc 1 385 0 discriminator 2
 348 0038 444B     		ldr	r3, .L45
 349 003a 2022     		movs	r2, #32
 350 003c DA60     		str	r2, [r3, #12]
 389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     {
 351              		.loc 1 389 0 discriminator 2
 352 003e 444B     		ldr	r3, .L45+4
 353 0040 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 354 0042 2BB3     		cbz	r3, .L30
 391:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       {
 355              		.loc 1 391 0
 356 0044 424B     		ldr	r3, .L45+4
 357 0046 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 358 0048 DBB2     		uxtb	r3, r3
 359 004a 012B     		cmp	r3, #1
 360 004c 30D0     		beq	.L40
 422:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       {
 361              		.loc 1 422 0
 362 004e 404B     		ldr	r3, .L45+4
 363 0050 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 364 0052 DBB2     		uxtb	r3, r3
 365 0054 022B     		cmp	r3, #2
 366 0056 4AD0     		beq	.L41
 445:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         
 367              		.loc 1 445 0
 368 0058 3D4B     		ldr	r3, .L45+4
 369 005a 5A68     		ldr	r2, [r3, #4]
 370 005c 013A     		subs	r2, r2, #1
 371 005e 5A60     		str	r2, [r3, #4]
 448:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         {
 372              		.loc 1 448 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 25


 373 0060 5B68     		ldr	r3, [r3, #4]
 374 0062 002B     		cmp	r3, #0
 375 0064 4FD1     		bne	.L42
 467:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           {
 376              		.loc 1 467 0
 377 0066 3A4B     		ldr	r3, .L45+4
 378 0068 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 379 006a DBB2     		uxtb	r3, r3
 380 006c 032B     		cmp	r3, #3
 381 006e 62D0     		beq	.L43
 471:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           {
 382              		.loc 1 471 0
 383 0070 374B     		ldr	r3, .L45+4
 384 0072 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 385 0074 DBB2     		uxtb	r3, r3
 386 0076 042B     		cmp	r3, #4
 387 0078 62D0     		beq	.L44
 477:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           }
 388              		.loc 1 477 0
 389 007a 354B     		ldr	r3, .L45+4
 390 007c 9868     		ldr	r0, [r3, #8]
 391 007e 0638     		subs	r0, r0, #6
 392 0080 FFF7FEFF 		bl	HAL_FLASH_EndOfOperationCallback
 393              	.LVL26:
 394              	.L36:
 481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           pFlash.ProcedureOnGoing = FLASH_PROC_NONE;
 395              		.loc 1 481 0
 396 0084 324B     		ldr	r3, .L45+4
 397 0086 4FF0FF32 		mov	r2, #-1
 398 008a 9A60     		str	r2, [r3, #8]
 482:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         }
 399              		.loc 1 482 0
 400 008c 0022     		movs	r2, #0
 401 008e 1A70     		strb	r2, [r3]
 402              	.L30:
 591:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 403              		.loc 1 591 0
 404 0090 2F4B     		ldr	r3, .L45+4
 405 0092 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 406 0094 5BB9     		cbnz	r3, .L27
 602:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 407              		.loc 1 602 0
 408 0096 2D4B     		ldr	r3, .L45
 409 0098 1A69     		ldr	r2, [r3, #16]
 410 009a 22F00702 		bic	r2, r2, #7
 411 009e 1A61     		str	r2, [r3, #16]
 605:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #endif /* FLASH_BANK2_END */
 412              		.loc 1 605 0
 413 00a0 1A69     		ldr	r2, [r3, #16]
 414 00a2 22F4A052 		bic	r2, r2, #5120
 415 00a6 1A61     		str	r2, [r3, #16]
 609:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 416              		.loc 1 609 0
 417 00a8 294B     		ldr	r3, .L45+4
 418 00aa 0022     		movs	r2, #0
 419 00ac 1A76     		strb	r2, [r3, #24]
 420              	.L27:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 26


 611:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 421              		.loc 1 611 0
 422 00ae F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 423              	.L40:
 394:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 424              		.loc 1 394 0
 425 00b0 274B     		ldr	r3, .L45+4
 426 00b2 5A68     		ldr	r2, [r3, #4]
 427 00b4 013A     		subs	r2, r2, #1
 428 00b6 5A60     		str	r2, [r3, #4]
 397:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         {
 429              		.loc 1 397 0
 430 00b8 5B68     		ldr	r3, [r3, #4]
 431 00ba 7BB1     		cbz	r3, .L32
 399:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /*Indicate user which sector has been erased */
 432              		.loc 1 399 0
 433 00bc 244C     		ldr	r4, .L45+4
 434 00be A068     		ldr	r0, [r4, #8]
 435              	.LVL27:
 401:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 436              		.loc 1 401 0
 437 00c0 FFF7FEFF 		bl	HAL_FLASH_EndOfOperationCallback
 438              	.LVL28:
 404:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           pFlash.Address = addresstmp;
 439              		.loc 1 404 0
 440 00c4 A068     		ldr	r0, [r4, #8]
 441 00c6 00F58060 		add	r0, r0, #1024
 442              	.LVL29:
 405:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 443              		.loc 1 405 0
 444 00ca A060     		str	r0, [r4, #8]
 408:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 445              		.loc 1 408 0
 446 00cc 1F4A     		ldr	r2, .L45
 447 00ce 1369     		ldr	r3, [r2, #16]
 448 00d0 23F00203 		bic	r3, r3, #2
 449 00d4 1361     		str	r3, [r2, #16]
 410:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         }
 450              		.loc 1 410 0
 451 00d6 FFF7FEFF 		bl	FLASH_PageErase
 452              	.LVL30:
 453 00da D9E7     		b	.L30
 454              	.L32:
 455              	.LVL31:
 416:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           pFlash.ProcedureOnGoing = FLASH_PROC_NONE;
 456              		.loc 1 416 0
 457 00dc 1C4B     		ldr	r3, .L45+4
 458 00de 4FF0FF30 		mov	r0, #-1
 459 00e2 9860     		str	r0, [r3, #8]
 417:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           /* FLASH EOP interrupt user callback */
 460              		.loc 1 417 0
 461 00e4 0022     		movs	r2, #0
 462 00e6 1A70     		strb	r2, [r3]
 419:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         }
 463              		.loc 1 419 0
 464 00e8 FFF7FEFF 		bl	HAL_FLASH_EndOfOperationCallback
 465              	.LVL32:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 27


 466 00ec D0E7     		b	.L30
 467              	.LVL33:
 468              	.L41:
 425:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 469              		.loc 1 425 0
 470 00ee 174A     		ldr	r2, .L45
 471 00f0 1369     		ldr	r3, [r2, #16]
 472 00f2 23F00403 		bic	r3, r3, #4
 473 00f6 1361     		str	r3, [r2, #16]
 434:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 474              		.loc 1 434 0
 475 00f8 0020     		movs	r0, #0
 476 00fa FFF7FEFF 		bl	HAL_FLASH_EndOfOperationCallback
 477              	.LVL34:
 437:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         }
 478              		.loc 1 437 0
 479 00fe 144B     		ldr	r3, .L45+4
 480 0100 0022     		movs	r2, #0
 481 0102 1A70     		strb	r2, [r3]
 482 0104 C4E7     		b	.L30
 483              	.L42:
 451:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           addresstmp = pFlash.Address;
 484              		.loc 1 451 0
 485 0106 124B     		ldr	r3, .L45+4
 486 0108 9A68     		ldr	r2, [r3, #8]
 487 010a 0232     		adds	r2, r2, #2
 488 010c 9A60     		str	r2, [r3, #8]
 452:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           
 489              		.loc 1 452 0
 490 010e 9868     		ldr	r0, [r3, #8]
 491              	.LVL35:
 455:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           
 492              		.loc 1 455 0
 493 0110 D3E90467 		ldrd	r6, [r3, #16]
 494 0114 340C     		lsrs	r4, r6, #16
 495 0116 44EA0744 		orr	r4, r4, r7, lsl #16
 496 011a 3D0C     		lsrs	r5, r7, #16
 497 011c C3E90445 		strd	r4, [r3, #16]
 458:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 498              		.loc 1 458 0
 499 0120 0A49     		ldr	r1, .L45
 500 0122 0A69     		ldr	r2, [r1, #16]
 501 0124 22F00102 		bic	r2, r2, #1
 502 0128 0A61     		str	r2, [r1, #16]
 461:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****         }
 503              		.loc 1 461 0
 504 012a D3E90423 		ldrd	r2, [r3, #16]
 505 012e 91B2     		uxth	r1, r2
 506 0130 FFF7FEFF 		bl	FLASH_Program_HalfWord
 507              	.LVL36:
 508 0134 ACE7     		b	.L30
 509              	.L43:
 469:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           }
 510              		.loc 1 469 0
 511 0136 064B     		ldr	r3, .L45+4
 512 0138 9868     		ldr	r0, [r3, #8]
 513 013a FFF7FEFF 		bl	HAL_FLASH_EndOfOperationCallback
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 28


 514              	.LVL37:
 515 013e A1E7     		b	.L36
 516              	.L44:
 473:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****           }
 517              		.loc 1 473 0
 518 0140 034B     		ldr	r3, .L45+4
 519 0142 9868     		ldr	r0, [r3, #8]
 520 0144 0238     		subs	r0, r0, #2
 521 0146 FFF7FEFF 		bl	HAL_FLASH_EndOfOperationCallback
 522              	.LVL38:
 523 014a 9BE7     		b	.L36
 524              	.L46:
 525              		.align	2
 526              	.L45:
 527 014c 00200240 		.word	1073881088
 528 0150 00000000 		.word	pFlash
 529              		.cfi_endproc
 530              	.LFE68:
 532              		.section	.text.HAL_FLASH_Unlock,"ax",%progbits
 533              		.align	1
 534              		.global	HAL_FLASH_Unlock
 535              		.syntax unified
 536              		.thumb
 537              		.thumb_func
 538              		.fpu softvfp
 540              	HAL_FLASH_Unlock:
 541              	.LFB71:
 674:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   HAL_StatusTypeDef status = HAL_OK;
 542              		.loc 1 674 0
 543              		.cfi_startproc
 544              		@ args = 0, pretend = 0, frame = 0
 545              		@ frame_needed = 0, uses_anonymous_args = 0
 546              		@ link register save eliminated.
 547              	.LVL39:
 677:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 548              		.loc 1 677 0
 549 0000 0A4B     		ldr	r3, .L52
 550 0002 1B69     		ldr	r3, [r3, #16]
 551 0004 13F0800F 		tst	r3, #128
 552 0008 0DD0     		beq	.L49
 680:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     WRITE_REG(FLASH->KEYR, FLASH_KEY2);
 553              		.loc 1 680 0
 554 000a 084B     		ldr	r3, .L52
 555 000c 084A     		ldr	r2, .L52+4
 556 000e 5A60     		str	r2, [r3, #4]
 681:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 557              		.loc 1 681 0
 558 0010 02F18832 		add	r2, r2, #-2004318072
 559 0014 5A60     		str	r2, [r3, #4]
 684:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     {
 560              		.loc 1 684 0
 561 0016 1B69     		ldr	r3, [r3, #16]
 562 0018 13F0800F 		tst	r3, #128
 563 001c 01D0     		beq	.L51
 686:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     }
 564              		.loc 1 686 0
 565 001e 0120     		movs	r0, #1
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 29


 566              	.LVL40:
 705:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 567              		.loc 1 705 0
 568 0020 7047     		bx	lr
 569              	.LVL41:
 570              	.L51:
 675:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 571              		.loc 1 675 0
 572 0022 0020     		movs	r0, #0
 573 0024 7047     		bx	lr
 574              	.L49:
 575 0026 0020     		movs	r0, #0
 576 0028 7047     		bx	lr
 577              	.L53:
 578 002a 00BF     		.align	2
 579              	.L52:
 580 002c 00200240 		.word	1073881088
 581 0030 23016745 		.word	1164378403
 582              		.cfi_endproc
 583              	.LFE71:
 585              		.section	.text.HAL_FLASH_Lock,"ax",%progbits
 586              		.align	1
 587              		.global	HAL_FLASH_Lock
 588              		.syntax unified
 589              		.thumb
 590              		.thumb_func
 591              		.fpu softvfp
 593              	HAL_FLASH_Lock:
 594              	.LFB72:
 712:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Set the LOCK Bit to lock the FLASH Registers access */
 595              		.loc 1 712 0
 596              		.cfi_startproc
 597              		@ args = 0, pretend = 0, frame = 0
 598              		@ frame_needed = 0, uses_anonymous_args = 0
 599              		@ link register save eliminated.
 714:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   
 600              		.loc 1 714 0
 601 0000 034A     		ldr	r2, .L55
 602 0002 1369     		ldr	r3, [r2, #16]
 603 0004 43F08003 		orr	r3, r3, #128
 604 0008 1361     		str	r3, [r2, #16]
 722:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 605              		.loc 1 722 0
 606 000a 0020     		movs	r0, #0
 607 000c 7047     		bx	lr
 608              	.L56:
 609 000e 00BF     		.align	2
 610              	.L55:
 611 0010 00200240 		.word	1073881088
 612              		.cfi_endproc
 613              	.LFE72:
 615              		.section	.text.HAL_FLASH_OB_Unlock,"ax",%progbits
 616              		.align	1
 617              		.global	HAL_FLASH_OB_Unlock
 618              		.syntax unified
 619              		.thumb
 620              		.thumb_func
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 30


 621              		.fpu softvfp
 623              	HAL_FLASH_OB_Unlock:
 624              	.LFB73:
 729:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   if (HAL_IS_BIT_CLR(FLASH->CR, FLASH_CR_OPTWRE))
 625              		.loc 1 729 0
 626              		.cfi_startproc
 627              		@ args = 0, pretend = 0, frame = 0
 628              		@ frame_needed = 0, uses_anonymous_args = 0
 629              		@ link register save eliminated.
 730:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 630              		.loc 1 730 0
 631 0000 074B     		ldr	r3, .L60
 632 0002 1B69     		ldr	r3, [r3, #16]
 633 0004 13F4007F 		tst	r3, #512
 634 0008 07D1     		bne	.L59
 733:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     WRITE_REG(FLASH->OPTKEYR, FLASH_OPTKEY2);
 635              		.loc 1 733 0
 636 000a 054B     		ldr	r3, .L60
 637 000c 054A     		ldr	r2, .L60+4
 638 000e 9A60     		str	r2, [r3, #8]
 734:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 639              		.loc 1 734 0
 640 0010 02F18832 		add	r2, r2, #-2004318072
 641 0014 9A60     		str	r2, [r3, #8]
 741:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** }
 642              		.loc 1 741 0
 643 0016 0020     		movs	r0, #0
 644 0018 7047     		bx	lr
 645              	.L59:
 738:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }  
 646              		.loc 1 738 0
 647 001a 0120     		movs	r0, #1
 742:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 648              		.loc 1 742 0
 649 001c 7047     		bx	lr
 650              	.L61:
 651 001e 00BF     		.align	2
 652              	.L60:
 653 0020 00200240 		.word	1073881088
 654 0024 23016745 		.word	1164378403
 655              		.cfi_endproc
 656              	.LFE73:
 658              		.section	.text.HAL_FLASH_OB_Lock,"ax",%progbits
 659              		.align	1
 660              		.global	HAL_FLASH_OB_Lock
 661              		.syntax unified
 662              		.thumb
 663              		.thumb_func
 664              		.fpu softvfp
 666              	HAL_FLASH_OB_Lock:
 667              	.LFB74:
 749:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Clear the OPTWRE Bit to lock the FLASH Option Byte Registers access */
 668              		.loc 1 749 0
 669              		.cfi_startproc
 670              		@ args = 0, pretend = 0, frame = 0
 671              		@ frame_needed = 0, uses_anonymous_args = 0
 672              		@ link register save eliminated.
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 31


 751:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   
 673              		.loc 1 751 0
 674 0000 034A     		ldr	r2, .L63
 675 0002 1369     		ldr	r3, [r2, #16]
 676 0004 23F40073 		bic	r3, r3, #512
 677 0008 1361     		str	r3, [r2, #16]
 754:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   
 678              		.loc 1 754 0
 679 000a 0020     		movs	r0, #0
 680 000c 7047     		bx	lr
 681              	.L64:
 682 000e 00BF     		.align	2
 683              	.L63:
 684 0010 00200240 		.word	1073881088
 685              		.cfi_endproc
 686              	.LFE74:
 688              		.section	.text.HAL_FLASH_OB_Launch,"ax",%progbits
 689              		.align	1
 690              		.global	HAL_FLASH_OB_Launch
 691              		.syntax unified
 692              		.thumb
 693              		.thumb_func
 694              		.fpu softvfp
 696              	HAL_FLASH_OB_Launch:
 697              	.LFB75:
 762:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Initiates a system reset request to launch the option byte loading */
 698              		.loc 1 762 0
 699              		.cfi_startproc
 700              		@ args = 0, pretend = 0, frame = 0
 701              		@ frame_needed = 0, uses_anonymous_args = 0
 702 0000 08B5     		push	{r3, lr}
 703              	.LCFI2:
 704              		.cfi_def_cfa_offset 8
 705              		.cfi_offset 3, -8
 706              		.cfi_offset 14, -4
 764:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** }
 707              		.loc 1 764 0
 708 0002 FFF7FEFF 		bl	HAL_NVIC_SystemReset
 709              	.LVL42:
 765:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 710              		.loc 1 765 0
 711 0006 08BD     		pop	{r3, pc}
 712              		.cfi_endproc
 713              	.LFE75:
 715              		.section	.text.HAL_FLASH_GetError,"ax",%progbits
 716              		.align	1
 717              		.global	HAL_FLASH_GetError
 718              		.syntax unified
 719              		.thumb
 720              		.thumb_func
 721              		.fpu softvfp
 723              	HAL_FLASH_GetError:
 724              	.LFB76:
 791:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****    return pFlash.ErrorCode;
 725              		.loc 1 791 0
 726              		.cfi_startproc
 727              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 32


 728              		@ frame_needed = 0, uses_anonymous_args = 0
 729              		@ link register save eliminated.
 792:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** }
 730              		.loc 1 792 0
 731 0000 014B     		ldr	r3, .L68
 732 0002 D869     		ldr	r0, [r3, #28]
 793:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 733              		.loc 1 793 0
 734 0004 7047     		bx	lr
 735              	.L69:
 736 0006 00BF     		.align	2
 737              	.L68:
 738 0008 00000000 		.word	pFlash
 739              		.cfi_endproc
 740              	.LFE76:
 742              		.section	.text.FLASH_WaitForLastOperation,"ax",%progbits
 743              		.align	1
 744              		.global	FLASH_WaitForLastOperation
 745              		.syntax unified
 746              		.thumb
 747              		.thumb_func
 748              		.fpu softvfp
 750              	FLASH_WaitForLastOperation:
 751              	.LFB78:
 843:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   /* Wait for the FLASH operation to complete by polling on BUSY flag to be reset.
 752              		.loc 1 843 0
 753              		.cfi_startproc
 754              		@ args = 0, pretend = 0, frame = 0
 755              		@ frame_needed = 0, uses_anonymous_args = 0
 756              	.LVL43:
 757 0000 38B5     		push	{r3, r4, r5, lr}
 758              	.LCFI3:
 759              		.cfi_def_cfa_offset 16
 760              		.cfi_offset 3, -16
 761              		.cfi_offset 4, -12
 762              		.cfi_offset 5, -8
 763              		.cfi_offset 14, -4
 764 0002 0446     		mov	r4, r0
 848:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****      
 765              		.loc 1 848 0
 766 0004 FFF7FEFF 		bl	HAL_GetTick
 767              	.LVL44:
 768 0008 0546     		mov	r5, r0
 769              	.LVL45:
 770              	.L72:
 850:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   { 
 771              		.loc 1 850 0
 772 000a 174B     		ldr	r3, .L82
 773 000c DB68     		ldr	r3, [r3, #12]
 774 000e 13F0010F 		tst	r3, #1
 775 0012 0AD0     		beq	.L81
 852:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     {
 776              		.loc 1 852 0
 777 0014 B4F1FF3F 		cmp	r4, #-1
 778 0018 F7D0     		beq	.L72
 854:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       {
 779              		.loc 1 854 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 33


 780 001a 0CB3     		cbz	r4, .L77
 854:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       {
 781              		.loc 1 854 0 is_stmt 0 discriminator 1
 782 001c FFF7FEFF 		bl	HAL_GetTick
 783              	.LVL46:
 784 0020 401B     		subs	r0, r0, r5
 785 0022 A042     		cmp	r0, r4
 786 0024 F1D9     		bls	.L72
 856:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       }
 787              		.loc 1 856 0 is_stmt 1
 788 0026 0320     		movs	r0, #3
 789 0028 19E0     		b	.L73
 790              	.L81:
 862:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 791              		.loc 1 862 0
 792 002a 0F4B     		ldr	r3, .L82
 793 002c DB68     		ldr	r3, [r3, #12]
 794 002e 13F0200F 		tst	r3, #32
 795 0032 02D0     		beq	.L75
 865:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 796              		.loc 1 865 0 discriminator 2
 797 0034 0C4B     		ldr	r3, .L82
 798 0036 2022     		movs	r2, #32
 799 0038 DA60     		str	r2, [r3, #12]
 800              	.L75:
 868:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****      __HAL_FLASH_GET_FLAG(FLASH_FLAG_OPTVERR) || 
 801              		.loc 1 868 0
 802 003a 0B4B     		ldr	r3, .L82
 803 003c DB68     		ldr	r3, [r3, #12]
 804 003e 13F0100F 		tst	r3, #16
 805 0042 09D1     		bne	.L76
 869:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****      __HAL_FLASH_GET_FLAG(FLASH_FLAG_PGERR))
 806              		.loc 1 869 0 discriminator 1
 807 0044 084B     		ldr	r3, .L82
 808 0046 DB69     		ldr	r3, [r3, #28]
 868:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****      __HAL_FLASH_GET_FLAG(FLASH_FLAG_OPTVERR) || 
 809              		.loc 1 868 0 discriminator 1
 810 0048 13F0010F 		tst	r3, #1
 811 004c 04D1     		bne	.L76
 870:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 812              		.loc 1 870 0
 813 004e 064B     		ldr	r3, .L82
 814 0050 DB68     		ldr	r3, [r3, #12]
 869:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****      __HAL_FLASH_GET_FLAG(FLASH_FLAG_PGERR))
 815              		.loc 1 869 0
 816 0052 13F0040F 		tst	r3, #4
 817 0056 05D0     		beq	.L79
 818              	.L76:
 873:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     return HAL_ERROR;
 819              		.loc 1 873 0
 820 0058 FFF7FEFF 		bl	FLASH_SetErrorCode
 821              	.LVL47:
 874:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   }
 822              		.loc 1 874 0
 823 005c 0120     		movs	r0, #1
 824              	.L73:
 879:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 34


 825              		.loc 1 879 0
 826 005e 38BD     		pop	{r3, r4, r5, pc}
 827              	.LVL48:
 828              	.L77:
 856:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       }
 829              		.loc 1 856 0
 830 0060 0320     		movs	r0, #3
 831 0062 FCE7     		b	.L73
 832              	.L79:
 878:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** }
 833              		.loc 1 878 0
 834 0064 0020     		movs	r0, #0
 835 0066 FAE7     		b	.L73
 836              	.L83:
 837              		.align	2
 838              	.L82:
 839 0068 00200240 		.word	1073881088
 840              		.cfi_endproc
 841              	.LFE78:
 843              		.section	.text.HAL_FLASH_Program,"ax",%progbits
 844              		.align	1
 845              		.global	HAL_FLASH_Program
 846              		.syntax unified
 847              		.thumb
 848              		.thumb_func
 849              		.fpu softvfp
 851              	HAL_FLASH_Program:
 852              	.LFB66:
 185:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   HAL_StatusTypeDef status = HAL_ERROR;
 853              		.loc 1 185 0
 854              		.cfi_startproc
 855              		@ args = 0, pretend = 0, frame = 0
 856              		@ frame_needed = 0, uses_anonymous_args = 0
 857              	.LVL49:
 858 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 859              	.LCFI4:
 860              		.cfi_def_cfa_offset 32
 861              		.cfi_offset 3, -32
 862              		.cfi_offset 4, -28
 863              		.cfi_offset 5, -24
 864              		.cfi_offset 6, -20
 865              		.cfi_offset 7, -16
 866              		.cfi_offset 8, -12
 867              		.cfi_offset 9, -8
 868              		.cfi_offset 14, -4
 869              	.LVL50:
 191:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 870              		.loc 1 191 0
 871 0004 234C     		ldr	r4, .L95
 872 0006 247E     		ldrb	r4, [r4, #24]	@ zero_extendqisi2
 873 0008 012C     		cmp	r4, #1
 874 000a 41D0     		beq	.L90
 875 000c 1E46     		mov	r6, r3
 876 000e 9046     		mov	r8, r2
 877 0010 0F46     		mov	r7, r1
 878 0012 0446     		mov	r4, r0
 191:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 35


 879              		.loc 1 191 0 is_stmt 0 discriminator 2
 880 0014 1F4B     		ldr	r3, .L95
 881 0016 0122     		movs	r2, #1
 882              	.LVL51:
 883 0018 1A76     		strb	r2, [r3, #24]
 202:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #if defined(FLASH_BANK2_END)
 884              		.loc 1 202 0 is_stmt 1 discriminator 2
 885 001a 4CF25030 		movw	r0, #50000
 886              	.LVL52:
 887 001e FFF7FEFF 		bl	FLASH_WaitForLastOperation
 888              	.LVL53:
 212:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****   {
 889              		.loc 1 212 0 discriminator 2
 890 0022 0346     		mov	r3, r0
 891 0024 70BB     		cbnz	r0, .L86
 214:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     {
 892              		.loc 1 214 0
 893 0026 012C     		cmp	r4, #1
 894 0028 29D0     		beq	.L91
 219:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     {
 895              		.loc 1 219 0
 896 002a 022C     		cmp	r4, #2
 897 002c 24D0     		beq	.L94
 227:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     }
 898              		.loc 1 227 0
 899 002e 4FF00409 		mov	r9, #4
 900              	.L87:
 901              	.LVL54:
 230:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     {
 902              		.loc 1 230 0
 903 0032 0024     		movs	r4, #0
 904              	.LVL55:
 905              	.L88:
 230:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     {
 906              		.loc 1 230 0 is_stmt 0 discriminator 1
 907 0034 4C45     		cmp	r4, r9
 908 0036 25D2     		bcs	.L86
 232:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 909              		.loc 1 232 0 is_stmt 1
 910 0038 2101     		lsls	r1, r4, #4
 911 003a C1F12002 		rsb	r2, r1, #32
 912 003e A1F12003 		sub	r3, r1, #32
 913              	.LVL56:
 914 0042 28FA01F1 		lsr	r1, r8, r1
 915 0046 06FA02F2 		lsl	r2, r6, r2
 916 004a 1143     		orrs	r1, r1, r2
 917 004c 26FA03F3 		lsr	r3, r6, r3
 918 0050 1943     		orrs	r1, r1, r3
 919 0052 89B2     		uxth	r1, r1
 920 0054 07EB4400 		add	r0, r7, r4, lsl #1
 921 0058 FFF7FEFF 		bl	FLASH_Program_HalfWord
 922              	.LVL57:
 239:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     
 923              		.loc 1 239 0
 924 005c 4CF25030 		movw	r0, #50000
 925 0060 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 926              	.LVL58:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 36


 242:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** #if defined(FLASH_BANK2_END)
 927              		.loc 1 242 0
 928 0064 0C4B     		ldr	r3, .L95+4
 929 0066 1D69     		ldr	r5, [r3, #16]
 930 0068 25F00105 		bic	r5, r5, #1
 931 006c 1D61     		str	r5, [r3, #16]
 255:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****       {
 932              		.loc 1 255 0
 933 006e 0346     		mov	r3, r0
 934 0070 40B9     		cbnz	r0, .L86
 230:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     {
 935              		.loc 1 230 0 discriminator 2
 936 0072 0134     		adds	r4, r4, #1
 937              	.LVL59:
 938 0074 E4B2     		uxtb	r4, r4
 939              	.LVL60:
 940 0076 DDE7     		b	.L88
 941              	.LVL61:
 942              	.L94:
 222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     }
 943              		.loc 1 222 0
 944 0078 4FF00209 		mov	r9, #2
 945 007c D9E7     		b	.L87
 946              	.L91:
 217:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c ****     }
 947              		.loc 1 217 0
 948 007e 4FF00109 		mov	r9, #1
 949 0082 D6E7     		b	.L87
 950              	.LVL62:
 951              	.L86:
 263:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 952              		.loc 1 263 0
 953 0084 034A     		ldr	r2, .L95
 954 0086 0021     		movs	r1, #0
 955 0088 1176     		strb	r1, [r2, #24]
 956              	.LVL63:
 957              	.L85:
 266:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 958              		.loc 1 266 0
 959 008a 1846     		mov	r0, r3
 960 008c BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 961              	.LVL64:
 962              	.L90:
 191:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c **** 
 963              		.loc 1 191 0
 964 0090 0223     		movs	r3, #2
 965 0092 FAE7     		b	.L85
 966              	.L96:
 967              		.align	2
 968              	.L95:
 969 0094 00000000 		.word	pFlash
 970 0098 00200240 		.word	1073881088
 971              		.cfi_endproc
 972              	.LFE66:
 974              		.comm	pFlash,32,8
 975              		.text
 976              	.Letext0:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 37


 977              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 978              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 979              		.file 4 "Drivers/CMSIS/Include/core_cm3.h"
 980              		.file 5 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/system_stm32f1xx.h"
 981              		.file 6 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
 982              		.file 7 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 983              		.file 8 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 984              		.file 9 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\lib\\gcc\\arm-none-eab
 985              		.file 10 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\includ
 986              		.file 11 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"
 987              		.file 12 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"
 988              		.file 13 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash.h"
 989              		.file 14 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"
 990              		.file 15 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_cortex.h"
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s 			page 38


DEFINED SYMBOLS
                            *ABS*:00000000 stm32f1xx_hal_flash.c
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:16     .text.FLASH_Program_HalfWord:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:22     .text.FLASH_Program_HalfWord:00000000 FLASH_Program_HalfWord
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:47     .text.FLASH_Program_HalfWord:00000014 $d
                            *COM*:00000020 pFlash
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:53     .text.FLASH_SetErrorCode:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:59     .text.FLASH_SetErrorCode:00000000 FLASH_SetErrorCode
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:138    .text.FLASH_SetErrorCode:0000006c $d
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:144    .text.HAL_FLASH_Program_IT:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:151    .text.HAL_FLASH_Program_IT:00000000 HAL_FLASH_Program_IT
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:241    .text.HAL_FLASH_Program_IT:0000005c $d
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:247    .text.HAL_FLASH_EndOfOperationCallback:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:254    .text.HAL_FLASH_EndOfOperationCallback:00000000 HAL_FLASH_EndOfOperationCallback
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:268    .text.HAL_FLASH_OperationErrorCallback:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:275    .text.HAL_FLASH_OperationErrorCallback:00000000 HAL_FLASH_OperationErrorCallback
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:289    .text.HAL_FLASH_IRQHandler:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:296    .text.HAL_FLASH_IRQHandler:00000000 HAL_FLASH_IRQHandler
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:527    .text.HAL_FLASH_IRQHandler:0000014c $d
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:533    .text.HAL_FLASH_Unlock:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:540    .text.HAL_FLASH_Unlock:00000000 HAL_FLASH_Unlock
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:580    .text.HAL_FLASH_Unlock:0000002c $d
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:586    .text.HAL_FLASH_Lock:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:593    .text.HAL_FLASH_Lock:00000000 HAL_FLASH_Lock
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:611    .text.HAL_FLASH_Lock:00000010 $d
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:616    .text.HAL_FLASH_OB_Unlock:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:623    .text.HAL_FLASH_OB_Unlock:00000000 HAL_FLASH_OB_Unlock
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:653    .text.HAL_FLASH_OB_Unlock:00000020 $d
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:659    .text.HAL_FLASH_OB_Lock:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:666    .text.HAL_FLASH_OB_Lock:00000000 HAL_FLASH_OB_Lock
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:684    .text.HAL_FLASH_OB_Lock:00000010 $d
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:689    .text.HAL_FLASH_OB_Launch:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:696    .text.HAL_FLASH_OB_Launch:00000000 HAL_FLASH_OB_Launch
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:716    .text.HAL_FLASH_GetError:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:723    .text.HAL_FLASH_GetError:00000000 HAL_FLASH_GetError
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:738    .text.HAL_FLASH_GetError:00000008 $d
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:743    .text.FLASH_WaitForLastOperation:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:750    .text.FLASH_WaitForLastOperation:00000000 FLASH_WaitForLastOperation
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:839    .text.FLASH_WaitForLastOperation:00000068 $d
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:844    .text.HAL_FLASH_Program:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:851    .text.HAL_FLASH_Program:00000000 HAL_FLASH_Program
C:\Users\crist\AppData\Local\Temp\ccCcmGlh.s:969    .text.HAL_FLASH_Program:00000094 $d

UNDEFINED SYMBOLS
FLASH_PageErase
HAL_NVIC_SystemReset
HAL_GetTick
