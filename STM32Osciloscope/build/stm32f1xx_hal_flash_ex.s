ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 1


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
  11              		.file	"stm32f1xx_hal_flash_ex.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.FLASH_MassErase,"ax",%progbits
  16              		.align	1
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu softvfp
  22              	FLASH_MassErase:
  23              	.LFB72:
  24              		.file 1 "Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c"
   1:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
   2:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   ******************************************************************************
   3:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @file    stm32f1xx_hal_flash_ex.c
   4:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @author  MCD Application Team
   5:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @brief   Extended FLASH HAL module driver.
   6:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *    
   7:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *          This file provides firmware functions to manage the following 
   8:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *          functionalities of the FLASH peripheral:
   9:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *           + Extended Initialization/de-initialization functions
  10:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *           + Extended I/O operation functions
  11:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *           + Extended Peripheral Control functions 
  12:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         
  13:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   @verbatim
  14:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   ==============================================================================
  15:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****                ##### Flash peripheral extended features  #####
  16:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   ==============================================================================
  17:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****            
  18:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****                       ##### How to use this driver #####
  19:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   ==============================================================================
  20:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   [..] This driver provides functions to configure and program the FLASH memory 
  21:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****        of all STM32F1xxx devices. It includes
  22:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****        
  23:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         (++) Set/Reset the write protection
  24:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         (++) Program the user Option Bytes
  25:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         (++) Get the Read protection Level
  26:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
  27:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   @endverbatim
  28:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   ******************************************************************************
  29:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @attention
  30:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *
  31:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
  32:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *
  33:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * Redistribution and use in source and binary forms, with or without modification,
  34:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * are permitted provided that the following conditions are met:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 2


  35:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  36:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *      this list of conditions and the following disclaimer.
  37:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  38:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *      this list of conditions and the following disclaimer in the documentation
  39:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *      and/or other materials provided with the distribution.
  40:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  41:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *      may be used to endorse or promote products derived from this software
  42:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *      without specific prior written permission.
  43:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *
  44:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  45:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  46:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  47:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  48:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  49:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  50:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  51:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  52:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  53:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  54:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *
  55:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   ******************************************************************************  
  56:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
  57:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
  58:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /* Includes ------------------------------------------------------------------*/
  59:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #include "stm32f1xx_hal.h"
  60:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
  61:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /** @addtogroup STM32F1xx_HAL_Driver
  62:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @{
  63:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
  64:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #ifdef HAL_FLASH_MODULE_ENABLED
  65:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
  66:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /** @addtogroup FLASH
  67:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @{
  68:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
  69:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /** @addtogroup FLASH_Private_Variables
  70:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****  * @{
  71:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****  */
  72:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /* Variables used for Erase pages under interruption*/
  73:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** extern FLASH_ProcessTypeDef pFlash;
  74:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
  75:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @}
  76:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
  77:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
  78:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
  79:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @}
  80:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
  81:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
  82:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /** @defgroup FLASHEx FLASHEx
  83:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @brief FLASH HAL Extension module driver
  84:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @{
  85:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
  86:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
  87:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /* Private typedef -----------------------------------------------------------*/
  88:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /* Private define ------------------------------------------------------------*/
  89:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /** @defgroup FLASHEx_Private_Constants FLASHEx Private Constants
  90:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****  * @{
  91:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****  */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 3


  92:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #define FLASH_POSITION_IWDGSW_BIT        FLASH_OBR_IWDG_SW_Pos
  93:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #define FLASH_POSITION_OB_USERDATA0_BIT  FLASH_OBR_DATA0_Pos
  94:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #define FLASH_POSITION_OB_USERDATA1_BIT  FLASH_OBR_DATA1_Pos
  95:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
  96:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @}
  97:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
  98:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
  99:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /* Private macro -------------------------------------------------------------*/
 100:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /** @defgroup FLASHEx_Private_Macros FLASHEx Private Macros
 101:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @{
 102:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
 103:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
 104:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @}
 105:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */ 
 106:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 107:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /* Private variables ---------------------------------------------------------*/
 108:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /* Private function prototypes -----------------------------------------------*/
 109:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /** @defgroup FLASHEx_Private_Functions FLASHEx Private Functions
 110:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****  * @{
 111:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****  */
 112:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /* Erase operations */
 113:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** static void              FLASH_MassErase(uint32_t Banks);
 114:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** void    FLASH_PageErase(uint32_t PageAddress);
 115:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 116:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /* Option bytes control */
 117:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** static HAL_StatusTypeDef FLASH_OB_EnableWRP(uint32_t WriteProtectPage);
 118:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** static HAL_StatusTypeDef FLASH_OB_DisableWRP(uint32_t WriteProtectPage);
 119:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** static HAL_StatusTypeDef FLASH_OB_RDP_LevelConfig(uint8_t ReadProtectLevel);
 120:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** static HAL_StatusTypeDef FLASH_OB_UserConfig(uint8_t UserConfig);
 121:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** static HAL_StatusTypeDef FLASH_OB_ProgramData(uint32_t Address, uint8_t Data);
 122:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** static uint32_t          FLASH_OB_GetWRP(void);
 123:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** static uint32_t          FLASH_OB_GetRDP(void);
 124:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** static uint8_t           FLASH_OB_GetUser(void);
 125:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 126:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
 127:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @}
 128:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
 129:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 130:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /* Exported functions ---------------------------------------------------------*/
 131:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /** @defgroup FLASHEx_Exported_Functions FLASHEx Exported Functions
 132:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @{
 133:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
 134:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
 135:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /** @defgroup FLASHEx_Exported_Functions_Group1 FLASHEx Memory Erasing functions
 136:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****  *  @brief   FLASH Memory Erasing functions
 137:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *
 138:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** @verbatim   
 139:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   ==============================================================================
 140:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****                 ##### FLASH Erasing Programming functions ##### 
 141:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   ==============================================================================
 142:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 143:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     [..] The FLASH Memory Erasing functions, includes the following functions:
 144:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     (+) @ref HAL_FLASHEx_Erase: return only when erase has been done
 145:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     (+) @ref HAL_FLASHEx_Erase_IT: end of erase is done when @ref HAL_FLASH_EndOfOperationCallback 
 146:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         is called with parameter 0xFFFFFFFF
 147:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 148:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     [..] Any operation of erase should follow these steps:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 4


 149:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     (#) Call the @ref HAL_FLASH_Unlock() function to enable the flash control register and 
 150:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         program memory access.
 151:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     (#) Call the desired function to erase page.
 152:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     (#) Call the @ref HAL_FLASH_Lock() to disable the flash program memory access 
 153:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****        (recommended to protect the FLASH memory against possible unwanted operation).
 154:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 155:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** @endverbatim
 156:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @{
 157:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
 158:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
 159:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 160:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
 161:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @brief  Perform a mass erase or erase the specified FLASH memory pages
 162:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @note   To correctly run this function, the @ref HAL_FLASH_Unlock() function
 163:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         must be called before.
 164:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         Call the @ref HAL_FLASH_Lock() to disable the flash memory access 
 165:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         (recommended to protect the FLASH memory against possible unwanted operation)
 166:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @param[in]  pEraseInit pointer to an FLASH_EraseInitTypeDef structure that
 167:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         contains the configuration information for the erasing.
 168:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *
 169:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @param[out]  PageError pointer to variable  that
 170:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         contains the configuration information on faulty page in case of error
 171:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         (0xFFFFFFFF means that all the pages have been correctly erased)
 172:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *
 173:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @retval HAL_StatusTypeDef HAL Status
 174:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
 175:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** HAL_StatusTypeDef HAL_FLASHEx_Erase(FLASH_EraseInitTypeDef *pEraseInit, uint32_t *PageError)
 176:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** {
 177:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_ERROR;
 178:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   uint32_t address = 0U;
 179:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 180:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Process Locked */
 181:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   __HAL_LOCK(&pFlash);
 182:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 183:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Check the parameters */
 184:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   assert_param(IS_FLASH_TYPEERASE(pEraseInit->TypeErase));
 185:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 186:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   if (pEraseInit->TypeErase == FLASH_TYPEERASE_MASSERASE)
 187:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
 188:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(FLASH_BANK2_END)
 189:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     if (pEraseInit->Banks == FLASH_BANK_BOTH)
 190:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     {
 191:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       /* Mass Erase requested for Bank1 and Bank2 */
 192:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       /* Wait for last operation to be completed */
 193:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       if ((FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE) == HAL_OK) && \
 194:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           (FLASH_WaitForLastOperationBank2((uint32_t)FLASH_TIMEOUT_VALUE) == HAL_OK))
 195:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 196:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         /*Mass erase to be done*/
 197:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         FLASH_MassErase(FLASH_BANK_BOTH);
 198:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 199:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         /* Wait for last operation to be completed */
 200:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         if ((FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE) == HAL_OK) && \
 201:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****             (FLASH_WaitForLastOperationBank2((uint32_t)FLASH_TIMEOUT_VALUE) == HAL_OK))
 202:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         {
 203:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           status = HAL_OK;
 204:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         }
 205:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 5


 206:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         /* If the erase operation is completed, disable the MER Bit */
 207:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         CLEAR_BIT(FLASH->CR, FLASH_CR_MER);
 208:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         CLEAR_BIT(FLASH->CR2, FLASH_CR2_MER);
 209:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       }
 210:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     }
 211:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     else if (pEraseInit->Banks == FLASH_BANK_2)
 212:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     {
 213:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       /* Mass Erase requested for Bank2 */
 214:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       /* Wait for last operation to be completed */
 215:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       if (FLASH_WaitForLastOperationBank2((uint32_t)FLASH_TIMEOUT_VALUE) == HAL_OK)
 216:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 217:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         /*Mass erase to be done*/
 218:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         FLASH_MassErase(FLASH_BANK_2);
 219:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 220:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         /* Wait for last operation to be completed */
 221:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         status = FLASH_WaitForLastOperationBank2((uint32_t)FLASH_TIMEOUT_VALUE);
 222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 223:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         /* If the erase operation is completed, disable the MER Bit */
 224:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         CLEAR_BIT(FLASH->CR2, FLASH_CR2_MER);
 225:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       }
 226:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     }
 227:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     else 
 228:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* FLASH_BANK2_END */
 229:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     {
 230:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       /* Mass Erase requested for Bank1 */
 231:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       /* Wait for last operation to be completed */
 232:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       if (FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE) == HAL_OK)
 233:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 234:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         /*Mass erase to be done*/
 235:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         FLASH_MassErase(FLASH_BANK_1);
 236:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 237:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         /* Wait for last operation to be completed */
 238:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 239:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 240:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         /* If the erase operation is completed, disable the MER Bit */
 241:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         CLEAR_BIT(FLASH->CR, FLASH_CR_MER);
 242:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       }
 243:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     }
 244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 245:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   else
 246:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
 247:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* Page Erase is requested */
 248:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* Check the parameters */
 249:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     assert_param(IS_FLASH_PROGRAM_ADDRESS(pEraseInit->PageAddress));
 250:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     assert_param(IS_FLASH_NB_PAGES(pEraseInit->PageAddress, pEraseInit->NbPages));
 251:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     
 252:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(FLASH_BANK2_END)
 253:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* Page Erase requested on address located on bank2 */
 254:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     if(pEraseInit->PageAddress > FLASH_BANK1_END)
 255:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     {   
 256:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       /* Wait for last operation to be completed */
 257:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       if (FLASH_WaitForLastOperationBank2((uint32_t)FLASH_TIMEOUT_VALUE) == HAL_OK)
 258:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 259:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         /*Initialization of PageError variable*/
 260:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         *PageError = 0xFFFFFFFFU;
 261:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 262:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         /* Erase by page by page to be done*/
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 6


 263:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         for(address = pEraseInit->PageAddress;
 264:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****             address < (pEraseInit->PageAddress + (pEraseInit->NbPages)*FLASH_PAGE_SIZE);
 265:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****             address += FLASH_PAGE_SIZE)
 266:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         {
 267:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           FLASH_PageErase(address);
 268:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           
 269:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           /* Wait for last operation to be completed */
 270:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           status = FLASH_WaitForLastOperationBank2((uint32_t)FLASH_TIMEOUT_VALUE);
 271:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           
 272:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           /* If the erase operation is completed, disable the PER Bit */
 273:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           CLEAR_BIT(FLASH->CR2, FLASH_CR2_PER);
 274:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           
 275:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           if (status != HAL_OK)
 276:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           {
 277:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****             /* In case of error, stop erase procedure and return the faulty address */
 278:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****             *PageError = address;
 279:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****             break;
 280:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           }
 281:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         }
 282:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       }
 283:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     }
 284:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     else
 285:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* FLASH_BANK2_END */
 286:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****    {
 287:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       /* Page Erase requested on address located on bank1 */
 288:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       /* Wait for last operation to be completed */
 289:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       if (FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE) == HAL_OK)
 290:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 291:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         /*Initialization of PageError variable*/
 292:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         *PageError = 0xFFFFFFFFU;
 293:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 294:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         /* Erase page by page to be done*/
 295:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         for(address = pEraseInit->PageAddress;
 296:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****             address < ((pEraseInit->NbPages * FLASH_PAGE_SIZE) + pEraseInit->PageAddress);
 297:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****             address += FLASH_PAGE_SIZE)
 298:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         {
 299:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           FLASH_PageErase(address);
 300:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           
 301:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           /* Wait for last operation to be completed */
 302:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 303:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           
 304:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           /* If the erase operation is completed, disable the PER Bit */
 305:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           CLEAR_BIT(FLASH->CR, FLASH_CR_PER);
 306:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           
 307:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           if (status != HAL_OK)
 308:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           {
 309:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****             /* In case of error, stop erase procedure and return the faulty address */
 310:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****             *PageError = address;
 311:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****             break;
 312:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           }
 313:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         }
 314:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       }
 315:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     }
 316:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 317:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 318:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Process Unlocked */
 319:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   __HAL_UNLOCK(&pFlash);
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 7


 320:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 321:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   return status;
 322:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** }
 323:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 324:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
 325:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @brief  Perform a mass erase or erase the specified FLASH memory pages with interrupt enabled
 326:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @note   To correctly run this function, the @ref HAL_FLASH_Unlock() function
 327:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         must be called before.
 328:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         Call the @ref HAL_FLASH_Lock() to disable the flash memory access 
 329:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         (recommended to protect the FLASH memory against possible unwanted operation)
 330:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @param  pEraseInit pointer to an FLASH_EraseInitTypeDef structure that
 331:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         contains the configuration information for the erasing.
 332:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *
 333:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @retval HAL_StatusTypeDef HAL Status
 334:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
 335:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** HAL_StatusTypeDef HAL_FLASHEx_Erase_IT(FLASH_EraseInitTypeDef *pEraseInit)
 336:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** {
 337:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
 338:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 339:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Process Locked */
 340:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   __HAL_LOCK(&pFlash);
 341:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 342:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* If procedure already ongoing, reject the next one */
 343:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   if (pFlash.ProcedureOnGoing != FLASH_PROC_NONE)
 344:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
 345:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     return HAL_ERROR;
 346:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 347:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
 348:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Check the parameters */
 349:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   assert_param(IS_FLASH_TYPEERASE(pEraseInit->TypeErase));
 350:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 351:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Enable End of FLASH Operation and Error source interrupts */
 352:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   __HAL_FLASH_ENABLE_IT(FLASH_IT_EOP | FLASH_IT_ERR);
 353:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 354:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(FLASH_BANK2_END)
 355:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Enable End of FLASH Operation and Error source interrupts */
 356:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   __HAL_FLASH_ENABLE_IT(FLASH_IT_EOP_BANK2 | FLASH_IT_ERR_BANK2);
 357:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
 358:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif
 359:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   if (pEraseInit->TypeErase == FLASH_TYPEERASE_MASSERASE)
 360:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
 361:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /*Mass erase to be done*/
 362:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     pFlash.ProcedureOnGoing = FLASH_PROC_MASSERASE;
 363:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         FLASH_MassErase(pEraseInit->Banks);
 364:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 365:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   else
 366:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
 367:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* Erase by page to be done*/
 368:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 369:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* Check the parameters */
 370:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     assert_param(IS_FLASH_PROGRAM_ADDRESS(pEraseInit->PageAddress));
 371:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     assert_param(IS_FLASH_NB_PAGES(pEraseInit->PageAddress, pEraseInit->NbPages));
 372:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 373:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     pFlash.ProcedureOnGoing = FLASH_PROC_PAGEERASE;
 374:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     pFlash.DataRemaining = pEraseInit->NbPages;
 375:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     pFlash.Address = pEraseInit->PageAddress;
 376:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 8


 377:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /*Erase 1st page and wait for IT*/
 378:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     FLASH_PageErase(pEraseInit->PageAddress);
 379:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 380:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 381:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   return status;
 382:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** }
 383:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 384:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
 385:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @}
 386:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
 387:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 388:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /** @defgroup FLASHEx_Exported_Functions_Group2 Option Bytes Programming functions
 389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****  *  @brief   Option Bytes Programming functions
 390:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *
 391:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** @verbatim   
 392:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   ==============================================================================
 393:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****                 ##### Option Bytes Programming functions ##### 
 394:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   ==============================================================================  
 395:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     [..]
 396:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     This subsection provides a set of functions allowing to control the FLASH 
 397:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     option bytes operations.
 398:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 399:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** @endverbatim
 400:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @{
 401:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
 402:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 403:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
 404:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @brief  Erases the FLASH option bytes.
 405:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @note   This functions erases all option bytes except the Read protection (RDP).
 406:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         The function @ref HAL_FLASH_Unlock() should be called before to unlock the FLASH interf
 407:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         The function @ref HAL_FLASH_OB_Unlock() should be called before to unlock the options b
 408:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         The function @ref HAL_FLASH_OB_Launch() should be called after to force the reload of t
 409:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         (system reset will occur)
 410:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @retval HAL status
 411:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
 412:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 413:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** HAL_StatusTypeDef HAL_FLASHEx_OBErase(void)
 414:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** {
 415:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   uint8_t rdptmp = OB_RDP_LEVEL_0;
 416:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_ERROR;
 417:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 418:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Get the actual read protection Option Byte value */
 419:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   rdptmp = FLASH_OB_GetRDP();
 420:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 421:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Wait for last operation to be completed */
 422:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 423:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 424:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   if(status == HAL_OK)
 425:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
 426:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* Clean the error context */
 427:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
 428:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 429:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* If the previous operation is completed, proceed to erase the option bytes */
 430:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR, FLASH_CR_OPTER);
 431:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR, FLASH_CR_STRT);
 432:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 433:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* Wait for last operation to be completed */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 9


 434:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 435:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 436:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* If the erase operation is completed, disable the OPTER Bit */
 437:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     CLEAR_BIT(FLASH->CR, FLASH_CR_OPTER);
 438:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 439:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     if(status == HAL_OK)
 440:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     {
 441:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       /* Restore the last read protection Option Byte value */
 442:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       status = FLASH_OB_RDP_LevelConfig(rdptmp);
 443:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     }
 444:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 445:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 446:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Return the erase status */
 447:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   return status;
 448:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** }
 449:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 450:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
 451:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @brief  Program option bytes
 452:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @note   The function @ref HAL_FLASH_Unlock() should be called before to unlock the FLASH interf
 453:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         The function @ref HAL_FLASH_OB_Unlock() should be called before to unlock the options b
 454:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         The function @ref HAL_FLASH_OB_Launch() should be called after to force the reload of t
 455:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         (system reset will occur)
 456:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *
 457:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @param  pOBInit pointer to an FLASH_OBInitStruct structure that
 458:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         contains the configuration information for the programming.
 459:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *
 460:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @retval HAL_StatusTypeDef HAL Status
 461:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
 462:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** HAL_StatusTypeDef HAL_FLASHEx_OBProgram(FLASH_OBProgramInitTypeDef *pOBInit)
 463:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** {
 464:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_ERROR;
 465:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 466:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Process Locked */
 467:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   __HAL_LOCK(&pFlash);
 468:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 469:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Check the parameters */
 470:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   assert_param(IS_OPTIONBYTE(pOBInit->OptionType));
 471:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 472:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Write protection configuration */
 473:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   if((pOBInit->OptionType & OPTIONBYTE_WRP) == OPTIONBYTE_WRP)
 474:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
 475:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     assert_param(IS_WRPSTATE(pOBInit->WRPState));
 476:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     if (pOBInit->WRPState == OB_WRPSTATE_ENABLE)
 477:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     {
 478:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       /* Enable of Write protection on the selected page */
 479:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       status = FLASH_OB_EnableWRP(pOBInit->WRPPage);
 480:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     }
 481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     else
 482:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     {
 483:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       /* Disable of Write protection on the selected page */
 484:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       status = FLASH_OB_DisableWRP(pOBInit->WRPPage);
 485:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     }
 486:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     if (status != HAL_OK)
 487:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     {
 488:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       /* Process Unlocked */
 489:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       __HAL_UNLOCK(&pFlash);
 490:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       return status;
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 10


 491:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     }
 492:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 493:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 494:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Read protection configuration */
 495:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   if((pOBInit->OptionType & OPTIONBYTE_RDP) == OPTIONBYTE_RDP)
 496:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
 497:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     status = FLASH_OB_RDP_LevelConfig(pOBInit->RDPLevel);
 498:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     if (status != HAL_OK)
 499:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     {
 500:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       /* Process Unlocked */
 501:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       __HAL_UNLOCK(&pFlash);
 502:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       return status;
 503:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     }
 504:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 505:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 506:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* USER configuration */
 507:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   if((pOBInit->OptionType & OPTIONBYTE_USER) == OPTIONBYTE_USER)
 508:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
 509:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     status = FLASH_OB_UserConfig(pOBInit->USERConfig);
 510:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     if (status != HAL_OK)
 511:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     {
 512:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       /* Process Unlocked */
 513:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       __HAL_UNLOCK(&pFlash);
 514:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       return status;
 515:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     }
 516:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 517:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 518:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* DATA configuration*/
 519:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   if((pOBInit->OptionType & OPTIONBYTE_DATA) == OPTIONBYTE_DATA)
 520:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
 521:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     status = FLASH_OB_ProgramData(pOBInit->DATAAddress, pOBInit->DATAData);
 522:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     if (status != HAL_OK)
 523:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     {
 524:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       /* Process Unlocked */
 525:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       __HAL_UNLOCK(&pFlash);
 526:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       return status;
 527:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     }
 528:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 529:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 530:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Process Unlocked */
 531:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   __HAL_UNLOCK(&pFlash);
 532:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 533:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   return status;
 534:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** }
 535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 536:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
 537:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @brief  Get the Option byte configuration
 538:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @param  pOBInit pointer to an FLASH_OBInitStruct structure that
 539:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         contains the configuration information for the programming.
 540:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *
 541:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @retval None
 542:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
 543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** void HAL_FLASHEx_OBGetConfig(FLASH_OBProgramInitTypeDef *pOBInit)
 544:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** {
 545:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   pOBInit->OptionType = OPTIONBYTE_WRP | OPTIONBYTE_RDP | OPTIONBYTE_USER;
 546:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 547:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /*Get WRP*/
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 11


 548:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   pOBInit->WRPPage = FLASH_OB_GetWRP();
 549:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 550:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /*Get RDP Level*/
 551:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   pOBInit->RDPLevel = FLASH_OB_GetRDP();
 552:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 553:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /*Get USER*/
 554:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   pOBInit->USERConfig = FLASH_OB_GetUser();
 555:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** }
 556:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 557:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
 558:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @brief  Get the Option byte user data
 559:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @param  DATAAdress Address of the option byte DATA
 560:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *          This parameter can be one of the following values:
 561:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *            @arg @ref OB_DATA_ADDRESS_DATA0
 562:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *            @arg @ref OB_DATA_ADDRESS_DATA1
 563:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @retval Value programmed in USER data
 564:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
 565:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** uint32_t HAL_FLASHEx_OBGetUserData(uint32_t DATAAdress)
 566:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** {
 567:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   uint32_t value = 0;
 568:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
 569:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   if (DATAAdress == OB_DATA_ADDRESS_DATA0)
 570:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
 571:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* Get value programmed in OB USER Data0 */
 572:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     value = READ_BIT(FLASH->OBR, FLASH_OBR_DATA0) >> FLASH_POSITION_OB_USERDATA0_BIT;
 573:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 574:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   else
 575:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
 576:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* Get value programmed in OB USER Data1 */
 577:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     value = READ_BIT(FLASH->OBR, FLASH_OBR_DATA1) >> FLASH_POSITION_OB_USERDATA1_BIT;
 578:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 579:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
 580:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   return value;
 581:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** }
 582:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 583:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
 584:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @}
 585:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
 586:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 587:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
 588:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @}
 589:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
 590:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 591:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /** @addtogroup FLASHEx_Private_Functions
 592:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****  * @{
 593:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****  */
 594:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 595:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
 596:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @brief  Full erase of FLASH memory Bank 
 597:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @param  Banks Banks to be erased
 598:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *          This parameter can be one of the following values:
 599:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *            @arg @ref FLASH_BANK_1 Bank1 to be erased
 600:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   @if STM32F101xG
 601:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *            @arg @ref FLASH_BANK_2 Bank2 to be erased
 602:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *            @arg @ref FLASH_BANK_BOTH Bank1 and Bank2 to be erased
 603:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   @endif
 604:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   @if STM32F103xG
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 12


 605:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *            @arg @ref FLASH_BANK_2 Bank2 to be erased
 606:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *            @arg @ref FLASH_BANK_BOTH Bank1 and Bank2 to be erased
 607:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   @endif
 608:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *
 609:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @retval None
 610:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
 611:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** static void FLASH_MassErase(uint32_t Banks)
 612:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** {
  25              		.loc 1 612 0
  26              		.cfi_startproc
  27              		@ args = 0, pretend = 0, frame = 0
  28              		@ frame_needed = 0, uses_anonymous_args = 0
  29              		@ link register save eliminated.
  30              	.LVL0:
 613:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Check the parameters */
 614:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   assert_param(IS_FLASH_BANK(Banks));
 615:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 616:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Clean the error context */
 617:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
  31              		.loc 1 617 0
  32 0000 064B     		ldr	r3, .L2
  33 0002 0022     		movs	r2, #0
  34 0004 DA61     		str	r2, [r3, #28]
 618:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 619:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(FLASH_BANK2_END)
 620:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   if(Banks == FLASH_BANK_BOTH)
 621:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
 622:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* bank1 & bank2 will be erased*/
 623:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR, FLASH_CR_MER);
 624:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR2, FLASH_CR2_MER);
 625:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR, FLASH_CR_STRT);
 626:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR2, FLASH_CR2_STRT);
 627:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 628:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   else if(Banks == FLASH_BANK_2)
 629:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
 630:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /*Only bank2 will be erased*/
 631:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR2, FLASH_CR2_MER);
 632:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR2, FLASH_CR2_STRT);
 633:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 634:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   else
 635:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
 636:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* FLASH_BANK2_END */
 637:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if !defined(FLASH_BANK2_END)
 638:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Prevent unused argument(s) compilation warning */
 639:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   UNUSED(Banks);
 640:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* FLASH_BANK2_END */  
 641:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* Only bank1 will be erased*/
 642:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR, FLASH_CR_MER);
  35              		.loc 1 642 0
  36 0006 064B     		ldr	r3, .L2+4
  37 0008 1A69     		ldr	r2, [r3, #16]
  38 000a 42F00402 		orr	r2, r2, #4
  39 000e 1A61     		str	r2, [r3, #16]
 643:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR, FLASH_CR_STRT);
  40              		.loc 1 643 0
  41 0010 1A69     		ldr	r2, [r3, #16]
  42 0012 42F04002 		orr	r2, r2, #64
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 13


  43 0016 1A61     		str	r2, [r3, #16]
 644:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(FLASH_BANK2_END)
 645:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 646:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* FLASH_BANK2_END */
 647:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** }
  44              		.loc 1 647 0
  45 0018 7047     		bx	lr
  46              	.L3:
  47 001a 00BF     		.align	2
  48              	.L2:
  49 001c 00000000 		.word	pFlash
  50 0020 00200240 		.word	1073881088
  51              		.cfi_endproc
  52              	.LFE72:
  54              		.section	.text.FLASH_OB_GetWRP,"ax",%progbits
  55              		.align	1
  56              		.syntax unified
  57              		.thumb
  58              		.thumb_func
  59              		.fpu softvfp
  61              	FLASH_OB_GetWRP:
  62              	.LFB78:
 648:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 649:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
 650:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @brief  Enable the write protection of the desired pages
 651:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @note   An option byte erase is done automatically in this function. 
 652:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @note   When the memory read protection level is selected (RDP level = 1), 
 653:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         it is not possible to program or erase the flash page i if
 654:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         debug features are connected or boot code is executed in RAM, even if nWRPi = 1 
 655:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * 
 656:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @param  WriteProtectPage specifies the page(s) to be write protected.
 657:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         The value of this parameter depend on device used within the same series 
 658:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @retval HAL status 
 659:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
 660:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** static HAL_StatusTypeDef FLASH_OB_EnableWRP(uint32_t WriteProtectPage)
 661:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** {
 662:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
 663:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   uint16_t WRP0_Data = 0xFFFF;
 664:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(FLASH_WRP1_WRP1)
 665:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   uint16_t WRP1_Data = 0xFFFF;
 666:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* FLASH_WRP1_WRP1 */
 667:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(FLASH_WRP2_WRP2)
 668:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   uint16_t WRP2_Data = 0xFFFF;
 669:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* FLASH_WRP2_WRP2 */
 670:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(FLASH_WRP3_WRP3)
 671:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   uint16_t WRP3_Data = 0xFFFF;
 672:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* FLASH_WRP3_WRP3 */
 673:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
 674:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Check the parameters */
 675:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   assert_param(IS_OB_WRP(WriteProtectPage));
 676:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     
 677:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Get current write protected pages and the new pages to be protected ******/
 678:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   WriteProtectPage = (uint32_t)(~((~FLASH_OB_GetWRP()) | WriteProtectPage));
 679:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
 680:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(OB_WRP_PAGES0TO15MASK)
 681:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   WRP0_Data = (uint16_t)(WriteProtectPage & OB_WRP_PAGES0TO15MASK);
 682:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #elif defined(OB_WRP_PAGES0TO31MASK)
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 14


 683:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   WRP0_Data = (uint16_t)(WriteProtectPage & OB_WRP_PAGES0TO31MASK);
 684:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* OB_WRP_PAGES0TO31MASK */
 685:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
 686:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(OB_WRP_PAGES16TO31MASK)
 687:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   WRP1_Data = (uint16_t)((WriteProtectPage & OB_WRP_PAGES16TO31MASK) >> 8U);
 688:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #elif defined(OB_WRP_PAGES32TO63MASK)
 689:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   WRP1_Data = (uint16_t)((WriteProtectPage & OB_WRP_PAGES32TO63MASK) >> 8U);
 690:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* OB_WRP_PAGES32TO63MASK */
 691:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****  
 692:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(OB_WRP_PAGES64TO95MASK)
 693:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   WRP2_Data = (uint16_t)((WriteProtectPage & OB_WRP_PAGES64TO95MASK) >> 16U);
 694:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* OB_WRP_PAGES64TO95MASK */
 695:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(OB_WRP_PAGES32TO47MASK)
 696:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   WRP2_Data = (uint16_t)((WriteProtectPage & OB_WRP_PAGES32TO47MASK) >> 16U);
 697:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* OB_WRP_PAGES32TO47MASK */
 698:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 699:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(OB_WRP_PAGES96TO127MASK)
 700:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   WRP3_Data = (uint16_t)((WriteProtectPage & OB_WRP_PAGES96TO127MASK) >> 24U); 
 701:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #elif defined(OB_WRP_PAGES48TO255MASK)
 702:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   WRP3_Data = (uint16_t)((WriteProtectPage & OB_WRP_PAGES48TO255MASK) >> 24U); 
 703:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #elif defined(OB_WRP_PAGES48TO511MASK)
 704:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   WRP3_Data = (uint16_t)((WriteProtectPage & OB_WRP_PAGES48TO511MASK) >> 24U); 
 705:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #elif defined(OB_WRP_PAGES48TO127MASK)
 706:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   WRP3_Data = (uint16_t)((WriteProtectPage & OB_WRP_PAGES48TO127MASK) >> 24U); 
 707:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* OB_WRP_PAGES96TO127MASK */
 708:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
 709:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Wait for last operation to be completed */
 710:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 711:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 712:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   if(status == HAL_OK)
 713:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   { 
 714:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* Clean the error context */
 715:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
 716:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 717:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* To be able to write again option byte, need to perform a option byte erase */
 718:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     status = HAL_FLASHEx_OBErase();
 719:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     if (status == HAL_OK)  
 720:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     {
 721:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       /* Enable write protection */
 722:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       SET_BIT(FLASH->CR, FLASH_CR_OPTPG);
 723:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 724:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(FLASH_WRP0_WRP0)
 725:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       if(WRP0_Data != 0xFFU)
 726:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 727:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         OB->WRP0 &= WRP0_Data;
 728:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 729:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         /* Wait for last operation to be completed */
 730:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 731:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       }
 732:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* FLASH_WRP0_WRP0 */
 733:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 734:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(FLASH_WRP1_WRP1)
 735:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       if((status == HAL_OK) && (WRP1_Data != 0xFFU))
 736:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 737:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         OB->WRP1 &= WRP1_Data;
 738:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 739:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         /* Wait for last operation to be completed */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 15


 740:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 741:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       }
 742:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* FLASH_WRP1_WRP1 */
 743:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 744:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(FLASH_WRP2_WRP2)
 745:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       if((status == HAL_OK) && (WRP2_Data != 0xFFU))
 746:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 747:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         OB->WRP2 &= WRP2_Data;
 748:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 749:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         /* Wait for last operation to be completed */
 750:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 751:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       }
 752:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* FLASH_WRP2_WRP2 */
 753:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 754:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(FLASH_WRP3_WRP3)
 755:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       if((status == HAL_OK) && (WRP3_Data != 0xFFU))
 756:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 757:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         OB->WRP3 &= WRP3_Data;
 758:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 759:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         /* Wait for last operation to be completed */
 760:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 761:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       }
 762:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* FLASH_WRP3_WRP3 */
 763:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 764:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       /* if the program operation is completed, disable the OPTPG Bit */
 765:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       CLEAR_BIT(FLASH->CR, FLASH_CR_OPTPG);
 766:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     }
 767:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 768:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
 769:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   return status;
 770:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** }
 771:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 772:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
 773:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @brief  Disable the write protection of the desired pages
 774:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @note   An option byte erase is done automatically in this function. 
 775:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @note   When the memory read protection level is selected (RDP level = 1), 
 776:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         it is not possible to program or erase the flash page i if   
 777:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         debug features are connected or boot code is executed in RAM, even if nWRPi = 1 
 778:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * 
 779:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @param  WriteProtectPage specifies the page(s) to be write unprotected.
 780:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         The value of this parameter depend on device used within the same series 
 781:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @retval HAL status 
 782:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
 783:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** static HAL_StatusTypeDef FLASH_OB_DisableWRP(uint32_t WriteProtectPage)
 784:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** {
 785:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
 786:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   uint16_t WRP0_Data = 0xFFFF;
 787:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(FLASH_WRP1_WRP1)
 788:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   uint16_t WRP1_Data = 0xFFFF;
 789:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* FLASH_WRP1_WRP1 */
 790:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(FLASH_WRP2_WRP2)
 791:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   uint16_t WRP2_Data = 0xFFFF;
 792:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* FLASH_WRP2_WRP2 */
 793:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(FLASH_WRP3_WRP3)
 794:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   uint16_t WRP3_Data = 0xFFFF;
 795:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* FLASH_WRP3_WRP3 */
 796:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 16


 797:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Check the parameters */
 798:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   assert_param(IS_OB_WRP(WriteProtectPage));
 799:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 800:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Get current write protected pages and the new pages to be unprotected ******/
 801:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   WriteProtectPage = (FLASH_OB_GetWRP() | WriteProtectPage);
 802:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 803:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(OB_WRP_PAGES0TO15MASK)
 804:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   WRP0_Data = (uint16_t)(WriteProtectPage & OB_WRP_PAGES0TO15MASK);
 805:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #elif defined(OB_WRP_PAGES0TO31MASK)
 806:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   WRP0_Data = (uint16_t)(WriteProtectPage & OB_WRP_PAGES0TO31MASK);
 807:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* OB_WRP_PAGES0TO31MASK */
 808:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
 809:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(OB_WRP_PAGES16TO31MASK)
 810:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   WRP1_Data = (uint16_t)((WriteProtectPage & OB_WRP_PAGES16TO31MASK) >> 8U);
 811:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #elif defined(OB_WRP_PAGES32TO63MASK)
 812:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   WRP1_Data = (uint16_t)((WriteProtectPage & OB_WRP_PAGES32TO63MASK) >> 8U);
 813:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* OB_WRP_PAGES32TO63MASK */
 814:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****  
 815:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(OB_WRP_PAGES64TO95MASK)
 816:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   WRP2_Data = (uint16_t)((WriteProtectPage & OB_WRP_PAGES64TO95MASK) >> 16U);
 817:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* OB_WRP_PAGES64TO95MASK */
 818:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(OB_WRP_PAGES32TO47MASK)
 819:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   WRP2_Data = (uint16_t)((WriteProtectPage & OB_WRP_PAGES32TO47MASK) >> 16U);
 820:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* OB_WRP_PAGES32TO47MASK */
 821:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 822:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(OB_WRP_PAGES96TO127MASK)
 823:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   WRP3_Data = (uint16_t)((WriteProtectPage & OB_WRP_PAGES96TO127MASK) >> 24U); 
 824:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #elif defined(OB_WRP_PAGES48TO255MASK)
 825:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   WRP3_Data = (uint16_t)((WriteProtectPage & OB_WRP_PAGES48TO255MASK) >> 24U); 
 826:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #elif defined(OB_WRP_PAGES48TO511MASK)
 827:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   WRP3_Data = (uint16_t)((WriteProtectPage & OB_WRP_PAGES48TO511MASK) >> 24U); 
 828:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #elif defined(OB_WRP_PAGES48TO127MASK)
 829:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   WRP3_Data = (uint16_t)((WriteProtectPage & OB_WRP_PAGES48TO127MASK) >> 24U); 
 830:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* OB_WRP_PAGES96TO127MASK */
 831:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 832:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     
 833:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Wait for last operation to be completed */
 834:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 835:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 836:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   if(status == HAL_OK)
 837:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   { 
 838:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* Clean the error context */
 839:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
 840:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 841:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* To be able to write again option byte, need to perform a option byte erase */
 842:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     status = HAL_FLASHEx_OBErase();
 843:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     if (status == HAL_OK)  
 844:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     {
 845:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       SET_BIT(FLASH->CR, FLASH_CR_OPTPG);
 846:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 847:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(FLASH_WRP0_WRP0)
 848:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       if(WRP0_Data != 0xFFU)
 849:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 850:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         OB->WRP0 |= WRP0_Data;
 851:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 852:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         /* Wait for last operation to be completed */
 853:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 17


 854:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       }
 855:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* FLASH_WRP0_WRP0 */
 856:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 857:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(FLASH_WRP1_WRP1)
 858:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       if((status == HAL_OK) && (WRP1_Data != 0xFFU))
 859:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 860:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         OB->WRP1 |= WRP1_Data;
 861:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 862:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         /* Wait for last operation to be completed */
 863:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 864:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       }
 865:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* FLASH_WRP1_WRP1 */
 866:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 867:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(FLASH_WRP2_WRP2)
 868:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       if((status == HAL_OK) && (WRP2_Data != 0xFFU))
 869:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 870:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         OB->WRP2 |= WRP2_Data;
 871:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 872:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         /* Wait for last operation to be completed */
 873:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 874:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       }
 875:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* FLASH_WRP2_WRP2 */
 876:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 877:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(FLASH_WRP3_WRP3)
 878:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       if((status == HAL_OK) && (WRP3_Data != 0xFFU))
 879:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 880:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         OB->WRP3 |= WRP3_Data;
 881:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 882:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         /* Wait for last operation to be completed */
 883:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 884:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       }
 885:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* FLASH_WRP3_WRP3 */
 886:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 887:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       /* if the program operation is completed, disable the OPTPG Bit */
 888:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       CLEAR_BIT(FLASH->CR, FLASH_CR_OPTPG);
 889:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     }
 890:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 891:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   return status;
 892:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** }
 893:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 894:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
 895:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @brief  Set the read protection level.
 896:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @param  ReadProtectLevel specifies the read protection level.
 897:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         This parameter can be one of the following values:
 898:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *            @arg @ref OB_RDP_LEVEL_0 No protection
 899:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *            @arg @ref OB_RDP_LEVEL_1 Read protection of the memory
 900:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @retval HAL status
 901:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
 902:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** static HAL_StatusTypeDef FLASH_OB_RDP_LevelConfig(uint8_t ReadProtectLevel)
 903:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** {
 904:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
 905:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
 906:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Check the parameters */
 907:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   assert_param(IS_OB_RDP_LEVEL(ReadProtectLevel));
 908:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
 909:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Wait for last operation to be completed */
 910:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 18


 911:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
 912:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   if(status == HAL_OK)
 913:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   { 
 914:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* Clean the error context */
 915:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
 916:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     
 917:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* If the previous operation is completed, proceed to erase the option bytes */
 918:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR, FLASH_CR_OPTER);
 919:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR, FLASH_CR_STRT);
 920:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 921:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* Wait for last operation to be completed */
 922:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 923:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 924:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* If the erase operation is completed, disable the OPTER Bit */
 925:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     CLEAR_BIT(FLASH->CR, FLASH_CR_OPTER);
 926:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 927:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     if(status == HAL_OK)
 928:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     {
 929:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       /* Enable the Option Bytes Programming operation */
 930:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       SET_BIT(FLASH->CR, FLASH_CR_OPTPG);
 931:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       
 932:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       WRITE_REG(OB->RDP, ReadProtectLevel);
 933:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       
 934:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       /* Wait for last operation to be completed */
 935:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE); 
 936:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       
 937:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       /* if the program operation is completed, disable the OPTPG Bit */
 938:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       CLEAR_BIT(FLASH->CR, FLASH_CR_OPTPG);
 939:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     }
 940:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 941:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
 942:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   return status;
 943:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** }
 944:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 945:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
 946:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @brief  Program the FLASH User Option Byte.    
 947:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @note   Programming of the OB should be performed only after an erase (otherwise PGERR occurs)
 948:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @param  UserConfig The FLASH User Option Bytes values FLASH_OBR_IWDG_SW(Bit2), 
 949:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         FLASH_OBR_nRST_STOP(Bit3),FLASH_OBR_nRST_STDBY(Bit4).
 950:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         And BFBF2(Bit5) for STM32F101xG and STM32F103xG . 
 951:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @retval HAL status
 952:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
 953:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** static HAL_StatusTypeDef FLASH_OB_UserConfig(uint8_t UserConfig)
 954:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** {
 955:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
 956:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 957:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Check the parameters */
 958:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   assert_param(IS_OB_IWDG_SOURCE((UserConfig&OB_IWDG_SW)));
 959:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   assert_param(IS_OB_STOP_SOURCE((UserConfig&OB_STOP_NO_RST)));
 960:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   assert_param(IS_OB_STDBY_SOURCE((UserConfig&OB_STDBY_NO_RST)));
 961:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(FLASH_BANK2_END)
 962:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   assert_param(IS_OB_BOOT1((UserConfig&OB_BOOT1_SET)));
 963:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* FLASH_BANK2_END */
 964:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 965:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Wait for last operation to be completed */
 966:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 967:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 19


 968:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   if(status == HAL_OK)
 969:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {     
 970:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* Clean the error context */
 971:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
 972:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 973:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* Enable the Option Bytes Programming operation */
 974:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR, FLASH_CR_OPTPG); 
 975:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****  
 976:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(FLASH_BANK2_END)
 977:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     OB->USER = (UserConfig | 0xF0U);
 978:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #else
 979:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     OB->USER = (UserConfig | 0x88U);
 980:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* FLASH_BANK2_END */
 981:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 982:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* Wait for last operation to be completed */
 983:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 984:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 985:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* if the program operation is completed, disable the OPTPG Bit */
 986:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     CLEAR_BIT(FLASH->CR, FLASH_CR_OPTPG);
 987:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 988:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
 989:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   return status; 
 990:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** }
 991:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 992:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
 993:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @brief  Programs a half word at a specified Option Byte Data address.
 994:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @note   The function @ref HAL_FLASH_Unlock() should be called before to unlock the FLASH interf
 995:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         The function @ref HAL_FLASH_OB_Unlock() should be called before to unlock the options b
 996:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         The function @ref HAL_FLASH_OB_Launch() should be called after to force the reload of t
 997:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         (system reset will occur)
 998:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         Programming of the OB should be performed only after an erase (otherwise PGERR occurs)
 999:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @param  Address specifies the address to be programmed.
1000:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         This parameter can be 0x1FFFF804 or 0x1FFFF806. 
1001:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @param  Data specifies the data to be programmed.
1002:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @retval HAL status
1003:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
1004:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** static HAL_StatusTypeDef FLASH_OB_ProgramData(uint32_t Address, uint8_t Data)
1005:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** {
1006:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_ERROR;
1007:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
1008:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Check the parameters */
1009:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   assert_param(IS_OB_DATA_ADDRESS(Address));
1010:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
1011:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Wait for last operation to be completed */
1012:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
1013:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
1014:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   if(status == HAL_OK)
1015:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
1016:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* Clean the error context */
1017:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
1018:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
1019:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* Enables the Option Bytes Programming operation */
1020:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR, FLASH_CR_OPTPG); 
1021:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     *(__IO uint16_t*)Address = Data;
1022:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     
1023:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* Wait for last operation to be completed */
1024:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 20


1025:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     
1026:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* If the program operation is completed, disable the OPTPG Bit */
1027:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     CLEAR_BIT(FLASH->CR, FLASH_CR_OPTPG);
1028:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
1029:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Return the Option Byte Data Program Status */
1030:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   return status;
1031:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** }
1032:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
1033:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
1034:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @brief  Return the FLASH Write Protection Option Bytes value.
1035:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @retval The FLASH Write Protection Option Bytes value
1036:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
1037:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** static uint32_t FLASH_OB_GetWRP(void)
1038:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** {
  63              		.loc 1 1038 0
  64              		.cfi_startproc
  65              		@ args = 0, pretend = 0, frame = 0
  66              		@ frame_needed = 0, uses_anonymous_args = 0
  67              		@ link register save eliminated.
1039:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Return the FLASH write protection Register value */
1040:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   return (uint32_t)(READ_REG(FLASH->WRPR));
  68              		.loc 1 1040 0
  69 0000 014B     		ldr	r3, .L5
  70 0002 186A     		ldr	r0, [r3, #32]
1041:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** }
  71              		.loc 1 1041 0
  72 0004 7047     		bx	lr
  73              	.L6:
  74 0006 00BF     		.align	2
  75              	.L5:
  76 0008 00200240 		.word	1073881088
  77              		.cfi_endproc
  78              	.LFE78:
  80              		.section	.text.FLASH_OB_GetRDP,"ax",%progbits
  81              		.align	1
  82              		.syntax unified
  83              		.thumb
  84              		.thumb_func
  85              		.fpu softvfp
  87              	FLASH_OB_GetRDP:
  88              	.LFB79:
1042:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
1043:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
1044:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @brief  Returns the FLASH Read Protection level.
1045:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @retval FLASH RDP level
1046:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         This parameter can be one of the following values:
1047:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *            @arg @ref OB_RDP_LEVEL_0 No protection
1048:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *            @arg @ref OB_RDP_LEVEL_1 Read protection of the memory
1049:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
1050:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** static uint32_t FLASH_OB_GetRDP(void)
1051:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** {
  89              		.loc 1 1051 0
  90              		.cfi_startproc
  91              		@ args = 0, pretend = 0, frame = 0
  92              		@ frame_needed = 0, uses_anonymous_args = 0
  93              		@ link register save eliminated.
  94              	.LVL1:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 21


1052:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   uint32_t readstatus = OB_RDP_LEVEL_0;
1053:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   uint32_t tmp_reg = 0U;
1054:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
1055:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Read RDP level bits */
1056:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   tmp_reg = READ_BIT(FLASH->OBR, FLASH_OBR_RDPRT);
  95              		.loc 1 1056 0
  96 0000 044B     		ldr	r3, .L10
  97 0002 DB69     		ldr	r3, [r3, #28]
  98              	.LVL2:
1057:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
1058:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   if (tmp_reg == FLASH_OBR_RDPRT)
  99              		.loc 1 1058 0
 100 0004 13F0020F 		tst	r3, #2
 101 0008 01D0     		beq	.L9
1059:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
1060:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     readstatus = OB_RDP_LEVEL_1;
 102              		.loc 1 1060 0
 103 000a 0020     		movs	r0, #0
 104 000c 7047     		bx	lr
 105              	.L9:
1061:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
1062:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   else 
1063:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
1064:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     readstatus = OB_RDP_LEVEL_0;
 106              		.loc 1 1064 0
 107 000e A520     		movs	r0, #165
1065:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
1066:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
1067:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   return readstatus;
1068:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** }
 108              		.loc 1 1068 0
 109 0010 7047     		bx	lr
 110              	.L11:
 111 0012 00BF     		.align	2
 112              	.L10:
 113 0014 00200240 		.word	1073881088
 114              		.cfi_endproc
 115              	.LFE79:
 117              		.section	.text.FLASH_OB_GetUser,"ax",%progbits
 118              		.align	1
 119              		.syntax unified
 120              		.thumb
 121              		.thumb_func
 122              		.fpu softvfp
 124              	FLASH_OB_GetUser:
 125              	.LFB80:
1069:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
1070:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
1071:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @brief  Return the FLASH User Option Byte value.
1072:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @retval The FLASH User Option Bytes values: FLASH_OBR_IWDG_SW(Bit2), 
1073:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         FLASH_OBR_nRST_STOP(Bit3),FLASH_OBR_nRST_STDBY(Bit4).
1074:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         And FLASH_OBR_BFB2(Bit5) for STM32F101xG and STM32F103xG . 
1075:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
1076:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** static uint8_t FLASH_OB_GetUser(void)
1077:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** {
 126              		.loc 1 1077 0
 127              		.cfi_startproc
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 22


 128              		@ args = 0, pretend = 0, frame = 0
 129              		@ frame_needed = 0, uses_anonymous_args = 0
 130              		@ link register save eliminated.
1078:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Return the User Option Byte */
1079:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   return (uint8_t)((READ_REG(FLASH->OBR) & FLASH_OBR_USER) >> FLASH_POSITION_IWDGSW_BIT);
 131              		.loc 1 1079 0
 132 0000 024B     		ldr	r3, .L13
 133 0002 D869     		ldr	r0, [r3, #28]
1080:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** }
 134              		.loc 1 1080 0
 135 0004 C0F38200 		ubfx	r0, r0, #2, #3
 136 0008 7047     		bx	lr
 137              	.L14:
 138 000a 00BF     		.align	2
 139              	.L13:
 140 000c 00200240 		.word	1073881088
 141              		.cfi_endproc
 142              	.LFE80:
 144              		.section	.text.FLASH_OB_RDP_LevelConfig,"ax",%progbits
 145              		.align	1
 146              		.syntax unified
 147              		.thumb
 148              		.thumb_func
 149              		.fpu softvfp
 151              	FLASH_OB_RDP_LevelConfig:
 152              	.LFB75:
 903:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
 153              		.loc 1 903 0
 154              		.cfi_startproc
 155              		@ args = 0, pretend = 0, frame = 0
 156              		@ frame_needed = 0, uses_anonymous_args = 0
 157              	.LVL3:
 158 0000 38B5     		push	{r3, r4, r5, lr}
 159              	.LCFI0:
 160              		.cfi_def_cfa_offset 16
 161              		.cfi_offset 3, -16
 162              		.cfi_offset 4, -12
 163              		.cfi_offset 5, -8
 164              		.cfi_offset 14, -4
 165 0002 0546     		mov	r5, r0
 166              	.LVL4:
 910:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
 167              		.loc 1 910 0
 168 0004 4CF25030 		movw	r0, #50000
 169              	.LVL5:
 170 0008 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 171              	.LVL6:
 912:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   { 
 172              		.loc 1 912 0
 173 000c 0346     		mov	r3, r0
 174 000e 08B1     		cbz	r0, .L18
 175              	.LVL7:
 176              	.L16:
 943:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 177              		.loc 1 943 0
 178 0010 1846     		mov	r0, r3
 179 0012 38BD     		pop	{r3, r4, r5, pc}
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 23


 180              	.LVL8:
 181              	.L18:
 915:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     
 182              		.loc 1 915 0
 183 0014 134B     		ldr	r3, .L19
 184 0016 0022     		movs	r2, #0
 185 0018 DA61     		str	r2, [r3, #28]
 918:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR, FLASH_CR_STRT);
 186              		.loc 1 918 0
 187 001a 134C     		ldr	r4, .L19+4
 188 001c 2369     		ldr	r3, [r4, #16]
 189 001e 43F02003 		orr	r3, r3, #32
 190 0022 2361     		str	r3, [r4, #16]
 919:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 191              		.loc 1 919 0
 192 0024 2369     		ldr	r3, [r4, #16]
 193 0026 43F04003 		orr	r3, r3, #64
 194 002a 2361     		str	r3, [r4, #16]
 922:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 195              		.loc 1 922 0
 196 002c 4CF25030 		movw	r0, #50000
 197              	.LVL9:
 198 0030 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 199              	.LVL10:
 925:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 200              		.loc 1 925 0
 201 0034 2369     		ldr	r3, [r4, #16]
 202 0036 23F02003 		bic	r3, r3, #32
 203 003a 2361     		str	r3, [r4, #16]
 927:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     {
 204              		.loc 1 927 0
 205 003c 0346     		mov	r3, r0
 206 003e 0028     		cmp	r0, #0
 207 0040 E6D1     		bne	.L16
 930:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       
 208              		.loc 1 930 0
 209 0042 2369     		ldr	r3, [r4, #16]
 210 0044 43F01003 		orr	r3, r3, #16
 211 0048 2361     		str	r3, [r4, #16]
 932:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       
 212              		.loc 1 932 0
 213 004a ADB2     		uxth	r5, r5
 214 004c 074B     		ldr	r3, .L19+8
 215 004e 1D80     		strh	r5, [r3]	@ movhi
 935:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       
 216              		.loc 1 935 0
 217 0050 4CF25030 		movw	r0, #50000
 218              	.LVL11:
 219 0054 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 220              	.LVL12:
 221 0058 0346     		mov	r3, r0
 222              	.LVL13:
 938:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     }
 223              		.loc 1 938 0
 224 005a 2269     		ldr	r2, [r4, #16]
 225 005c 22F01002 		bic	r2, r2, #16
 226 0060 2261     		str	r2, [r4, #16]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 24


 227 0062 D5E7     		b	.L16
 228              	.L20:
 229              		.align	2
 230              	.L19:
 231 0064 00000000 		.word	pFlash
 232 0068 00200240 		.word	1073881088
 233 006c 00F8FF1F 		.word	536868864
 234              		.cfi_endproc
 235              	.LFE75:
 237              		.section	.text.FLASH_OB_UserConfig,"ax",%progbits
 238              		.align	1
 239              		.syntax unified
 240              		.thumb
 241              		.thumb_func
 242              		.fpu softvfp
 244              	FLASH_OB_UserConfig:
 245              	.LFB76:
 954:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
 246              		.loc 1 954 0
 247              		.cfi_startproc
 248              		@ args = 0, pretend = 0, frame = 0
 249              		@ frame_needed = 0, uses_anonymous_args = 0
 250              	.LVL14:
 251 0000 38B5     		push	{r3, r4, r5, lr}
 252              	.LCFI1:
 253              		.cfi_def_cfa_offset 16
 254              		.cfi_offset 3, -16
 255              		.cfi_offset 4, -12
 256              		.cfi_offset 5, -8
 257              		.cfi_offset 14, -4
 258 0002 0446     		mov	r4, r0
 259              	.LVL15:
 966:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
 260              		.loc 1 966 0
 261 0004 4CF25030 		movw	r0, #50000
 262              	.LVL16:
 263 0008 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 264              	.LVL17:
 968:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {     
 265              		.loc 1 968 0
 266 000c 0346     		mov	r3, r0
 267 000e 08B1     		cbz	r0, .L24
 268              	.LVL18:
 269              	.L22:
 990:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 270              		.loc 1 990 0
 271 0010 1846     		mov	r0, r3
 272 0012 38BD     		pop	{r3, r4, r5, pc}
 273              	.LVL19:
 274              	.L24:
 971:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 275              		.loc 1 971 0
 276 0014 0A4B     		ldr	r3, .L25
 277 0016 0022     		movs	r2, #0
 278 0018 DA61     		str	r2, [r3, #28]
 974:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****  
 279              		.loc 1 974 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 25


 280 001a 0A4D     		ldr	r5, .L25+4
 281 001c 2B69     		ldr	r3, [r5, #16]
 282 001e 43F01003 		orr	r3, r3, #16
 283 0022 2B61     		str	r3, [r5, #16]
 979:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* FLASH_BANK2_END */
 284              		.loc 1 979 0
 285 0024 44F08804 		orr	r4, r4, #136
 286 0028 074B     		ldr	r3, .L25+8
 287 002a 5C80     		strh	r4, [r3, #2]	@ movhi
 983:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 288              		.loc 1 983 0
 289 002c 4CF25030 		movw	r0, #50000
 290              	.LVL20:
 291 0030 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 292              	.LVL21:
 293 0034 0346     		mov	r3, r0
 294              	.LVL22:
 986:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 295              		.loc 1 986 0
 296 0036 2A69     		ldr	r2, [r5, #16]
 297 0038 22F01002 		bic	r2, r2, #16
 298 003c 2A61     		str	r2, [r5, #16]
 299 003e E7E7     		b	.L22
 300              	.L26:
 301              		.align	2
 302              	.L25:
 303 0040 00000000 		.word	pFlash
 304 0044 00200240 		.word	1073881088
 305 0048 00F8FF1F 		.word	536868864
 306              		.cfi_endproc
 307              	.LFE76:
 309              		.section	.text.FLASH_OB_ProgramData,"ax",%progbits
 310              		.align	1
 311              		.syntax unified
 312              		.thumb
 313              		.thumb_func
 314              		.fpu softvfp
 316              	FLASH_OB_ProgramData:
 317              	.LFB77:
1005:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_ERROR;
 318              		.loc 1 1005 0
 319              		.cfi_startproc
 320              		@ args = 0, pretend = 0, frame = 0
 321              		@ frame_needed = 0, uses_anonymous_args = 0
 322              	.LVL23:
 323 0000 70B5     		push	{r4, r5, r6, lr}
 324              	.LCFI2:
 325              		.cfi_def_cfa_offset 16
 326              		.cfi_offset 4, -16
 327              		.cfi_offset 5, -12
 328              		.cfi_offset 6, -8
 329              		.cfi_offset 14, -4
 330 0002 0646     		mov	r6, r0
 331 0004 0C46     		mov	r4, r1
 332              	.LVL24:
1012:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
 333              		.loc 1 1012 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 26


 334 0006 4CF25030 		movw	r0, #50000
 335              	.LVL25:
 336 000a FFF7FEFF 		bl	FLASH_WaitForLastOperation
 337              	.LVL26:
1014:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
 338              		.loc 1 1014 0
 339 000e 0346     		mov	r3, r0
 340 0010 08B1     		cbz	r0, .L30
 341              	.LVL27:
 342              	.L28:
1031:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 343              		.loc 1 1031 0
 344 0012 1846     		mov	r0, r3
 345 0014 70BD     		pop	{r4, r5, r6, pc}
 346              	.LVL28:
 347              	.L30:
1017:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 348              		.loc 1 1017 0
 349 0016 0A4B     		ldr	r3, .L31
 350 0018 0022     		movs	r2, #0
 351 001a DA61     		str	r2, [r3, #28]
1020:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     *(__IO uint16_t*)Address = Data;
 352              		.loc 1 1020 0
 353 001c 094D     		ldr	r5, .L31+4
 354 001e 2B69     		ldr	r3, [r5, #16]
 355 0020 43F01003 		orr	r3, r3, #16
 356 0024 2B61     		str	r3, [r5, #16]
1021:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     
 357              		.loc 1 1021 0
 358 0026 A4B2     		uxth	r4, r4
 359 0028 3480     		strh	r4, [r6]	@ movhi
1024:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     
 360              		.loc 1 1024 0
 361 002a 4CF25030 		movw	r0, #50000
 362              	.LVL29:
 363 002e FFF7FEFF 		bl	FLASH_WaitForLastOperation
 364              	.LVL30:
 365 0032 0346     		mov	r3, r0
 366              	.LVL31:
1027:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 367              		.loc 1 1027 0
 368 0034 2A69     		ldr	r2, [r5, #16]
 369 0036 22F01002 		bic	r2, r2, #16
 370 003a 2A61     		str	r2, [r5, #16]
 371 003c E9E7     		b	.L28
 372              	.L32:
 373 003e 00BF     		.align	2
 374              	.L31:
 375 0040 00000000 		.word	pFlash
 376 0044 00200240 		.word	1073881088
 377              		.cfi_endproc
 378              	.LFE77:
 380              		.section	.text.HAL_FLASHEx_OBErase,"ax",%progbits
 381              		.align	1
 382              		.global	HAL_FLASHEx_OBErase
 383              		.syntax unified
 384              		.thumb
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 27


 385              		.thumb_func
 386              		.fpu softvfp
 388              	HAL_FLASHEx_OBErase:
 389              	.LFB68:
 414:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   uint8_t rdptmp = OB_RDP_LEVEL_0;
 390              		.loc 1 414 0
 391              		.cfi_startproc
 392              		@ args = 0, pretend = 0, frame = 0
 393              		@ frame_needed = 0, uses_anonymous_args = 0
 394 0000 38B5     		push	{r3, r4, r5, lr}
 395              	.LCFI3:
 396              		.cfi_def_cfa_offset 16
 397              		.cfi_offset 3, -16
 398              		.cfi_offset 4, -12
 399              		.cfi_offset 5, -8
 400              		.cfi_offset 14, -4
 401              	.LVL32:
 419:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 402              		.loc 1 419 0
 403 0002 FFF7FEFF 		bl	FLASH_OB_GetRDP
 404              	.LVL33:
 405 0006 C5B2     		uxtb	r5, r0
 406              	.LVL34:
 422:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 407              		.loc 1 422 0
 408 0008 4CF25030 		movw	r0, #50000
 409 000c FFF7FEFF 		bl	FLASH_WaitForLastOperation
 410              	.LVL35:
 424:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
 411              		.loc 1 424 0
 412 0010 0346     		mov	r3, r0
 413 0012 08B1     		cbz	r0, .L36
 414              	.LVL36:
 415              	.L34:
 448:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 416              		.loc 1 448 0
 417 0014 1846     		mov	r0, r3
 418 0016 38BD     		pop	{r3, r4, r5, pc}
 419              	.LVL37:
 420              	.L36:
 427:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 421              		.loc 1 427 0
 422 0018 0D4B     		ldr	r3, .L37
 423 001a 0022     		movs	r2, #0
 424 001c DA61     		str	r2, [r3, #28]
 430:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR, FLASH_CR_STRT);
 425              		.loc 1 430 0
 426 001e 0D4C     		ldr	r4, .L37+4
 427 0020 2369     		ldr	r3, [r4, #16]
 428 0022 43F02003 		orr	r3, r3, #32
 429 0026 2361     		str	r3, [r4, #16]
 431:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 430              		.loc 1 431 0
 431 0028 2369     		ldr	r3, [r4, #16]
 432 002a 43F04003 		orr	r3, r3, #64
 433 002e 2361     		str	r3, [r4, #16]
 434:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 28


 434              		.loc 1 434 0
 435 0030 4CF25030 		movw	r0, #50000
 436              	.LVL38:
 437 0034 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 438              	.LVL39:
 437:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 439              		.loc 1 437 0
 440 0038 2369     		ldr	r3, [r4, #16]
 441 003a 23F02003 		bic	r3, r3, #32
 442 003e 2361     		str	r3, [r4, #16]
 439:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     {
 443              		.loc 1 439 0
 444 0040 0346     		mov	r3, r0
 445 0042 0028     		cmp	r0, #0
 446 0044 E6D1     		bne	.L34
 442:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     }
 447              		.loc 1 442 0
 448 0046 2846     		mov	r0, r5
 449              	.LVL40:
 450 0048 FFF7FEFF 		bl	FLASH_OB_RDP_LevelConfig
 451              	.LVL41:
 452 004c 0346     		mov	r3, r0
 453              	.LVL42:
 454 004e E1E7     		b	.L34
 455              	.L38:
 456              		.align	2
 457              	.L37:
 458 0050 00000000 		.word	pFlash
 459 0054 00200240 		.word	1073881088
 460              		.cfi_endproc
 461              	.LFE68:
 463              		.section	.text.FLASH_OB_EnableWRP,"ax",%progbits
 464              		.align	1
 465              		.syntax unified
 466              		.thumb
 467              		.thumb_func
 468              		.fpu softvfp
 470              	FLASH_OB_EnableWRP:
 471              	.LFB73:
 661:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
 472              		.loc 1 661 0
 473              		.cfi_startproc
 474              		@ args = 0, pretend = 0, frame = 0
 475              		@ frame_needed = 0, uses_anonymous_args = 0
 476              	.LVL43:
 477 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 478              	.LCFI4:
 479              		.cfi_def_cfa_offset 24
 480              		.cfi_offset 3, -24
 481              		.cfi_offset 4, -20
 482              		.cfi_offset 5, -16
 483              		.cfi_offset 6, -12
 484              		.cfi_offset 7, -8
 485              		.cfi_offset 14, -4
 486 0002 0446     		mov	r4, r0
 487              	.LVL44:
 678:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 29


 488              		.loc 1 678 0
 489 0004 FFF7FEFF 		bl	FLASH_OB_GetWRP
 490              	.LVL45:
 491 0008 20EA0404 		bic	r4, r0, r4
 492              	.LVL46:
 689:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* OB_WRP_PAGES32TO63MASK */
 493              		.loc 1 689 0
 494 000c C4F30727 		ubfx	r7, r4, #8, #8
 495              	.LVL47:
 693:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* OB_WRP_PAGES64TO95MASK */
 496              		.loc 1 693 0
 497 0010 C4F30746 		ubfx	r6, r4, #16, #8
 498              	.LVL48:
 710:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 499              		.loc 1 710 0
 500 0014 4CF25030 		movw	r0, #50000
 501 0018 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 502              	.LVL49:
 712:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   { 
 503              		.loc 1 712 0
 504 001c 0346     		mov	r3, r0
 505 001e 08B1     		cbz	r0, .L46
 506              	.LVL50:
 507              	.L40:
 770:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 508              		.loc 1 770 0
 509 0020 1846     		mov	r0, r3
 510 0022 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 511              	.LVL51:
 512              	.L46:
 513 0024 E5B2     		uxtb	r5, r4
 514 0026 240E     		lsrs	r4, r4, #24
 515              	.LVL52:
 715:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 516              		.loc 1 715 0
 517 0028 224B     		ldr	r3, .L51
 518 002a 0022     		movs	r2, #0
 519 002c DA61     		str	r2, [r3, #28]
 718:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     if (status == HAL_OK)  
 520              		.loc 1 718 0
 521 002e FFF7FEFF 		bl	HAL_FLASHEx_OBErase
 522              	.LVL53:
 719:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     {
 523              		.loc 1 719 0
 524 0032 0346     		mov	r3, r0
 525 0034 0028     		cmp	r0, #0
 526 0036 F3D1     		bne	.L40
 722:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 527              		.loc 1 722 0
 528 0038 1F49     		ldr	r1, .L51+4
 529 003a 0A69     		ldr	r2, [r1, #16]
 530 003c 42F01002 		orr	r2, r2, #16
 531 0040 0A61     		str	r2, [r1, #16]
 725:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 532              		.loc 1 725 0
 533 0042 FF2D     		cmp	r5, #255
 534 0044 0ED1     		bne	.L47
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 30


 535              	.LVL54:
 536              	.L41:
 735:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 537              		.loc 1 735 0
 538 0046 0BB9     		cbnz	r3, .L42
 735:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 539              		.loc 1 735 0 is_stmt 0 discriminator 1
 540 0048 FF2F     		cmp	r7, #255
 541 004a 15D1     		bne	.L48
 542              	.LVL55:
 543              	.L42:
 745:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 544              		.loc 1 745 0 is_stmt 1
 545 004c 0BB9     		cbnz	r3, .L43
 745:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 546              		.loc 1 745 0 is_stmt 0 discriminator 1
 547 004e FF2E     		cmp	r6, #255
 548 0050 1CD1     		bne	.L49
 549              	.LVL56:
 550              	.L43:
 755:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 551              		.loc 1 755 0 is_stmt 1
 552 0052 0BB9     		cbnz	r3, .L44
 755:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 553              		.loc 1 755 0 is_stmt 0 discriminator 1
 554 0054 FF2C     		cmp	r4, #255
 555 0056 23D1     		bne	.L50
 556              	.L44:
 765:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     }
 557              		.loc 1 765 0 is_stmt 1
 558 0058 1749     		ldr	r1, .L51+4
 559 005a 0A69     		ldr	r2, [r1, #16]
 560 005c 22F01002 		bic	r2, r2, #16
 561 0060 0A61     		str	r2, [r1, #16]
 562 0062 DDE7     		b	.L40
 563              	.LVL57:
 564              	.L47:
 727:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 565              		.loc 1 727 0
 566 0064 154B     		ldr	r3, .L51+8
 567 0066 1A89     		ldrh	r2, [r3, #8]
 568 0068 1540     		ands	r5, r5, r2
 569              	.LVL58:
 570 006a 1D81     		strh	r5, [r3, #8]	@ movhi
 730:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       }
 571              		.loc 1 730 0
 572 006c 4CF25030 		movw	r0, #50000
 573              	.LVL59:
 574 0070 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 575              	.LVL60:
 576 0074 0346     		mov	r3, r0
 577              	.LVL61:
 578 0076 E6E7     		b	.L41
 579              	.L48:
 737:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 580              		.loc 1 737 0
 581 0078 104B     		ldr	r3, .L51+8
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 31


 582              	.LVL62:
 583 007a 5A89     		ldrh	r2, [r3, #10]
 584 007c 1740     		ands	r7, r7, r2
 585              	.LVL63:
 586 007e 5F81     		strh	r7, [r3, #10]	@ movhi
 740:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       }
 587              		.loc 1 740 0
 588 0080 4CF25030 		movw	r0, #50000
 589 0084 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 590              	.LVL64:
 591 0088 0346     		mov	r3, r0
 592              	.LVL65:
 593 008a DFE7     		b	.L42
 594              	.L49:
 747:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 595              		.loc 1 747 0
 596 008c 0B4B     		ldr	r3, .L51+8
 597              	.LVL66:
 598 008e 9A89     		ldrh	r2, [r3, #12]
 599 0090 1640     		ands	r6, r6, r2
 600              	.LVL67:
 601 0092 9E81     		strh	r6, [r3, #12]	@ movhi
 750:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       }
 602              		.loc 1 750 0
 603 0094 4CF25030 		movw	r0, #50000
 604 0098 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 605              	.LVL68:
 606 009c 0346     		mov	r3, r0
 607              	.LVL69:
 608 009e D8E7     		b	.L43
 609              	.L50:
 757:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 610              		.loc 1 757 0
 611 00a0 064B     		ldr	r3, .L51+8
 612              	.LVL70:
 613 00a2 D889     		ldrh	r0, [r3, #14]
 614 00a4 2040     		ands	r0, r0, r4
 615 00a6 D881     		strh	r0, [r3, #14]	@ movhi
 760:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       }
 616              		.loc 1 760 0
 617 00a8 4CF25030 		movw	r0, #50000
 618 00ac FFF7FEFF 		bl	FLASH_WaitForLastOperation
 619              	.LVL71:
 620 00b0 0346     		mov	r3, r0
 621              	.LVL72:
 622 00b2 D1E7     		b	.L44
 623              	.L52:
 624              		.align	2
 625              	.L51:
 626 00b4 00000000 		.word	pFlash
 627 00b8 00200240 		.word	1073881088
 628 00bc 00F8FF1F 		.word	536868864
 629              		.cfi_endproc
 630              	.LFE73:
 632              		.section	.text.FLASH_OB_DisableWRP,"ax",%progbits
 633              		.align	1
 634              		.syntax unified
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 32


 635              		.thumb
 636              		.thumb_func
 637              		.fpu softvfp
 639              	FLASH_OB_DisableWRP:
 640              	.LFB74:
 784:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
 641              		.loc 1 784 0
 642              		.cfi_startproc
 643              		@ args = 0, pretend = 0, frame = 0
 644              		@ frame_needed = 0, uses_anonymous_args = 0
 645              	.LVL73:
 646 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 647              	.LCFI5:
 648              		.cfi_def_cfa_offset 24
 649              		.cfi_offset 3, -24
 650              		.cfi_offset 4, -20
 651              		.cfi_offset 5, -16
 652              		.cfi_offset 6, -12
 653              		.cfi_offset 7, -8
 654              		.cfi_offset 14, -4
 655 0002 0446     		mov	r4, r0
 656              	.LVL74:
 801:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 657              		.loc 1 801 0
 658 0004 FFF7FEFF 		bl	FLASH_OB_GetWRP
 659              	.LVL75:
 660 0008 0443     		orrs	r4, r4, r0
 661              	.LVL76:
 812:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* OB_WRP_PAGES32TO63MASK */
 662              		.loc 1 812 0
 663 000a C4F30727 		ubfx	r7, r4, #8, #8
 664              	.LVL77:
 816:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* OB_WRP_PAGES64TO95MASK */
 665              		.loc 1 816 0
 666 000e C4F30746 		ubfx	r6, r4, #16, #8
 667              	.LVL78:
 834:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 668              		.loc 1 834 0
 669 0012 4CF25030 		movw	r0, #50000
 670 0016 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 671              	.LVL79:
 836:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   { 
 672              		.loc 1 836 0
 673 001a 0346     		mov	r3, r0
 674 001c 08B1     		cbz	r0, .L60
 675              	.LVL80:
 676              	.L54:
 892:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 677              		.loc 1 892 0
 678 001e 1846     		mov	r0, r3
 679 0020 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 680              	.LVL81:
 681              	.L60:
 682 0022 E5B2     		uxtb	r5, r4
 683 0024 240E     		lsrs	r4, r4, #24
 684              	.LVL82:
 839:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 33


 685              		.loc 1 839 0
 686 0026 234B     		ldr	r3, .L65
 687 0028 0022     		movs	r2, #0
 688 002a DA61     		str	r2, [r3, #28]
 842:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     if (status == HAL_OK)  
 689              		.loc 1 842 0
 690 002c FFF7FEFF 		bl	HAL_FLASHEx_OBErase
 691              	.LVL83:
 843:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     {
 692              		.loc 1 843 0
 693 0030 0346     		mov	r3, r0
 694 0032 0028     		cmp	r0, #0
 695 0034 F3D1     		bne	.L54
 845:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 696              		.loc 1 845 0
 697 0036 2049     		ldr	r1, .L65+4
 698 0038 0A69     		ldr	r2, [r1, #16]
 699 003a 42F01002 		orr	r2, r2, #16
 700 003e 0A61     		str	r2, [r1, #16]
 848:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 701              		.loc 1 848 0
 702 0040 FF2D     		cmp	r5, #255
 703 0042 0ED1     		bne	.L61
 704              	.LVL84:
 705              	.L55:
 858:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 706              		.loc 1 858 0
 707 0044 0BB9     		cbnz	r3, .L56
 858:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 708              		.loc 1 858 0 is_stmt 0 discriminator 1
 709 0046 FF2F     		cmp	r7, #255
 710 0048 15D1     		bne	.L62
 711              	.LVL85:
 712              	.L56:
 868:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 713              		.loc 1 868 0 is_stmt 1
 714 004a 0BB9     		cbnz	r3, .L57
 868:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 715              		.loc 1 868 0 is_stmt 0 discriminator 1
 716 004c FF2E     		cmp	r6, #255
 717 004e 1CD1     		bne	.L63
 718              	.LVL86:
 719              	.L57:
 878:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 720              		.loc 1 878 0 is_stmt 1
 721 0050 0BB9     		cbnz	r3, .L58
 878:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 722              		.loc 1 878 0 is_stmt 0 discriminator 1
 723 0052 FF2C     		cmp	r4, #255
 724 0054 23D1     		bne	.L64
 725              	.L58:
 888:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     }
 726              		.loc 1 888 0 is_stmt 1
 727 0056 1849     		ldr	r1, .L65+4
 728 0058 0A69     		ldr	r2, [r1, #16]
 729 005a 22F01002 		bic	r2, r2, #16
 730 005e 0A61     		str	r2, [r1, #16]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 34


 731 0060 DDE7     		b	.L54
 732              	.LVL87:
 733              	.L61:
 850:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 734              		.loc 1 850 0
 735 0062 164B     		ldr	r3, .L65+8
 736 0064 1A89     		ldrh	r2, [r3, #8]
 737 0066 1543     		orrs	r5, r5, r2
 738              	.LVL88:
 739 0068 1D81     		strh	r5, [r3, #8]	@ movhi
 853:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       }
 740              		.loc 1 853 0
 741 006a 4CF25030 		movw	r0, #50000
 742              	.LVL89:
 743 006e FFF7FEFF 		bl	FLASH_WaitForLastOperation
 744              	.LVL90:
 745 0072 0346     		mov	r3, r0
 746              	.LVL91:
 747 0074 E6E7     		b	.L55
 748              	.L62:
 860:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 749              		.loc 1 860 0
 750 0076 114B     		ldr	r3, .L65+8
 751              	.LVL92:
 752 0078 5A89     		ldrh	r2, [r3, #10]
 753 007a 1743     		orrs	r7, r7, r2
 754              	.LVL93:
 755 007c 5F81     		strh	r7, [r3, #10]	@ movhi
 863:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       }
 756              		.loc 1 863 0
 757 007e 4CF25030 		movw	r0, #50000
 758 0082 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 759              	.LVL94:
 760 0086 0346     		mov	r3, r0
 761              	.LVL95:
 762 0088 DFE7     		b	.L56
 763              	.L63:
 870:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 764              		.loc 1 870 0
 765 008a 0C4B     		ldr	r3, .L65+8
 766              	.LVL96:
 767 008c 9A89     		ldrh	r2, [r3, #12]
 768 008e 1643     		orrs	r6, r6, r2
 769              	.LVL97:
 770 0090 9E81     		strh	r6, [r3, #12]	@ movhi
 873:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       }
 771              		.loc 1 873 0
 772 0092 4CF25030 		movw	r0, #50000
 773 0096 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 774              	.LVL98:
 775 009a 0346     		mov	r3, r0
 776              	.LVL99:
 777 009c D8E7     		b	.L57
 778              	.L64:
 880:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 779              		.loc 1 880 0
 780 009e 074B     		ldr	r3, .L65+8
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 35


 781              	.LVL100:
 782 00a0 D889     		ldrh	r0, [r3, #14]
 783 00a2 2043     		orrs	r0, r0, r4
 784 00a4 D881     		strh	r0, [r3, #14]	@ movhi
 883:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       }
 785              		.loc 1 883 0
 786 00a6 4CF25030 		movw	r0, #50000
 787 00aa FFF7FEFF 		bl	FLASH_WaitForLastOperation
 788              	.LVL101:
 789 00ae 0346     		mov	r3, r0
 790              	.LVL102:
 791 00b0 D1E7     		b	.L58
 792              	.L66:
 793 00b2 00BF     		.align	2
 794              	.L65:
 795 00b4 00000000 		.word	pFlash
 796 00b8 00200240 		.word	1073881088
 797 00bc 00F8FF1F 		.word	536868864
 798              		.cfi_endproc
 799              	.LFE74:
 801              		.section	.text.HAL_FLASHEx_OBProgram,"ax",%progbits
 802              		.align	1
 803              		.global	HAL_FLASHEx_OBProgram
 804              		.syntax unified
 805              		.thumb
 806              		.thumb_func
 807              		.fpu softvfp
 809              	HAL_FLASHEx_OBProgram:
 810              	.LFB69:
 463:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_ERROR;
 811              		.loc 1 463 0
 812              		.cfi_startproc
 813              		@ args = 0, pretend = 0, frame = 0
 814              		@ frame_needed = 0, uses_anonymous_args = 0
 815              	.LVL103:
 467:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 816              		.loc 1 467 0
 817 0000 284B     		ldr	r3, .L85
 818 0002 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 819 0004 012B     		cmp	r3, #1
 820 0006 4AD0     		beq	.L75
 463:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_ERROR;
 821              		.loc 1 463 0 discriminator 2
 822 0008 10B5     		push	{r4, lr}
 823              	.LCFI6:
 824              		.cfi_def_cfa_offset 8
 825              		.cfi_offset 4, -8
 826              		.cfi_offset 14, -4
 827 000a 0446     		mov	r4, r0
 467:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 828              		.loc 1 467 0 discriminator 2
 829 000c 254B     		ldr	r3, .L85
 830 000e 0122     		movs	r2, #1
 831 0010 1A76     		strb	r2, [r3, #24]
 473:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
 832              		.loc 1 473 0 discriminator 2
 833 0012 0368     		ldr	r3, [r0]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 36


 834 0014 13F0010F 		tst	r3, #1
 835 0018 10D0     		beq	.L76
 476:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     {
 836              		.loc 1 476 0
 837 001a 4368     		ldr	r3, [r0, #4]
 838 001c 9342     		cmp	r3, r2
 839 001e 08D0     		beq	.L81
 484:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     }
 840              		.loc 1 484 0
 841 0020 8068     		ldr	r0, [r0, #8]
 842              	.LVL104:
 843 0022 FFF7FEFF 		bl	FLASH_OB_DisableWRP
 844              	.LVL105:
 845 0026 0346     		mov	r3, r0
 846              	.LVL106:
 847              	.L71:
 486:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     {
 848              		.loc 1 486 0
 849 0028 4BB1     		cbz	r3, .L69
 489:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       return status;
 850              		.loc 1 489 0
 851 002a 1E4A     		ldr	r2, .L85
 852 002c 0021     		movs	r1, #0
 853 002e 1176     		strb	r1, [r2, #24]
 490:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     }
 854              		.loc 1 490 0
 855 0030 14E0     		b	.L68
 856              	.LVL107:
 857              	.L81:
 479:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     }
 858              		.loc 1 479 0
 859 0032 8068     		ldr	r0, [r0, #8]
 860              	.LVL108:
 861 0034 FFF7FEFF 		bl	FLASH_OB_EnableWRP
 862              	.LVL109:
 863 0038 0346     		mov	r3, r0
 864              	.LVL110:
 865 003a F5E7     		b	.L71
 866              	.LVL111:
 867              	.L76:
 464:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 868              		.loc 1 464 0
 869 003c 0123     		movs	r3, #1
 870              	.LVL112:
 871              	.L69:
 495:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
 872              		.loc 1 495 0
 873 003e 2268     		ldr	r2, [r4]
 874 0040 12F0020F 		tst	r2, #2
 875 0044 0CD1     		bne	.L82
 876              	.LVL113:
 877              	.L72:
 507:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
 878              		.loc 1 507 0
 879 0046 2268     		ldr	r2, [r4]
 880 0048 12F0040F 		tst	r2, #4
 881 004c 12D1     		bne	.L83
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 37


 882              	.LVL114:
 883              	.L73:
 519:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
 884              		.loc 1 519 0
 885 004e 2268     		ldr	r2, [r4]
 886 0050 12F0080F 		tst	r2, #8
 887 0054 18D1     		bne	.L84
 888              	.LVL115:
 889              	.L74:
 531:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 890              		.loc 1 531 0
 891 0056 134A     		ldr	r2, .L85
 892 0058 0021     		movs	r1, #0
 893 005a 1176     		strb	r1, [r2, #24]
 894              	.LVL116:
 895              	.L68:
 534:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 896              		.loc 1 534 0
 897 005c 1846     		mov	r0, r3
 898 005e 10BD     		pop	{r4, pc}
 899              	.LVL117:
 900              	.L82:
 497:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     if (status != HAL_OK)
 901              		.loc 1 497 0
 902 0060 207C     		ldrb	r0, [r4, #16]	@ zero_extendqisi2
 903 0062 FFF7FEFF 		bl	FLASH_OB_RDP_LevelConfig
 904              	.LVL118:
 498:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     {
 905              		.loc 1 498 0
 906 0066 0346     		mov	r3, r0
 907 0068 0028     		cmp	r0, #0
 908 006a ECD0     		beq	.L72
 501:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       return status;
 909              		.loc 1 501 0
 910 006c 0D4A     		ldr	r2, .L85
 911 006e 0021     		movs	r1, #0
 912 0070 1176     		strb	r1, [r2, #24]
 502:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     }
 913              		.loc 1 502 0
 914 0072 F3E7     		b	.L68
 915              	.LVL119:
 916              	.L83:
 509:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     if (status != HAL_OK)
 917              		.loc 1 509 0
 918 0074 607C     		ldrb	r0, [r4, #17]	@ zero_extendqisi2
 919 0076 FFF7FEFF 		bl	FLASH_OB_UserConfig
 920              	.LVL120:
 510:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     {
 921              		.loc 1 510 0
 922 007a 0346     		mov	r3, r0
 923 007c 0028     		cmp	r0, #0
 924 007e E6D0     		beq	.L73
 513:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       return status;
 925              		.loc 1 513 0
 926 0080 084A     		ldr	r2, .L85
 927 0082 0021     		movs	r1, #0
 928 0084 1176     		strb	r1, [r2, #24]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 38


 514:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     }
 929              		.loc 1 514 0
 930 0086 E9E7     		b	.L68
 931              	.LVL121:
 932              	.L84:
 521:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     if (status != HAL_OK)
 933              		.loc 1 521 0
 934 0088 217E     		ldrb	r1, [r4, #24]	@ zero_extendqisi2
 935 008a 6069     		ldr	r0, [r4, #20]
 936 008c FFF7FEFF 		bl	FLASH_OB_ProgramData
 937              	.LVL122:
 522:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     {
 938              		.loc 1 522 0
 939 0090 0346     		mov	r3, r0
 940 0092 0028     		cmp	r0, #0
 941 0094 DFD0     		beq	.L74
 525:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       return status;
 942              		.loc 1 525 0
 943 0096 034A     		ldr	r2, .L85
 944 0098 0021     		movs	r1, #0
 945 009a 1176     		strb	r1, [r2, #24]
 526:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     }
 946              		.loc 1 526 0
 947 009c DEE7     		b	.L68
 948              	.LVL123:
 949              	.L75:
 950              	.LCFI7:
 951              		.cfi_def_cfa_offset 0
 952              		.cfi_restore 4
 953              		.cfi_restore 14
 467:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 954              		.loc 1 467 0
 955 009e 0223     		movs	r3, #2
 534:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 956              		.loc 1 534 0
 957 00a0 1846     		mov	r0, r3
 958              	.LVL124:
 959 00a2 7047     		bx	lr
 960              	.L86:
 961              		.align	2
 962              	.L85:
 963 00a4 00000000 		.word	pFlash
 964              		.cfi_endproc
 965              	.LFE69:
 967              		.section	.text.HAL_FLASHEx_OBGetConfig,"ax",%progbits
 968              		.align	1
 969              		.global	HAL_FLASHEx_OBGetConfig
 970              		.syntax unified
 971              		.thumb
 972              		.thumb_func
 973              		.fpu softvfp
 975              	HAL_FLASHEx_OBGetConfig:
 976              	.LFB70:
 544:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   pOBInit->OptionType = OPTIONBYTE_WRP | OPTIONBYTE_RDP | OPTIONBYTE_USER;
 977              		.loc 1 544 0
 978              		.cfi_startproc
 979              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 39


 980              		@ frame_needed = 0, uses_anonymous_args = 0
 981              	.LVL125:
 982 0000 10B5     		push	{r4, lr}
 983              	.LCFI8:
 984              		.cfi_def_cfa_offset 8
 985              		.cfi_offset 4, -8
 986              		.cfi_offset 14, -4
 987 0002 0446     		mov	r4, r0
 545:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 988              		.loc 1 545 0
 989 0004 0723     		movs	r3, #7
 990 0006 0360     		str	r3, [r0]
 548:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 991              		.loc 1 548 0
 992 0008 FFF7FEFF 		bl	FLASH_OB_GetWRP
 993              	.LVL126:
 994 000c A060     		str	r0, [r4, #8]
 551:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 995              		.loc 1 551 0
 996 000e FFF7FEFF 		bl	FLASH_OB_GetRDP
 997              	.LVL127:
 998 0012 2074     		strb	r0, [r4, #16]
 554:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** }
 999              		.loc 1 554 0
 1000 0014 FFF7FEFF 		bl	FLASH_OB_GetUser
 1001              	.LVL128:
 1002 0018 6074     		strb	r0, [r4, #17]
 555:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 1003              		.loc 1 555 0
 1004 001a 10BD     		pop	{r4, pc}
 1005              		.cfi_endproc
 1006              	.LFE70:
 1008              		.section	.text.HAL_FLASHEx_OBGetUserData,"ax",%progbits
 1009              		.align	1
 1010              		.global	HAL_FLASHEx_OBGetUserData
 1011              		.syntax unified
 1012              		.thumb
 1013              		.thumb_func
 1014              		.fpu softvfp
 1016              	HAL_FLASHEx_OBGetUserData:
 1017              	.LFB71:
 566:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   uint32_t value = 0;
 1018              		.loc 1 566 0
 1019              		.cfi_startproc
 1020              		@ args = 0, pretend = 0, frame = 0
 1021              		@ frame_needed = 0, uses_anonymous_args = 0
 1022              		@ link register save eliminated.
 1023              	.LVL129:
 569:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
 1024              		.loc 1 569 0
 1025 0000 064B     		ldr	r3, .L93
 1026 0002 9842     		cmp	r0, r3
 1027 0004 04D0     		beq	.L92
 577:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 1028              		.loc 1 577 0
 1029 0006 064B     		ldr	r3, .L93+4
 1030 0008 D869     		ldr	r0, [r3, #28]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 40


 1031              	.LVL130:
 1032 000a C0F38740 		ubfx	r0, r0, #18, #8
 1033              	.LVL131:
 581:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 1034              		.loc 1 581 0
 1035 000e 7047     		bx	lr
 1036              	.LVL132:
 1037              	.L92:
 572:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 1038              		.loc 1 572 0
 1039 0010 034B     		ldr	r3, .L93+4
 1040 0012 D869     		ldr	r0, [r3, #28]
 1041              	.LVL133:
 1042 0014 C0F38720 		ubfx	r0, r0, #10, #8
 1043              	.LVL134:
 1044 0018 7047     		bx	lr
 1045              	.L94:
 1046 001a 00BF     		.align	2
 1047              	.L93:
 1048 001c 04F8FF1F 		.word	536868868
 1049 0020 00200240 		.word	1073881088
 1050              		.cfi_endproc
 1051              	.LFE71:
 1053              		.section	.text.FLASH_PageErase,"ax",%progbits
 1054              		.align	1
 1055              		.global	FLASH_PageErase
 1056              		.syntax unified
 1057              		.thumb
 1058              		.thumb_func
 1059              		.fpu softvfp
 1061              	FLASH_PageErase:
 1062              	.LFB81:
1081:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
1082:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
1083:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @}
1084:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
1085:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
1086:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
1087:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @}
1088:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
1089:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
1090:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /** @addtogroup FLASH
1091:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @{
1092:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
1093:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
1094:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /** @addtogroup FLASH_Private_Functions
1095:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****  * @{
1096:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****  */
1097:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
1098:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** /**
1099:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @brief  Erase the specified FLASH memory page
1100:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @param  PageAddress FLASH page to erase
1101:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   *         The value of this parameter depend on device used within the same series      
1102:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * 
1103:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   * @retval None
1104:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   */
1105:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** void FLASH_PageErase(uint32_t PageAddress)
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 41


1106:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** {
 1063              		.loc 1 1106 0
 1064              		.cfi_startproc
 1065              		@ args = 0, pretend = 0, frame = 0
 1066              		@ frame_needed = 0, uses_anonymous_args = 0
 1067              		@ link register save eliminated.
 1068              	.LVL135:
1107:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   /* Clean the error context */
1108:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
 1069              		.loc 1 1108 0
 1070 0000 064B     		ldr	r3, .L96
 1071 0002 0022     		movs	r2, #0
 1072 0004 DA61     		str	r2, [r3, #28]
1109:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
1110:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(FLASH_BANK2_END)
1111:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   if(PageAddress > FLASH_BANK1_END)
1112:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   { 
1113:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* Proceed to erase the page */
1114:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR2, FLASH_CR2_PER);
1115:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     WRITE_REG(FLASH->AR2, PageAddress);
1116:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR2, FLASH_CR2_STRT);
1117:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
1118:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   else
1119:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
1120:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* FLASH_BANK2_END */
1121:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     /* Proceed to erase the page */
1122:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR, FLASH_CR_PER);
 1073              		.loc 1 1122 0
 1074 0006 064B     		ldr	r3, .L96+4
 1075 0008 1A69     		ldr	r2, [r3, #16]
 1076 000a 42F00202 		orr	r2, r2, #2
 1077 000e 1A61     		str	r2, [r3, #16]
1123:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     WRITE_REG(FLASH->AR, PageAddress);
 1078              		.loc 1 1123 0
 1079 0010 5861     		str	r0, [r3, #20]
1124:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR, FLASH_CR_STRT);
 1080              		.loc 1 1124 0
 1081 0012 1A69     		ldr	r2, [r3, #16]
 1082 0014 42F04002 		orr	r2, r2, #64
 1083 0018 1A61     		str	r2, [r3, #16]
1125:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #if defined(FLASH_BANK2_END)
1126:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
1127:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** #endif /* FLASH_BANK2_END */
1128:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** }
 1084              		.loc 1 1128 0
 1085 001a 7047     		bx	lr
 1086              	.L97:
 1087              		.align	2
 1088              	.L96:
 1089 001c 00000000 		.word	pFlash
 1090 0020 00200240 		.word	1073881088
 1091              		.cfi_endproc
 1092              	.LFE81:
 1094              		.section	.text.HAL_FLASHEx_Erase,"ax",%progbits
 1095              		.align	1
 1096              		.global	HAL_FLASHEx_Erase
 1097              		.syntax unified
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 42


 1098              		.thumb
 1099              		.thumb_func
 1100              		.fpu softvfp
 1102              	HAL_FLASHEx_Erase:
 1103              	.LFB66:
 176:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_ERROR;
 1104              		.loc 1 176 0
 1105              		.cfi_startproc
 1106              		@ args = 0, pretend = 0, frame = 0
 1107              		@ frame_needed = 0, uses_anonymous_args = 0
 1108              	.LVL136:
 181:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 1109              		.loc 1 181 0
 1110 0000 264B     		ldr	r3, .L115
 1111 0002 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 1112 0004 012B     		cmp	r3, #1
 1113 0006 46D0     		beq	.L105
 176:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_ERROR;
 1114              		.loc 1 176 0 discriminator 2
 1115 0008 70B5     		push	{r4, r5, r6, lr}
 1116              	.LCFI9:
 1117              		.cfi_def_cfa_offset 16
 1118              		.cfi_offset 4, -16
 1119              		.cfi_offset 5, -12
 1120              		.cfi_offset 6, -8
 1121              		.cfi_offset 14, -4
 1122 000a 0E46     		mov	r6, r1
 1123 000c 0446     		mov	r4, r0
 181:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 1124              		.loc 1 181 0 discriminator 2
 1125 000e 234B     		ldr	r3, .L115
 1126 0010 0122     		movs	r2, #1
 1127 0012 1A76     		strb	r2, [r3, #24]
 186:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
 1128              		.loc 1 186 0 discriminator 2
 1129 0014 0368     		ldr	r3, [r0]
 1130 0016 022B     		cmp	r3, #2
 1131 0018 20D0     		beq	.L112
 289:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 1132              		.loc 1 289 0
 1133 001a 4CF25030 		movw	r0, #50000
 1134              	.LVL137:
 1135 001e FFF7FEFF 		bl	FLASH_WaitForLastOperation
 1136              	.LVL138:
 1137 0022 90BB     		cbnz	r0, .L107
 292:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 1138              		.loc 1 292 0
 1139 0024 4FF0FF33 		mov	r3, #-1
 1140 0028 3360     		str	r3, [r6]
 295:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****             address < ((pEraseInit->NbPages * FLASH_PAGE_SIZE) + pEraseInit->PageAddress);
 1141              		.loc 1 295 0
 1142 002a A568     		ldr	r5, [r4, #8]
 1143              	.LVL139:
 177:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   uint32_t address = 0U;
 1144              		.loc 1 177 0
 1145 002c 0122     		movs	r2, #1
 1146              	.LVL140:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 43


 1147              	.L102:
 296:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****             address += FLASH_PAGE_SIZE)
 1148              		.loc 1 296 0 discriminator 1
 1149 002e E168     		ldr	r1, [r4, #12]
 1150 0030 A368     		ldr	r3, [r4, #8]
 1151 0032 03EB8123 		add	r3, r3, r1, lsl #10
 295:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****             address < ((pEraseInit->NbPages * FLASH_PAGE_SIZE) + pEraseInit->PageAddress);
 1152              		.loc 1 295 0 discriminator 1
 1153 0036 AB42     		cmp	r3, r5
 1154 0038 28D9     		bls	.L101
 299:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           
 1155              		.loc 1 299 0
 1156 003a 2846     		mov	r0, r5
 1157 003c FFF7FEFF 		bl	FLASH_PageErase
 1158              	.LVL141:
 302:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           
 1159              		.loc 1 302 0
 1160 0040 4CF25030 		movw	r0, #50000
 1161 0044 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 1162              	.LVL142:
 305:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           
 1163              		.loc 1 305 0
 1164 0048 154A     		ldr	r2, .L115+4
 1165 004a 1369     		ldr	r3, [r2, #16]
 1166 004c 23F00203 		bic	r3, r3, #2
 1167 0050 1361     		str	r3, [r2, #16]
 307:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           {
 1168              		.loc 1 307 0
 1169 0052 0246     		mov	r2, r0
 1170 0054 B8B9     		cbnz	r0, .L113
 297:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         {
 1171              		.loc 1 297 0
 1172 0056 05F58065 		add	r5, r5, #1024
 1173              	.LVL143:
 1174 005a E8E7     		b	.L102
 1175              	.LVL144:
 1176              	.L112:
 232:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       {
 1177              		.loc 1 232 0
 1178 005c 4CF25030 		movw	r0, #50000
 1179              	.LVL145:
 1180 0060 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 1181              	.LVL146:
 1182 0064 08B1     		cbz	r0, .L114
 177:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   uint32_t address = 0U;
 1183              		.loc 1 177 0
 1184 0066 0122     		movs	r2, #1
 1185 0068 10E0     		b	.L101
 1186              	.L114:
 235:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 1187              		.loc 1 235 0
 1188 006a 0120     		movs	r0, #1
 1189 006c FFF7FEFF 		bl	FLASH_MassErase
 1190              	.LVL147:
 238:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         
 1191              		.loc 1 238 0
 1192 0070 4CF25030 		movw	r0, #50000
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 44


 1193 0074 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 1194              	.LVL148:
 1195 0078 0246     		mov	r2, r0
 1196              	.LVL149:
 241:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****       }
 1197              		.loc 1 241 0
 1198 007a 0949     		ldr	r1, .L115+4
 1199 007c 0B69     		ldr	r3, [r1, #16]
 1200 007e 23F00403 		bic	r3, r3, #4
 1201 0082 0B61     		str	r3, [r1, #16]
 1202 0084 02E0     		b	.L101
 1203              	.LVL150:
 1204              	.L113:
 310:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****             break;
 1205              		.loc 1 310 0
 1206 0086 3560     		str	r5, [r6]
 311:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****           }
 1207              		.loc 1 311 0
 1208 0088 00E0     		b	.L101
 1209              	.LVL151:
 1210              	.L107:
 177:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   uint32_t address = 0U;
 1211              		.loc 1 177 0
 1212 008a 0122     		movs	r2, #1
 1213              	.LVL152:
 1214              	.L101:
 319:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 1215              		.loc 1 319 0
 1216 008c 034B     		ldr	r3, .L115
 1217 008e 0021     		movs	r1, #0
 1218 0090 1976     		strb	r1, [r3, #24]
 322:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 1219              		.loc 1 322 0
 1220 0092 1046     		mov	r0, r2
 1221 0094 70BD     		pop	{r4, r5, r6, pc}
 1222              	.LVL153:
 1223              	.L105:
 1224              	.LCFI10:
 1225              		.cfi_def_cfa_offset 0
 1226              		.cfi_restore 4
 1227              		.cfi_restore 5
 1228              		.cfi_restore 6
 1229              		.cfi_restore 14
 181:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 1230              		.loc 1 181 0
 1231 0096 0222     		movs	r2, #2
 322:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 1232              		.loc 1 322 0
 1233 0098 1046     		mov	r0, r2
 1234              	.LVL154:
 1235 009a 7047     		bx	lr
 1236              	.L116:
 1237              		.align	2
 1238              	.L115:
 1239 009c 00000000 		.word	pFlash
 1240 00a0 00200240 		.word	1073881088
 1241              		.cfi_endproc
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 45


 1242              	.LFE66:
 1244              		.section	.text.HAL_FLASHEx_Erase_IT,"ax",%progbits
 1245              		.align	1
 1246              		.global	HAL_FLASHEx_Erase_IT
 1247              		.syntax unified
 1248              		.thumb
 1249              		.thumb_func
 1250              		.fpu softvfp
 1252              	HAL_FLASHEx_Erase_IT:
 1253              	.LFB67:
 336:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
 1254              		.loc 1 336 0
 1255              		.cfi_startproc
 1256              		@ args = 0, pretend = 0, frame = 0
 1257              		@ frame_needed = 0, uses_anonymous_args = 0
 1258              	.LVL155:
 1259 0000 08B5     		push	{r3, lr}
 1260              	.LCFI11:
 1261              		.cfi_def_cfa_offset 8
 1262              		.cfi_offset 3, -8
 1263              		.cfi_offset 14, -4
 1264              	.LVL156:
 340:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 1265              		.loc 1 340 0
 1266 0002 144B     		ldr	r3, .L124
 1267 0004 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 1268 0006 012B     		cmp	r3, #1
 1269 0008 20D0     		beq	.L120
 340:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 1270              		.loc 1 340 0 is_stmt 0 discriminator 2
 1271 000a 124B     		ldr	r3, .L124
 1272 000c 0122     		movs	r2, #1
 1273 000e 1A76     		strb	r2, [r3, #24]
 343:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
 1274              		.loc 1 343 0 is_stmt 1 discriminator 2
 1275 0010 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1276 0012 EBB9     		cbnz	r3, .L121
 352:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 1277              		.loc 1 352 0
 1278 0014 104A     		ldr	r2, .L124+4
 1279 0016 1369     		ldr	r3, [r2, #16]
 1280 0018 43F4A053 		orr	r3, r3, #5120
 1281 001c 1361     		str	r3, [r2, #16]
 359:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   {
 1282              		.loc 1 359 0
 1283 001e 0368     		ldr	r3, [r0]
 1284 0020 022B     		cmp	r3, #2
 1285 0022 0BD0     		beq	.L123
 373:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     pFlash.DataRemaining = pEraseInit->NbPages;
 1286              		.loc 1 373 0
 1287 0024 0B4B     		ldr	r3, .L124
 1288 0026 0122     		movs	r2, #1
 1289 0028 1A70     		strb	r2, [r3]
 374:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****     pFlash.Address = pEraseInit->PageAddress;
 1290              		.loc 1 374 0
 1291 002a C268     		ldr	r2, [r0, #12]
 1292 002c 5A60     		str	r2, [r3, #4]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 46


 375:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 1293              		.loc 1 375 0
 1294 002e 8268     		ldr	r2, [r0, #8]
 1295 0030 9A60     		str	r2, [r3, #8]
 378:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 1296              		.loc 1 378 0
 1297 0032 8068     		ldr	r0, [r0, #8]
 1298              	.LVL157:
 1299 0034 FFF7FEFF 		bl	FLASH_PageErase
 1300              	.LVL158:
 381:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** }
 1301              		.loc 1 381 0
 1302 0038 0020     		movs	r0, #0
 1303 003a 0AE0     		b	.L118
 1304              	.LVL159:
 1305              	.L123:
 362:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****         FLASH_MassErase(pEraseInit->Banks);
 1306              		.loc 1 362 0
 1307 003c 054B     		ldr	r3, .L124
 1308 003e 0222     		movs	r2, #2
 1309 0040 1A70     		strb	r2, [r3]
 363:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 1310              		.loc 1 363 0
 1311 0042 4068     		ldr	r0, [r0, #4]
 1312              	.LVL160:
 1313 0044 FFF7FEFF 		bl	FLASH_MassErase
 1314              	.LVL161:
 381:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** }
 1315              		.loc 1 381 0
 1316 0048 0020     		movs	r0, #0
 1317 004a 02E0     		b	.L118
 1318              	.LVL162:
 1319              	.L120:
 340:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 1320              		.loc 1 340 0
 1321 004c 0220     		movs	r0, #2
 1322              	.LVL163:
 1323 004e 00E0     		b	.L118
 1324              	.LVL164:
 1325              	.L121:
 345:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c ****   }
 1326              		.loc 1 345 0
 1327 0050 0120     		movs	r0, #1
 1328              	.LVL165:
 1329              	.L118:
 382:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c **** 
 1330              		.loc 1 382 0
 1331 0052 08BD     		pop	{r3, pc}
 1332              	.L125:
 1333              		.align	2
 1334              	.L124:
 1335 0054 00000000 		.word	pFlash
 1336 0058 00200240 		.word	1073881088
 1337              		.cfi_endproc
 1338              	.LFE67:
 1340              		.text
 1341              	.Letext0:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 47


 1342              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 1343              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 1344              		.file 4 "Drivers/CMSIS/Include/core_cm3.h"
 1345              		.file 5 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/system_stm32f1xx.h"
 1346              		.file 6 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
 1347              		.file 7 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 1348              		.file 8 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 1349              		.file 9 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\lib\\gcc\\arm-none-eab
 1350              		.file 10 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\includ
 1351              		.file 11 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"
 1352              		.file 12 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash.h"
 1353              		.file 13 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s 			page 48


DEFINED SYMBOLS
                            *ABS*:00000000 stm32f1xx_hal_flash_ex.c
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:16     .text.FLASH_MassErase:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:22     .text.FLASH_MassErase:00000000 FLASH_MassErase
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:49     .text.FLASH_MassErase:0000001c $d
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:55     .text.FLASH_OB_GetWRP:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:61     .text.FLASH_OB_GetWRP:00000000 FLASH_OB_GetWRP
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:76     .text.FLASH_OB_GetWRP:00000008 $d
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:81     .text.FLASH_OB_GetRDP:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:87     .text.FLASH_OB_GetRDP:00000000 FLASH_OB_GetRDP
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:113    .text.FLASH_OB_GetRDP:00000014 $d
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:118    .text.FLASH_OB_GetUser:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:124    .text.FLASH_OB_GetUser:00000000 FLASH_OB_GetUser
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:140    .text.FLASH_OB_GetUser:0000000c $d
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:145    .text.FLASH_OB_RDP_LevelConfig:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:151    .text.FLASH_OB_RDP_LevelConfig:00000000 FLASH_OB_RDP_LevelConfig
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:231    .text.FLASH_OB_RDP_LevelConfig:00000064 $d
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:238    .text.FLASH_OB_UserConfig:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:244    .text.FLASH_OB_UserConfig:00000000 FLASH_OB_UserConfig
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:303    .text.FLASH_OB_UserConfig:00000040 $d
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:310    .text.FLASH_OB_ProgramData:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:316    .text.FLASH_OB_ProgramData:00000000 FLASH_OB_ProgramData
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:375    .text.FLASH_OB_ProgramData:00000040 $d
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:381    .text.HAL_FLASHEx_OBErase:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:388    .text.HAL_FLASHEx_OBErase:00000000 HAL_FLASHEx_OBErase
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:458    .text.HAL_FLASHEx_OBErase:00000050 $d
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:464    .text.FLASH_OB_EnableWRP:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:470    .text.FLASH_OB_EnableWRP:00000000 FLASH_OB_EnableWRP
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:626    .text.FLASH_OB_EnableWRP:000000b4 $d
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:633    .text.FLASH_OB_DisableWRP:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:639    .text.FLASH_OB_DisableWRP:00000000 FLASH_OB_DisableWRP
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:795    .text.FLASH_OB_DisableWRP:000000b4 $d
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:802    .text.HAL_FLASHEx_OBProgram:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:809    .text.HAL_FLASHEx_OBProgram:00000000 HAL_FLASHEx_OBProgram
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:963    .text.HAL_FLASHEx_OBProgram:000000a4 $d
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:968    .text.HAL_FLASHEx_OBGetConfig:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:975    .text.HAL_FLASHEx_OBGetConfig:00000000 HAL_FLASHEx_OBGetConfig
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:1009   .text.HAL_FLASHEx_OBGetUserData:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:1016   .text.HAL_FLASHEx_OBGetUserData:00000000 HAL_FLASHEx_OBGetUserData
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:1048   .text.HAL_FLASHEx_OBGetUserData:0000001c $d
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:1054   .text.FLASH_PageErase:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:1061   .text.FLASH_PageErase:00000000 FLASH_PageErase
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:1089   .text.FLASH_PageErase:0000001c $d
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:1095   .text.HAL_FLASHEx_Erase:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:1102   .text.HAL_FLASHEx_Erase:00000000 HAL_FLASHEx_Erase
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:1239   .text.HAL_FLASHEx_Erase:0000009c $d
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:1245   .text.HAL_FLASHEx_Erase_IT:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:1252   .text.HAL_FLASHEx_Erase_IT:00000000 HAL_FLASHEx_Erase_IT
C:\Users\crist\AppData\Local\Temp\ccu4eGFF.s:1335   .text.HAL_FLASHEx_Erase_IT:00000054 $d

UNDEFINED SYMBOLS
pFlash
FLASH_WaitForLastOperation
