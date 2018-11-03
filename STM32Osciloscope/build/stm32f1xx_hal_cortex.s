ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 1


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
  11              		.file	"stm32f1xx_hal_cortex.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.HAL_NVIC_SetPriorityGrouping,"ax",%progbits
  16              		.align	1
  17              		.global	HAL_NVIC_SetPriorityGrouping
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu softvfp
  23              	HAL_NVIC_SetPriorityGrouping:
  24              	.LFB66:
  25              		.file 1 "Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c"
   1:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /**
   2:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   ******************************************************************************
   3:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @file    stm32f1xx_hal_cortex.c
   4:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @author  MCD Application Team
   5:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @brief   CORTEX HAL module driver.
   6:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *          This file provides firmware functions to manage the following 
   7:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *          functionalities of the CORTEX:
   8:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *           + Initialization and de-initialization functions
   9:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *           + Peripheral Control functions 
  10:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *
  11:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   @verbatim  
  12:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   ==============================================================================
  13:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****                         ##### How to use this driver #####
  14:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   ==============================================================================
  15:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
  16:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     [..]  
  17:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     *** How to configure Interrupts using CORTEX HAL driver ***
  18:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     ===========================================================
  19:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     [..]     
  20:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     This section provides functions allowing to configure the NVIC interrupts (IRQ).
  21:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     The Cortex-M3 exceptions are managed by CMSIS functions.
  22:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****    
  23:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     (#) Configure the NVIC Priority Grouping using HAL_NVIC_SetPriorityGrouping()
  24:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****         function according to the following table.
  25:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     (#) Configure the priority of the selected IRQ Channels using HAL_NVIC_SetPriority(). 
  26:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     (#) Enable the selected IRQ Channels using HAL_NVIC_EnableIRQ().
  27:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     (#) please refer to programming manual for details in how to configure priority. 
  28:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****       
  29:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****      -@- When the NVIC_PRIORITYGROUP_0 is selected, IRQ preemption is no more possible. 
  30:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****          The pending IRQ priority will be managed only by the sub priority.
  31:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****    
  32:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****      -@- IRQ priority order (sorted by highest to lowest priority):
  33:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****         (+@) Lowest preemption priority
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 2


  34:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****         (+@) Lowest sub priority
  35:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****         (+@) Lowest hardware priority (IRQ number)
  36:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****  
  37:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     [..]  
  38:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     *** How to configure Systick using CORTEX HAL driver ***
  39:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     ========================================================
  40:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     [..]
  41:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     Setup SysTick Timer for time base.
  42:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****            
  43:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****    (+) The HAL_SYSTICK_Config()function calls the SysTick_Config() function which
  44:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****        is a CMSIS function that:
  45:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****         (++) Configures the SysTick Reload register with value passed as function parameter.
  46:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****         (++) Configures the SysTick IRQ priority to the lowest value 0x0F.
  47:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****         (++) Resets the SysTick Counter register.
  48:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****         (++) Configures the SysTick Counter clock source to be Core Clock Source (HCLK).
  49:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****         (++) Enables the SysTick Interrupt.
  50:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****         (++) Starts the SysTick Counter.
  51:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     
  52:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****    (+) You can change the SysTick Clock source to be HCLK_Div8 by calling the macro
  53:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****        __HAL_CORTEX_SYSTICKCLK_CONFIG(SYSTICK_CLKSOURCE_HCLK_DIV8) just after the
  54:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****        HAL_SYSTICK_Config() function call. The __HAL_CORTEX_SYSTICKCLK_CONFIG() macro is defined
  55:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****        inside the stm32f1xx_hal_cortex.h file.
  56:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
  57:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****    (+) You can change the SysTick IRQ priority by calling the
  58:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****        HAL_NVIC_SetPriority(SysTick_IRQn,...) function just after the HAL_SYSTICK_Config() function
  59:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****        call. The HAL_NVIC_SetPriority() call the NVIC_SetPriority() function which is a CMSIS funct
  60:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
  61:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****    (+) To adjust the SysTick time base, use the following formula:
  62:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****                             
  63:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****        Reload Value = SysTick Counter Clock (Hz) x  Desired Time base (s)
  64:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****        (++) Reload Value is the parameter to be passed for HAL_SYSTICK_Config() function
  65:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****        (++) Reload Value should not exceed 0xFFFFFF
  66:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****    
  67:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   @endverbatim
  68:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   ******************************************************************************
  69:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @attention
  70:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *
  71:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * <h2><center>&copy; COPYRIGHT(c) 2017 STMicroelectronics</center></h2>
  72:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *
  73:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * Redistribution and use in source and binary forms, with or without modification,
  74:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * are permitted provided that the following conditions are met:
  75:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  76:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *      this list of conditions and the following disclaimer.
  77:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  78:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *      this list of conditions and the following disclaimer in the documentation
  79:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *      and/or other materials provided with the distribution.
  80:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  81:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *      may be used to endorse or promote products derived from this software
  82:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *      without specific prior written permission.
  83:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *
  84:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  85:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  86:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  87:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  88:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  89:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  90:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 3


  91:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  92:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  93:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  94:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *
  95:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   ******************************************************************************
  96:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   */
  97:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
  98:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /* Includes ------------------------------------------------------------------*/
  99:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** #include "stm32f1xx_hal.h"
 100:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 101:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /** @addtogroup STM32F1xx_HAL_Driver
 102:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @{
 103:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   */
 104:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 105:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /** @defgroup CORTEX CORTEX
 106:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @brief CORTEX HAL module driver
 107:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @{
 108:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   */
 109:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 110:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** #ifdef HAL_CORTEX_MODULE_ENABLED
 111:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 112:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /* Private types -------------------------------------------------------------*/
 113:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /* Private variables ---------------------------------------------------------*/
 114:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /* Private constants ---------------------------------------------------------*/
 115:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /* Private macros ------------------------------------------------------------*/
 116:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /* Private functions ---------------------------------------------------------*/
 117:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /* Exported functions --------------------------------------------------------*/
 118:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 119:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /** @defgroup CORTEX_Exported_Functions CORTEX Exported Functions
 120:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @{
 121:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   */
 122:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 123:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 124:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /** @defgroup CORTEX_Exported_Functions_Group1 Initialization and de-initialization functions
 125:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *  @brief    Initialization and Configuration functions 
 126:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *
 127:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** @verbatim    
 128:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   ==============================================================================
 129:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****               ##### Initialization and de-initialization functions #####
 130:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   ==============================================================================
 131:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     [..]
 132:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****       This section provides the CORTEX HAL driver functions allowing to configure Interrupts
 133:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****       Systick functionalities 
 134:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 135:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** @endverbatim
 136:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @{
 137:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   */
 138:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 139:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 140:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /**
 141:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @brief  Sets the priority grouping field (preemption priority and subpriority)
 142:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         using the required unlock sequence.
 143:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @param  PriorityGroup: The priority grouping bits length. 
 144:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         This parameter can be one of the following values:
 145:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         @arg NVIC_PRIORITYGROUP_0: 0 bits for preemption priority
 146:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *                                    4 bits for subpriority
 147:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         @arg NVIC_PRIORITYGROUP_1: 1 bits for preemption priority
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 4


 148:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *                                    3 bits for subpriority
 149:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         @arg NVIC_PRIORITYGROUP_2: 2 bits for preemption priority
 150:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *                                    2 bits for subpriority
 151:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         @arg NVIC_PRIORITYGROUP_3: 3 bits for preemption priority
 152:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *                                    1 bits for subpriority
 153:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         @arg NVIC_PRIORITYGROUP_4: 4 bits for preemption priority
 154:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *                                    0 bits for subpriority
 155:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @note   When the NVIC_PriorityGroup_0 is selected, IRQ preemption is no more possible. 
 156:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         The pending IRQ priority will be managed only by the subpriority. 
 157:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @retval None
 158:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   */
 159:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** void HAL_NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
 160:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** {
  26              		.loc 1 160 0
  27              		.cfi_startproc
  28              		@ args = 0, pretend = 0, frame = 0
  29              		@ frame_needed = 0, uses_anonymous_args = 0
  30              		@ link register save eliminated.
  31              	.LVL0:
  32              	.LBB40:
  33              	.LBB41:
  34              		.file 2 "Drivers/CMSIS/Include/core_cm3.h"
   1:Drivers/CMSIS/Include/core_cm3.h **** /**************************************************************************//**
   2:Drivers/CMSIS/Include/core_cm3.h ****  * @file     core_cm3.h
   3:Drivers/CMSIS/Include/core_cm3.h ****  * @brief    CMSIS Cortex-M3 Core Peripheral Access Layer Header File
   4:Drivers/CMSIS/Include/core_cm3.h ****  * @version  V4.30
   5:Drivers/CMSIS/Include/core_cm3.h ****  * @date     20. October 2015
   6:Drivers/CMSIS/Include/core_cm3.h ****  ******************************************************************************/
   7:Drivers/CMSIS/Include/core_cm3.h **** /* Copyright (c) 2009 - 2015 ARM LIMITED
   8:Drivers/CMSIS/Include/core_cm3.h **** 
   9:Drivers/CMSIS/Include/core_cm3.h ****    All rights reserved.
  10:Drivers/CMSIS/Include/core_cm3.h ****    Redistribution and use in source and binary forms, with or without
  11:Drivers/CMSIS/Include/core_cm3.h ****    modification, are permitted provided that the following conditions are met:
  12:Drivers/CMSIS/Include/core_cm3.h ****    - Redistributions of source code must retain the above copyright
  13:Drivers/CMSIS/Include/core_cm3.h ****      notice, this list of conditions and the following disclaimer.
  14:Drivers/CMSIS/Include/core_cm3.h ****    - Redistributions in binary form must reproduce the above copyright
  15:Drivers/CMSIS/Include/core_cm3.h ****      notice, this list of conditions and the following disclaimer in the
  16:Drivers/CMSIS/Include/core_cm3.h ****      documentation and/or other materials provided with the distribution.
  17:Drivers/CMSIS/Include/core_cm3.h ****    - Neither the name of ARM nor the names of its contributors may be used
  18:Drivers/CMSIS/Include/core_cm3.h ****      to endorse or promote products derived from this software without
  19:Drivers/CMSIS/Include/core_cm3.h ****      specific prior written permission.
  20:Drivers/CMSIS/Include/core_cm3.h ****    *
  21:Drivers/CMSIS/Include/core_cm3.h ****    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  22:Drivers/CMSIS/Include/core_cm3.h ****    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  23:Drivers/CMSIS/Include/core_cm3.h ****    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  24:Drivers/CMSIS/Include/core_cm3.h ****    ARE DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS AND CONTRIBUTORS BE
  25:Drivers/CMSIS/Include/core_cm3.h ****    LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  26:Drivers/CMSIS/Include/core_cm3.h ****    CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  27:Drivers/CMSIS/Include/core_cm3.h ****    SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  28:Drivers/CMSIS/Include/core_cm3.h ****    INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  29:Drivers/CMSIS/Include/core_cm3.h ****    CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  30:Drivers/CMSIS/Include/core_cm3.h ****    ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  31:Drivers/CMSIS/Include/core_cm3.h ****    POSSIBILITY OF SUCH DAMAGE.
  32:Drivers/CMSIS/Include/core_cm3.h ****    ---------------------------------------------------------------------------*/
  33:Drivers/CMSIS/Include/core_cm3.h **** 
  34:Drivers/CMSIS/Include/core_cm3.h **** 
  35:Drivers/CMSIS/Include/core_cm3.h **** #if   defined ( __ICCARM__ )
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 5


  36:Drivers/CMSIS/Include/core_cm3.h ****  #pragma system_include         /* treat file as system include file for MISRA check */
  37:Drivers/CMSIS/Include/core_cm3.h **** #elif defined(__ARMCC_VERSION) && (__ARMCC_VERSION >= 6010050)
  38:Drivers/CMSIS/Include/core_cm3.h ****   #pragma clang system_header   /* treat file as system include file */
  39:Drivers/CMSIS/Include/core_cm3.h **** #endif
  40:Drivers/CMSIS/Include/core_cm3.h **** 
  41:Drivers/CMSIS/Include/core_cm3.h **** #ifndef __CORE_CM3_H_GENERIC
  42:Drivers/CMSIS/Include/core_cm3.h **** #define __CORE_CM3_H_GENERIC
  43:Drivers/CMSIS/Include/core_cm3.h **** 
  44:Drivers/CMSIS/Include/core_cm3.h **** #include <stdint.h>
  45:Drivers/CMSIS/Include/core_cm3.h **** 
  46:Drivers/CMSIS/Include/core_cm3.h **** #ifdef __cplusplus
  47:Drivers/CMSIS/Include/core_cm3.h ****  extern "C" {
  48:Drivers/CMSIS/Include/core_cm3.h **** #endif
  49:Drivers/CMSIS/Include/core_cm3.h **** 
  50:Drivers/CMSIS/Include/core_cm3.h **** /**
  51:Drivers/CMSIS/Include/core_cm3.h ****   \page CMSIS_MISRA_Exceptions  MISRA-C:2004 Compliance Exceptions
  52:Drivers/CMSIS/Include/core_cm3.h ****   CMSIS violates the following MISRA-C:2004 rules:
  53:Drivers/CMSIS/Include/core_cm3.h **** 
  54:Drivers/CMSIS/Include/core_cm3.h ****    \li Required Rule 8.5, object/function definition in header file.<br>
  55:Drivers/CMSIS/Include/core_cm3.h ****      Function definitions in header files are used to allow 'inlining'.
  56:Drivers/CMSIS/Include/core_cm3.h **** 
  57:Drivers/CMSIS/Include/core_cm3.h ****    \li Required Rule 18.4, declaration of union type or object of union type: '{...}'.<br>
  58:Drivers/CMSIS/Include/core_cm3.h ****      Unions are used for effective representation of core registers.
  59:Drivers/CMSIS/Include/core_cm3.h **** 
  60:Drivers/CMSIS/Include/core_cm3.h ****    \li Advisory Rule 19.7, Function-like macro defined.<br>
  61:Drivers/CMSIS/Include/core_cm3.h ****      Function-like macros are used to allow more efficient code.
  62:Drivers/CMSIS/Include/core_cm3.h ****  */
  63:Drivers/CMSIS/Include/core_cm3.h **** 
  64:Drivers/CMSIS/Include/core_cm3.h **** 
  65:Drivers/CMSIS/Include/core_cm3.h **** /*******************************************************************************
  66:Drivers/CMSIS/Include/core_cm3.h ****  *                 CMSIS definitions
  67:Drivers/CMSIS/Include/core_cm3.h ****  ******************************************************************************/
  68:Drivers/CMSIS/Include/core_cm3.h **** /**
  69:Drivers/CMSIS/Include/core_cm3.h ****   \ingroup Cortex_M3
  70:Drivers/CMSIS/Include/core_cm3.h ****   @{
  71:Drivers/CMSIS/Include/core_cm3.h ****  */
  72:Drivers/CMSIS/Include/core_cm3.h **** 
  73:Drivers/CMSIS/Include/core_cm3.h **** /*  CMSIS CM3 definitions */
  74:Drivers/CMSIS/Include/core_cm3.h **** #define __CM3_CMSIS_VERSION_MAIN  (0x04U)                                      /*!< [31:16] CMSIS H
  75:Drivers/CMSIS/Include/core_cm3.h **** #define __CM3_CMSIS_VERSION_SUB   (0x1EU)                                      /*!< [15:0]  CMSIS H
  76:Drivers/CMSIS/Include/core_cm3.h **** #define __CM3_CMSIS_VERSION       ((__CM3_CMSIS_VERSION_MAIN << 16U) | \
  77:Drivers/CMSIS/Include/core_cm3.h ****                                     __CM3_CMSIS_VERSION_SUB           )        /*!< CMSIS HAL versi
  78:Drivers/CMSIS/Include/core_cm3.h **** 
  79:Drivers/CMSIS/Include/core_cm3.h **** #define __CORTEX_M                (0x03U)                                      /*!< Cortex-M Core *
  80:Drivers/CMSIS/Include/core_cm3.h **** 
  81:Drivers/CMSIS/Include/core_cm3.h **** 
  82:Drivers/CMSIS/Include/core_cm3.h **** #if   defined ( __CC_ARM )
  83:Drivers/CMSIS/Include/core_cm3.h ****   #define __ASM            __asm                                      /*!< asm keyword for ARM Comp
  84:Drivers/CMSIS/Include/core_cm3.h ****   #define __INLINE         __inline                                   /*!< inline keyword for ARM C
  85:Drivers/CMSIS/Include/core_cm3.h ****   #define __STATIC_INLINE  static __inline
  86:Drivers/CMSIS/Include/core_cm3.h **** 
  87:Drivers/CMSIS/Include/core_cm3.h **** #elif defined(__ARMCC_VERSION) && (__ARMCC_VERSION >= 6010050)
  88:Drivers/CMSIS/Include/core_cm3.h ****   #define __ASM            __asm                                      /*!< asm keyword for ARM Comp
  89:Drivers/CMSIS/Include/core_cm3.h ****   #define __INLINE         __inline                                   /*!< inline keyword for ARM C
  90:Drivers/CMSIS/Include/core_cm3.h ****   #define __STATIC_INLINE  static __inline
  91:Drivers/CMSIS/Include/core_cm3.h **** 
  92:Drivers/CMSIS/Include/core_cm3.h **** #elif defined ( __GNUC__ )
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 6


  93:Drivers/CMSIS/Include/core_cm3.h ****   #define __ASM            __asm                                      /*!< asm keyword for GNU Comp
  94:Drivers/CMSIS/Include/core_cm3.h ****   #define __INLINE         inline                                     /*!< inline keyword for GNU C
  95:Drivers/CMSIS/Include/core_cm3.h ****   #define __STATIC_INLINE  static inline
  96:Drivers/CMSIS/Include/core_cm3.h **** 
  97:Drivers/CMSIS/Include/core_cm3.h **** #elif defined ( __ICCARM__ )
  98:Drivers/CMSIS/Include/core_cm3.h ****   #define __ASM            __asm                                      /*!< asm keyword for IAR Comp
  99:Drivers/CMSIS/Include/core_cm3.h ****   #define __INLINE         inline                                     /*!< inline keyword for IAR C
 100:Drivers/CMSIS/Include/core_cm3.h ****   #define __STATIC_INLINE  static inline
 101:Drivers/CMSIS/Include/core_cm3.h **** 
 102:Drivers/CMSIS/Include/core_cm3.h **** #elif defined ( __TMS470__ )
 103:Drivers/CMSIS/Include/core_cm3.h ****   #define __ASM            __asm                                      /*!< asm keyword for TI CCS C
 104:Drivers/CMSIS/Include/core_cm3.h ****   #define __STATIC_INLINE  static inline
 105:Drivers/CMSIS/Include/core_cm3.h **** 
 106:Drivers/CMSIS/Include/core_cm3.h **** #elif defined ( __TASKING__ )
 107:Drivers/CMSIS/Include/core_cm3.h ****   #define __ASM            __asm                                      /*!< asm keyword for TASKING 
 108:Drivers/CMSIS/Include/core_cm3.h ****   #define __INLINE         inline                                     /*!< inline keyword for TASKI
 109:Drivers/CMSIS/Include/core_cm3.h ****   #define __STATIC_INLINE  static inline
 110:Drivers/CMSIS/Include/core_cm3.h **** 
 111:Drivers/CMSIS/Include/core_cm3.h **** #elif defined ( __CSMC__ )
 112:Drivers/CMSIS/Include/core_cm3.h ****   #define __packed
 113:Drivers/CMSIS/Include/core_cm3.h ****   #define __ASM            _asm                                      /*!< asm keyword for COSMIC Co
 114:Drivers/CMSIS/Include/core_cm3.h ****   #define __INLINE         inline                                    /*!< inline keyword for COSMIC
 115:Drivers/CMSIS/Include/core_cm3.h ****   #define __STATIC_INLINE  static inline
 116:Drivers/CMSIS/Include/core_cm3.h **** 
 117:Drivers/CMSIS/Include/core_cm3.h **** #else
 118:Drivers/CMSIS/Include/core_cm3.h ****   #error Unknown compiler
 119:Drivers/CMSIS/Include/core_cm3.h **** #endif
 120:Drivers/CMSIS/Include/core_cm3.h **** 
 121:Drivers/CMSIS/Include/core_cm3.h **** /** __FPU_USED indicates whether an FPU is used or not.
 122:Drivers/CMSIS/Include/core_cm3.h ****     This core does not support an FPU at all
 123:Drivers/CMSIS/Include/core_cm3.h **** */
 124:Drivers/CMSIS/Include/core_cm3.h **** #define __FPU_USED       0U
 125:Drivers/CMSIS/Include/core_cm3.h **** 
 126:Drivers/CMSIS/Include/core_cm3.h **** #if defined ( __CC_ARM )
 127:Drivers/CMSIS/Include/core_cm3.h ****   #if defined __TARGET_FPU_VFP
 128:Drivers/CMSIS/Include/core_cm3.h ****     #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)"
 129:Drivers/CMSIS/Include/core_cm3.h ****   #endif
 130:Drivers/CMSIS/Include/core_cm3.h **** 
 131:Drivers/CMSIS/Include/core_cm3.h **** #elif defined(__ARMCC_VERSION) && (__ARMCC_VERSION >= 6010050)
 132:Drivers/CMSIS/Include/core_cm3.h ****   #if defined __ARM_PCS_VFP
 133:Drivers/CMSIS/Include/core_cm3.h ****     #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)"
 134:Drivers/CMSIS/Include/core_cm3.h ****   #endif
 135:Drivers/CMSIS/Include/core_cm3.h **** 
 136:Drivers/CMSIS/Include/core_cm3.h **** #elif defined ( __GNUC__ )
 137:Drivers/CMSIS/Include/core_cm3.h ****   #if defined (__VFP_FP__) && !defined(__SOFTFP__)
 138:Drivers/CMSIS/Include/core_cm3.h ****     #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)"
 139:Drivers/CMSIS/Include/core_cm3.h ****   #endif
 140:Drivers/CMSIS/Include/core_cm3.h **** 
 141:Drivers/CMSIS/Include/core_cm3.h **** #elif defined ( __ICCARM__ )
 142:Drivers/CMSIS/Include/core_cm3.h ****   #if defined __ARMVFP__
 143:Drivers/CMSIS/Include/core_cm3.h ****     #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)"
 144:Drivers/CMSIS/Include/core_cm3.h ****   #endif
 145:Drivers/CMSIS/Include/core_cm3.h **** 
 146:Drivers/CMSIS/Include/core_cm3.h **** #elif defined ( __TMS470__ )
 147:Drivers/CMSIS/Include/core_cm3.h ****   #if defined __TI_VFP_SUPPORT__
 148:Drivers/CMSIS/Include/core_cm3.h ****     #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)"
 149:Drivers/CMSIS/Include/core_cm3.h ****   #endif
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 7


 150:Drivers/CMSIS/Include/core_cm3.h **** 
 151:Drivers/CMSIS/Include/core_cm3.h **** #elif defined ( __TASKING__ )
 152:Drivers/CMSIS/Include/core_cm3.h ****   #if defined __FPU_VFP__
 153:Drivers/CMSIS/Include/core_cm3.h ****     #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)"
 154:Drivers/CMSIS/Include/core_cm3.h ****   #endif
 155:Drivers/CMSIS/Include/core_cm3.h **** 
 156:Drivers/CMSIS/Include/core_cm3.h **** #elif defined ( __CSMC__ )
 157:Drivers/CMSIS/Include/core_cm3.h ****   #if ( __CSMC__ & 0x400U)
 158:Drivers/CMSIS/Include/core_cm3.h ****     #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)"
 159:Drivers/CMSIS/Include/core_cm3.h ****   #endif
 160:Drivers/CMSIS/Include/core_cm3.h **** 
 161:Drivers/CMSIS/Include/core_cm3.h **** #endif
 162:Drivers/CMSIS/Include/core_cm3.h **** 
 163:Drivers/CMSIS/Include/core_cm3.h **** #include "core_cmInstr.h"                /* Core Instruction Access */
 164:Drivers/CMSIS/Include/core_cm3.h **** #include "core_cmFunc.h"                 /* Core Function Access */
 165:Drivers/CMSIS/Include/core_cm3.h **** 
 166:Drivers/CMSIS/Include/core_cm3.h **** #ifdef __cplusplus
 167:Drivers/CMSIS/Include/core_cm3.h **** }
 168:Drivers/CMSIS/Include/core_cm3.h **** #endif
 169:Drivers/CMSIS/Include/core_cm3.h **** 
 170:Drivers/CMSIS/Include/core_cm3.h **** #endif /* __CORE_CM3_H_GENERIC */
 171:Drivers/CMSIS/Include/core_cm3.h **** 
 172:Drivers/CMSIS/Include/core_cm3.h **** #ifndef __CMSIS_GENERIC
 173:Drivers/CMSIS/Include/core_cm3.h **** 
 174:Drivers/CMSIS/Include/core_cm3.h **** #ifndef __CORE_CM3_H_DEPENDANT
 175:Drivers/CMSIS/Include/core_cm3.h **** #define __CORE_CM3_H_DEPENDANT
 176:Drivers/CMSIS/Include/core_cm3.h **** 
 177:Drivers/CMSIS/Include/core_cm3.h **** #ifdef __cplusplus
 178:Drivers/CMSIS/Include/core_cm3.h ****  extern "C" {
 179:Drivers/CMSIS/Include/core_cm3.h **** #endif
 180:Drivers/CMSIS/Include/core_cm3.h **** 
 181:Drivers/CMSIS/Include/core_cm3.h **** /* check device defines and use defaults */
 182:Drivers/CMSIS/Include/core_cm3.h **** #if defined __CHECK_DEVICE_DEFINES
 183:Drivers/CMSIS/Include/core_cm3.h ****   #ifndef __CM3_REV
 184:Drivers/CMSIS/Include/core_cm3.h ****     #define __CM3_REV               0x0200U
 185:Drivers/CMSIS/Include/core_cm3.h ****     #warning "__CM3_REV not defined in device header file; using default!"
 186:Drivers/CMSIS/Include/core_cm3.h ****   #endif
 187:Drivers/CMSIS/Include/core_cm3.h **** 
 188:Drivers/CMSIS/Include/core_cm3.h ****   #ifndef __MPU_PRESENT
 189:Drivers/CMSIS/Include/core_cm3.h ****     #define __MPU_PRESENT             0U
 190:Drivers/CMSIS/Include/core_cm3.h ****     #warning "__MPU_PRESENT not defined in device header file; using default!"
 191:Drivers/CMSIS/Include/core_cm3.h ****   #endif
 192:Drivers/CMSIS/Include/core_cm3.h **** 
 193:Drivers/CMSIS/Include/core_cm3.h ****   #ifndef __NVIC_PRIO_BITS
 194:Drivers/CMSIS/Include/core_cm3.h ****     #define __NVIC_PRIO_BITS          4U
 195:Drivers/CMSIS/Include/core_cm3.h ****     #warning "__NVIC_PRIO_BITS not defined in device header file; using default!"
 196:Drivers/CMSIS/Include/core_cm3.h ****   #endif
 197:Drivers/CMSIS/Include/core_cm3.h **** 
 198:Drivers/CMSIS/Include/core_cm3.h ****   #ifndef __Vendor_SysTickConfig
 199:Drivers/CMSIS/Include/core_cm3.h ****     #define __Vendor_SysTickConfig    0U
 200:Drivers/CMSIS/Include/core_cm3.h ****     #warning "__Vendor_SysTickConfig not defined in device header file; using default!"
 201:Drivers/CMSIS/Include/core_cm3.h ****   #endif
 202:Drivers/CMSIS/Include/core_cm3.h **** #endif
 203:Drivers/CMSIS/Include/core_cm3.h **** 
 204:Drivers/CMSIS/Include/core_cm3.h **** /* IO definitions (access restrictions to peripheral registers) */
 205:Drivers/CMSIS/Include/core_cm3.h **** /**
 206:Drivers/CMSIS/Include/core_cm3.h ****     \defgroup CMSIS_glob_defs CMSIS Global Defines
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 8


 207:Drivers/CMSIS/Include/core_cm3.h **** 
 208:Drivers/CMSIS/Include/core_cm3.h ****     <strong>IO Type Qualifiers</strong> are used
 209:Drivers/CMSIS/Include/core_cm3.h ****     \li to specify the access to peripheral variables.
 210:Drivers/CMSIS/Include/core_cm3.h ****     \li for automatic generation of peripheral register debug information.
 211:Drivers/CMSIS/Include/core_cm3.h **** */
 212:Drivers/CMSIS/Include/core_cm3.h **** #ifdef __cplusplus
 213:Drivers/CMSIS/Include/core_cm3.h ****   #define   __I     volatile             /*!< Defines 'read only' permissions */
 214:Drivers/CMSIS/Include/core_cm3.h **** #else
 215:Drivers/CMSIS/Include/core_cm3.h ****   #define   __I     volatile const       /*!< Defines 'read only' permissions */
 216:Drivers/CMSIS/Include/core_cm3.h **** #endif
 217:Drivers/CMSIS/Include/core_cm3.h **** #define     __O     volatile             /*!< Defines 'write only' permissions */
 218:Drivers/CMSIS/Include/core_cm3.h **** #define     __IO    volatile             /*!< Defines 'read / write' permissions */
 219:Drivers/CMSIS/Include/core_cm3.h **** 
 220:Drivers/CMSIS/Include/core_cm3.h **** /* following defines should be used for structure members */
 221:Drivers/CMSIS/Include/core_cm3.h **** #define     __IM     volatile const      /*! Defines 'read only' structure member permissions */
 222:Drivers/CMSIS/Include/core_cm3.h **** #define     __OM     volatile            /*! Defines 'write only' structure member permissions */
 223:Drivers/CMSIS/Include/core_cm3.h **** #define     __IOM    volatile            /*! Defines 'read / write' structure member permissions */
 224:Drivers/CMSIS/Include/core_cm3.h **** 
 225:Drivers/CMSIS/Include/core_cm3.h **** /*@} end of group Cortex_M3 */
 226:Drivers/CMSIS/Include/core_cm3.h **** 
 227:Drivers/CMSIS/Include/core_cm3.h **** 
 228:Drivers/CMSIS/Include/core_cm3.h **** 
 229:Drivers/CMSIS/Include/core_cm3.h **** /*******************************************************************************
 230:Drivers/CMSIS/Include/core_cm3.h ****  *                 Register Abstraction
 231:Drivers/CMSIS/Include/core_cm3.h ****   Core Register contain:
 232:Drivers/CMSIS/Include/core_cm3.h ****   - Core Register
 233:Drivers/CMSIS/Include/core_cm3.h ****   - Core NVIC Register
 234:Drivers/CMSIS/Include/core_cm3.h ****   - Core SCB Register
 235:Drivers/CMSIS/Include/core_cm3.h ****   - Core SysTick Register
 236:Drivers/CMSIS/Include/core_cm3.h ****   - Core Debug Register
 237:Drivers/CMSIS/Include/core_cm3.h ****   - Core MPU Register
 238:Drivers/CMSIS/Include/core_cm3.h ****  ******************************************************************************/
 239:Drivers/CMSIS/Include/core_cm3.h **** /**
 240:Drivers/CMSIS/Include/core_cm3.h ****   \defgroup CMSIS_core_register Defines and Type Definitions
 241:Drivers/CMSIS/Include/core_cm3.h ****   \brief Type definitions and defines for Cortex-M processor based devices.
 242:Drivers/CMSIS/Include/core_cm3.h **** */
 243:Drivers/CMSIS/Include/core_cm3.h **** 
 244:Drivers/CMSIS/Include/core_cm3.h **** /**
 245:Drivers/CMSIS/Include/core_cm3.h ****   \ingroup    CMSIS_core_register
 246:Drivers/CMSIS/Include/core_cm3.h ****   \defgroup   CMSIS_CORE  Status and Control Registers
 247:Drivers/CMSIS/Include/core_cm3.h ****   \brief      Core Register type definitions.
 248:Drivers/CMSIS/Include/core_cm3.h ****   @{
 249:Drivers/CMSIS/Include/core_cm3.h ****  */
 250:Drivers/CMSIS/Include/core_cm3.h **** 
 251:Drivers/CMSIS/Include/core_cm3.h **** /**
 252:Drivers/CMSIS/Include/core_cm3.h ****   \brief  Union type to access the Application Program Status Register (APSR).
 253:Drivers/CMSIS/Include/core_cm3.h ****  */
 254:Drivers/CMSIS/Include/core_cm3.h **** typedef union
 255:Drivers/CMSIS/Include/core_cm3.h **** {
 256:Drivers/CMSIS/Include/core_cm3.h ****   struct
 257:Drivers/CMSIS/Include/core_cm3.h ****   {
 258:Drivers/CMSIS/Include/core_cm3.h ****     uint32_t _reserved0:27;              /*!< bit:  0..26  Reserved */
 259:Drivers/CMSIS/Include/core_cm3.h ****     uint32_t Q:1;                        /*!< bit:     27  Saturation condition flag */
 260:Drivers/CMSIS/Include/core_cm3.h ****     uint32_t V:1;                        /*!< bit:     28  Overflow condition code flag */
 261:Drivers/CMSIS/Include/core_cm3.h ****     uint32_t C:1;                        /*!< bit:     29  Carry condition code flag */
 262:Drivers/CMSIS/Include/core_cm3.h ****     uint32_t Z:1;                        /*!< bit:     30  Zero condition code flag */
 263:Drivers/CMSIS/Include/core_cm3.h ****     uint32_t N:1;                        /*!< bit:     31  Negative condition code flag */
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 9


 264:Drivers/CMSIS/Include/core_cm3.h ****   } b;                                   /*!< Structure used for bit  access */
 265:Drivers/CMSIS/Include/core_cm3.h ****   uint32_t w;                            /*!< Type      used for word access */
 266:Drivers/CMSIS/Include/core_cm3.h **** } APSR_Type;
 267:Drivers/CMSIS/Include/core_cm3.h **** 
 268:Drivers/CMSIS/Include/core_cm3.h **** /* APSR Register Definitions */
 269:Drivers/CMSIS/Include/core_cm3.h **** #define APSR_N_Pos                         31U                                            /*!< APSR
 270:Drivers/CMSIS/Include/core_cm3.h **** #define APSR_N_Msk                         (1UL << APSR_N_Pos)                            /*!< APSR
 271:Drivers/CMSIS/Include/core_cm3.h **** 
 272:Drivers/CMSIS/Include/core_cm3.h **** #define APSR_Z_Pos                         30U                                            /*!< APSR
 273:Drivers/CMSIS/Include/core_cm3.h **** #define APSR_Z_Msk                         (1UL << APSR_Z_Pos)                            /*!< APSR
 274:Drivers/CMSIS/Include/core_cm3.h **** 
 275:Drivers/CMSIS/Include/core_cm3.h **** #define APSR_C_Pos                         29U                                            /*!< APSR
 276:Drivers/CMSIS/Include/core_cm3.h **** #define APSR_C_Msk                         (1UL << APSR_C_Pos)                            /*!< APSR
 277:Drivers/CMSIS/Include/core_cm3.h **** 
 278:Drivers/CMSIS/Include/core_cm3.h **** #define APSR_V_Pos                         28U                                            /*!< APSR
 279:Drivers/CMSIS/Include/core_cm3.h **** #define APSR_V_Msk                         (1UL << APSR_V_Pos)                            /*!< APSR
 280:Drivers/CMSIS/Include/core_cm3.h **** 
 281:Drivers/CMSIS/Include/core_cm3.h **** #define APSR_Q_Pos                         27U                                            /*!< APSR
 282:Drivers/CMSIS/Include/core_cm3.h **** #define APSR_Q_Msk                         (1UL << APSR_Q_Pos)                            /*!< APSR
 283:Drivers/CMSIS/Include/core_cm3.h **** 
 284:Drivers/CMSIS/Include/core_cm3.h **** 
 285:Drivers/CMSIS/Include/core_cm3.h **** /**
 286:Drivers/CMSIS/Include/core_cm3.h ****   \brief  Union type to access the Interrupt Program Status Register (IPSR).
 287:Drivers/CMSIS/Include/core_cm3.h ****  */
 288:Drivers/CMSIS/Include/core_cm3.h **** typedef union
 289:Drivers/CMSIS/Include/core_cm3.h **** {
 290:Drivers/CMSIS/Include/core_cm3.h ****   struct
 291:Drivers/CMSIS/Include/core_cm3.h ****   {
 292:Drivers/CMSIS/Include/core_cm3.h ****     uint32_t ISR:9;                      /*!< bit:  0.. 8  Exception number */
 293:Drivers/CMSIS/Include/core_cm3.h ****     uint32_t _reserved0:23;              /*!< bit:  9..31  Reserved */
 294:Drivers/CMSIS/Include/core_cm3.h ****   } b;                                   /*!< Structure used for bit  access */
 295:Drivers/CMSIS/Include/core_cm3.h ****   uint32_t w;                            /*!< Type      used for word access */
 296:Drivers/CMSIS/Include/core_cm3.h **** } IPSR_Type;
 297:Drivers/CMSIS/Include/core_cm3.h **** 
 298:Drivers/CMSIS/Include/core_cm3.h **** /* IPSR Register Definitions */
 299:Drivers/CMSIS/Include/core_cm3.h **** #define IPSR_ISR_Pos                        0U                                            /*!< IPSR
 300:Drivers/CMSIS/Include/core_cm3.h **** #define IPSR_ISR_Msk                       (0x1FFUL /*<< IPSR_ISR_Pos*/)                  /*!< IPSR
 301:Drivers/CMSIS/Include/core_cm3.h **** 
 302:Drivers/CMSIS/Include/core_cm3.h **** 
 303:Drivers/CMSIS/Include/core_cm3.h **** /**
 304:Drivers/CMSIS/Include/core_cm3.h ****   \brief  Union type to access the Special-Purpose Program Status Registers (xPSR).
 305:Drivers/CMSIS/Include/core_cm3.h ****  */
 306:Drivers/CMSIS/Include/core_cm3.h **** typedef union
 307:Drivers/CMSIS/Include/core_cm3.h **** {
 308:Drivers/CMSIS/Include/core_cm3.h ****   struct
 309:Drivers/CMSIS/Include/core_cm3.h ****   {
 310:Drivers/CMSIS/Include/core_cm3.h ****     uint32_t ISR:9;                      /*!< bit:  0.. 8  Exception number */
 311:Drivers/CMSIS/Include/core_cm3.h ****     uint32_t _reserved0:15;              /*!< bit:  9..23  Reserved */
 312:Drivers/CMSIS/Include/core_cm3.h ****     uint32_t T:1;                        /*!< bit:     24  Thumb bit        (read 0) */
 313:Drivers/CMSIS/Include/core_cm3.h ****     uint32_t IT:2;                       /*!< bit: 25..26  saved IT state   (read 0) */
 314:Drivers/CMSIS/Include/core_cm3.h ****     uint32_t Q:1;                        /*!< bit:     27  Saturation condition flag */
 315:Drivers/CMSIS/Include/core_cm3.h ****     uint32_t V:1;                        /*!< bit:     28  Overflow condition code flag */
 316:Drivers/CMSIS/Include/core_cm3.h ****     uint32_t C:1;                        /*!< bit:     29  Carry condition code flag */
 317:Drivers/CMSIS/Include/core_cm3.h ****     uint32_t Z:1;                        /*!< bit:     30  Zero condition code flag */
 318:Drivers/CMSIS/Include/core_cm3.h ****     uint32_t N:1;                        /*!< bit:     31  Negative condition code flag */
 319:Drivers/CMSIS/Include/core_cm3.h ****   } b;                                   /*!< Structure used for bit  access */
 320:Drivers/CMSIS/Include/core_cm3.h ****   uint32_t w;                            /*!< Type      used for word access */
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 10


 321:Drivers/CMSIS/Include/core_cm3.h **** } xPSR_Type;
 322:Drivers/CMSIS/Include/core_cm3.h **** 
 323:Drivers/CMSIS/Include/core_cm3.h **** /* xPSR Register Definitions */
 324:Drivers/CMSIS/Include/core_cm3.h **** #define xPSR_N_Pos                         31U                                            /*!< xPSR
 325:Drivers/CMSIS/Include/core_cm3.h **** #define xPSR_N_Msk                         (1UL << xPSR_N_Pos)                            /*!< xPSR
 326:Drivers/CMSIS/Include/core_cm3.h **** 
 327:Drivers/CMSIS/Include/core_cm3.h **** #define xPSR_Z_Pos                         30U                                            /*!< xPSR
 328:Drivers/CMSIS/Include/core_cm3.h **** #define xPSR_Z_Msk                         (1UL << xPSR_Z_Pos)                            /*!< xPSR
 329:Drivers/CMSIS/Include/core_cm3.h **** 
 330:Drivers/CMSIS/Include/core_cm3.h **** #define xPSR_C_Pos                         29U                                            /*!< xPSR
 331:Drivers/CMSIS/Include/core_cm3.h **** #define xPSR_C_Msk                         (1UL << xPSR_C_Pos)                            /*!< xPSR
 332:Drivers/CMSIS/Include/core_cm3.h **** 
 333:Drivers/CMSIS/Include/core_cm3.h **** #define xPSR_V_Pos                         28U                                            /*!< xPSR
 334:Drivers/CMSIS/Include/core_cm3.h **** #define xPSR_V_Msk                         (1UL << xPSR_V_Pos)                            /*!< xPSR
 335:Drivers/CMSIS/Include/core_cm3.h **** 
 336:Drivers/CMSIS/Include/core_cm3.h **** #define xPSR_Q_Pos                         27U                                            /*!< xPSR
 337:Drivers/CMSIS/Include/core_cm3.h **** #define xPSR_Q_Msk                         (1UL << xPSR_Q_Pos)                            /*!< xPSR
 338:Drivers/CMSIS/Include/core_cm3.h **** 
 339:Drivers/CMSIS/Include/core_cm3.h **** #define xPSR_IT_Pos                        25U                                            /*!< xPSR
 340:Drivers/CMSIS/Include/core_cm3.h **** #define xPSR_IT_Msk                        (3UL << xPSR_IT_Pos)                           /*!< xPSR
 341:Drivers/CMSIS/Include/core_cm3.h **** 
 342:Drivers/CMSIS/Include/core_cm3.h **** #define xPSR_T_Pos                         24U                                            /*!< xPSR
 343:Drivers/CMSIS/Include/core_cm3.h **** #define xPSR_T_Msk                         (1UL << xPSR_T_Pos)                            /*!< xPSR
 344:Drivers/CMSIS/Include/core_cm3.h **** 
 345:Drivers/CMSIS/Include/core_cm3.h **** #define xPSR_ISR_Pos                        0U                                            /*!< xPSR
 346:Drivers/CMSIS/Include/core_cm3.h **** #define xPSR_ISR_Msk                       (0x1FFUL /*<< xPSR_ISR_Pos*/)                  /*!< xPSR
 347:Drivers/CMSIS/Include/core_cm3.h **** 
 348:Drivers/CMSIS/Include/core_cm3.h **** 
 349:Drivers/CMSIS/Include/core_cm3.h **** /**
 350:Drivers/CMSIS/Include/core_cm3.h ****   \brief  Union type to access the Control Registers (CONTROL).
 351:Drivers/CMSIS/Include/core_cm3.h ****  */
 352:Drivers/CMSIS/Include/core_cm3.h **** typedef union
 353:Drivers/CMSIS/Include/core_cm3.h **** {
 354:Drivers/CMSIS/Include/core_cm3.h ****   struct
 355:Drivers/CMSIS/Include/core_cm3.h ****   {
 356:Drivers/CMSIS/Include/core_cm3.h ****     uint32_t nPRIV:1;                    /*!< bit:      0  Execution privilege in Thread mode */
 357:Drivers/CMSIS/Include/core_cm3.h ****     uint32_t SPSEL:1;                    /*!< bit:      1  Stack to be used */
 358:Drivers/CMSIS/Include/core_cm3.h ****     uint32_t _reserved1:30;              /*!< bit:  2..31  Reserved */
 359:Drivers/CMSIS/Include/core_cm3.h ****   } b;                                   /*!< Structure used for bit  access */
 360:Drivers/CMSIS/Include/core_cm3.h ****   uint32_t w;                            /*!< Type      used for word access */
 361:Drivers/CMSIS/Include/core_cm3.h **** } CONTROL_Type;
 362:Drivers/CMSIS/Include/core_cm3.h **** 
 363:Drivers/CMSIS/Include/core_cm3.h **** /* CONTROL Register Definitions */
 364:Drivers/CMSIS/Include/core_cm3.h **** #define CONTROL_SPSEL_Pos                   1U                                            /*!< CONT
 365:Drivers/CMSIS/Include/core_cm3.h **** #define CONTROL_SPSEL_Msk                  (1UL << CONTROL_SPSEL_Pos)                     /*!< CONT
 366:Drivers/CMSIS/Include/core_cm3.h **** 
 367:Drivers/CMSIS/Include/core_cm3.h **** #define CONTROL_nPRIV_Pos                   0U                                            /*!< CONT
 368:Drivers/CMSIS/Include/core_cm3.h **** #define CONTROL_nPRIV_Msk                  (1UL /*<< CONTROL_nPRIV_Pos*/)                 /*!< CONT
 369:Drivers/CMSIS/Include/core_cm3.h **** 
 370:Drivers/CMSIS/Include/core_cm3.h **** /*@} end of group CMSIS_CORE */
 371:Drivers/CMSIS/Include/core_cm3.h **** 
 372:Drivers/CMSIS/Include/core_cm3.h **** 
 373:Drivers/CMSIS/Include/core_cm3.h **** /**
 374:Drivers/CMSIS/Include/core_cm3.h ****   \ingroup    CMSIS_core_register
 375:Drivers/CMSIS/Include/core_cm3.h ****   \defgroup   CMSIS_NVIC  Nested Vectored Interrupt Controller (NVIC)
 376:Drivers/CMSIS/Include/core_cm3.h ****   \brief      Type definitions for the NVIC Registers
 377:Drivers/CMSIS/Include/core_cm3.h ****   @{
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 11


 378:Drivers/CMSIS/Include/core_cm3.h ****  */
 379:Drivers/CMSIS/Include/core_cm3.h **** 
 380:Drivers/CMSIS/Include/core_cm3.h **** /**
 381:Drivers/CMSIS/Include/core_cm3.h ****   \brief  Structure type to access the Nested Vectored Interrupt Controller (NVIC).
 382:Drivers/CMSIS/Include/core_cm3.h ****  */
 383:Drivers/CMSIS/Include/core_cm3.h **** typedef struct
 384:Drivers/CMSIS/Include/core_cm3.h **** {
 385:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t ISER[8U];               /*!< Offset: 0x000 (R/W)  Interrupt Set Enable Register */
 386:Drivers/CMSIS/Include/core_cm3.h ****         uint32_t RESERVED0[24U];
 387:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t ICER[8U];               /*!< Offset: 0x080 (R/W)  Interrupt Clear Enable Register 
 388:Drivers/CMSIS/Include/core_cm3.h ****         uint32_t RSERVED1[24U];
 389:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t ISPR[8U];               /*!< Offset: 0x100 (R/W)  Interrupt Set Pending Register *
 390:Drivers/CMSIS/Include/core_cm3.h ****         uint32_t RESERVED2[24U];
 391:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t ICPR[8U];               /*!< Offset: 0x180 (R/W)  Interrupt Clear Pending Register
 392:Drivers/CMSIS/Include/core_cm3.h ****         uint32_t RESERVED3[24U];
 393:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t IABR[8U];               /*!< Offset: 0x200 (R/W)  Interrupt Active bit Register */
 394:Drivers/CMSIS/Include/core_cm3.h ****         uint32_t RESERVED4[56U];
 395:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint8_t  IP[240U];               /*!< Offset: 0x300 (R/W)  Interrupt Priority Register (8Bi
 396:Drivers/CMSIS/Include/core_cm3.h ****         uint32_t RESERVED5[644U];
 397:Drivers/CMSIS/Include/core_cm3.h ****   __OM  uint32_t STIR;                   /*!< Offset: 0xE00 ( /W)  Software Trigger Interrupt Regis
 398:Drivers/CMSIS/Include/core_cm3.h **** }  NVIC_Type;
 399:Drivers/CMSIS/Include/core_cm3.h **** 
 400:Drivers/CMSIS/Include/core_cm3.h **** /* Software Triggered Interrupt Register Definitions */
 401:Drivers/CMSIS/Include/core_cm3.h **** #define NVIC_STIR_INTID_Pos                 0U                                         /*!< STIR: I
 402:Drivers/CMSIS/Include/core_cm3.h **** #define NVIC_STIR_INTID_Msk                (0x1FFUL /*<< NVIC_STIR_INTID_Pos*/)        /*!< STIR: I
 403:Drivers/CMSIS/Include/core_cm3.h **** 
 404:Drivers/CMSIS/Include/core_cm3.h **** /*@} end of group CMSIS_NVIC */
 405:Drivers/CMSIS/Include/core_cm3.h **** 
 406:Drivers/CMSIS/Include/core_cm3.h **** 
 407:Drivers/CMSIS/Include/core_cm3.h **** /**
 408:Drivers/CMSIS/Include/core_cm3.h ****   \ingroup  CMSIS_core_register
 409:Drivers/CMSIS/Include/core_cm3.h ****   \defgroup CMSIS_SCB     System Control Block (SCB)
 410:Drivers/CMSIS/Include/core_cm3.h ****   \brief    Type definitions for the System Control Block Registers
 411:Drivers/CMSIS/Include/core_cm3.h ****   @{
 412:Drivers/CMSIS/Include/core_cm3.h ****  */
 413:Drivers/CMSIS/Include/core_cm3.h **** 
 414:Drivers/CMSIS/Include/core_cm3.h **** /**
 415:Drivers/CMSIS/Include/core_cm3.h ****   \brief  Structure type to access the System Control Block (SCB).
 416:Drivers/CMSIS/Include/core_cm3.h ****  */
 417:Drivers/CMSIS/Include/core_cm3.h **** typedef struct
 418:Drivers/CMSIS/Include/core_cm3.h **** {
 419:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t CPUID;                  /*!< Offset: 0x000 (R/ )  CPUID Base Register */
 420:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t ICSR;                   /*!< Offset: 0x004 (R/W)  Interrupt Control and State Regi
 421:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t VTOR;                   /*!< Offset: 0x008 (R/W)  Vector Table Offset Register */
 422:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t AIRCR;                  /*!< Offset: 0x00C (R/W)  Application Interrupt and Reset 
 423:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t SCR;                    /*!< Offset: 0x010 (R/W)  System Control Register */
 424:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t CCR;                    /*!< Offset: 0x014 (R/W)  Configuration Control Register *
 425:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint8_t  SHP[12U];               /*!< Offset: 0x018 (R/W)  System Handlers Priority Registe
 426:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t SHCSR;                  /*!< Offset: 0x024 (R/W)  System Handler Control and State
 427:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t CFSR;                   /*!< Offset: 0x028 (R/W)  Configurable Fault Status Regist
 428:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t HFSR;                   /*!< Offset: 0x02C (R/W)  HardFault Status Register */
 429:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t DFSR;                   /*!< Offset: 0x030 (R/W)  Debug Fault Status Register */
 430:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t MMFAR;                  /*!< Offset: 0x034 (R/W)  MemManage Fault Address Register
 431:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t BFAR;                   /*!< Offset: 0x038 (R/W)  BusFault Address Register */
 432:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t AFSR;                   /*!< Offset: 0x03C (R/W)  Auxiliary Fault Status Register 
 433:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t PFR[2U];                /*!< Offset: 0x040 (R/ )  Processor Feature Register */
 434:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t DFR;                    /*!< Offset: 0x048 (R/ )  Debug Feature Register */
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 12


 435:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t ADR;                    /*!< Offset: 0x04C (R/ )  Auxiliary Feature Register */
 436:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t MMFR[4U];               /*!< Offset: 0x050 (R/ )  Memory Model Feature Register */
 437:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t ISAR[5U];               /*!< Offset: 0x060 (R/ )  Instruction Set Attributes Regis
 438:Drivers/CMSIS/Include/core_cm3.h ****         uint32_t RESERVED0[5U];
 439:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t CPACR;                  /*!< Offset: 0x088 (R/W)  Coprocessor Access Control Regis
 440:Drivers/CMSIS/Include/core_cm3.h **** } SCB_Type;
 441:Drivers/CMSIS/Include/core_cm3.h **** 
 442:Drivers/CMSIS/Include/core_cm3.h **** /* SCB CPUID Register Definitions */
 443:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CPUID_IMPLEMENTER_Pos          24U                                            /*!< SCB 
 444:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CPUID_IMPLEMENTER_Msk          (0xFFUL << SCB_CPUID_IMPLEMENTER_Pos)          /*!< SCB 
 445:Drivers/CMSIS/Include/core_cm3.h **** 
 446:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CPUID_VARIANT_Pos              20U                                            /*!< SCB 
 447:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CPUID_VARIANT_Msk              (0xFUL << SCB_CPUID_VARIANT_Pos)               /*!< SCB 
 448:Drivers/CMSIS/Include/core_cm3.h **** 
 449:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CPUID_ARCHITECTURE_Pos         16U                                            /*!< SCB 
 450:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CPUID_ARCHITECTURE_Msk         (0xFUL << SCB_CPUID_ARCHITECTURE_Pos)          /*!< SCB 
 451:Drivers/CMSIS/Include/core_cm3.h **** 
 452:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CPUID_PARTNO_Pos                4U                                            /*!< SCB 
 453:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CPUID_PARTNO_Msk               (0xFFFUL << SCB_CPUID_PARTNO_Pos)              /*!< SCB 
 454:Drivers/CMSIS/Include/core_cm3.h **** 
 455:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CPUID_REVISION_Pos              0U                                            /*!< SCB 
 456:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CPUID_REVISION_Msk             (0xFUL /*<< SCB_CPUID_REVISION_Pos*/)          /*!< SCB 
 457:Drivers/CMSIS/Include/core_cm3.h **** 
 458:Drivers/CMSIS/Include/core_cm3.h **** /* SCB Interrupt Control State Register Definitions */
 459:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_ICSR_NMIPENDSET_Pos            31U                                            /*!< SCB 
 460:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_ICSR_NMIPENDSET_Msk            (1UL << SCB_ICSR_NMIPENDSET_Pos)               /*!< SCB 
 461:Drivers/CMSIS/Include/core_cm3.h **** 
 462:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_ICSR_PENDSVSET_Pos             28U                                            /*!< SCB 
 463:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_ICSR_PENDSVSET_Msk             (1UL << SCB_ICSR_PENDSVSET_Pos)                /*!< SCB 
 464:Drivers/CMSIS/Include/core_cm3.h **** 
 465:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_ICSR_PENDSVCLR_Pos             27U                                            /*!< SCB 
 466:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_ICSR_PENDSVCLR_Msk             (1UL << SCB_ICSR_PENDSVCLR_Pos)                /*!< SCB 
 467:Drivers/CMSIS/Include/core_cm3.h **** 
 468:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_ICSR_PENDSTSET_Pos             26U                                            /*!< SCB 
 469:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_ICSR_PENDSTSET_Msk             (1UL << SCB_ICSR_PENDSTSET_Pos)                /*!< SCB 
 470:Drivers/CMSIS/Include/core_cm3.h **** 
 471:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_ICSR_PENDSTCLR_Pos             25U                                            /*!< SCB 
 472:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_ICSR_PENDSTCLR_Msk             (1UL << SCB_ICSR_PENDSTCLR_Pos)                /*!< SCB 
 473:Drivers/CMSIS/Include/core_cm3.h **** 
 474:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_ICSR_ISRPREEMPT_Pos            23U                                            /*!< SCB 
 475:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_ICSR_ISRPREEMPT_Msk            (1UL << SCB_ICSR_ISRPREEMPT_Pos)               /*!< SCB 
 476:Drivers/CMSIS/Include/core_cm3.h **** 
 477:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_ICSR_ISRPENDING_Pos            22U                                            /*!< SCB 
 478:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_ICSR_ISRPENDING_Msk            (1UL << SCB_ICSR_ISRPENDING_Pos)               /*!< SCB 
 479:Drivers/CMSIS/Include/core_cm3.h **** 
 480:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_ICSR_VECTPENDING_Pos           12U                                            /*!< SCB 
 481:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_ICSR_VECTPENDING_Msk           (0x1FFUL << SCB_ICSR_VECTPENDING_Pos)          /*!< SCB 
 482:Drivers/CMSIS/Include/core_cm3.h **** 
 483:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_ICSR_RETTOBASE_Pos             11U                                            /*!< SCB 
 484:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_ICSR_RETTOBASE_Msk             (1UL << SCB_ICSR_RETTOBASE_Pos)                /*!< SCB 
 485:Drivers/CMSIS/Include/core_cm3.h **** 
 486:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_ICSR_VECTACTIVE_Pos             0U                                            /*!< SCB 
 487:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_ICSR_VECTACTIVE_Msk            (0x1FFUL /*<< SCB_ICSR_VECTACTIVE_Pos*/)       /*!< SCB 
 488:Drivers/CMSIS/Include/core_cm3.h **** 
 489:Drivers/CMSIS/Include/core_cm3.h **** /* SCB Vector Table Offset Register Definitions */
 490:Drivers/CMSIS/Include/core_cm3.h **** #if (__CM3_REV < 0x0201U)                   /* core r2p1 */
 491:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_VTOR_TBLBASE_Pos               29U                                            /*!< SCB 
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 13


 492:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_VTOR_TBLBASE_Msk               (1UL << SCB_VTOR_TBLBASE_Pos)                  /*!< SCB 
 493:Drivers/CMSIS/Include/core_cm3.h **** 
 494:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_VTOR_TBLOFF_Pos                 7U                                            /*!< SCB 
 495:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_VTOR_TBLOFF_Msk                (0x3FFFFFUL << SCB_VTOR_TBLOFF_Pos)            /*!< SCB 
 496:Drivers/CMSIS/Include/core_cm3.h **** #else
 497:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_VTOR_TBLOFF_Pos                 7U                                            /*!< SCB 
 498:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_VTOR_TBLOFF_Msk                (0x1FFFFFFUL << SCB_VTOR_TBLOFF_Pos)           /*!< SCB 
 499:Drivers/CMSIS/Include/core_cm3.h **** #endif
 500:Drivers/CMSIS/Include/core_cm3.h **** 
 501:Drivers/CMSIS/Include/core_cm3.h **** /* SCB Application Interrupt and Reset Control Register Definitions */
 502:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_AIRCR_VECTKEY_Pos              16U                                            /*!< SCB 
 503:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_AIRCR_VECTKEY_Msk              (0xFFFFUL << SCB_AIRCR_VECTKEY_Pos)            /*!< SCB 
 504:Drivers/CMSIS/Include/core_cm3.h **** 
 505:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_AIRCR_VECTKEYSTAT_Pos          16U                                            /*!< SCB 
 506:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_AIRCR_VECTKEYSTAT_Msk          (0xFFFFUL << SCB_AIRCR_VECTKEYSTAT_Pos)        /*!< SCB 
 507:Drivers/CMSIS/Include/core_cm3.h **** 
 508:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_AIRCR_ENDIANESS_Pos            15U                                            /*!< SCB 
 509:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_AIRCR_ENDIANESS_Msk            (1UL << SCB_AIRCR_ENDIANESS_Pos)               /*!< SCB 
 510:Drivers/CMSIS/Include/core_cm3.h **** 
 511:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_AIRCR_PRIGROUP_Pos              8U                                            /*!< SCB 
 512:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_AIRCR_PRIGROUP_Msk             (7UL << SCB_AIRCR_PRIGROUP_Pos)                /*!< SCB 
 513:Drivers/CMSIS/Include/core_cm3.h **** 
 514:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_AIRCR_SYSRESETREQ_Pos           2U                                            /*!< SCB 
 515:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_AIRCR_SYSRESETREQ_Msk          (1UL << SCB_AIRCR_SYSRESETREQ_Pos)             /*!< SCB 
 516:Drivers/CMSIS/Include/core_cm3.h **** 
 517:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_AIRCR_VECTCLRACTIVE_Pos         1U                                            /*!< SCB 
 518:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_AIRCR_VECTCLRACTIVE_Msk        (1UL << SCB_AIRCR_VECTCLRACTIVE_Pos)           /*!< SCB 
 519:Drivers/CMSIS/Include/core_cm3.h **** 
 520:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_AIRCR_VECTRESET_Pos             0U                                            /*!< SCB 
 521:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_AIRCR_VECTRESET_Msk            (1UL /*<< SCB_AIRCR_VECTRESET_Pos*/)           /*!< SCB 
 522:Drivers/CMSIS/Include/core_cm3.h **** 
 523:Drivers/CMSIS/Include/core_cm3.h **** /* SCB System Control Register Definitions */
 524:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SCR_SEVONPEND_Pos               4U                                            /*!< SCB 
 525:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SCR_SEVONPEND_Msk              (1UL << SCB_SCR_SEVONPEND_Pos)                 /*!< SCB 
 526:Drivers/CMSIS/Include/core_cm3.h **** 
 527:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SCR_SLEEPDEEP_Pos               2U                                            /*!< SCB 
 528:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SCR_SLEEPDEEP_Msk              (1UL << SCB_SCR_SLEEPDEEP_Pos)                 /*!< SCB 
 529:Drivers/CMSIS/Include/core_cm3.h **** 
 530:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SCR_SLEEPONEXIT_Pos             1U                                            /*!< SCB 
 531:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SCR_SLEEPONEXIT_Msk            (1UL << SCB_SCR_SLEEPONEXIT_Pos)               /*!< SCB 
 532:Drivers/CMSIS/Include/core_cm3.h **** 
 533:Drivers/CMSIS/Include/core_cm3.h **** /* SCB Configuration Control Register Definitions */
 534:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CCR_STKALIGN_Pos                9U                                            /*!< SCB 
 535:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CCR_STKALIGN_Msk               (1UL << SCB_CCR_STKALIGN_Pos)                  /*!< SCB 
 536:Drivers/CMSIS/Include/core_cm3.h **** 
 537:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CCR_BFHFNMIGN_Pos               8U                                            /*!< SCB 
 538:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CCR_BFHFNMIGN_Msk              (1UL << SCB_CCR_BFHFNMIGN_Pos)                 /*!< SCB 
 539:Drivers/CMSIS/Include/core_cm3.h **** 
 540:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CCR_DIV_0_TRP_Pos               4U                                            /*!< SCB 
 541:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CCR_DIV_0_TRP_Msk              (1UL << SCB_CCR_DIV_0_TRP_Pos)                 /*!< SCB 
 542:Drivers/CMSIS/Include/core_cm3.h **** 
 543:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CCR_UNALIGN_TRP_Pos             3U                                            /*!< SCB 
 544:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CCR_UNALIGN_TRP_Msk            (1UL << SCB_CCR_UNALIGN_TRP_Pos)               /*!< SCB 
 545:Drivers/CMSIS/Include/core_cm3.h **** 
 546:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CCR_USERSETMPEND_Pos            1U                                            /*!< SCB 
 547:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CCR_USERSETMPEND_Msk           (1UL << SCB_CCR_USERSETMPEND_Pos)              /*!< SCB 
 548:Drivers/CMSIS/Include/core_cm3.h **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 14


 549:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CCR_NONBASETHRDENA_Pos          0U                                            /*!< SCB 
 550:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CCR_NONBASETHRDENA_Msk         (1UL /*<< SCB_CCR_NONBASETHRDENA_Pos*/)        /*!< SCB 
 551:Drivers/CMSIS/Include/core_cm3.h **** 
 552:Drivers/CMSIS/Include/core_cm3.h **** /* SCB System Handler Control and State Register Definitions */
 553:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_USGFAULTENA_Pos          18U                                            /*!< SCB 
 554:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_USGFAULTENA_Msk          (1UL << SCB_SHCSR_USGFAULTENA_Pos)             /*!< SCB 
 555:Drivers/CMSIS/Include/core_cm3.h **** 
 556:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_BUSFAULTENA_Pos          17U                                            /*!< SCB 
 557:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_BUSFAULTENA_Msk          (1UL << SCB_SHCSR_BUSFAULTENA_Pos)             /*!< SCB 
 558:Drivers/CMSIS/Include/core_cm3.h **** 
 559:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_MEMFAULTENA_Pos          16U                                            /*!< SCB 
 560:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_MEMFAULTENA_Msk          (1UL << SCB_SHCSR_MEMFAULTENA_Pos)             /*!< SCB 
 561:Drivers/CMSIS/Include/core_cm3.h **** 
 562:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_SVCALLPENDED_Pos         15U                                            /*!< SCB 
 563:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_SVCALLPENDED_Msk         (1UL << SCB_SHCSR_SVCALLPENDED_Pos)            /*!< SCB 
 564:Drivers/CMSIS/Include/core_cm3.h **** 
 565:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_BUSFAULTPENDED_Pos       14U                                            /*!< SCB 
 566:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_BUSFAULTPENDED_Msk       (1UL << SCB_SHCSR_BUSFAULTPENDED_Pos)          /*!< SCB 
 567:Drivers/CMSIS/Include/core_cm3.h **** 
 568:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_MEMFAULTPENDED_Pos       13U                                            /*!< SCB 
 569:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_MEMFAULTPENDED_Msk       (1UL << SCB_SHCSR_MEMFAULTPENDED_Pos)          /*!< SCB 
 570:Drivers/CMSIS/Include/core_cm3.h **** 
 571:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_USGFAULTPENDED_Pos       12U                                            /*!< SCB 
 572:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_USGFAULTPENDED_Msk       (1UL << SCB_SHCSR_USGFAULTPENDED_Pos)          /*!< SCB 
 573:Drivers/CMSIS/Include/core_cm3.h **** 
 574:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_SYSTICKACT_Pos           11U                                            /*!< SCB 
 575:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_SYSTICKACT_Msk           (1UL << SCB_SHCSR_SYSTICKACT_Pos)              /*!< SCB 
 576:Drivers/CMSIS/Include/core_cm3.h **** 
 577:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_PENDSVACT_Pos            10U                                            /*!< SCB 
 578:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_PENDSVACT_Msk            (1UL << SCB_SHCSR_PENDSVACT_Pos)               /*!< SCB 
 579:Drivers/CMSIS/Include/core_cm3.h **** 
 580:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_MONITORACT_Pos            8U                                            /*!< SCB 
 581:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_MONITORACT_Msk           (1UL << SCB_SHCSR_MONITORACT_Pos)              /*!< SCB 
 582:Drivers/CMSIS/Include/core_cm3.h **** 
 583:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_SVCALLACT_Pos             7U                                            /*!< SCB 
 584:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_SVCALLACT_Msk            (1UL << SCB_SHCSR_SVCALLACT_Pos)               /*!< SCB 
 585:Drivers/CMSIS/Include/core_cm3.h **** 
 586:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_USGFAULTACT_Pos           3U                                            /*!< SCB 
 587:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_USGFAULTACT_Msk          (1UL << SCB_SHCSR_USGFAULTACT_Pos)             /*!< SCB 
 588:Drivers/CMSIS/Include/core_cm3.h **** 
 589:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_BUSFAULTACT_Pos           1U                                            /*!< SCB 
 590:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_BUSFAULTACT_Msk          (1UL << SCB_SHCSR_BUSFAULTACT_Pos)             /*!< SCB 
 591:Drivers/CMSIS/Include/core_cm3.h **** 
 592:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_MEMFAULTACT_Pos           0U                                            /*!< SCB 
 593:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_SHCSR_MEMFAULTACT_Msk          (1UL /*<< SCB_SHCSR_MEMFAULTACT_Pos*/)         /*!< SCB 
 594:Drivers/CMSIS/Include/core_cm3.h **** 
 595:Drivers/CMSIS/Include/core_cm3.h **** /* SCB Configurable Fault Status Register Definitions */
 596:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CFSR_USGFAULTSR_Pos            16U                                            /*!< SCB 
 597:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CFSR_USGFAULTSR_Msk            (0xFFFFUL << SCB_CFSR_USGFAULTSR_Pos)          /*!< SCB 
 598:Drivers/CMSIS/Include/core_cm3.h **** 
 599:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CFSR_BUSFAULTSR_Pos             8U                                            /*!< SCB 
 600:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CFSR_BUSFAULTSR_Msk            (0xFFUL << SCB_CFSR_BUSFAULTSR_Pos)            /*!< SCB 
 601:Drivers/CMSIS/Include/core_cm3.h **** 
 602:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CFSR_MEMFAULTSR_Pos             0U                                            /*!< SCB 
 603:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_CFSR_MEMFAULTSR_Msk            (0xFFUL /*<< SCB_CFSR_MEMFAULTSR_Pos*/)        /*!< SCB 
 604:Drivers/CMSIS/Include/core_cm3.h **** 
 605:Drivers/CMSIS/Include/core_cm3.h **** /* SCB Hard Fault Status Register Definitions */
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 15


 606:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_HFSR_DEBUGEVT_Pos              31U                                            /*!< SCB 
 607:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_HFSR_DEBUGEVT_Msk              (1UL << SCB_HFSR_DEBUGEVT_Pos)                 /*!< SCB 
 608:Drivers/CMSIS/Include/core_cm3.h **** 
 609:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_HFSR_FORCED_Pos                30U                                            /*!< SCB 
 610:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_HFSR_FORCED_Msk                (1UL << SCB_HFSR_FORCED_Pos)                   /*!< SCB 
 611:Drivers/CMSIS/Include/core_cm3.h **** 
 612:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_HFSR_VECTTBL_Pos                1U                                            /*!< SCB 
 613:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_HFSR_VECTTBL_Msk               (1UL << SCB_HFSR_VECTTBL_Pos)                  /*!< SCB 
 614:Drivers/CMSIS/Include/core_cm3.h **** 
 615:Drivers/CMSIS/Include/core_cm3.h **** /* SCB Debug Fault Status Register Definitions */
 616:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_DFSR_EXTERNAL_Pos               4U                                            /*!< SCB 
 617:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_DFSR_EXTERNAL_Msk              (1UL << SCB_DFSR_EXTERNAL_Pos)                 /*!< SCB 
 618:Drivers/CMSIS/Include/core_cm3.h **** 
 619:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_DFSR_VCATCH_Pos                 3U                                            /*!< SCB 
 620:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_DFSR_VCATCH_Msk                (1UL << SCB_DFSR_VCATCH_Pos)                   /*!< SCB 
 621:Drivers/CMSIS/Include/core_cm3.h **** 
 622:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_DFSR_DWTTRAP_Pos                2U                                            /*!< SCB 
 623:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_DFSR_DWTTRAP_Msk               (1UL << SCB_DFSR_DWTTRAP_Pos)                  /*!< SCB 
 624:Drivers/CMSIS/Include/core_cm3.h **** 
 625:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_DFSR_BKPT_Pos                   1U                                            /*!< SCB 
 626:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_DFSR_BKPT_Msk                  (1UL << SCB_DFSR_BKPT_Pos)                     /*!< SCB 
 627:Drivers/CMSIS/Include/core_cm3.h **** 
 628:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_DFSR_HALTED_Pos                 0U                                            /*!< SCB 
 629:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_DFSR_HALTED_Msk                (1UL /*<< SCB_DFSR_HALTED_Pos*/)               /*!< SCB 
 630:Drivers/CMSIS/Include/core_cm3.h **** 
 631:Drivers/CMSIS/Include/core_cm3.h **** /*@} end of group CMSIS_SCB */
 632:Drivers/CMSIS/Include/core_cm3.h **** 
 633:Drivers/CMSIS/Include/core_cm3.h **** 
 634:Drivers/CMSIS/Include/core_cm3.h **** /**
 635:Drivers/CMSIS/Include/core_cm3.h ****   \ingroup  CMSIS_core_register
 636:Drivers/CMSIS/Include/core_cm3.h ****   \defgroup CMSIS_SCnSCB System Controls not in SCB (SCnSCB)
 637:Drivers/CMSIS/Include/core_cm3.h ****   \brief    Type definitions for the System Control and ID Register not in the SCB
 638:Drivers/CMSIS/Include/core_cm3.h ****   @{
 639:Drivers/CMSIS/Include/core_cm3.h ****  */
 640:Drivers/CMSIS/Include/core_cm3.h **** 
 641:Drivers/CMSIS/Include/core_cm3.h **** /**
 642:Drivers/CMSIS/Include/core_cm3.h ****   \brief  Structure type to access the System Control and ID Register not in the SCB.
 643:Drivers/CMSIS/Include/core_cm3.h ****  */
 644:Drivers/CMSIS/Include/core_cm3.h **** typedef struct
 645:Drivers/CMSIS/Include/core_cm3.h **** {
 646:Drivers/CMSIS/Include/core_cm3.h ****         uint32_t RESERVED0[1U];
 647:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t ICTR;                   /*!< Offset: 0x004 (R/ )  Interrupt Controller Type Regist
 648:Drivers/CMSIS/Include/core_cm3.h **** #if ((defined __CM3_REV) && (__CM3_REV >= 0x200U))
 649:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t ACTLR;                  /*!< Offset: 0x008 (R/W)  Auxiliary Control Register */
 650:Drivers/CMSIS/Include/core_cm3.h **** #else
 651:Drivers/CMSIS/Include/core_cm3.h ****         uint32_t RESERVED1[1U];
 652:Drivers/CMSIS/Include/core_cm3.h **** #endif
 653:Drivers/CMSIS/Include/core_cm3.h **** } SCnSCB_Type;
 654:Drivers/CMSIS/Include/core_cm3.h **** 
 655:Drivers/CMSIS/Include/core_cm3.h **** /* Interrupt Controller Type Register Definitions */
 656:Drivers/CMSIS/Include/core_cm3.h **** #define SCnSCB_ICTR_INTLINESNUM_Pos         0U                                         /*!< ICTR: I
 657:Drivers/CMSIS/Include/core_cm3.h **** #define SCnSCB_ICTR_INTLINESNUM_Msk        (0xFUL /*<< SCnSCB_ICTR_INTLINESNUM_Pos*/)  /*!< ICTR: I
 658:Drivers/CMSIS/Include/core_cm3.h **** 
 659:Drivers/CMSIS/Include/core_cm3.h **** /* Auxiliary Control Register Definitions */
 660:Drivers/CMSIS/Include/core_cm3.h **** 
 661:Drivers/CMSIS/Include/core_cm3.h **** #define SCnSCB_ACTLR_DISFOLD_Pos            2U                                         /*!< ACTLR: 
 662:Drivers/CMSIS/Include/core_cm3.h **** #define SCnSCB_ACTLR_DISFOLD_Msk           (1UL << SCnSCB_ACTLR_DISFOLD_Pos)           /*!< ACTLR: 
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 16


 663:Drivers/CMSIS/Include/core_cm3.h **** 
 664:Drivers/CMSIS/Include/core_cm3.h **** #define SCnSCB_ACTLR_DISDEFWBUF_Pos         1U                                         /*!< ACTLR: 
 665:Drivers/CMSIS/Include/core_cm3.h **** #define SCnSCB_ACTLR_DISDEFWBUF_Msk        (1UL << SCnSCB_ACTLR_DISDEFWBUF_Pos)        /*!< ACTLR: 
 666:Drivers/CMSIS/Include/core_cm3.h **** 
 667:Drivers/CMSIS/Include/core_cm3.h **** #define SCnSCB_ACTLR_DISMCYCINT_Pos         0U                                         /*!< ACTLR: 
 668:Drivers/CMSIS/Include/core_cm3.h **** #define SCnSCB_ACTLR_DISMCYCINT_Msk        (1UL /*<< SCnSCB_ACTLR_DISMCYCINT_Pos*/)    /*!< ACTLR: 
 669:Drivers/CMSIS/Include/core_cm3.h **** 
 670:Drivers/CMSIS/Include/core_cm3.h **** /*@} end of group CMSIS_SCnotSCB */
 671:Drivers/CMSIS/Include/core_cm3.h **** 
 672:Drivers/CMSIS/Include/core_cm3.h **** 
 673:Drivers/CMSIS/Include/core_cm3.h **** /**
 674:Drivers/CMSIS/Include/core_cm3.h ****   \ingroup  CMSIS_core_register
 675:Drivers/CMSIS/Include/core_cm3.h ****   \defgroup CMSIS_SysTick     System Tick Timer (SysTick)
 676:Drivers/CMSIS/Include/core_cm3.h ****   \brief    Type definitions for the System Timer Registers.
 677:Drivers/CMSIS/Include/core_cm3.h ****   @{
 678:Drivers/CMSIS/Include/core_cm3.h ****  */
 679:Drivers/CMSIS/Include/core_cm3.h **** 
 680:Drivers/CMSIS/Include/core_cm3.h **** /**
 681:Drivers/CMSIS/Include/core_cm3.h ****   \brief  Structure type to access the System Timer (SysTick).
 682:Drivers/CMSIS/Include/core_cm3.h ****  */
 683:Drivers/CMSIS/Include/core_cm3.h **** typedef struct
 684:Drivers/CMSIS/Include/core_cm3.h **** {
 685:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t CTRL;                   /*!< Offset: 0x000 (R/W)  SysTick Control and Status Regis
 686:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t LOAD;                   /*!< Offset: 0x004 (R/W)  SysTick Reload Value Register */
 687:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t VAL;                    /*!< Offset: 0x008 (R/W)  SysTick Current Value Register *
 688:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t CALIB;                  /*!< Offset: 0x00C (R/ )  SysTick Calibration Register */
 689:Drivers/CMSIS/Include/core_cm3.h **** } SysTick_Type;
 690:Drivers/CMSIS/Include/core_cm3.h **** 
 691:Drivers/CMSIS/Include/core_cm3.h **** /* SysTick Control / Status Register Definitions */
 692:Drivers/CMSIS/Include/core_cm3.h **** #define SysTick_CTRL_COUNTFLAG_Pos         16U                                            /*!< SysT
 693:Drivers/CMSIS/Include/core_cm3.h **** #define SysTick_CTRL_COUNTFLAG_Msk         (1UL << SysTick_CTRL_COUNTFLAG_Pos)            /*!< SysT
 694:Drivers/CMSIS/Include/core_cm3.h **** 
 695:Drivers/CMSIS/Include/core_cm3.h **** #define SysTick_CTRL_CLKSOURCE_Pos          2U                                            /*!< SysT
 696:Drivers/CMSIS/Include/core_cm3.h **** #define SysTick_CTRL_CLKSOURCE_Msk         (1UL << SysTick_CTRL_CLKSOURCE_Pos)            /*!< SysT
 697:Drivers/CMSIS/Include/core_cm3.h **** 
 698:Drivers/CMSIS/Include/core_cm3.h **** #define SysTick_CTRL_TICKINT_Pos            1U                                            /*!< SysT
 699:Drivers/CMSIS/Include/core_cm3.h **** #define SysTick_CTRL_TICKINT_Msk           (1UL << SysTick_CTRL_TICKINT_Pos)              /*!< SysT
 700:Drivers/CMSIS/Include/core_cm3.h **** 
 701:Drivers/CMSIS/Include/core_cm3.h **** #define SysTick_CTRL_ENABLE_Pos             0U                                            /*!< SysT
 702:Drivers/CMSIS/Include/core_cm3.h **** #define SysTick_CTRL_ENABLE_Msk            (1UL /*<< SysTick_CTRL_ENABLE_Pos*/)           /*!< SysT
 703:Drivers/CMSIS/Include/core_cm3.h **** 
 704:Drivers/CMSIS/Include/core_cm3.h **** /* SysTick Reload Register Definitions */
 705:Drivers/CMSIS/Include/core_cm3.h **** #define SysTick_LOAD_RELOAD_Pos             0U                                            /*!< SysT
 706:Drivers/CMSIS/Include/core_cm3.h **** #define SysTick_LOAD_RELOAD_Msk            (0xFFFFFFUL /*<< SysTick_LOAD_RELOAD_Pos*/)    /*!< SysT
 707:Drivers/CMSIS/Include/core_cm3.h **** 
 708:Drivers/CMSIS/Include/core_cm3.h **** /* SysTick Current Register Definitions */
 709:Drivers/CMSIS/Include/core_cm3.h **** #define SysTick_VAL_CURRENT_Pos             0U                                            /*!< SysT
 710:Drivers/CMSIS/Include/core_cm3.h **** #define SysTick_VAL_CURRENT_Msk            (0xFFFFFFUL /*<< SysTick_VAL_CURRENT_Pos*/)    /*!< SysT
 711:Drivers/CMSIS/Include/core_cm3.h **** 
 712:Drivers/CMSIS/Include/core_cm3.h **** /* SysTick Calibration Register Definitions */
 713:Drivers/CMSIS/Include/core_cm3.h **** #define SysTick_CALIB_NOREF_Pos            31U                                            /*!< SysT
 714:Drivers/CMSIS/Include/core_cm3.h **** #define SysTick_CALIB_NOREF_Msk            (1UL << SysTick_CALIB_NOREF_Pos)               /*!< SysT
 715:Drivers/CMSIS/Include/core_cm3.h **** 
 716:Drivers/CMSIS/Include/core_cm3.h **** #define SysTick_CALIB_SKEW_Pos             30U                                            /*!< SysT
 717:Drivers/CMSIS/Include/core_cm3.h **** #define SysTick_CALIB_SKEW_Msk             (1UL << SysTick_CALIB_SKEW_Pos)                /*!< SysT
 718:Drivers/CMSIS/Include/core_cm3.h **** 
 719:Drivers/CMSIS/Include/core_cm3.h **** #define SysTick_CALIB_TENMS_Pos             0U                                            /*!< SysT
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 17


 720:Drivers/CMSIS/Include/core_cm3.h **** #define SysTick_CALIB_TENMS_Msk            (0xFFFFFFUL /*<< SysTick_CALIB_TENMS_Pos*/)    /*!< SysT
 721:Drivers/CMSIS/Include/core_cm3.h **** 
 722:Drivers/CMSIS/Include/core_cm3.h **** /*@} end of group CMSIS_SysTick */
 723:Drivers/CMSIS/Include/core_cm3.h **** 
 724:Drivers/CMSIS/Include/core_cm3.h **** 
 725:Drivers/CMSIS/Include/core_cm3.h **** /**
 726:Drivers/CMSIS/Include/core_cm3.h ****   \ingroup  CMSIS_core_register
 727:Drivers/CMSIS/Include/core_cm3.h ****   \defgroup CMSIS_ITM     Instrumentation Trace Macrocell (ITM)
 728:Drivers/CMSIS/Include/core_cm3.h ****   \brief    Type definitions for the Instrumentation Trace Macrocell (ITM)
 729:Drivers/CMSIS/Include/core_cm3.h ****   @{
 730:Drivers/CMSIS/Include/core_cm3.h ****  */
 731:Drivers/CMSIS/Include/core_cm3.h **** 
 732:Drivers/CMSIS/Include/core_cm3.h **** /**
 733:Drivers/CMSIS/Include/core_cm3.h ****   \brief  Structure type to access the Instrumentation Trace Macrocell Register (ITM).
 734:Drivers/CMSIS/Include/core_cm3.h ****  */
 735:Drivers/CMSIS/Include/core_cm3.h **** typedef struct
 736:Drivers/CMSIS/Include/core_cm3.h **** {
 737:Drivers/CMSIS/Include/core_cm3.h ****   __OM  union
 738:Drivers/CMSIS/Include/core_cm3.h ****   {
 739:Drivers/CMSIS/Include/core_cm3.h ****     __OM  uint8_t    u8;                 /*!< Offset: 0x000 ( /W)  ITM Stimulus Port 8-bit */
 740:Drivers/CMSIS/Include/core_cm3.h ****     __OM  uint16_t   u16;                /*!< Offset: 0x000 ( /W)  ITM Stimulus Port 16-bit */
 741:Drivers/CMSIS/Include/core_cm3.h ****     __OM  uint32_t   u32;                /*!< Offset: 0x000 ( /W)  ITM Stimulus Port 32-bit */
 742:Drivers/CMSIS/Include/core_cm3.h ****   }  PORT [32U];                         /*!< Offset: 0x000 ( /W)  ITM Stimulus Port Registers */
 743:Drivers/CMSIS/Include/core_cm3.h ****         uint32_t RESERVED0[864U];
 744:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t TER;                    /*!< Offset: 0xE00 (R/W)  ITM Trace Enable Register */
 745:Drivers/CMSIS/Include/core_cm3.h ****         uint32_t RESERVED1[15U];
 746:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t TPR;                    /*!< Offset: 0xE40 (R/W)  ITM Trace Privilege Register */
 747:Drivers/CMSIS/Include/core_cm3.h ****         uint32_t RESERVED2[15U];
 748:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t TCR;                    /*!< Offset: 0xE80 (R/W)  ITM Trace Control Register */
 749:Drivers/CMSIS/Include/core_cm3.h ****         uint32_t RESERVED3[29U];
 750:Drivers/CMSIS/Include/core_cm3.h ****   __OM  uint32_t IWR;                    /*!< Offset: 0xEF8 ( /W)  ITM Integration Write Register *
 751:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t IRR;                    /*!< Offset: 0xEFC (R/ )  ITM Integration Read Register */
 752:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t IMCR;                   /*!< Offset: 0xF00 (R/W)  ITM Integration Mode Control Reg
 753:Drivers/CMSIS/Include/core_cm3.h ****         uint32_t RESERVED4[43U];
 754:Drivers/CMSIS/Include/core_cm3.h ****   __OM  uint32_t LAR;                    /*!< Offset: 0xFB0 ( /W)  ITM Lock Access Register */
 755:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t LSR;                    /*!< Offset: 0xFB4 (R/ )  ITM Lock Status Register */
 756:Drivers/CMSIS/Include/core_cm3.h ****         uint32_t RESERVED5[6U];
 757:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t PID4;                   /*!< Offset: 0xFD0 (R/ )  ITM Peripheral Identification Re
 758:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t PID5;                   /*!< Offset: 0xFD4 (R/ )  ITM Peripheral Identification Re
 759:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t PID6;                   /*!< Offset: 0xFD8 (R/ )  ITM Peripheral Identification Re
 760:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t PID7;                   /*!< Offset: 0xFDC (R/ )  ITM Peripheral Identification Re
 761:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t PID0;                   /*!< Offset: 0xFE0 (R/ )  ITM Peripheral Identification Re
 762:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t PID1;                   /*!< Offset: 0xFE4 (R/ )  ITM Peripheral Identification Re
 763:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t PID2;                   /*!< Offset: 0xFE8 (R/ )  ITM Peripheral Identification Re
 764:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t PID3;                   /*!< Offset: 0xFEC (R/ )  ITM Peripheral Identification Re
 765:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t CID0;                   /*!< Offset: 0xFF0 (R/ )  ITM Component  Identification Re
 766:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t CID1;                   /*!< Offset: 0xFF4 (R/ )  ITM Component  Identification Re
 767:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t CID2;                   /*!< Offset: 0xFF8 (R/ )  ITM Component  Identification Re
 768:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t CID3;                   /*!< Offset: 0xFFC (R/ )  ITM Component  Identification Re
 769:Drivers/CMSIS/Include/core_cm3.h **** } ITM_Type;
 770:Drivers/CMSIS/Include/core_cm3.h **** 
 771:Drivers/CMSIS/Include/core_cm3.h **** /* ITM Trace Privilege Register Definitions */
 772:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_TPR_PRIVMASK_Pos                0U                                            /*!< ITM 
 773:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_TPR_PRIVMASK_Msk               (0xFUL /*<< ITM_TPR_PRIVMASK_Pos*/)            /*!< ITM 
 774:Drivers/CMSIS/Include/core_cm3.h **** 
 775:Drivers/CMSIS/Include/core_cm3.h **** /* ITM Trace Control Register Definitions */
 776:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_TCR_BUSY_Pos                   23U                                            /*!< ITM 
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 18


 777:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_TCR_BUSY_Msk                   (1UL << ITM_TCR_BUSY_Pos)                      /*!< ITM 
 778:Drivers/CMSIS/Include/core_cm3.h **** 
 779:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_TCR_TraceBusID_Pos             16U                                            /*!< ITM 
 780:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_TCR_TraceBusID_Msk             (0x7FUL << ITM_TCR_TraceBusID_Pos)             /*!< ITM 
 781:Drivers/CMSIS/Include/core_cm3.h **** 
 782:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_TCR_GTSFREQ_Pos                10U                                            /*!< ITM 
 783:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_TCR_GTSFREQ_Msk                (3UL << ITM_TCR_GTSFREQ_Pos)                   /*!< ITM 
 784:Drivers/CMSIS/Include/core_cm3.h **** 
 785:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_TCR_TSPrescale_Pos              8U                                            /*!< ITM 
 786:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_TCR_TSPrescale_Msk             (3UL << ITM_TCR_TSPrescale_Pos)                /*!< ITM 
 787:Drivers/CMSIS/Include/core_cm3.h **** 
 788:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_TCR_SWOENA_Pos                  4U                                            /*!< ITM 
 789:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_TCR_SWOENA_Msk                 (1UL << ITM_TCR_SWOENA_Pos)                    /*!< ITM 
 790:Drivers/CMSIS/Include/core_cm3.h **** 
 791:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_TCR_DWTENA_Pos                  3U                                            /*!< ITM 
 792:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_TCR_DWTENA_Msk                 (1UL << ITM_TCR_DWTENA_Pos)                    /*!< ITM 
 793:Drivers/CMSIS/Include/core_cm3.h **** 
 794:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_TCR_SYNCENA_Pos                 2U                                            /*!< ITM 
 795:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_TCR_SYNCENA_Msk                (1UL << ITM_TCR_SYNCENA_Pos)                   /*!< ITM 
 796:Drivers/CMSIS/Include/core_cm3.h **** 
 797:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_TCR_TSENA_Pos                   1U                                            /*!< ITM 
 798:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_TCR_TSENA_Msk                  (1UL << ITM_TCR_TSENA_Pos)                     /*!< ITM 
 799:Drivers/CMSIS/Include/core_cm3.h **** 
 800:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_TCR_ITMENA_Pos                  0U                                            /*!< ITM 
 801:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_TCR_ITMENA_Msk                 (1UL /*<< ITM_TCR_ITMENA_Pos*/)                /*!< ITM 
 802:Drivers/CMSIS/Include/core_cm3.h **** 
 803:Drivers/CMSIS/Include/core_cm3.h **** /* ITM Integration Write Register Definitions */
 804:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_IWR_ATVALIDM_Pos                0U                                            /*!< ITM 
 805:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_IWR_ATVALIDM_Msk               (1UL /*<< ITM_IWR_ATVALIDM_Pos*/)              /*!< ITM 
 806:Drivers/CMSIS/Include/core_cm3.h **** 
 807:Drivers/CMSIS/Include/core_cm3.h **** /* ITM Integration Read Register Definitions */
 808:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_IRR_ATREADYM_Pos                0U                                            /*!< ITM 
 809:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_IRR_ATREADYM_Msk               (1UL /*<< ITM_IRR_ATREADYM_Pos*/)              /*!< ITM 
 810:Drivers/CMSIS/Include/core_cm3.h **** 
 811:Drivers/CMSIS/Include/core_cm3.h **** /* ITM Integration Mode Control Register Definitions */
 812:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_IMCR_INTEGRATION_Pos            0U                                            /*!< ITM 
 813:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_IMCR_INTEGRATION_Msk           (1UL /*<< ITM_IMCR_INTEGRATION_Pos*/)          /*!< ITM 
 814:Drivers/CMSIS/Include/core_cm3.h **** 
 815:Drivers/CMSIS/Include/core_cm3.h **** /* ITM Lock Status Register Definitions */
 816:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_LSR_ByteAcc_Pos                 2U                                            /*!< ITM 
 817:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_LSR_ByteAcc_Msk                (1UL << ITM_LSR_ByteAcc_Pos)                   /*!< ITM 
 818:Drivers/CMSIS/Include/core_cm3.h **** 
 819:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_LSR_Access_Pos                  1U                                            /*!< ITM 
 820:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_LSR_Access_Msk                 (1UL << ITM_LSR_Access_Pos)                    /*!< ITM 
 821:Drivers/CMSIS/Include/core_cm3.h **** 
 822:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_LSR_Present_Pos                 0U                                            /*!< ITM 
 823:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_LSR_Present_Msk                (1UL /*<< ITM_LSR_Present_Pos*/)               /*!< ITM 
 824:Drivers/CMSIS/Include/core_cm3.h **** 
 825:Drivers/CMSIS/Include/core_cm3.h **** /*@}*/ /* end of group CMSIS_ITM */
 826:Drivers/CMSIS/Include/core_cm3.h **** 
 827:Drivers/CMSIS/Include/core_cm3.h **** 
 828:Drivers/CMSIS/Include/core_cm3.h **** /**
 829:Drivers/CMSIS/Include/core_cm3.h ****   \ingroup  CMSIS_core_register
 830:Drivers/CMSIS/Include/core_cm3.h ****   \defgroup CMSIS_DWT     Data Watchpoint and Trace (DWT)
 831:Drivers/CMSIS/Include/core_cm3.h ****   \brief    Type definitions for the Data Watchpoint and Trace (DWT)
 832:Drivers/CMSIS/Include/core_cm3.h ****   @{
 833:Drivers/CMSIS/Include/core_cm3.h ****  */
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 19


 834:Drivers/CMSIS/Include/core_cm3.h **** 
 835:Drivers/CMSIS/Include/core_cm3.h **** /**
 836:Drivers/CMSIS/Include/core_cm3.h ****   \brief  Structure type to access the Data Watchpoint and Trace Register (DWT).
 837:Drivers/CMSIS/Include/core_cm3.h ****  */
 838:Drivers/CMSIS/Include/core_cm3.h **** typedef struct
 839:Drivers/CMSIS/Include/core_cm3.h **** {
 840:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t CTRL;                   /*!< Offset: 0x000 (R/W)  Control Register */
 841:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t CYCCNT;                 /*!< Offset: 0x004 (R/W)  Cycle Count Register */
 842:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t CPICNT;                 /*!< Offset: 0x008 (R/W)  CPI Count Register */
 843:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t EXCCNT;                 /*!< Offset: 0x00C (R/W)  Exception Overhead Count Registe
 844:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t SLEEPCNT;               /*!< Offset: 0x010 (R/W)  Sleep Count Register */
 845:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t LSUCNT;                 /*!< Offset: 0x014 (R/W)  LSU Count Register */
 846:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t FOLDCNT;                /*!< Offset: 0x018 (R/W)  Folded-instruction Count Registe
 847:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t PCSR;                   /*!< Offset: 0x01C (R/ )  Program Counter Sample Register 
 848:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t COMP0;                  /*!< Offset: 0x020 (R/W)  Comparator Register 0 */
 849:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t MASK0;                  /*!< Offset: 0x024 (R/W)  Mask Register 0 */
 850:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t FUNCTION0;              /*!< Offset: 0x028 (R/W)  Function Register 0 */
 851:Drivers/CMSIS/Include/core_cm3.h ****         uint32_t RESERVED0[1U];
 852:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t COMP1;                  /*!< Offset: 0x030 (R/W)  Comparator Register 1 */
 853:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t MASK1;                  /*!< Offset: 0x034 (R/W)  Mask Register 1 */
 854:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t FUNCTION1;              /*!< Offset: 0x038 (R/W)  Function Register 1 */
 855:Drivers/CMSIS/Include/core_cm3.h ****         uint32_t RESERVED1[1U];
 856:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t COMP2;                  /*!< Offset: 0x040 (R/W)  Comparator Register 2 */
 857:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t MASK2;                  /*!< Offset: 0x044 (R/W)  Mask Register 2 */
 858:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t FUNCTION2;              /*!< Offset: 0x048 (R/W)  Function Register 2 */
 859:Drivers/CMSIS/Include/core_cm3.h ****         uint32_t RESERVED2[1U];
 860:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t COMP3;                  /*!< Offset: 0x050 (R/W)  Comparator Register 3 */
 861:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t MASK3;                  /*!< Offset: 0x054 (R/W)  Mask Register 3 */
 862:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t FUNCTION3;              /*!< Offset: 0x058 (R/W)  Function Register 3 */
 863:Drivers/CMSIS/Include/core_cm3.h **** } DWT_Type;
 864:Drivers/CMSIS/Include/core_cm3.h **** 
 865:Drivers/CMSIS/Include/core_cm3.h **** /* DWT Control Register Definitions */
 866:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_NUMCOMP_Pos               28U                                         /*!< DWT CTR
 867:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_NUMCOMP_Msk               (0xFUL << DWT_CTRL_NUMCOMP_Pos)             /*!< DWT CTR
 868:Drivers/CMSIS/Include/core_cm3.h **** 
 869:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_NOTRCPKT_Pos              27U                                         /*!< DWT CTR
 870:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_NOTRCPKT_Msk              (0x1UL << DWT_CTRL_NOTRCPKT_Pos)            /*!< DWT CTR
 871:Drivers/CMSIS/Include/core_cm3.h **** 
 872:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_NOEXTTRIG_Pos             26U                                         /*!< DWT CTR
 873:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_NOEXTTRIG_Msk             (0x1UL << DWT_CTRL_NOEXTTRIG_Pos)           /*!< DWT CTR
 874:Drivers/CMSIS/Include/core_cm3.h **** 
 875:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_NOCYCCNT_Pos              25U                                         /*!< DWT CTR
 876:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_NOCYCCNT_Msk              (0x1UL << DWT_CTRL_NOCYCCNT_Pos)            /*!< DWT CTR
 877:Drivers/CMSIS/Include/core_cm3.h **** 
 878:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_NOPRFCNT_Pos              24U                                         /*!< DWT CTR
 879:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_NOPRFCNT_Msk              (0x1UL << DWT_CTRL_NOPRFCNT_Pos)            /*!< DWT CTR
 880:Drivers/CMSIS/Include/core_cm3.h **** 
 881:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_CYCEVTENA_Pos             22U                                         /*!< DWT CTR
 882:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_CYCEVTENA_Msk             (0x1UL << DWT_CTRL_CYCEVTENA_Pos)           /*!< DWT CTR
 883:Drivers/CMSIS/Include/core_cm3.h **** 
 884:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_FOLDEVTENA_Pos            21U                                         /*!< DWT CTR
 885:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_FOLDEVTENA_Msk            (0x1UL << DWT_CTRL_FOLDEVTENA_Pos)          /*!< DWT CTR
 886:Drivers/CMSIS/Include/core_cm3.h **** 
 887:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_LSUEVTENA_Pos             20U                                         /*!< DWT CTR
 888:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_LSUEVTENA_Msk             (0x1UL << DWT_CTRL_LSUEVTENA_Pos)           /*!< DWT CTR
 889:Drivers/CMSIS/Include/core_cm3.h **** 
 890:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_SLEEPEVTENA_Pos           19U                                         /*!< DWT CTR
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 20


 891:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_SLEEPEVTENA_Msk           (0x1UL << DWT_CTRL_SLEEPEVTENA_Pos)         /*!< DWT CTR
 892:Drivers/CMSIS/Include/core_cm3.h **** 
 893:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_EXCEVTENA_Pos             18U                                         /*!< DWT CTR
 894:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_EXCEVTENA_Msk             (0x1UL << DWT_CTRL_EXCEVTENA_Pos)           /*!< DWT CTR
 895:Drivers/CMSIS/Include/core_cm3.h **** 
 896:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_CPIEVTENA_Pos             17U                                         /*!< DWT CTR
 897:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_CPIEVTENA_Msk             (0x1UL << DWT_CTRL_CPIEVTENA_Pos)           /*!< DWT CTR
 898:Drivers/CMSIS/Include/core_cm3.h **** 
 899:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_EXCTRCENA_Pos             16U                                         /*!< DWT CTR
 900:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_EXCTRCENA_Msk             (0x1UL << DWT_CTRL_EXCTRCENA_Pos)           /*!< DWT CTR
 901:Drivers/CMSIS/Include/core_cm3.h **** 
 902:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_PCSAMPLENA_Pos            12U                                         /*!< DWT CTR
 903:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_PCSAMPLENA_Msk            (0x1UL << DWT_CTRL_PCSAMPLENA_Pos)          /*!< DWT CTR
 904:Drivers/CMSIS/Include/core_cm3.h **** 
 905:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_SYNCTAP_Pos               10U                                         /*!< DWT CTR
 906:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_SYNCTAP_Msk               (0x3UL << DWT_CTRL_SYNCTAP_Pos)             /*!< DWT CTR
 907:Drivers/CMSIS/Include/core_cm3.h **** 
 908:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_CYCTAP_Pos                 9U                                         /*!< DWT CTR
 909:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_CYCTAP_Msk                (0x1UL << DWT_CTRL_CYCTAP_Pos)              /*!< DWT CTR
 910:Drivers/CMSIS/Include/core_cm3.h **** 
 911:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_POSTINIT_Pos               5U                                         /*!< DWT CTR
 912:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_POSTINIT_Msk              (0xFUL << DWT_CTRL_POSTINIT_Pos)            /*!< DWT CTR
 913:Drivers/CMSIS/Include/core_cm3.h **** 
 914:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_POSTPRESET_Pos             1U                                         /*!< DWT CTR
 915:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_POSTPRESET_Msk            (0xFUL << DWT_CTRL_POSTPRESET_Pos)          /*!< DWT CTR
 916:Drivers/CMSIS/Include/core_cm3.h **** 
 917:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_CYCCNTENA_Pos              0U                                         /*!< DWT CTR
 918:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CTRL_CYCCNTENA_Msk             (0x1UL /*<< DWT_CTRL_CYCCNTENA_Pos*/)       /*!< DWT CTR
 919:Drivers/CMSIS/Include/core_cm3.h **** 
 920:Drivers/CMSIS/Include/core_cm3.h **** /* DWT CPI Count Register Definitions */
 921:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CPICNT_CPICNT_Pos               0U                                         /*!< DWT CPI
 922:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_CPICNT_CPICNT_Msk              (0xFFUL /*<< DWT_CPICNT_CPICNT_Pos*/)       /*!< DWT CPI
 923:Drivers/CMSIS/Include/core_cm3.h **** 
 924:Drivers/CMSIS/Include/core_cm3.h **** /* DWT Exception Overhead Count Register Definitions */
 925:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_EXCCNT_EXCCNT_Pos               0U                                         /*!< DWT EXC
 926:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_EXCCNT_EXCCNT_Msk              (0xFFUL /*<< DWT_EXCCNT_EXCCNT_Pos*/)       /*!< DWT EXC
 927:Drivers/CMSIS/Include/core_cm3.h **** 
 928:Drivers/CMSIS/Include/core_cm3.h **** /* DWT Sleep Count Register Definitions */
 929:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_SLEEPCNT_SLEEPCNT_Pos           0U                                         /*!< DWT SLE
 930:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_SLEEPCNT_SLEEPCNT_Msk          (0xFFUL /*<< DWT_SLEEPCNT_SLEEPCNT_Pos*/)   /*!< DWT SLE
 931:Drivers/CMSIS/Include/core_cm3.h **** 
 932:Drivers/CMSIS/Include/core_cm3.h **** /* DWT LSU Count Register Definitions */
 933:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_LSUCNT_LSUCNT_Pos               0U                                         /*!< DWT LSU
 934:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_LSUCNT_LSUCNT_Msk              (0xFFUL /*<< DWT_LSUCNT_LSUCNT_Pos*/)       /*!< DWT LSU
 935:Drivers/CMSIS/Include/core_cm3.h **** 
 936:Drivers/CMSIS/Include/core_cm3.h **** /* DWT Folded-instruction Count Register Definitions */
 937:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_FOLDCNT_FOLDCNT_Pos             0U                                         /*!< DWT FOL
 938:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_FOLDCNT_FOLDCNT_Msk            (0xFFUL /*<< DWT_FOLDCNT_FOLDCNT_Pos*/)     /*!< DWT FOL
 939:Drivers/CMSIS/Include/core_cm3.h **** 
 940:Drivers/CMSIS/Include/core_cm3.h **** /* DWT Comparator Mask Register Definitions */
 941:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_MASK_MASK_Pos                   0U                                         /*!< DWT MAS
 942:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_MASK_MASK_Msk                  (0x1FUL /*<< DWT_MASK_MASK_Pos*/)           /*!< DWT MAS
 943:Drivers/CMSIS/Include/core_cm3.h **** 
 944:Drivers/CMSIS/Include/core_cm3.h **** /* DWT Comparator Function Register Definitions */
 945:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_FUNCTION_MATCHED_Pos           24U                                         /*!< DWT FUN
 946:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_FUNCTION_MATCHED_Msk           (0x1UL << DWT_FUNCTION_MATCHED_Pos)         /*!< DWT FUN
 947:Drivers/CMSIS/Include/core_cm3.h **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 21


 948:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_FUNCTION_DATAVADDR1_Pos        16U                                         /*!< DWT FUN
 949:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_FUNCTION_DATAVADDR1_Msk        (0xFUL << DWT_FUNCTION_DATAVADDR1_Pos)      /*!< DWT FUN
 950:Drivers/CMSIS/Include/core_cm3.h **** 
 951:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_FUNCTION_DATAVADDR0_Pos        12U                                         /*!< DWT FUN
 952:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_FUNCTION_DATAVADDR0_Msk        (0xFUL << DWT_FUNCTION_DATAVADDR0_Pos)      /*!< DWT FUN
 953:Drivers/CMSIS/Include/core_cm3.h **** 
 954:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_FUNCTION_DATAVSIZE_Pos         10U                                         /*!< DWT FUN
 955:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_FUNCTION_DATAVSIZE_Msk         (0x3UL << DWT_FUNCTION_DATAVSIZE_Pos)       /*!< DWT FUN
 956:Drivers/CMSIS/Include/core_cm3.h **** 
 957:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_FUNCTION_LNK1ENA_Pos            9U                                         /*!< DWT FUN
 958:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_FUNCTION_LNK1ENA_Msk           (0x1UL << DWT_FUNCTION_LNK1ENA_Pos)         /*!< DWT FUN
 959:Drivers/CMSIS/Include/core_cm3.h **** 
 960:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_FUNCTION_DATAVMATCH_Pos         8U                                         /*!< DWT FUN
 961:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_FUNCTION_DATAVMATCH_Msk        (0x1UL << DWT_FUNCTION_DATAVMATCH_Pos)      /*!< DWT FUN
 962:Drivers/CMSIS/Include/core_cm3.h **** 
 963:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_FUNCTION_CYCMATCH_Pos           7U                                         /*!< DWT FUN
 964:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_FUNCTION_CYCMATCH_Msk          (0x1UL << DWT_FUNCTION_CYCMATCH_Pos)        /*!< DWT FUN
 965:Drivers/CMSIS/Include/core_cm3.h **** 
 966:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_FUNCTION_EMITRANGE_Pos          5U                                         /*!< DWT FUN
 967:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_FUNCTION_EMITRANGE_Msk         (0x1UL << DWT_FUNCTION_EMITRANGE_Pos)       /*!< DWT FUN
 968:Drivers/CMSIS/Include/core_cm3.h **** 
 969:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_FUNCTION_FUNCTION_Pos           0U                                         /*!< DWT FUN
 970:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_FUNCTION_FUNCTION_Msk          (0xFUL /*<< DWT_FUNCTION_FUNCTION_Pos*/)    /*!< DWT FUN
 971:Drivers/CMSIS/Include/core_cm3.h **** 
 972:Drivers/CMSIS/Include/core_cm3.h **** /*@}*/ /* end of group CMSIS_DWT */
 973:Drivers/CMSIS/Include/core_cm3.h **** 
 974:Drivers/CMSIS/Include/core_cm3.h **** 
 975:Drivers/CMSIS/Include/core_cm3.h **** /**
 976:Drivers/CMSIS/Include/core_cm3.h ****   \ingroup  CMSIS_core_register
 977:Drivers/CMSIS/Include/core_cm3.h ****   \defgroup CMSIS_TPI     Trace Port Interface (TPI)
 978:Drivers/CMSIS/Include/core_cm3.h ****   \brief    Type definitions for the Trace Port Interface (TPI)
 979:Drivers/CMSIS/Include/core_cm3.h ****   @{
 980:Drivers/CMSIS/Include/core_cm3.h ****  */
 981:Drivers/CMSIS/Include/core_cm3.h **** 
 982:Drivers/CMSIS/Include/core_cm3.h **** /**
 983:Drivers/CMSIS/Include/core_cm3.h ****   \brief  Structure type to access the Trace Port Interface Register (TPI).
 984:Drivers/CMSIS/Include/core_cm3.h ****  */
 985:Drivers/CMSIS/Include/core_cm3.h **** typedef struct
 986:Drivers/CMSIS/Include/core_cm3.h **** {
 987:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t SSPSR;                  /*!< Offset: 0x000 (R/ )  Supported Parallel Port Size Reg
 988:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t CSPSR;                  /*!< Offset: 0x004 (R/W)  Current Parallel Port Size Regis
 989:Drivers/CMSIS/Include/core_cm3.h ****         uint32_t RESERVED0[2U];
 990:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t ACPR;                   /*!< Offset: 0x010 (R/W)  Asynchronous Clock Prescaler Reg
 991:Drivers/CMSIS/Include/core_cm3.h ****         uint32_t RESERVED1[55U];
 992:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t SPPR;                   /*!< Offset: 0x0F0 (R/W)  Selected Pin Protocol Register *
 993:Drivers/CMSIS/Include/core_cm3.h ****         uint32_t RESERVED2[131U];
 994:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t FFSR;                   /*!< Offset: 0x300 (R/ )  Formatter and Flush Status Regis
 995:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t FFCR;                   /*!< Offset: 0x304 (R/W)  Formatter and Flush Control Regi
 996:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t FSCR;                   /*!< Offset: 0x308 (R/ )  Formatter Synchronization Counte
 997:Drivers/CMSIS/Include/core_cm3.h ****         uint32_t RESERVED3[759U];
 998:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t TRIGGER;                /*!< Offset: 0xEE8 (R/ )  TRIGGER */
 999:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t FIFO0;                  /*!< Offset: 0xEEC (R/ )  Integration ETM Data */
1000:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t ITATBCTR2;              /*!< Offset: 0xEF0 (R/ )  ITATBCTR2 */
1001:Drivers/CMSIS/Include/core_cm3.h ****         uint32_t RESERVED4[1U];
1002:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t ITATBCTR0;              /*!< Offset: 0xEF8 (R/ )  ITATBCTR0 */
1003:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t FIFO1;                  /*!< Offset: 0xEFC (R/ )  Integration ITM Data */
1004:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t ITCTRL;                 /*!< Offset: 0xF00 (R/W)  Integration Mode Control */
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 22


1005:Drivers/CMSIS/Include/core_cm3.h ****         uint32_t RESERVED5[39U];
1006:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t CLAIMSET;               /*!< Offset: 0xFA0 (R/W)  Claim tag set */
1007:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t CLAIMCLR;               /*!< Offset: 0xFA4 (R/W)  Claim tag clear */
1008:Drivers/CMSIS/Include/core_cm3.h ****         uint32_t RESERVED7[8U];
1009:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t DEVID;                  /*!< Offset: 0xFC8 (R/ )  TPIU_DEVID */
1010:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t DEVTYPE;                /*!< Offset: 0xFCC (R/ )  TPIU_DEVTYPE */
1011:Drivers/CMSIS/Include/core_cm3.h **** } TPI_Type;
1012:Drivers/CMSIS/Include/core_cm3.h **** 
1013:Drivers/CMSIS/Include/core_cm3.h **** /* TPI Asynchronous Clock Prescaler Register Definitions */
1014:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_ACPR_PRESCALER_Pos              0U                                         /*!< TPI ACP
1015:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_ACPR_PRESCALER_Msk             (0x1FFFUL /*<< TPI_ACPR_PRESCALER_Pos*/)    /*!< TPI ACP
1016:Drivers/CMSIS/Include/core_cm3.h **** 
1017:Drivers/CMSIS/Include/core_cm3.h **** /* TPI Selected Pin Protocol Register Definitions */
1018:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_SPPR_TXMODE_Pos                 0U                                         /*!< TPI SPP
1019:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_SPPR_TXMODE_Msk                (0x3UL /*<< TPI_SPPR_TXMODE_Pos*/)          /*!< TPI SPP
1020:Drivers/CMSIS/Include/core_cm3.h **** 
1021:Drivers/CMSIS/Include/core_cm3.h **** /* TPI Formatter and Flush Status Register Definitions */
1022:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FFSR_FtNonStop_Pos              3U                                         /*!< TPI FFS
1023:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FFSR_FtNonStop_Msk             (0x1UL << TPI_FFSR_FtNonStop_Pos)           /*!< TPI FFS
1024:Drivers/CMSIS/Include/core_cm3.h **** 
1025:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FFSR_TCPresent_Pos              2U                                         /*!< TPI FFS
1026:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FFSR_TCPresent_Msk             (0x1UL << TPI_FFSR_TCPresent_Pos)           /*!< TPI FFS
1027:Drivers/CMSIS/Include/core_cm3.h **** 
1028:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FFSR_FtStopped_Pos              1U                                         /*!< TPI FFS
1029:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FFSR_FtStopped_Msk             (0x1UL << TPI_FFSR_FtStopped_Pos)           /*!< TPI FFS
1030:Drivers/CMSIS/Include/core_cm3.h **** 
1031:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FFSR_FlInProg_Pos               0U                                         /*!< TPI FFS
1032:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FFSR_FlInProg_Msk              (0x1UL /*<< TPI_FFSR_FlInProg_Pos*/)        /*!< TPI FFS
1033:Drivers/CMSIS/Include/core_cm3.h **** 
1034:Drivers/CMSIS/Include/core_cm3.h **** /* TPI Formatter and Flush Control Register Definitions */
1035:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FFCR_TrigIn_Pos                 8U                                         /*!< TPI FFC
1036:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FFCR_TrigIn_Msk                (0x1UL << TPI_FFCR_TrigIn_Pos)              /*!< TPI FFC
1037:Drivers/CMSIS/Include/core_cm3.h **** 
1038:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FFCR_EnFCont_Pos                1U                                         /*!< TPI FFC
1039:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FFCR_EnFCont_Msk               (0x1UL << TPI_FFCR_EnFCont_Pos)             /*!< TPI FFC
1040:Drivers/CMSIS/Include/core_cm3.h **** 
1041:Drivers/CMSIS/Include/core_cm3.h **** /* TPI TRIGGER Register Definitions */
1042:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_TRIGGER_TRIGGER_Pos             0U                                         /*!< TPI TRI
1043:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_TRIGGER_TRIGGER_Msk            (0x1UL /*<< TPI_TRIGGER_TRIGGER_Pos*/)      /*!< TPI TRI
1044:Drivers/CMSIS/Include/core_cm3.h **** 
1045:Drivers/CMSIS/Include/core_cm3.h **** /* TPI Integration ETM Data Register Definitions (FIFO0) */
1046:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO0_ITM_ATVALID_Pos          29U                                         /*!< TPI FIF
1047:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO0_ITM_ATVALID_Msk          (0x3UL << TPI_FIFO0_ITM_ATVALID_Pos)        /*!< TPI FIF
1048:Drivers/CMSIS/Include/core_cm3.h **** 
1049:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO0_ITM_bytecount_Pos        27U                                         /*!< TPI FIF
1050:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO0_ITM_bytecount_Msk        (0x3UL << TPI_FIFO0_ITM_bytecount_Pos)      /*!< TPI FIF
1051:Drivers/CMSIS/Include/core_cm3.h **** 
1052:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO0_ETM_ATVALID_Pos          26U                                         /*!< TPI FIF
1053:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO0_ETM_ATVALID_Msk          (0x3UL << TPI_FIFO0_ETM_ATVALID_Pos)        /*!< TPI FIF
1054:Drivers/CMSIS/Include/core_cm3.h **** 
1055:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO0_ETM_bytecount_Pos        24U                                         /*!< TPI FIF
1056:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO0_ETM_bytecount_Msk        (0x3UL << TPI_FIFO0_ETM_bytecount_Pos)      /*!< TPI FIF
1057:Drivers/CMSIS/Include/core_cm3.h **** 
1058:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO0_ETM2_Pos                 16U                                         /*!< TPI FIF
1059:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO0_ETM2_Msk                 (0xFFUL << TPI_FIFO0_ETM2_Pos)              /*!< TPI FIF
1060:Drivers/CMSIS/Include/core_cm3.h **** 
1061:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO0_ETM1_Pos                  8U                                         /*!< TPI FIF
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 23


1062:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO0_ETM1_Msk                 (0xFFUL << TPI_FIFO0_ETM1_Pos)              /*!< TPI FIF
1063:Drivers/CMSIS/Include/core_cm3.h **** 
1064:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO0_ETM0_Pos                  0U                                         /*!< TPI FIF
1065:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO0_ETM0_Msk                 (0xFFUL /*<< TPI_FIFO0_ETM0_Pos*/)          /*!< TPI FIF
1066:Drivers/CMSIS/Include/core_cm3.h **** 
1067:Drivers/CMSIS/Include/core_cm3.h **** /* TPI ITATBCTR2 Register Definitions */
1068:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_ITATBCTR2_ATREADY_Pos           0U                                         /*!< TPI ITA
1069:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_ITATBCTR2_ATREADY_Msk          (0x1UL /*<< TPI_ITATBCTR2_ATREADY_Pos*/)    /*!< TPI ITA
1070:Drivers/CMSIS/Include/core_cm3.h **** 
1071:Drivers/CMSIS/Include/core_cm3.h **** /* TPI Integration ITM Data Register Definitions (FIFO1) */
1072:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO1_ITM_ATVALID_Pos          29U                                         /*!< TPI FIF
1073:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO1_ITM_ATVALID_Msk          (0x3UL << TPI_FIFO1_ITM_ATVALID_Pos)        /*!< TPI FIF
1074:Drivers/CMSIS/Include/core_cm3.h **** 
1075:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO1_ITM_bytecount_Pos        27U                                         /*!< TPI FIF
1076:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO1_ITM_bytecount_Msk        (0x3UL << TPI_FIFO1_ITM_bytecount_Pos)      /*!< TPI FIF
1077:Drivers/CMSIS/Include/core_cm3.h **** 
1078:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO1_ETM_ATVALID_Pos          26U                                         /*!< TPI FIF
1079:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO1_ETM_ATVALID_Msk          (0x3UL << TPI_FIFO1_ETM_ATVALID_Pos)        /*!< TPI FIF
1080:Drivers/CMSIS/Include/core_cm3.h **** 
1081:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO1_ETM_bytecount_Pos        24U                                         /*!< TPI FIF
1082:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO1_ETM_bytecount_Msk        (0x3UL << TPI_FIFO1_ETM_bytecount_Pos)      /*!< TPI FIF
1083:Drivers/CMSIS/Include/core_cm3.h **** 
1084:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO1_ITM2_Pos                 16U                                         /*!< TPI FIF
1085:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO1_ITM2_Msk                 (0xFFUL << TPI_FIFO1_ITM2_Pos)              /*!< TPI FIF
1086:Drivers/CMSIS/Include/core_cm3.h **** 
1087:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO1_ITM1_Pos                  8U                                         /*!< TPI FIF
1088:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO1_ITM1_Msk                 (0xFFUL << TPI_FIFO1_ITM1_Pos)              /*!< TPI FIF
1089:Drivers/CMSIS/Include/core_cm3.h **** 
1090:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO1_ITM0_Pos                  0U                                         /*!< TPI FIF
1091:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_FIFO1_ITM0_Msk                 (0xFFUL /*<< TPI_FIFO1_ITM0_Pos*/)          /*!< TPI FIF
1092:Drivers/CMSIS/Include/core_cm3.h **** 
1093:Drivers/CMSIS/Include/core_cm3.h **** /* TPI ITATBCTR0 Register Definitions */
1094:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_ITATBCTR0_ATREADY_Pos           0U                                         /*!< TPI ITA
1095:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_ITATBCTR0_ATREADY_Msk          (0x1UL /*<< TPI_ITATBCTR0_ATREADY_Pos*/)    /*!< TPI ITA
1096:Drivers/CMSIS/Include/core_cm3.h **** 
1097:Drivers/CMSIS/Include/core_cm3.h **** /* TPI Integration Mode Control Register Definitions */
1098:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_ITCTRL_Mode_Pos                 0U                                         /*!< TPI ITC
1099:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_ITCTRL_Mode_Msk                (0x1UL /*<< TPI_ITCTRL_Mode_Pos*/)          /*!< TPI ITC
1100:Drivers/CMSIS/Include/core_cm3.h **** 
1101:Drivers/CMSIS/Include/core_cm3.h **** /* TPI DEVID Register Definitions */
1102:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_DEVID_NRZVALID_Pos             11U                                         /*!< TPI DEV
1103:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_DEVID_NRZVALID_Msk             (0x1UL << TPI_DEVID_NRZVALID_Pos)           /*!< TPI DEV
1104:Drivers/CMSIS/Include/core_cm3.h **** 
1105:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_DEVID_MANCVALID_Pos            10U                                         /*!< TPI DEV
1106:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_DEVID_MANCVALID_Msk            (0x1UL << TPI_DEVID_MANCVALID_Pos)          /*!< TPI DEV
1107:Drivers/CMSIS/Include/core_cm3.h **** 
1108:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_DEVID_PTINVALID_Pos             9U                                         /*!< TPI DEV
1109:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_DEVID_PTINVALID_Msk            (0x1UL << TPI_DEVID_PTINVALID_Pos)          /*!< TPI DEV
1110:Drivers/CMSIS/Include/core_cm3.h **** 
1111:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_DEVID_MinBufSz_Pos              6U                                         /*!< TPI DEV
1112:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_DEVID_MinBufSz_Msk             (0x7UL << TPI_DEVID_MinBufSz_Pos)           /*!< TPI DEV
1113:Drivers/CMSIS/Include/core_cm3.h **** 
1114:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_DEVID_AsynClkIn_Pos             5U                                         /*!< TPI DEV
1115:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_DEVID_AsynClkIn_Msk            (0x1UL << TPI_DEVID_AsynClkIn_Pos)          /*!< TPI DEV
1116:Drivers/CMSIS/Include/core_cm3.h **** 
1117:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_DEVID_NrTraceInput_Pos          0U                                         /*!< TPI DEV
1118:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_DEVID_NrTraceInput_Msk         (0x1FUL /*<< TPI_DEVID_NrTraceInput_Pos*/)  /*!< TPI DEV
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 24


1119:Drivers/CMSIS/Include/core_cm3.h **** 
1120:Drivers/CMSIS/Include/core_cm3.h **** /* TPI DEVTYPE Register Definitions */
1121:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_DEVTYPE_MajorType_Pos           4U                                         /*!< TPI DEV
1122:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_DEVTYPE_MajorType_Msk          (0xFUL << TPI_DEVTYPE_MajorType_Pos)        /*!< TPI DEV
1123:Drivers/CMSIS/Include/core_cm3.h **** 
1124:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_DEVTYPE_SubType_Pos             0U                                         /*!< TPI DEV
1125:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_DEVTYPE_SubType_Msk            (0xFUL /*<< TPI_DEVTYPE_SubType_Pos*/)      /*!< TPI DEV
1126:Drivers/CMSIS/Include/core_cm3.h **** 
1127:Drivers/CMSIS/Include/core_cm3.h **** /*@}*/ /* end of group CMSIS_TPI */
1128:Drivers/CMSIS/Include/core_cm3.h **** 
1129:Drivers/CMSIS/Include/core_cm3.h **** 
1130:Drivers/CMSIS/Include/core_cm3.h **** #if (__MPU_PRESENT == 1U)
1131:Drivers/CMSIS/Include/core_cm3.h **** /**
1132:Drivers/CMSIS/Include/core_cm3.h ****   \ingroup  CMSIS_core_register
1133:Drivers/CMSIS/Include/core_cm3.h ****   \defgroup CMSIS_MPU     Memory Protection Unit (MPU)
1134:Drivers/CMSIS/Include/core_cm3.h ****   \brief    Type definitions for the Memory Protection Unit (MPU)
1135:Drivers/CMSIS/Include/core_cm3.h ****   @{
1136:Drivers/CMSIS/Include/core_cm3.h ****  */
1137:Drivers/CMSIS/Include/core_cm3.h **** 
1138:Drivers/CMSIS/Include/core_cm3.h **** /**
1139:Drivers/CMSIS/Include/core_cm3.h ****   \brief  Structure type to access the Memory Protection Unit (MPU).
1140:Drivers/CMSIS/Include/core_cm3.h ****  */
1141:Drivers/CMSIS/Include/core_cm3.h **** typedef struct
1142:Drivers/CMSIS/Include/core_cm3.h **** {
1143:Drivers/CMSIS/Include/core_cm3.h ****   __IM  uint32_t TYPE;                   /*!< Offset: 0x000 (R/ )  MPU Type Register */
1144:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t CTRL;                   /*!< Offset: 0x004 (R/W)  MPU Control Register */
1145:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t RNR;                    /*!< Offset: 0x008 (R/W)  MPU Region RNRber Register */
1146:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t RBAR;                   /*!< Offset: 0x00C (R/W)  MPU Region Base Address Register
1147:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t RASR;                   /*!< Offset: 0x010 (R/W)  MPU Region Attribute and Size Re
1148:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t RBAR_A1;                /*!< Offset: 0x014 (R/W)  MPU Alias 1 Region Base Address 
1149:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t RASR_A1;                /*!< Offset: 0x018 (R/W)  MPU Alias 1 Region Attribute and
1150:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t RBAR_A2;                /*!< Offset: 0x01C (R/W)  MPU Alias 2 Region Base Address 
1151:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t RASR_A2;                /*!< Offset: 0x020 (R/W)  MPU Alias 2 Region Attribute and
1152:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t RBAR_A3;                /*!< Offset: 0x024 (R/W)  MPU Alias 3 Region Base Address 
1153:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t RASR_A3;                /*!< Offset: 0x028 (R/W)  MPU Alias 3 Region Attribute and
1154:Drivers/CMSIS/Include/core_cm3.h **** } MPU_Type;
1155:Drivers/CMSIS/Include/core_cm3.h **** 
1156:Drivers/CMSIS/Include/core_cm3.h **** /* MPU Type Register Definitions */
1157:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_TYPE_IREGION_Pos               16U                                            /*!< MPU 
1158:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_TYPE_IREGION_Msk               (0xFFUL << MPU_TYPE_IREGION_Pos)               /*!< MPU 
1159:Drivers/CMSIS/Include/core_cm3.h **** 
1160:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_TYPE_DREGION_Pos                8U                                            /*!< MPU 
1161:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_TYPE_DREGION_Msk               (0xFFUL << MPU_TYPE_DREGION_Pos)               /*!< MPU 
1162:Drivers/CMSIS/Include/core_cm3.h **** 
1163:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_TYPE_SEPARATE_Pos               0U                                            /*!< MPU 
1164:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_TYPE_SEPARATE_Msk              (1UL /*<< MPU_TYPE_SEPARATE_Pos*/)             /*!< MPU 
1165:Drivers/CMSIS/Include/core_cm3.h **** 
1166:Drivers/CMSIS/Include/core_cm3.h **** /* MPU Control Register Definitions */
1167:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_CTRL_PRIVDEFENA_Pos             2U                                            /*!< MPU 
1168:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_CTRL_PRIVDEFENA_Msk            (1UL << MPU_CTRL_PRIVDEFENA_Pos)               /*!< MPU 
1169:Drivers/CMSIS/Include/core_cm3.h **** 
1170:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_CTRL_HFNMIENA_Pos               1U                                            /*!< MPU 
1171:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_CTRL_HFNMIENA_Msk              (1UL << MPU_CTRL_HFNMIENA_Pos)                 /*!< MPU 
1172:Drivers/CMSIS/Include/core_cm3.h **** 
1173:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_CTRL_ENABLE_Pos                 0U                                            /*!< MPU 
1174:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_CTRL_ENABLE_Msk                (1UL /*<< MPU_CTRL_ENABLE_Pos*/)               /*!< MPU 
1175:Drivers/CMSIS/Include/core_cm3.h **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 25


1176:Drivers/CMSIS/Include/core_cm3.h **** /* MPU Region Number Register Definitions */
1177:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RNR_REGION_Pos                  0U                                            /*!< MPU 
1178:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RNR_REGION_Msk                 (0xFFUL /*<< MPU_RNR_REGION_Pos*/)             /*!< MPU 
1179:Drivers/CMSIS/Include/core_cm3.h **** 
1180:Drivers/CMSIS/Include/core_cm3.h **** /* MPU Region Base Address Register Definitions */
1181:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RBAR_ADDR_Pos                   5U                                            /*!< MPU 
1182:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RBAR_ADDR_Msk                  (0x7FFFFFFUL << MPU_RBAR_ADDR_Pos)             /*!< MPU 
1183:Drivers/CMSIS/Include/core_cm3.h **** 
1184:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RBAR_VALID_Pos                  4U                                            /*!< MPU 
1185:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RBAR_VALID_Msk                 (1UL << MPU_RBAR_VALID_Pos)                    /*!< MPU 
1186:Drivers/CMSIS/Include/core_cm3.h **** 
1187:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RBAR_REGION_Pos                 0U                                            /*!< MPU 
1188:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RBAR_REGION_Msk                (0xFUL /*<< MPU_RBAR_REGION_Pos*/)             /*!< MPU 
1189:Drivers/CMSIS/Include/core_cm3.h **** 
1190:Drivers/CMSIS/Include/core_cm3.h **** /* MPU Region Attribute and Size Register Definitions */
1191:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RASR_ATTRS_Pos                 16U                                            /*!< MPU 
1192:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RASR_ATTRS_Msk                 (0xFFFFUL << MPU_RASR_ATTRS_Pos)               /*!< MPU 
1193:Drivers/CMSIS/Include/core_cm3.h **** 
1194:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RASR_XN_Pos                    28U                                            /*!< MPU 
1195:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RASR_XN_Msk                    (1UL << MPU_RASR_XN_Pos)                       /*!< MPU 
1196:Drivers/CMSIS/Include/core_cm3.h **** 
1197:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RASR_AP_Pos                    24U                                            /*!< MPU 
1198:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RASR_AP_Msk                    (0x7UL << MPU_RASR_AP_Pos)                     /*!< MPU 
1199:Drivers/CMSIS/Include/core_cm3.h **** 
1200:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RASR_TEX_Pos                   19U                                            /*!< MPU 
1201:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RASR_TEX_Msk                   (0x7UL << MPU_RASR_TEX_Pos)                    /*!< MPU 
1202:Drivers/CMSIS/Include/core_cm3.h **** 
1203:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RASR_S_Pos                     18U                                            /*!< MPU 
1204:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RASR_S_Msk                     (1UL << MPU_RASR_S_Pos)                        /*!< MPU 
1205:Drivers/CMSIS/Include/core_cm3.h **** 
1206:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RASR_C_Pos                     17U                                            /*!< MPU 
1207:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RASR_C_Msk                     (1UL << MPU_RASR_C_Pos)                        /*!< MPU 
1208:Drivers/CMSIS/Include/core_cm3.h **** 
1209:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RASR_B_Pos                     16U                                            /*!< MPU 
1210:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RASR_B_Msk                     (1UL << MPU_RASR_B_Pos)                        /*!< MPU 
1211:Drivers/CMSIS/Include/core_cm3.h **** 
1212:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RASR_SRD_Pos                    8U                                            /*!< MPU 
1213:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RASR_SRD_Msk                   (0xFFUL << MPU_RASR_SRD_Pos)                   /*!< MPU 
1214:Drivers/CMSIS/Include/core_cm3.h **** 
1215:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RASR_SIZE_Pos                   1U                                            /*!< MPU 
1216:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RASR_SIZE_Msk                  (0x1FUL << MPU_RASR_SIZE_Pos)                  /*!< MPU 
1217:Drivers/CMSIS/Include/core_cm3.h **** 
1218:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RASR_ENABLE_Pos                 0U                                            /*!< MPU 
1219:Drivers/CMSIS/Include/core_cm3.h **** #define MPU_RASR_ENABLE_Msk                (1UL /*<< MPU_RASR_ENABLE_Pos*/)               /*!< MPU 
1220:Drivers/CMSIS/Include/core_cm3.h **** 
1221:Drivers/CMSIS/Include/core_cm3.h **** /*@} end of group CMSIS_MPU */
1222:Drivers/CMSIS/Include/core_cm3.h **** #endif
1223:Drivers/CMSIS/Include/core_cm3.h **** 
1224:Drivers/CMSIS/Include/core_cm3.h **** 
1225:Drivers/CMSIS/Include/core_cm3.h **** /**
1226:Drivers/CMSIS/Include/core_cm3.h ****   \ingroup  CMSIS_core_register
1227:Drivers/CMSIS/Include/core_cm3.h ****   \defgroup CMSIS_CoreDebug       Core Debug Registers (CoreDebug)
1228:Drivers/CMSIS/Include/core_cm3.h ****   \brief    Type definitions for the Core Debug Registers
1229:Drivers/CMSIS/Include/core_cm3.h ****   @{
1230:Drivers/CMSIS/Include/core_cm3.h ****  */
1231:Drivers/CMSIS/Include/core_cm3.h **** 
1232:Drivers/CMSIS/Include/core_cm3.h **** /**
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 26


1233:Drivers/CMSIS/Include/core_cm3.h ****   \brief  Structure type to access the Core Debug Register (CoreDebug).
1234:Drivers/CMSIS/Include/core_cm3.h ****  */
1235:Drivers/CMSIS/Include/core_cm3.h **** typedef struct
1236:Drivers/CMSIS/Include/core_cm3.h **** {
1237:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t DHCSR;                  /*!< Offset: 0x000 (R/W)  Debug Halting Control and Status
1238:Drivers/CMSIS/Include/core_cm3.h ****   __OM  uint32_t DCRSR;                  /*!< Offset: 0x004 ( /W)  Debug Core Register Selector Reg
1239:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t DCRDR;                  /*!< Offset: 0x008 (R/W)  Debug Core Register Data Registe
1240:Drivers/CMSIS/Include/core_cm3.h ****   __IOM uint32_t DEMCR;                  /*!< Offset: 0x00C (R/W)  Debug Exception and Monitor Cont
1241:Drivers/CMSIS/Include/core_cm3.h **** } CoreDebug_Type;
1242:Drivers/CMSIS/Include/core_cm3.h **** 
1243:Drivers/CMSIS/Include/core_cm3.h **** /* Debug Halting Control and Status Register Definitions */
1244:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DHCSR_DBGKEY_Pos         16U                                            /*!< Core
1245:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DHCSR_DBGKEY_Msk         (0xFFFFUL << CoreDebug_DHCSR_DBGKEY_Pos)       /*!< Core
1246:Drivers/CMSIS/Include/core_cm3.h **** 
1247:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DHCSR_S_RESET_ST_Pos     25U                                            /*!< Core
1248:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DHCSR_S_RESET_ST_Msk     (1UL << CoreDebug_DHCSR_S_RESET_ST_Pos)        /*!< Core
1249:Drivers/CMSIS/Include/core_cm3.h **** 
1250:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DHCSR_S_RETIRE_ST_Pos    24U                                            /*!< Core
1251:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DHCSR_S_RETIRE_ST_Msk    (1UL << CoreDebug_DHCSR_S_RETIRE_ST_Pos)       /*!< Core
1252:Drivers/CMSIS/Include/core_cm3.h **** 
1253:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DHCSR_S_LOCKUP_Pos       19U                                            /*!< Core
1254:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DHCSR_S_LOCKUP_Msk       (1UL << CoreDebug_DHCSR_S_LOCKUP_Pos)          /*!< Core
1255:Drivers/CMSIS/Include/core_cm3.h **** 
1256:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DHCSR_S_SLEEP_Pos        18U                                            /*!< Core
1257:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DHCSR_S_SLEEP_Msk        (1UL << CoreDebug_DHCSR_S_SLEEP_Pos)           /*!< Core
1258:Drivers/CMSIS/Include/core_cm3.h **** 
1259:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DHCSR_S_HALT_Pos         17U                                            /*!< Core
1260:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DHCSR_S_HALT_Msk         (1UL << CoreDebug_DHCSR_S_HALT_Pos)            /*!< Core
1261:Drivers/CMSIS/Include/core_cm3.h **** 
1262:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DHCSR_S_REGRDY_Pos       16U                                            /*!< Core
1263:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DHCSR_S_REGRDY_Msk       (1UL << CoreDebug_DHCSR_S_REGRDY_Pos)          /*!< Core
1264:Drivers/CMSIS/Include/core_cm3.h **** 
1265:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DHCSR_C_SNAPSTALL_Pos     5U                                            /*!< Core
1266:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DHCSR_C_SNAPSTALL_Msk    (1UL << CoreDebug_DHCSR_C_SNAPSTALL_Pos)       /*!< Core
1267:Drivers/CMSIS/Include/core_cm3.h **** 
1268:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DHCSR_C_MASKINTS_Pos      3U                                            /*!< Core
1269:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DHCSR_C_MASKINTS_Msk     (1UL << CoreDebug_DHCSR_C_MASKINTS_Pos)        /*!< Core
1270:Drivers/CMSIS/Include/core_cm3.h **** 
1271:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DHCSR_C_STEP_Pos          2U                                            /*!< Core
1272:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DHCSR_C_STEP_Msk         (1UL << CoreDebug_DHCSR_C_STEP_Pos)            /*!< Core
1273:Drivers/CMSIS/Include/core_cm3.h **** 
1274:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DHCSR_C_HALT_Pos          1U                                            /*!< Core
1275:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DHCSR_C_HALT_Msk         (1UL << CoreDebug_DHCSR_C_HALT_Pos)            /*!< Core
1276:Drivers/CMSIS/Include/core_cm3.h **** 
1277:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DHCSR_C_DEBUGEN_Pos       0U                                            /*!< Core
1278:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DHCSR_C_DEBUGEN_Msk      (1UL /*<< CoreDebug_DHCSR_C_DEBUGEN_Pos*/)     /*!< Core
1279:Drivers/CMSIS/Include/core_cm3.h **** 
1280:Drivers/CMSIS/Include/core_cm3.h **** /* Debug Core Register Selector Register Definitions */
1281:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DCRSR_REGWnR_Pos         16U                                            /*!< Core
1282:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DCRSR_REGWnR_Msk         (1UL << CoreDebug_DCRSR_REGWnR_Pos)            /*!< Core
1283:Drivers/CMSIS/Include/core_cm3.h **** 
1284:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DCRSR_REGSEL_Pos          0U                                            /*!< Core
1285:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DCRSR_REGSEL_Msk         (0x1FUL /*<< CoreDebug_DCRSR_REGSEL_Pos*/)     /*!< Core
1286:Drivers/CMSIS/Include/core_cm3.h **** 
1287:Drivers/CMSIS/Include/core_cm3.h **** /* Debug Exception and Monitor Control Register Definitions */
1288:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_TRCENA_Pos         24U                                            /*!< Core
1289:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_TRCENA_Msk         (1UL << CoreDebug_DEMCR_TRCENA_Pos)            /*!< Core
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 27


1290:Drivers/CMSIS/Include/core_cm3.h **** 
1291:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_MON_REQ_Pos        19U                                            /*!< Core
1292:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_MON_REQ_Msk        (1UL << CoreDebug_DEMCR_MON_REQ_Pos)           /*!< Core
1293:Drivers/CMSIS/Include/core_cm3.h **** 
1294:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_MON_STEP_Pos       18U                                            /*!< Core
1295:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_MON_STEP_Msk       (1UL << CoreDebug_DEMCR_MON_STEP_Pos)          /*!< Core
1296:Drivers/CMSIS/Include/core_cm3.h **** 
1297:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_MON_PEND_Pos       17U                                            /*!< Core
1298:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_MON_PEND_Msk       (1UL << CoreDebug_DEMCR_MON_PEND_Pos)          /*!< Core
1299:Drivers/CMSIS/Include/core_cm3.h **** 
1300:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_MON_EN_Pos         16U                                            /*!< Core
1301:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_MON_EN_Msk         (1UL << CoreDebug_DEMCR_MON_EN_Pos)            /*!< Core
1302:Drivers/CMSIS/Include/core_cm3.h **** 
1303:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_VC_HARDERR_Pos     10U                                            /*!< Core
1304:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_VC_HARDERR_Msk     (1UL << CoreDebug_DEMCR_VC_HARDERR_Pos)        /*!< Core
1305:Drivers/CMSIS/Include/core_cm3.h **** 
1306:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_VC_INTERR_Pos       9U                                            /*!< Core
1307:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_VC_INTERR_Msk      (1UL << CoreDebug_DEMCR_VC_INTERR_Pos)         /*!< Core
1308:Drivers/CMSIS/Include/core_cm3.h **** 
1309:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_VC_BUSERR_Pos       8U                                            /*!< Core
1310:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_VC_BUSERR_Msk      (1UL << CoreDebug_DEMCR_VC_BUSERR_Pos)         /*!< Core
1311:Drivers/CMSIS/Include/core_cm3.h **** 
1312:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_VC_STATERR_Pos      7U                                            /*!< Core
1313:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_VC_STATERR_Msk     (1UL << CoreDebug_DEMCR_VC_STATERR_Pos)        /*!< Core
1314:Drivers/CMSIS/Include/core_cm3.h **** 
1315:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_VC_CHKERR_Pos       6U                                            /*!< Core
1316:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_VC_CHKERR_Msk      (1UL << CoreDebug_DEMCR_VC_CHKERR_Pos)         /*!< Core
1317:Drivers/CMSIS/Include/core_cm3.h **** 
1318:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_VC_NOCPERR_Pos      5U                                            /*!< Core
1319:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_VC_NOCPERR_Msk     (1UL << CoreDebug_DEMCR_VC_NOCPERR_Pos)        /*!< Core
1320:Drivers/CMSIS/Include/core_cm3.h **** 
1321:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_VC_MMERR_Pos        4U                                            /*!< Core
1322:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_VC_MMERR_Msk       (1UL << CoreDebug_DEMCR_VC_MMERR_Pos)          /*!< Core
1323:Drivers/CMSIS/Include/core_cm3.h **** 
1324:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_VC_CORERESET_Pos    0U                                            /*!< Core
1325:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_DEMCR_VC_CORERESET_Msk   (1UL /*<< CoreDebug_DEMCR_VC_CORERESET_Pos*/)  /*!< Core
1326:Drivers/CMSIS/Include/core_cm3.h **** 
1327:Drivers/CMSIS/Include/core_cm3.h **** /*@} end of group CMSIS_CoreDebug */
1328:Drivers/CMSIS/Include/core_cm3.h **** 
1329:Drivers/CMSIS/Include/core_cm3.h **** 
1330:Drivers/CMSIS/Include/core_cm3.h **** /**
1331:Drivers/CMSIS/Include/core_cm3.h ****   \ingroup    CMSIS_core_register
1332:Drivers/CMSIS/Include/core_cm3.h ****   \defgroup   CMSIS_core_bitfield     Core register bit field macros
1333:Drivers/CMSIS/Include/core_cm3.h ****   \brief      Macros for use with bit field definitions (xxx_Pos, xxx_Msk).
1334:Drivers/CMSIS/Include/core_cm3.h ****   @{
1335:Drivers/CMSIS/Include/core_cm3.h ****  */
1336:Drivers/CMSIS/Include/core_cm3.h **** 
1337:Drivers/CMSIS/Include/core_cm3.h **** /**
1338:Drivers/CMSIS/Include/core_cm3.h ****   \brief   Mask and shift a bit field value for use in a register bit range.
1339:Drivers/CMSIS/Include/core_cm3.h ****   \param[in] field  Name of the register bit field.
1340:Drivers/CMSIS/Include/core_cm3.h ****   \param[in] value  Value of the bit field.
1341:Drivers/CMSIS/Include/core_cm3.h ****   \return           Masked and shifted value.
1342:Drivers/CMSIS/Include/core_cm3.h **** */
1343:Drivers/CMSIS/Include/core_cm3.h **** #define _VAL2FLD(field, value)    ((value << field ## _Pos) & field ## _Msk)
1344:Drivers/CMSIS/Include/core_cm3.h **** 
1345:Drivers/CMSIS/Include/core_cm3.h **** /**
1346:Drivers/CMSIS/Include/core_cm3.h ****   \brief     Mask and shift a register value to extract a bit filed value.
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 28


1347:Drivers/CMSIS/Include/core_cm3.h ****   \param[in] field  Name of the register bit field.
1348:Drivers/CMSIS/Include/core_cm3.h ****   \param[in] value  Value of register.
1349:Drivers/CMSIS/Include/core_cm3.h ****   \return           Masked and shifted bit field value.
1350:Drivers/CMSIS/Include/core_cm3.h **** */
1351:Drivers/CMSIS/Include/core_cm3.h **** #define _FLD2VAL(field, value)    ((value & field ## _Msk) >> field ## _Pos)
1352:Drivers/CMSIS/Include/core_cm3.h **** 
1353:Drivers/CMSIS/Include/core_cm3.h **** /*@} end of group CMSIS_core_bitfield */
1354:Drivers/CMSIS/Include/core_cm3.h **** 
1355:Drivers/CMSIS/Include/core_cm3.h **** 
1356:Drivers/CMSIS/Include/core_cm3.h **** /**
1357:Drivers/CMSIS/Include/core_cm3.h ****   \ingroup    CMSIS_core_register
1358:Drivers/CMSIS/Include/core_cm3.h ****   \defgroup   CMSIS_core_base     Core Definitions
1359:Drivers/CMSIS/Include/core_cm3.h ****   \brief      Definitions for base addresses, unions, and structures.
1360:Drivers/CMSIS/Include/core_cm3.h ****   @{
1361:Drivers/CMSIS/Include/core_cm3.h ****  */
1362:Drivers/CMSIS/Include/core_cm3.h **** 
1363:Drivers/CMSIS/Include/core_cm3.h **** /* Memory mapping of Cortex-M3 Hardware */
1364:Drivers/CMSIS/Include/core_cm3.h **** #define SCS_BASE            (0xE000E000UL)                            /*!< System Control Space Bas
1365:Drivers/CMSIS/Include/core_cm3.h **** #define ITM_BASE            (0xE0000000UL)                            /*!< ITM Base Address */
1366:Drivers/CMSIS/Include/core_cm3.h **** #define DWT_BASE            (0xE0001000UL)                            /*!< DWT Base Address */
1367:Drivers/CMSIS/Include/core_cm3.h **** #define TPI_BASE            (0xE0040000UL)                            /*!< TPI Base Address */
1368:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug_BASE      (0xE000EDF0UL)                            /*!< Core Debug Base Address 
1369:Drivers/CMSIS/Include/core_cm3.h **** #define SysTick_BASE        (SCS_BASE +  0x0010UL)                    /*!< SysTick Base Address */
1370:Drivers/CMSIS/Include/core_cm3.h **** #define NVIC_BASE           (SCS_BASE +  0x0100UL)                    /*!< NVIC Base Address */
1371:Drivers/CMSIS/Include/core_cm3.h **** #define SCB_BASE            (SCS_BASE +  0x0D00UL)                    /*!< System Control Block Bas
1372:Drivers/CMSIS/Include/core_cm3.h **** 
1373:Drivers/CMSIS/Include/core_cm3.h **** #define SCnSCB              ((SCnSCB_Type    *)     SCS_BASE      )   /*!< System control Register 
1374:Drivers/CMSIS/Include/core_cm3.h **** #define SCB                 ((SCB_Type       *)     SCB_BASE      )   /*!< SCB configuration struct
1375:Drivers/CMSIS/Include/core_cm3.h **** #define SysTick             ((SysTick_Type   *)     SysTick_BASE  )   /*!< SysTick configuration st
1376:Drivers/CMSIS/Include/core_cm3.h **** #define NVIC                ((NVIC_Type      *)     NVIC_BASE     )   /*!< NVIC configuration struc
1377:Drivers/CMSIS/Include/core_cm3.h **** #define ITM                 ((ITM_Type       *)     ITM_BASE      )   /*!< ITM configuration struct
1378:Drivers/CMSIS/Include/core_cm3.h **** #define DWT                 ((DWT_Type       *)     DWT_BASE      )   /*!< DWT configuration struct
1379:Drivers/CMSIS/Include/core_cm3.h **** #define TPI                 ((TPI_Type       *)     TPI_BASE      )   /*!< TPI configuration struct
1380:Drivers/CMSIS/Include/core_cm3.h **** #define CoreDebug           ((CoreDebug_Type *)     CoreDebug_BASE)   /*!< Core Debug configuration
1381:Drivers/CMSIS/Include/core_cm3.h **** 
1382:Drivers/CMSIS/Include/core_cm3.h **** #if (__MPU_PRESENT == 1U)
1383:Drivers/CMSIS/Include/core_cm3.h ****   #define MPU_BASE          (SCS_BASE +  0x0D90UL)                    /*!< Memory Protection Unit *
1384:Drivers/CMSIS/Include/core_cm3.h ****   #define MPU               ((MPU_Type       *)     MPU_BASE      )   /*!< Memory Protection Unit *
1385:Drivers/CMSIS/Include/core_cm3.h **** #endif
1386:Drivers/CMSIS/Include/core_cm3.h **** 
1387:Drivers/CMSIS/Include/core_cm3.h **** /*@} */
1388:Drivers/CMSIS/Include/core_cm3.h **** 
1389:Drivers/CMSIS/Include/core_cm3.h **** 
1390:Drivers/CMSIS/Include/core_cm3.h **** 
1391:Drivers/CMSIS/Include/core_cm3.h **** /*******************************************************************************
1392:Drivers/CMSIS/Include/core_cm3.h ****  *                Hardware Abstraction Layer
1393:Drivers/CMSIS/Include/core_cm3.h ****   Core Function Interface contains:
1394:Drivers/CMSIS/Include/core_cm3.h ****   - Core NVIC Functions
1395:Drivers/CMSIS/Include/core_cm3.h ****   - Core SysTick Functions
1396:Drivers/CMSIS/Include/core_cm3.h ****   - Core Debug Functions
1397:Drivers/CMSIS/Include/core_cm3.h ****   - Core Register Access Functions
1398:Drivers/CMSIS/Include/core_cm3.h ****  ******************************************************************************/
1399:Drivers/CMSIS/Include/core_cm3.h **** /**
1400:Drivers/CMSIS/Include/core_cm3.h ****   \defgroup CMSIS_Core_FunctionInterface Functions and Instructions Reference
1401:Drivers/CMSIS/Include/core_cm3.h **** */
1402:Drivers/CMSIS/Include/core_cm3.h **** 
1403:Drivers/CMSIS/Include/core_cm3.h **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 29


1404:Drivers/CMSIS/Include/core_cm3.h **** 
1405:Drivers/CMSIS/Include/core_cm3.h **** /* ##########################   NVIC functions  #################################### */
1406:Drivers/CMSIS/Include/core_cm3.h **** /**
1407:Drivers/CMSIS/Include/core_cm3.h ****   \ingroup  CMSIS_Core_FunctionInterface
1408:Drivers/CMSIS/Include/core_cm3.h ****   \defgroup CMSIS_Core_NVICFunctions NVIC Functions
1409:Drivers/CMSIS/Include/core_cm3.h ****   \brief    Functions that manage interrupts and exceptions via the NVIC.
1410:Drivers/CMSIS/Include/core_cm3.h ****   @{
1411:Drivers/CMSIS/Include/core_cm3.h ****  */
1412:Drivers/CMSIS/Include/core_cm3.h **** 
1413:Drivers/CMSIS/Include/core_cm3.h **** /**
1414:Drivers/CMSIS/Include/core_cm3.h ****   \brief   Set Priority Grouping
1415:Drivers/CMSIS/Include/core_cm3.h ****   \details Sets the priority grouping field using the required unlock sequence.
1416:Drivers/CMSIS/Include/core_cm3.h ****            The parameter PriorityGroup is assigned to the field SCB->AIRCR [10:8] PRIGROUP field.
1417:Drivers/CMSIS/Include/core_cm3.h ****            Only values from 0..7 are used.
1418:Drivers/CMSIS/Include/core_cm3.h ****            In case of a conflict between priority grouping and available
1419:Drivers/CMSIS/Include/core_cm3.h ****            priority bits (__NVIC_PRIO_BITS), the smallest possible priority group is set.
1420:Drivers/CMSIS/Include/core_cm3.h ****   \param [in]      PriorityGroup  Priority grouping field.
1421:Drivers/CMSIS/Include/core_cm3.h ****  */
1422:Drivers/CMSIS/Include/core_cm3.h **** __STATIC_INLINE void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
1423:Drivers/CMSIS/Include/core_cm3.h **** {
1424:Drivers/CMSIS/Include/core_cm3.h ****   uint32_t reg_value;
1425:Drivers/CMSIS/Include/core_cm3.h ****   uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);             /* only values 0..7 a
1426:Drivers/CMSIS/Include/core_cm3.h **** 
1427:Drivers/CMSIS/Include/core_cm3.h ****   reg_value  =  SCB->AIRCR;                                                   /* read old register 
  35              		.loc 2 1427 0
  36 0000 074A     		ldr	r2, .L2
  37 0002 D368     		ldr	r3, [r2, #12]
  38              	.LVL1:
1428:Drivers/CMSIS/Include/core_cm3.h ****   reg_value &= ~((uint32_t)(SCB_AIRCR_VECTKEY_Msk | SCB_AIRCR_PRIGROUP_Msk)); /* clear bits to chan
  39              		.loc 2 1428 0
  40 0004 23F4E063 		bic	r3, r3, #1792
  41              	.LVL2:
  42 0008 1B04     		lsls	r3, r3, #16
  43 000a 1B0C     		lsrs	r3, r3, #16
  44              	.LVL3:
1429:Drivers/CMSIS/Include/core_cm3.h ****   reg_value  =  (reg_value                                   |
1430:Drivers/CMSIS/Include/core_cm3.h ****                 ((uint32_t)0x5FAUL << SCB_AIRCR_VECTKEY_Pos) |
1431:Drivers/CMSIS/Include/core_cm3.h ****                 (PriorityGroupTmp << 8U)                      );              /* Insert write key a
  45              		.loc 2 1431 0
  46 000c 0002     		lsls	r0, r0, #8
  47              	.LVL4:
  48 000e 00F4E060 		and	r0, r0, #1792
1430:Drivers/CMSIS/Include/core_cm3.h ****                 (PriorityGroupTmp << 8U)                      );              /* Insert write key a
  49              		.loc 2 1430 0
  50 0012 1843     		orrs	r0, r0, r3
1429:Drivers/CMSIS/Include/core_cm3.h ****   reg_value  =  (reg_value                                   |
  51              		.loc 2 1429 0
  52 0014 40F0BF60 		orr	r0, r0, #100139008
  53 0018 40F40030 		orr	r0, r0, #131072
  54              	.LVL5:
1432:Drivers/CMSIS/Include/core_cm3.h ****   SCB->AIRCR =  reg_value;
  55              		.loc 2 1432 0
  56 001c D060     		str	r0, [r2, #12]
  57              	.LVL6:
  58              	.LBE41:
  59              	.LBE40:
 161:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Check the parameters */
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 30


 162:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   assert_param(IS_NVIC_PRIORITY_GROUP(PriorityGroup));
 163:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   
 164:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Set the PRIGROUP[10:8] bits according to the PriorityGroup parameter value */
 165:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   NVIC_SetPriorityGrouping(PriorityGroup);
 166:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** }
  60              		.loc 1 166 0
  61 001e 7047     		bx	lr
  62              	.L3:
  63              		.align	2
  64              	.L2:
  65 0020 00ED00E0 		.word	-536810240
  66              		.cfi_endproc
  67              	.LFE66:
  69              		.section	.text.HAL_NVIC_SetPriority,"ax",%progbits
  70              		.align	1
  71              		.global	HAL_NVIC_SetPriority
  72              		.syntax unified
  73              		.thumb
  74              		.thumb_func
  75              		.fpu softvfp
  77              	HAL_NVIC_SetPriority:
  78              	.LFB67:
 167:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 168:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /**
 169:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @brief  Sets the priority of an interrupt.
 170:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @param  IRQn: External interrupt number.
 171:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         This parameter can be an enumerator of IRQn_Type enumeration
 172:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSI
 173:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @param  PreemptPriority: The preemption priority for the IRQn channel.
 174:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         This parameter can be a value between 0 and 15
 175:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         A lower priority value indicates a higher priority 
 176:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @param  SubPriority: the subpriority level for the IRQ channel.
 177:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         This parameter can be a value between 0 and 15
 178:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         A lower priority value indicates a higher priority.          
 179:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @retval None
 180:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   */
 181:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** void HAL_NVIC_SetPriority(IRQn_Type IRQn, uint32_t PreemptPriority, uint32_t SubPriority)
 182:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** { 
  79              		.loc 1 182 0
  80              		.cfi_startproc
  81              		@ args = 0, pretend = 0, frame = 0
  82              		@ frame_needed = 0, uses_anonymous_args = 0
  83              		@ link register save eliminated.
  84              	.LVL7:
  85 0000 30B4     		push	{r4, r5}
  86              	.LCFI0:
  87              		.cfi_def_cfa_offset 8
  88              		.cfi_offset 4, -8
  89              		.cfi_offset 5, -4
  90              	.LVL8:
  91              	.LBB42:
  92              	.LBB43:
1433:Drivers/CMSIS/Include/core_cm3.h **** }
1434:Drivers/CMSIS/Include/core_cm3.h **** 
1435:Drivers/CMSIS/Include/core_cm3.h **** 
1436:Drivers/CMSIS/Include/core_cm3.h **** /**
1437:Drivers/CMSIS/Include/core_cm3.h ****   \brief   Get Priority Grouping
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 31


1438:Drivers/CMSIS/Include/core_cm3.h ****   \details Reads the priority grouping field from the NVIC Interrupt Controller.
1439:Drivers/CMSIS/Include/core_cm3.h ****   \return                Priority grouping field (SCB->AIRCR [10:8] PRIGROUP field).
1440:Drivers/CMSIS/Include/core_cm3.h ****  */
1441:Drivers/CMSIS/Include/core_cm3.h **** __STATIC_INLINE uint32_t NVIC_GetPriorityGrouping(void)
1442:Drivers/CMSIS/Include/core_cm3.h **** {
1443:Drivers/CMSIS/Include/core_cm3.h ****   return ((uint32_t)((SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) >> SCB_AIRCR_PRIGROUP_Pos));
  93              		.loc 2 1443 0
  94 0002 174B     		ldr	r3, .L11
  95 0004 DB68     		ldr	r3, [r3, #12]
  96 0006 C3F30223 		ubfx	r3, r3, #8, #3
  97              	.LVL9:
  98              	.LBE43:
  99              	.LBE42:
 100              	.LBB44:
 101              	.LBB45:
1444:Drivers/CMSIS/Include/core_cm3.h **** }
1445:Drivers/CMSIS/Include/core_cm3.h **** 
1446:Drivers/CMSIS/Include/core_cm3.h **** 
1447:Drivers/CMSIS/Include/core_cm3.h **** /**
1448:Drivers/CMSIS/Include/core_cm3.h ****   \brief   Enable External Interrupt
1449:Drivers/CMSIS/Include/core_cm3.h ****   \details Enables a device-specific interrupt in the NVIC interrupt controller.
1450:Drivers/CMSIS/Include/core_cm3.h ****   \param [in]      IRQn  External interrupt number. Value cannot be negative.
1451:Drivers/CMSIS/Include/core_cm3.h ****  */
1452:Drivers/CMSIS/Include/core_cm3.h **** __STATIC_INLINE void NVIC_EnableIRQ(IRQn_Type IRQn)
1453:Drivers/CMSIS/Include/core_cm3.h **** {
1454:Drivers/CMSIS/Include/core_cm3.h ****   NVIC->ISER[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0
1455:Drivers/CMSIS/Include/core_cm3.h **** }
1456:Drivers/CMSIS/Include/core_cm3.h **** 
1457:Drivers/CMSIS/Include/core_cm3.h **** 
1458:Drivers/CMSIS/Include/core_cm3.h **** /**
1459:Drivers/CMSIS/Include/core_cm3.h ****   \brief   Disable External Interrupt
1460:Drivers/CMSIS/Include/core_cm3.h ****   \details Disables a device-specific interrupt in the NVIC interrupt controller.
1461:Drivers/CMSIS/Include/core_cm3.h ****   \param [in]      IRQn  External interrupt number. Value cannot be negative.
1462:Drivers/CMSIS/Include/core_cm3.h ****  */
1463:Drivers/CMSIS/Include/core_cm3.h **** __STATIC_INLINE void NVIC_DisableIRQ(IRQn_Type IRQn)
1464:Drivers/CMSIS/Include/core_cm3.h **** {
1465:Drivers/CMSIS/Include/core_cm3.h ****   NVIC->ICER[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0
1466:Drivers/CMSIS/Include/core_cm3.h **** }
1467:Drivers/CMSIS/Include/core_cm3.h **** 
1468:Drivers/CMSIS/Include/core_cm3.h **** 
1469:Drivers/CMSIS/Include/core_cm3.h **** /**
1470:Drivers/CMSIS/Include/core_cm3.h ****   \brief   Get Pending Interrupt
1471:Drivers/CMSIS/Include/core_cm3.h ****   \details Reads the pending register in the NVIC and returns the pending bit for the specified int
1472:Drivers/CMSIS/Include/core_cm3.h ****   \param [in]      IRQn  Interrupt number.
1473:Drivers/CMSIS/Include/core_cm3.h ****   \return             0  Interrupt status is not pending.
1474:Drivers/CMSIS/Include/core_cm3.h ****   \return             1  Interrupt status is pending.
1475:Drivers/CMSIS/Include/core_cm3.h ****  */
1476:Drivers/CMSIS/Include/core_cm3.h **** __STATIC_INLINE uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
1477:Drivers/CMSIS/Include/core_cm3.h **** {
1478:Drivers/CMSIS/Include/core_cm3.h ****   return((uint32_t)(((NVIC->ISPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)(int32_t
1479:Drivers/CMSIS/Include/core_cm3.h **** }
1480:Drivers/CMSIS/Include/core_cm3.h **** 
1481:Drivers/CMSIS/Include/core_cm3.h **** 
1482:Drivers/CMSIS/Include/core_cm3.h **** /**
1483:Drivers/CMSIS/Include/core_cm3.h ****   \brief   Set Pending Interrupt
1484:Drivers/CMSIS/Include/core_cm3.h ****   \details Sets the pending bit of an external interrupt.
1485:Drivers/CMSIS/Include/core_cm3.h ****   \param [in]      IRQn  Interrupt number. Value cannot be negative.
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 32


1486:Drivers/CMSIS/Include/core_cm3.h ****  */
1487:Drivers/CMSIS/Include/core_cm3.h **** __STATIC_INLINE void NVIC_SetPendingIRQ(IRQn_Type IRQn)
1488:Drivers/CMSIS/Include/core_cm3.h **** {
1489:Drivers/CMSIS/Include/core_cm3.h ****   NVIC->ISPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0
1490:Drivers/CMSIS/Include/core_cm3.h **** }
1491:Drivers/CMSIS/Include/core_cm3.h **** 
1492:Drivers/CMSIS/Include/core_cm3.h **** 
1493:Drivers/CMSIS/Include/core_cm3.h **** /**
1494:Drivers/CMSIS/Include/core_cm3.h ****   \brief   Clear Pending Interrupt
1495:Drivers/CMSIS/Include/core_cm3.h ****   \details Clears the pending bit of an external interrupt.
1496:Drivers/CMSIS/Include/core_cm3.h ****   \param [in]      IRQn  External interrupt number. Value cannot be negative.
1497:Drivers/CMSIS/Include/core_cm3.h ****  */
1498:Drivers/CMSIS/Include/core_cm3.h **** __STATIC_INLINE void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
1499:Drivers/CMSIS/Include/core_cm3.h **** {
1500:Drivers/CMSIS/Include/core_cm3.h ****   NVIC->ICPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0
1501:Drivers/CMSIS/Include/core_cm3.h **** }
1502:Drivers/CMSIS/Include/core_cm3.h **** 
1503:Drivers/CMSIS/Include/core_cm3.h **** 
1504:Drivers/CMSIS/Include/core_cm3.h **** /**
1505:Drivers/CMSIS/Include/core_cm3.h ****   \brief   Get Active Interrupt
1506:Drivers/CMSIS/Include/core_cm3.h ****   \details Reads the active register in NVIC and returns the active bit.
1507:Drivers/CMSIS/Include/core_cm3.h ****   \param [in]      IRQn  Interrupt number.
1508:Drivers/CMSIS/Include/core_cm3.h ****   \return             0  Interrupt status is not active.
1509:Drivers/CMSIS/Include/core_cm3.h ****   \return             1  Interrupt status is active.
1510:Drivers/CMSIS/Include/core_cm3.h ****  */
1511:Drivers/CMSIS/Include/core_cm3.h **** __STATIC_INLINE uint32_t NVIC_GetActive(IRQn_Type IRQn)
1512:Drivers/CMSIS/Include/core_cm3.h **** {
1513:Drivers/CMSIS/Include/core_cm3.h ****   return((uint32_t)(((NVIC->IABR[(((uint32_t)(int32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)(int32_t
1514:Drivers/CMSIS/Include/core_cm3.h **** }
1515:Drivers/CMSIS/Include/core_cm3.h **** 
1516:Drivers/CMSIS/Include/core_cm3.h **** 
1517:Drivers/CMSIS/Include/core_cm3.h **** /**
1518:Drivers/CMSIS/Include/core_cm3.h ****   \brief   Set Interrupt Priority
1519:Drivers/CMSIS/Include/core_cm3.h ****   \details Sets the priority of an interrupt.
1520:Drivers/CMSIS/Include/core_cm3.h ****   \note    The priority cannot be set for every core interrupt.
1521:Drivers/CMSIS/Include/core_cm3.h ****   \param [in]      IRQn  Interrupt number.
1522:Drivers/CMSIS/Include/core_cm3.h ****   \param [in]  priority  Priority to set.
1523:Drivers/CMSIS/Include/core_cm3.h ****  */
1524:Drivers/CMSIS/Include/core_cm3.h **** __STATIC_INLINE void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
1525:Drivers/CMSIS/Include/core_cm3.h **** {
1526:Drivers/CMSIS/Include/core_cm3.h ****   if ((int32_t)(IRQn) < 0)
1527:Drivers/CMSIS/Include/core_cm3.h ****   {
1528:Drivers/CMSIS/Include/core_cm3.h ****     SCB->SHP[(((uint32_t)(int32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BI
1529:Drivers/CMSIS/Include/core_cm3.h ****   }
1530:Drivers/CMSIS/Include/core_cm3.h ****   else
1531:Drivers/CMSIS/Include/core_cm3.h ****   {
1532:Drivers/CMSIS/Include/core_cm3.h ****     NVIC->IP[((uint32_t)(int32_t)IRQn)]               = (uint8_t)((priority << (8U - __NVIC_PRIO_BI
1533:Drivers/CMSIS/Include/core_cm3.h ****   }
1534:Drivers/CMSIS/Include/core_cm3.h **** }
1535:Drivers/CMSIS/Include/core_cm3.h **** 
1536:Drivers/CMSIS/Include/core_cm3.h **** 
1537:Drivers/CMSIS/Include/core_cm3.h **** /**
1538:Drivers/CMSIS/Include/core_cm3.h ****   \brief   Get Interrupt Priority
1539:Drivers/CMSIS/Include/core_cm3.h ****   \details Reads the priority of an interrupt.
1540:Drivers/CMSIS/Include/core_cm3.h ****            The interrupt number can be positive to specify an external (device specific) interrupt,
1541:Drivers/CMSIS/Include/core_cm3.h ****            or negative to specify an internal (core) interrupt.
1542:Drivers/CMSIS/Include/core_cm3.h ****   \param [in]   IRQn  Interrupt number.
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 33


1543:Drivers/CMSIS/Include/core_cm3.h ****   \return             Interrupt Priority.
1544:Drivers/CMSIS/Include/core_cm3.h ****                       Value is aligned automatically to the implemented priority bits of the microc
1545:Drivers/CMSIS/Include/core_cm3.h ****  */
1546:Drivers/CMSIS/Include/core_cm3.h **** __STATIC_INLINE uint32_t NVIC_GetPriority(IRQn_Type IRQn)
1547:Drivers/CMSIS/Include/core_cm3.h **** {
1548:Drivers/CMSIS/Include/core_cm3.h **** 
1549:Drivers/CMSIS/Include/core_cm3.h ****   if ((int32_t)(IRQn) < 0)
1550:Drivers/CMSIS/Include/core_cm3.h ****   {
1551:Drivers/CMSIS/Include/core_cm3.h ****     return(((uint32_t)SCB->SHP[(((uint32_t)(int32_t)IRQn) & 0xFUL)-4UL] >> (8U - __NVIC_PRIO_BITS))
1552:Drivers/CMSIS/Include/core_cm3.h ****   }
1553:Drivers/CMSIS/Include/core_cm3.h ****   else
1554:Drivers/CMSIS/Include/core_cm3.h ****   {
1555:Drivers/CMSIS/Include/core_cm3.h ****     return(((uint32_t)NVIC->IP[((uint32_t)(int32_t)IRQn)]               >> (8U - __NVIC_PRIO_BITS))
1556:Drivers/CMSIS/Include/core_cm3.h ****   }
1557:Drivers/CMSIS/Include/core_cm3.h **** }
1558:Drivers/CMSIS/Include/core_cm3.h **** 
1559:Drivers/CMSIS/Include/core_cm3.h **** 
1560:Drivers/CMSIS/Include/core_cm3.h **** /**
1561:Drivers/CMSIS/Include/core_cm3.h ****   \brief   Encode Priority
1562:Drivers/CMSIS/Include/core_cm3.h ****   \details Encodes the priority for an interrupt with the given priority group,
1563:Drivers/CMSIS/Include/core_cm3.h ****            preemptive priority value, and subpriority value.
1564:Drivers/CMSIS/Include/core_cm3.h ****            In case of a conflict between priority grouping and available
1565:Drivers/CMSIS/Include/core_cm3.h ****            priority bits (__NVIC_PRIO_BITS), the smallest possible priority group is set.
1566:Drivers/CMSIS/Include/core_cm3.h ****   \param [in]     PriorityGroup  Used priority group.
1567:Drivers/CMSIS/Include/core_cm3.h ****   \param [in]   PreemptPriority  Preemptive priority value (starting from 0).
1568:Drivers/CMSIS/Include/core_cm3.h ****   \param [in]       SubPriority  Subpriority value (starting from 0).
1569:Drivers/CMSIS/Include/core_cm3.h ****   \return                        Encoded priority. Value can be used in the function \ref NVIC_SetP
1570:Drivers/CMSIS/Include/core_cm3.h ****  */
1571:Drivers/CMSIS/Include/core_cm3.h **** __STATIC_INLINE uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uin
1572:Drivers/CMSIS/Include/core_cm3.h **** {
1573:Drivers/CMSIS/Include/core_cm3.h ****   uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);   /* only values 0..7 are used   
1574:Drivers/CMSIS/Include/core_cm3.h ****   uint32_t PreemptPriorityBits;
1575:Drivers/CMSIS/Include/core_cm3.h ****   uint32_t SubPriorityBits;
1576:Drivers/CMSIS/Include/core_cm3.h **** 
1577:Drivers/CMSIS/Include/core_cm3.h ****   PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(__NVIC_PRIO_BITS)) ? (uint32_t)(__NV
 102              		.loc 2 1577 0
 103 000a C3F10704 		rsb	r4, r3, #7
 104 000e 042C     		cmp	r4, #4
 105 0010 28BF     		it	cs
 106 0012 0424     		movcs	r4, #4
 107              	.LVL10:
1578:Drivers/CMSIS/Include/core_cm3.h ****   SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint
 108              		.loc 2 1578 0
 109 0014 1D1D     		adds	r5, r3, #4
 110 0016 062D     		cmp	r5, #6
 111 0018 18D9     		bls	.L8
 112 001a 033B     		subs	r3, r3, #3
 113              	.LVL11:
 114              	.L5:
1579:Drivers/CMSIS/Include/core_cm3.h **** 
1580:Drivers/CMSIS/Include/core_cm3.h ****   return (
1581:Drivers/CMSIS/Include/core_cm3.h ****            ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits
 115              		.loc 2 1581 0
 116 001c 4FF0FF35 		mov	r5, #-1
 117              	.LVL12:
 118 0020 05FA04F4 		lsl	r4, r5, r4
 119              	.LVL13:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 34


 120 0024 21EA0401 		bic	r1, r1, r4
 121              	.LVL14:
 122 0028 9940     		lsls	r1, r1, r3
1582:Drivers/CMSIS/Include/core_cm3.h ****            ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
 123              		.loc 2 1582 0
 124 002a 05FA03F3 		lsl	r3, r5, r3
 125              	.LVL15:
 126 002e 22EA0303 		bic	r3, r2, r3
1581:Drivers/CMSIS/Include/core_cm3.h ****            ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
 127              		.loc 2 1581 0
 128 0032 1943     		orrs	r1, r1, r3
 129              	.LVL16:
 130              	.LBE45:
 131              	.LBE44:
 132              	.LBB47:
 133              	.LBB48:
1526:Drivers/CMSIS/Include/core_cm3.h ****   {
 134              		.loc 2 1526 0
 135 0034 0028     		cmp	r0, #0
 136 0036 0BDB     		blt	.L10
1532:Drivers/CMSIS/Include/core_cm3.h ****   }
 137              		.loc 2 1532 0
 138 0038 0901     		lsls	r1, r1, #4
 139 003a C9B2     		uxtb	r1, r1
 140 003c 00F16040 		add	r0, r0, #-536870912
 141              	.LVL17:
 142 0040 00F56140 		add	r0, r0, #57600
 143 0044 80F80013 		strb	r1, [r0, #768]
 144              	.LVL18:
 145              	.L4:
 146              	.LBE48:
 147              	.LBE47:
 183:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   uint32_t prioritygroup = 0x00U;
 184:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   
 185:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Check the parameters */
 186:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   assert_param(IS_NVIC_SUB_PRIORITY(SubPriority));
 187:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   assert_param(IS_NVIC_PREEMPTION_PRIORITY(PreemptPriority));
 188:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   
 189:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   prioritygroup = NVIC_GetPriorityGrouping();
 190:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   
 191:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   NVIC_SetPriority(IRQn, NVIC_EncodePriority(prioritygroup, PreemptPriority, SubPriority));
 192:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** }
 148              		.loc 1 192 0
 149 0048 30BC     		pop	{r4, r5}
 150              	.LCFI1:
 151              		.cfi_remember_state
 152              		.cfi_restore 5
 153              		.cfi_restore 4
 154              		.cfi_def_cfa_offset 0
 155 004a 7047     		bx	lr
 156              	.LVL19:
 157              	.L8:
 158              	.LCFI2:
 159              		.cfi_restore_state
 160              	.LBB50:
 161              	.LBB46:
1578:Drivers/CMSIS/Include/core_cm3.h **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 35


 162              		.loc 2 1578 0
 163 004c 0023     		movs	r3, #0
 164              	.LVL20:
 165 004e E5E7     		b	.L5
 166              	.LVL21:
 167              	.L10:
 168              	.LBE46:
 169              	.LBE50:
 170              	.LBB51:
 171              	.LBB49:
1528:Drivers/CMSIS/Include/core_cm3.h ****   }
 172              		.loc 2 1528 0
 173 0050 00F00F00 		and	r0, r0, #15
 174              	.LVL22:
 175 0054 0901     		lsls	r1, r1, #4
 176 0056 C9B2     		uxtb	r1, r1
 177 0058 024B     		ldr	r3, .L11+4
 178 005a 1954     		strb	r1, [r3, r0]
 179 005c F4E7     		b	.L4
 180              	.L12:
 181 005e 00BF     		.align	2
 182              	.L11:
 183 0060 00ED00E0 		.word	-536810240
 184 0064 14ED00E0 		.word	-536810220
 185              	.LBE49:
 186              	.LBE51:
 187              		.cfi_endproc
 188              	.LFE67:
 190              		.section	.text.HAL_NVIC_EnableIRQ,"ax",%progbits
 191              		.align	1
 192              		.global	HAL_NVIC_EnableIRQ
 193              		.syntax unified
 194              		.thumb
 195              		.thumb_func
 196              		.fpu softvfp
 198              	HAL_NVIC_EnableIRQ:
 199              	.LFB68:
 193:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 194:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /**
 195:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @brief  Enables a device specific interrupt in the NVIC interrupt controller.
 196:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @note   To configure interrupts priority correctly, the NVIC_PriorityGroupConfig()
 197:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         function should be called before. 
 198:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @param  IRQn External interrupt number.
 199:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         This parameter can be an enumerator of IRQn_Type enumeration
 200:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSI
 201:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @retval None
 202:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   */
 203:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** void HAL_NVIC_EnableIRQ(IRQn_Type IRQn)
 204:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** {
 200              		.loc 1 204 0
 201              		.cfi_startproc
 202              		@ args = 0, pretend = 0, frame = 0
 203              		@ frame_needed = 0, uses_anonymous_args = 0
 204              		@ link register save eliminated.
 205              	.LVL23:
 206              	.LBB52:
 207              	.LBB53:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 36


1454:Drivers/CMSIS/Include/core_cm3.h **** }
 208              		.loc 2 1454 0
 209 0000 00F01F02 		and	r2, r0, #31
 210 0004 4009     		lsrs	r0, r0, #5
 211              	.LVL24:
 212 0006 0123     		movs	r3, #1
 213 0008 9340     		lsls	r3, r3, r2
 214 000a 024A     		ldr	r2, .L14
 215 000c 42F82030 		str	r3, [r2, r0, lsl #2]
 216              	.LVL25:
 217              	.LBE53:
 218              	.LBE52:
 205:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Check the parameters */
 206:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   assert_param(IS_NVIC_DEVICE_IRQ(IRQn));
 207:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 208:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Enable interrupt */
 209:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   NVIC_EnableIRQ(IRQn);
 210:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** }
 219              		.loc 1 210 0
 220 0010 7047     		bx	lr
 221              	.L15:
 222 0012 00BF     		.align	2
 223              	.L14:
 224 0014 00E100E0 		.word	-536813312
 225              		.cfi_endproc
 226              	.LFE68:
 228              		.section	.text.HAL_NVIC_DisableIRQ,"ax",%progbits
 229              		.align	1
 230              		.global	HAL_NVIC_DisableIRQ
 231              		.syntax unified
 232              		.thumb
 233              		.thumb_func
 234              		.fpu softvfp
 236              	HAL_NVIC_DisableIRQ:
 237              	.LFB69:
 211:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 212:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /**
 213:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @brief  Disables a device specific interrupt in the NVIC interrupt controller.
 214:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @param  IRQn External interrupt number.
 215:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         This parameter can be an enumerator of IRQn_Type enumeration
 216:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSI
 217:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @retval None
 218:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   */
 219:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** void HAL_NVIC_DisableIRQ(IRQn_Type IRQn)
 220:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** {
 238              		.loc 1 220 0
 239              		.cfi_startproc
 240              		@ args = 0, pretend = 0, frame = 0
 241              		@ frame_needed = 0, uses_anonymous_args = 0
 242              		@ link register save eliminated.
 243              	.LVL26:
 244              	.LBB54:
 245              	.LBB55:
1465:Drivers/CMSIS/Include/core_cm3.h **** }
 246              		.loc 2 1465 0
 247 0000 00F01F02 		and	r2, r0, #31
 248 0004 4009     		lsrs	r0, r0, #5
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 37


 249              	.LVL27:
 250 0006 0123     		movs	r3, #1
 251 0008 9340     		lsls	r3, r3, r2
 252 000a 2030     		adds	r0, r0, #32
 253 000c 014A     		ldr	r2, .L17
 254 000e 42F82030 		str	r3, [r2, r0, lsl #2]
 255              	.LVL28:
 256              	.LBE55:
 257              	.LBE54:
 221:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Check the parameters */
 222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   assert_param(IS_NVIC_DEVICE_IRQ(IRQn));
 223:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 224:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Disable interrupt */
 225:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   NVIC_DisableIRQ(IRQn);
 226:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** }
 258              		.loc 1 226 0
 259 0012 7047     		bx	lr
 260              	.L18:
 261              		.align	2
 262              	.L17:
 263 0014 00E100E0 		.word	-536813312
 264              		.cfi_endproc
 265              	.LFE69:
 267              		.section	.text.HAL_NVIC_SystemReset,"ax",%progbits
 268              		.align	1
 269              		.global	HAL_NVIC_SystemReset
 270              		.syntax unified
 271              		.thumb
 272              		.thumb_func
 273              		.fpu softvfp
 275              	HAL_NVIC_SystemReset:
 276              	.LFB70:
 227:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 228:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /**
 229:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @brief  Initiates a system reset request to reset the MCU.
 230:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @retval None
 231:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   */
 232:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** void HAL_NVIC_SystemReset(void)
 233:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** {
 277              		.loc 1 233 0
 278              		.cfi_startproc
 279              		@ Volatile: function does not return.
 280              		@ args = 0, pretend = 0, frame = 0
 281              		@ frame_needed = 0, uses_anonymous_args = 0
 282              		@ link register save eliminated.
 283              	.LBB64:
 284              	.LBB65:
 285              	.LBB66:
 286              	.LBB67:
 287              		.file 3 "Drivers/CMSIS/Include/cmsis_gcc.h"
   1:Drivers/CMSIS/Include/cmsis_gcc.h **** /**************************************************************************//**
   2:Drivers/CMSIS/Include/cmsis_gcc.h ****  * @file     cmsis_gcc.h
   3:Drivers/CMSIS/Include/cmsis_gcc.h ****  * @brief    CMSIS Cortex-M Core Function/Instruction Header File
   4:Drivers/CMSIS/Include/cmsis_gcc.h ****  * @version  V4.30
   5:Drivers/CMSIS/Include/cmsis_gcc.h ****  * @date     20. October 2015
   6:Drivers/CMSIS/Include/cmsis_gcc.h ****  ******************************************************************************/
   7:Drivers/CMSIS/Include/cmsis_gcc.h **** /* Copyright (c) 2009 - 2015 ARM LIMITED
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 38


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
  59:Drivers/CMSIS/Include/cmsis_gcc.h **** {
  60:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("cpsie i" : : : "memory");
  61:Drivers/CMSIS/Include/cmsis_gcc.h **** }
  62:Drivers/CMSIS/Include/cmsis_gcc.h **** 
  63:Drivers/CMSIS/Include/cmsis_gcc.h **** 
  64:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 39


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
 116:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Returns the content of the APSR Register.
 117:Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               APSR Register value
 118:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 119:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_APSR(void)
 120:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 121:Drivers/CMSIS/Include/cmsis_gcc.h ****   uint32_t result;
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 40


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
 173:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_MSP(void)
 174:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 175:Drivers/CMSIS/Include/cmsis_gcc.h ****   register uint32_t result;
 176:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 177:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, msp\n" : "=r" (result) );
 178:Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 41


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
 230:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 231:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 232:Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 233:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Disable FIQ
 234:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Disables FIQ interrupts by setting the F-bit in the CPSR.
 235:Drivers/CMSIS/Include/cmsis_gcc.h ****            Can only be executed in Privileged modes.
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 42


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
 287:Drivers/CMSIS/Include/cmsis_gcc.h ****   uint32_t result;
 288:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 289:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, faultmask" : "=r" (result) );
 290:Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
 291:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 292:Drivers/CMSIS/Include/cmsis_gcc.h **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 43


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
 344:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 345:Drivers/CMSIS/Include/cmsis_gcc.h **** #endif /* (__CORTEX_M == 0x04U) || (__CORTEX_M == 0x07U) */
 346:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 347:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 348:Drivers/CMSIS/Include/cmsis_gcc.h **** 
 349:Drivers/CMSIS/Include/cmsis_gcc.h **** /*@} end of CMSIS_Core_RegAccFunctions */
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 44


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
 401:Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Send Event
 402:Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Send Event is a hint instruction. It causes an event to be signaled to the CPU.
 403:Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 404:Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__((always_inline)) __STATIC_INLINE void __SEV(void)
 405:Drivers/CMSIS/Include/cmsis_gcc.h **** {
 406:Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("sev");
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 45


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
 288              		.loc 3 429 0
 289              		.syntax unified
 290              	@ 429 "Drivers/CMSIS/Include/cmsis_gcc.h" 1
 291 0000 BFF34F8F 		dsb 0xF
 292              	@ 0 "" 2
 293              		.thumb
 294              		.syntax unified
 295              	.LBE67:
 296              	.LBE66:
1583:Drivers/CMSIS/Include/core_cm3.h ****          );
1584:Drivers/CMSIS/Include/core_cm3.h **** }
1585:Drivers/CMSIS/Include/core_cm3.h **** 
1586:Drivers/CMSIS/Include/core_cm3.h **** 
1587:Drivers/CMSIS/Include/core_cm3.h **** /**
1588:Drivers/CMSIS/Include/core_cm3.h ****   \brief   Decode Priority
1589:Drivers/CMSIS/Include/core_cm3.h ****   \details Decodes an interrupt priority value with a given priority group to
1590:Drivers/CMSIS/Include/core_cm3.h ****            preemptive priority value and subpriority value.
1591:Drivers/CMSIS/Include/core_cm3.h ****            In case of a conflict between priority grouping and available
1592:Drivers/CMSIS/Include/core_cm3.h ****            priority bits (__NVIC_PRIO_BITS) the smallest possible priority group is set.
1593:Drivers/CMSIS/Include/core_cm3.h ****   \param [in]         Priority   Priority value, which can be retrieved with the function \ref NVIC
1594:Drivers/CMSIS/Include/core_cm3.h ****   \param [in]     PriorityGroup  Used priority group.
1595:Drivers/CMSIS/Include/core_cm3.h ****   \param [out] pPreemptPriority  Preemptive priority value (starting from 0).
1596:Drivers/CMSIS/Include/core_cm3.h ****   \param [out]     pSubPriority  Subpriority value (starting from 0).
1597:Drivers/CMSIS/Include/core_cm3.h ****  */
1598:Drivers/CMSIS/Include/core_cm3.h **** __STATIC_INLINE void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* cons
1599:Drivers/CMSIS/Include/core_cm3.h **** {
1600:Drivers/CMSIS/Include/core_cm3.h ****   uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);   /* only values 0..7 are used   
1601:Drivers/CMSIS/Include/core_cm3.h ****   uint32_t PreemptPriorityBits;
1602:Drivers/CMSIS/Include/core_cm3.h ****   uint32_t SubPriorityBits;
1603:Drivers/CMSIS/Include/core_cm3.h **** 
1604:Drivers/CMSIS/Include/core_cm3.h ****   PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(__NVIC_PRIO_BITS)) ? (uint32_t)(__NV
1605:Drivers/CMSIS/Include/core_cm3.h ****   SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint
1606:Drivers/CMSIS/Include/core_cm3.h **** 
1607:Drivers/CMSIS/Include/core_cm3.h ****   *pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 46


1608:Drivers/CMSIS/Include/core_cm3.h ****   *pSubPriority     = (Priority                   ) & (uint32_t)((1UL << (SubPriorityBits    )) - 1
1609:Drivers/CMSIS/Include/core_cm3.h **** }
1610:Drivers/CMSIS/Include/core_cm3.h **** 
1611:Drivers/CMSIS/Include/core_cm3.h **** 
1612:Drivers/CMSIS/Include/core_cm3.h **** /**
1613:Drivers/CMSIS/Include/core_cm3.h ****   \brief   System Reset
1614:Drivers/CMSIS/Include/core_cm3.h ****   \details Initiates a system reset request to reset the MCU.
1615:Drivers/CMSIS/Include/core_cm3.h ****  */
1616:Drivers/CMSIS/Include/core_cm3.h **** __STATIC_INLINE void NVIC_SystemReset(void)
1617:Drivers/CMSIS/Include/core_cm3.h **** {
1618:Drivers/CMSIS/Include/core_cm3.h ****   __DSB();                                                          /* Ensure all outstanding memor
1619:Drivers/CMSIS/Include/core_cm3.h ****                                                                        buffered write are completed
1620:Drivers/CMSIS/Include/core_cm3.h ****   SCB->AIRCR  = (uint32_t)((0x5FAUL << SCB_AIRCR_VECTKEY_Pos)    |
1621:Drivers/CMSIS/Include/core_cm3.h ****                            (SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) |
 297              		.loc 2 1621 0
 298 0004 0549     		ldr	r1, .L21
 299 0006 CA68     		ldr	r2, [r1, #12]
 300 0008 02F4E062 		and	r2, r2, #1792
1620:Drivers/CMSIS/Include/core_cm3.h ****                            (SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) |
 301              		.loc 2 1620 0
 302 000c 044B     		ldr	r3, .L21+4
 303 000e 1343     		orrs	r3, r3, r2
 304 0010 CB60     		str	r3, [r1, #12]
 305              	.LBB68:
 306              	.LBB69:
 307              		.loc 3 429 0
 308              		.syntax unified
 309              	@ 429 "Drivers/CMSIS/Include/cmsis_gcc.h" 1
 310 0012 BFF34F8F 		dsb 0xF
 311              	@ 0 "" 2
 312              		.thumb
 313              		.syntax unified
 314              	.L20:
 315              	.LBE69:
 316              	.LBE68:
 317              	.LBB70:
 318              	.LBB71:
 375:Drivers/CMSIS/Include/cmsis_gcc.h **** }
 319              		.loc 3 375 0
 320              		.syntax unified
 321              	@ 375 "Drivers/CMSIS/Include/cmsis_gcc.h" 1
 322 0016 00BF     		nop
 323              	@ 0 "" 2
 324              		.thumb
 325              		.syntax unified
 326 0018 FDE7     		b	.L20
 327              	.L22:
 328 001a 00BF     		.align	2
 329              	.L21:
 330 001c 00ED00E0 		.word	-536810240
 331 0020 0400FA05 		.word	100270084
 332              	.LBE71:
 333              	.LBE70:
 334              	.LBE65:
 335              	.LBE64:
 336              		.cfi_endproc
 337              	.LFE70:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 47


 339              		.section	.text.HAL_SYSTICK_Config,"ax",%progbits
 340              		.align	1
 341              		.global	HAL_SYSTICK_Config
 342              		.syntax unified
 343              		.thumb
 344              		.thumb_func
 345              		.fpu softvfp
 347              	HAL_SYSTICK_Config:
 348              	.LFB71:
 234:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* System Reset */
 235:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   NVIC_SystemReset();
 236:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** }
 237:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 238:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /**
 239:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @brief  Initializes the System Timer and its interrupt, and starts the System Tick Timer.
 240:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         Counter is in free running mode to generate periodic interrupts.
 241:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @param  TicksNumb: Specifies the ticks Number of ticks between two interrupts.
 242:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @retval status:  - 0  Function succeeded.
 243:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *                  - 1  Function failed.
 244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   */
 245:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** uint32_t HAL_SYSTICK_Config(uint32_t TicksNumb)
 246:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** {
 349              		.loc 1 246 0
 350              		.cfi_startproc
 351              		@ args = 0, pretend = 0, frame = 0
 352              		@ frame_needed = 0, uses_anonymous_args = 0
 353              		@ link register save eliminated.
 354              	.LVL29:
 355              	.LBB72:
 356              	.LBB73:
1622:Drivers/CMSIS/Include/core_cm3.h ****                             SCB_AIRCR_SYSRESETREQ_Msk    );         /* Keep priority group unchange
1623:Drivers/CMSIS/Include/core_cm3.h ****   __DSB();                                                          /* Ensure completion of memory 
1624:Drivers/CMSIS/Include/core_cm3.h **** 
1625:Drivers/CMSIS/Include/core_cm3.h ****   for(;;)                                                           /* wait until reset */
1626:Drivers/CMSIS/Include/core_cm3.h ****   {
1627:Drivers/CMSIS/Include/core_cm3.h ****     __NOP();
1628:Drivers/CMSIS/Include/core_cm3.h ****   }
1629:Drivers/CMSIS/Include/core_cm3.h **** }
1630:Drivers/CMSIS/Include/core_cm3.h **** 
1631:Drivers/CMSIS/Include/core_cm3.h **** /*@} end of CMSIS_Core_NVICFunctions */
1632:Drivers/CMSIS/Include/core_cm3.h **** 
1633:Drivers/CMSIS/Include/core_cm3.h **** 
1634:Drivers/CMSIS/Include/core_cm3.h **** 
1635:Drivers/CMSIS/Include/core_cm3.h **** /* ##################################    SysTick function  ########################################
1636:Drivers/CMSIS/Include/core_cm3.h **** /**
1637:Drivers/CMSIS/Include/core_cm3.h ****   \ingroup  CMSIS_Core_FunctionInterface
1638:Drivers/CMSIS/Include/core_cm3.h ****   \defgroup CMSIS_Core_SysTickFunctions SysTick Functions
1639:Drivers/CMSIS/Include/core_cm3.h ****   \brief    Functions that configure the System.
1640:Drivers/CMSIS/Include/core_cm3.h ****   @{
1641:Drivers/CMSIS/Include/core_cm3.h ****  */
1642:Drivers/CMSIS/Include/core_cm3.h **** 
1643:Drivers/CMSIS/Include/core_cm3.h **** #if (__Vendor_SysTickConfig == 0U)
1644:Drivers/CMSIS/Include/core_cm3.h **** 
1645:Drivers/CMSIS/Include/core_cm3.h **** /**
1646:Drivers/CMSIS/Include/core_cm3.h ****   \brief   System Tick Configuration
1647:Drivers/CMSIS/Include/core_cm3.h ****   \details Initializes the System Timer and its interrupt, and starts the System Tick Timer.
1648:Drivers/CMSIS/Include/core_cm3.h ****            Counter is in free running mode to generate periodic interrupts.
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 48


1649:Drivers/CMSIS/Include/core_cm3.h ****   \param [in]  ticks  Number of ticks between two interrupts.
1650:Drivers/CMSIS/Include/core_cm3.h ****   \return          0  Function succeeded.
1651:Drivers/CMSIS/Include/core_cm3.h ****   \return          1  Function failed.
1652:Drivers/CMSIS/Include/core_cm3.h ****   \note    When the variable <b>__Vendor_SysTickConfig</b> is set to 1, then the
1653:Drivers/CMSIS/Include/core_cm3.h ****            function <b>SysTick_Config</b> is not included. In this case, the file <b><i>device</i>.
1654:Drivers/CMSIS/Include/core_cm3.h ****            must contain a vendor-specific implementation of this function.
1655:Drivers/CMSIS/Include/core_cm3.h ****  */
1656:Drivers/CMSIS/Include/core_cm3.h **** __STATIC_INLINE uint32_t SysTick_Config(uint32_t ticks)
1657:Drivers/CMSIS/Include/core_cm3.h **** {
1658:Drivers/CMSIS/Include/core_cm3.h ****   if ((ticks - 1UL) > SysTick_LOAD_RELOAD_Msk)
 357              		.loc 2 1658 0
 358 0000 0138     		subs	r0, r0, #1
 359              	.LVL30:
 360 0002 B0F1807F 		cmp	r0, #16777216
 361 0006 0AD2     		bcs	.L25
1659:Drivers/CMSIS/Include/core_cm3.h ****   {
1660:Drivers/CMSIS/Include/core_cm3.h ****     return (1UL);                                                   /* Reload value impossible */
1661:Drivers/CMSIS/Include/core_cm3.h ****   }
1662:Drivers/CMSIS/Include/core_cm3.h **** 
1663:Drivers/CMSIS/Include/core_cm3.h ****   SysTick->LOAD  = (uint32_t)(ticks - 1UL);                         /* set reload register */
 362              		.loc 2 1663 0
 363 0008 064B     		ldr	r3, .L26
 364 000a 5860     		str	r0, [r3, #4]
 365              	.LVL31:
 366              	.LBB74:
 367              	.LBB75:
1528:Drivers/CMSIS/Include/core_cm3.h ****   }
 368              		.loc 2 1528 0
 369 000c 064A     		ldr	r2, .L26+4
 370 000e F021     		movs	r1, #240
 371 0010 82F82310 		strb	r1, [r2, #35]
 372              	.LVL32:
 373              	.LBE75:
 374              	.LBE74:
1664:Drivers/CMSIS/Include/core_cm3.h ****   NVIC_SetPriority (SysTick_IRQn, (1UL << __NVIC_PRIO_BITS) - 1UL); /* set Priority for Systick Int
1665:Drivers/CMSIS/Include/core_cm3.h ****   SysTick->VAL   = 0UL;                                             /* Load the SysTick Counter Val
 375              		.loc 2 1665 0
 376 0014 0020     		movs	r0, #0
 377              	.LVL33:
 378 0016 9860     		str	r0, [r3, #8]
1666:Drivers/CMSIS/Include/core_cm3.h ****   SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |
 379              		.loc 2 1666 0
 380 0018 0722     		movs	r2, #7
 381 001a 1A60     		str	r2, [r3]
 382 001c 7047     		bx	lr
 383              	.L25:
1660:Drivers/CMSIS/Include/core_cm3.h ****   }
 384              		.loc 2 1660 0
 385 001e 0120     		movs	r0, #1
 386              	.LVL34:
 387              	.LBE73:
 388              	.LBE72:
 247:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****    return SysTick_Config(TicksNumb);
 248:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** }
 389              		.loc 1 248 0
 390 0020 7047     		bx	lr
 391              	.L27:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 49


 392 0022 00BF     		.align	2
 393              	.L26:
 394 0024 10E000E0 		.word	-536813552
 395 0028 00ED00E0 		.word	-536810240
 396              		.cfi_endproc
 397              	.LFE71:
 399              		.section	.text.HAL_NVIC_GetPriorityGrouping,"ax",%progbits
 400              		.align	1
 401              		.global	HAL_NVIC_GetPriorityGrouping
 402              		.syntax unified
 403              		.thumb
 404              		.thumb_func
 405              		.fpu softvfp
 407              	HAL_NVIC_GetPriorityGrouping:
 408              	.LFB72:
 249:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /**
 250:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @}
 251:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   */
 252:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 253:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /** @defgroup CORTEX_Exported_Functions_Group2 Peripheral Control functions
 254:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *  @brief   Cortex control functions 
 255:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *
 256:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** @verbatim   
 257:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   ==============================================================================
 258:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****                       ##### Peripheral Control functions #####
 259:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   ==============================================================================
 260:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     [..]
 261:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****       This subsection provides a set of functions allowing to control the CORTEX
 262:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****       (NVIC, SYSTICK, MPU) functionalities. 
 263:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****  
 264:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****       
 265:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** @endverbatim
 266:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @{
 267:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   */
 268:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 269:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** #if (__MPU_PRESENT == 1U)
 270:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /**
 271:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @brief  Disables the MPU
 272:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @retval None
 273:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   */
 274:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** void HAL_MPU_Disable(void)
 275:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** {
 276:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Make sure outstanding transfers are done */
 277:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   __DMB();
 278:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 279:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Disable fault exceptions */
 280:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   SCB->SHCSR &= ~SCB_SHCSR_MEMFAULTENA_Msk;
 281:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   
 282:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Disable the MPU and clear the control register*/
 283:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   MPU->CTRL = 0U;
 284:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** }
 285:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 286:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /**
 287:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @brief  Enable the MPU.
 288:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @param  MPU_Control: Specifies the control mode of the MPU during hard fault, 
 289:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *          NMI, FAULTMASK and privileged access to the default memory 
 290:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *          This parameter can be one of the following values:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 50


 291:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *            @arg MPU_HFNMI_PRIVDEF_NONE
 292:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *            @arg MPU_HARDFAULT_NMI
 293:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *            @arg MPU_PRIVILEGED_DEFAULT
 294:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *            @arg MPU_HFNMI_PRIVDEF
 295:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @retval None
 296:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   */
 297:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** void HAL_MPU_Enable(uint32_t MPU_Control)
 298:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** {
 299:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Enable the MPU */
 300:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   MPU->CTRL = MPU_Control | MPU_CTRL_ENABLE_Msk;
 301:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   
 302:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Enable fault exceptions */
 303:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   SCB->SHCSR |= SCB_SHCSR_MEMFAULTENA_Msk;
 304:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   
 305:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Ensure MPU setting take effects */
 306:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   __DSB();
 307:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   __ISB();
 308:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** }
 309:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 310:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /**
 311:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @brief  Initializes and configures the Region and the memory to be protected.
 312:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @param  MPU_Init: Pointer to a MPU_Region_InitTypeDef structure that contains
 313:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *                the initialization and configuration information.
 314:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @retval None
 315:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   */
 316:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** void HAL_MPU_ConfigRegion(MPU_Region_InitTypeDef *MPU_Init)
 317:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** {
 318:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Check the parameters */
 319:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   assert_param(IS_MPU_REGION_NUMBER(MPU_Init->Number));
 320:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   assert_param(IS_MPU_REGION_ENABLE(MPU_Init->Enable));
 321:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 322:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Set the Region number */
 323:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   MPU->RNR = MPU_Init->Number;
 324:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 325:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   if ((MPU_Init->Enable) != RESET)
 326:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   {
 327:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     /* Check the parameters */
 328:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     assert_param(IS_MPU_INSTRUCTION_ACCESS(MPU_Init->DisableExec));
 329:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     assert_param(IS_MPU_REGION_PERMISSION_ATTRIBUTE(MPU_Init->AccessPermission));
 330:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     assert_param(IS_MPU_TEX_LEVEL(MPU_Init->TypeExtField));
 331:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     assert_param(IS_MPU_ACCESS_SHAREABLE(MPU_Init->IsShareable));
 332:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     assert_param(IS_MPU_ACCESS_CACHEABLE(MPU_Init->IsCacheable));
 333:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     assert_param(IS_MPU_ACCESS_BUFFERABLE(MPU_Init->IsBufferable));
 334:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     assert_param(IS_MPU_SUB_REGION_DISABLE(MPU_Init->SubRegionDisable));
 335:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     assert_param(IS_MPU_REGION_SIZE(MPU_Init->Size));
 336:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     
 337:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     MPU->RBAR = MPU_Init->BaseAddress;
 338:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     MPU->RASR = ((uint32_t)MPU_Init->DisableExec             << MPU_RASR_XN_Pos)   |
 339:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****                 ((uint32_t)MPU_Init->AccessPermission        << MPU_RASR_AP_Pos)   |
 340:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****                 ((uint32_t)MPU_Init->TypeExtField            << MPU_RASR_TEX_Pos)  |
 341:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****                 ((uint32_t)MPU_Init->IsShareable             << MPU_RASR_S_Pos)    |
 342:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****                 ((uint32_t)MPU_Init->IsCacheable             << MPU_RASR_C_Pos)    |
 343:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****                 ((uint32_t)MPU_Init->IsBufferable            << MPU_RASR_B_Pos)    |
 344:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****                 ((uint32_t)MPU_Init->SubRegionDisable        << MPU_RASR_SRD_Pos)  |
 345:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****                 ((uint32_t)MPU_Init->Size                    << MPU_RASR_SIZE_Pos) |
 346:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****                 ((uint32_t)MPU_Init->Enable                  << MPU_RASR_ENABLE_Pos);
 347:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   }
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 51


 348:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   else
 349:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   {
 350:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     MPU->RBAR = 0x00U;
 351:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     MPU->RASR = 0x00U;
 352:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   }
 353:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** }
 354:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** #endif /* __MPU_PRESENT */
 355:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 356:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /**
 357:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @brief  Gets the priority grouping field from the NVIC Interrupt Controller.
 358:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @retval Priority grouping field (SCB->AIRCR [10:8] PRIGROUP field)
 359:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   */
 360:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** uint32_t HAL_NVIC_GetPriorityGrouping(void)
 361:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** {
 409              		.loc 1 361 0
 410              		.cfi_startproc
 411              		@ args = 0, pretend = 0, frame = 0
 412              		@ frame_needed = 0, uses_anonymous_args = 0
 413              		@ link register save eliminated.
 414              	.LBB76:
 415              	.LBB77:
1443:Drivers/CMSIS/Include/core_cm3.h **** }
 416              		.loc 2 1443 0
 417 0000 024B     		ldr	r3, .L29
 418 0002 D868     		ldr	r0, [r3, #12]
 419              	.LBE77:
 420              	.LBE76:
 362:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Get the PRIGROUP[10:8] field value */
 363:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   return NVIC_GetPriorityGrouping();
 364:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** }
 421              		.loc 1 364 0
 422 0004 C0F30220 		ubfx	r0, r0, #8, #3
 423 0008 7047     		bx	lr
 424              	.L30:
 425 000a 00BF     		.align	2
 426              	.L29:
 427 000c 00ED00E0 		.word	-536810240
 428              		.cfi_endproc
 429              	.LFE72:
 431              		.section	.text.HAL_NVIC_GetPriority,"ax",%progbits
 432              		.align	1
 433              		.global	HAL_NVIC_GetPriority
 434              		.syntax unified
 435              		.thumb
 436              		.thumb_func
 437              		.fpu softvfp
 439              	HAL_NVIC_GetPriority:
 440              	.LFB73:
 365:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 366:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /**
 367:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @brief  Gets the priority of an interrupt.
 368:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @param  IRQn: External interrupt number.
 369:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         This parameter can be an enumerator of IRQn_Type enumeration
 370:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSI
 371:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @param   PriorityGroup: the priority grouping bits length.
 372:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         This parameter can be one of the following values:
 373:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *           @arg NVIC_PRIORITYGROUP_0: 0 bits for preemption priority
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 52


 374:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *                                      4 bits for subpriority
 375:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *           @arg NVIC_PRIORITYGROUP_1: 1 bits for preemption priority
 376:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *                                      3 bits for subpriority
 377:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *           @arg NVIC_PRIORITYGROUP_2: 2 bits for preemption priority
 378:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *                                      2 bits for subpriority
 379:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *           @arg NVIC_PRIORITYGROUP_3: 3 bits for preemption priority
 380:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *                                      1 bits for subpriority
 381:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *           @arg NVIC_PRIORITYGROUP_4: 4 bits for preemption priority
 382:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *                                      0 bits for subpriority
 383:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @param  pPreemptPriority: Pointer on the Preemptive priority value (starting from 0).
 384:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @param  pSubPriority: Pointer on the Subpriority value (starting from 0).
 385:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @retval None
 386:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   */
 387:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** void HAL_NVIC_GetPriority(IRQn_Type IRQn, uint32_t PriorityGroup, uint32_t *pPreemptPriority, uint3
 388:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** {
 441              		.loc 1 388 0
 442              		.cfi_startproc
 443              		@ args = 0, pretend = 0, frame = 0
 444              		@ frame_needed = 0, uses_anonymous_args = 0
 445              		@ link register save eliminated.
 446              	.LVL35:
 447 0000 70B4     		push	{r4, r5, r6}
 448              	.LCFI3:
 449              		.cfi_def_cfa_offset 12
 450              		.cfi_offset 4, -12
 451              		.cfi_offset 5, -8
 452              		.cfi_offset 6, -4
 453              	.LVL36:
 454              	.LBB78:
 455              	.LBB79:
1549:Drivers/CMSIS/Include/core_cm3.h ****   {
 456              		.loc 2 1549 0
 457 0002 0028     		cmp	r0, #0
 458              	.LVL37:
 459 0004 21DB     		blt	.L37
1555:Drivers/CMSIS/Include/core_cm3.h ****   }
 460              		.loc 2 1555 0
 461 0006 00F16040 		add	r0, r0, #-536870912
 462 000a 00F56140 		add	r0, r0, #57600
 463 000e 90F80003 		ldrb	r0, [r0, #768]	@ zero_extendqisi2
 464 0012 0009     		lsrs	r0, r0, #4
 465              	.L33:
 466              	.LVL38:
 467              	.LBE79:
 468              	.LBE78:
 469              	.LBB81:
 470              	.LBB82:
1600:Drivers/CMSIS/Include/core_cm3.h ****   uint32_t PreemptPriorityBits;
 471              		.loc 2 1600 0
 472 0014 01F00701 		and	r1, r1, #7
 473              	.LVL39:
1604:Drivers/CMSIS/Include/core_cm3.h ****   SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint
 474              		.loc 2 1604 0
 475 0018 C1F10704 		rsb	r4, r1, #7
 476 001c 042C     		cmp	r4, #4
 477 001e 28BF     		it	cs
 478 0020 0424     		movcs	r4, #4
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 53


 479              	.LVL40:
1605:Drivers/CMSIS/Include/core_cm3.h **** 
 480              		.loc 2 1605 0
 481 0022 0D1D     		adds	r5, r1, #4
 482 0024 062D     		cmp	r5, #6
 483 0026 16D9     		bls	.L35
 484 0028 0339     		subs	r1, r1, #3
 485              	.LVL41:
 486              	.L34:
1607:Drivers/CMSIS/Include/core_cm3.h ****   *pSubPriority     = (Priority                   ) & (uint32_t)((1UL << (SubPriorityBits    )) - 1
 487              		.loc 2 1607 0
 488 002a 20FA01F6 		lsr	r6, r0, r1
 489 002e 4FF0FF35 		mov	r5, #-1
 490              	.LVL42:
 491 0032 05FA04F4 		lsl	r4, r5, r4
 492              	.LVL43:
 493 0036 26EA0404 		bic	r4, r6, r4
 494 003a 1460     		str	r4, [r2]
1608:Drivers/CMSIS/Include/core_cm3.h **** }
 495              		.loc 2 1608 0
 496 003c 05FA01F1 		lsl	r1, r5, r1
 497              	.LVL44:
 498 0040 20EA0100 		bic	r0, r0, r1
 499 0044 1860     		str	r0, [r3]
 500              	.LVL45:
 501              	.LBE82:
 502              	.LBE81:
 389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Check the parameters */
 390:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   assert_param(IS_NVIC_PRIORITY_GROUP(PriorityGroup));
 391:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****  /* Get priority for Cortex-M system or device specific interrupts */
 392:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   NVIC_DecodePriority(NVIC_GetPriority(IRQn), PriorityGroup, pPreemptPriority, pSubPriority);
 393:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** }
 503              		.loc 1 393 0
 504 0046 70BC     		pop	{r4, r5, r6}
 505              	.LCFI4:
 506              		.cfi_remember_state
 507              		.cfi_restore 6
 508              		.cfi_restore 5
 509              		.cfi_restore 4
 510              		.cfi_def_cfa_offset 0
 511 0048 7047     		bx	lr
 512              	.LVL46:
 513              	.L37:
 514              	.LCFI5:
 515              		.cfi_restore_state
 516              	.LBB84:
 517              	.LBB80:
1551:Drivers/CMSIS/Include/core_cm3.h ****   }
 518              		.loc 2 1551 0
 519 004a 00F00F00 		and	r0, r0, #15
 520 004e 034C     		ldr	r4, .L38
 521 0050 205C     		ldrb	r0, [r4, r0]	@ zero_extendqisi2
 522 0052 0009     		lsrs	r0, r0, #4
 523 0054 DEE7     		b	.L33
 524              	.LVL47:
 525              	.L35:
 526              	.LBE80:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 54


 527              	.LBE84:
 528              	.LBB85:
 529              	.LBB83:
1605:Drivers/CMSIS/Include/core_cm3.h **** 
 530              		.loc 2 1605 0
 531 0056 0021     		movs	r1, #0
 532              	.LVL48:
 533 0058 E7E7     		b	.L34
 534              	.L39:
 535 005a 00BF     		.align	2
 536              	.L38:
 537 005c 14ED00E0 		.word	-536810220
 538              	.LBE83:
 539              	.LBE85:
 540              		.cfi_endproc
 541              	.LFE73:
 543              		.section	.text.HAL_NVIC_SetPendingIRQ,"ax",%progbits
 544              		.align	1
 545              		.global	HAL_NVIC_SetPendingIRQ
 546              		.syntax unified
 547              		.thumb
 548              		.thumb_func
 549              		.fpu softvfp
 551              	HAL_NVIC_SetPendingIRQ:
 552              	.LFB74:
 394:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 395:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /**
 396:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @brief  Sets Pending bit of an external interrupt.
 397:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @param  IRQn External interrupt number
 398:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         This parameter can be an enumerator of IRQn_Type enumeration
 399:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSI
 400:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @retval None
 401:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   */
 402:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** void HAL_NVIC_SetPendingIRQ(IRQn_Type IRQn)
 403:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** {
 553              		.loc 1 403 0
 554              		.cfi_startproc
 555              		@ args = 0, pretend = 0, frame = 0
 556              		@ frame_needed = 0, uses_anonymous_args = 0
 557              		@ link register save eliminated.
 558              	.LVL49:
 559              	.LBB86:
 560              	.LBB87:
1489:Drivers/CMSIS/Include/core_cm3.h **** }
 561              		.loc 2 1489 0
 562 0000 00F01F02 		and	r2, r0, #31
 563 0004 4009     		lsrs	r0, r0, #5
 564              	.LVL50:
 565 0006 0123     		movs	r3, #1
 566 0008 9340     		lsls	r3, r3, r2
 567 000a 4030     		adds	r0, r0, #64
 568 000c 014A     		ldr	r2, .L41
 569 000e 42F82030 		str	r3, [r2, r0, lsl #2]
 570              	.LVL51:
 571              	.LBE87:
 572              	.LBE86:
 404:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Check the parameters */
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 55


 405:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   assert_param(IS_NVIC_DEVICE_IRQ(IRQn));
 406:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   
 407:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Set interrupt pending */
 408:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   NVIC_SetPendingIRQ(IRQn);
 409:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** }
 573              		.loc 1 409 0
 574 0012 7047     		bx	lr
 575              	.L42:
 576              		.align	2
 577              	.L41:
 578 0014 00E100E0 		.word	-536813312
 579              		.cfi_endproc
 580              	.LFE74:
 582              		.section	.text.HAL_NVIC_GetPendingIRQ,"ax",%progbits
 583              		.align	1
 584              		.global	HAL_NVIC_GetPendingIRQ
 585              		.syntax unified
 586              		.thumb
 587              		.thumb_func
 588              		.fpu softvfp
 590              	HAL_NVIC_GetPendingIRQ:
 591              	.LFB75:
 410:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 411:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /**
 412:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @brief  Gets Pending Interrupt (reads the pending register in the NVIC 
 413:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         and returns the pending bit for the specified interrupt).
 414:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @param  IRQn External interrupt number.
 415:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         This parameter can be an enumerator of IRQn_Type enumeration
 416:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSI
 417:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @retval status: - 0  Interrupt status is not pending.
 418:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *                 - 1  Interrupt status is pending.
 419:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   */
 420:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** uint32_t HAL_NVIC_GetPendingIRQ(IRQn_Type IRQn)
 421:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** {
 592              		.loc 1 421 0
 593              		.cfi_startproc
 594              		@ args = 0, pretend = 0, frame = 0
 595              		@ frame_needed = 0, uses_anonymous_args = 0
 596              		@ link register save eliminated.
 597              	.LVL52:
 598              	.LBB88:
 599              	.LBB89:
1478:Drivers/CMSIS/Include/core_cm3.h **** }
 600              		.loc 2 1478 0
 601 0000 4309     		lsrs	r3, r0, #5
 602 0002 4033     		adds	r3, r3, #64
 603 0004 044A     		ldr	r2, .L44
 604 0006 52F82330 		ldr	r3, [r2, r3, lsl #2]
 605 000a 00F01F00 		and	r0, r0, #31
 606              	.LVL53:
 607 000e 23FA00F0 		lsr	r0, r3, r0
 608              	.LVL54:
 609              	.LBE89:
 610              	.LBE88:
 422:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Check the parameters */
 423:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   assert_param(IS_NVIC_DEVICE_IRQ(IRQn));
 424:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 56


 425:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Return 1 if pending else 0 */
 426:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   return NVIC_GetPendingIRQ(IRQn);
 427:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** }
 611              		.loc 1 427 0
 612 0012 00F00100 		and	r0, r0, #1
 613 0016 7047     		bx	lr
 614              	.L45:
 615              		.align	2
 616              	.L44:
 617 0018 00E100E0 		.word	-536813312
 618              		.cfi_endproc
 619              	.LFE75:
 621              		.section	.text.HAL_NVIC_ClearPendingIRQ,"ax",%progbits
 622              		.align	1
 623              		.global	HAL_NVIC_ClearPendingIRQ
 624              		.syntax unified
 625              		.thumb
 626              		.thumb_func
 627              		.fpu softvfp
 629              	HAL_NVIC_ClearPendingIRQ:
 630              	.LFB76:
 428:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 429:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /**
 430:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @brief  Clears the pending bit of an external interrupt.
 431:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @param  IRQn External interrupt number.
 432:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         This parameter can be an enumerator of IRQn_Type enumeration
 433:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSI
 434:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @retval None
 435:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   */
 436:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** void HAL_NVIC_ClearPendingIRQ(IRQn_Type IRQn)
 437:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** {
 631              		.loc 1 437 0
 632              		.cfi_startproc
 633              		@ args = 0, pretend = 0, frame = 0
 634              		@ frame_needed = 0, uses_anonymous_args = 0
 635              		@ link register save eliminated.
 636              	.LVL55:
 637              	.LBB90:
 638              	.LBB91:
1500:Drivers/CMSIS/Include/core_cm3.h **** }
 639              		.loc 2 1500 0
 640 0000 00F01F02 		and	r2, r0, #31
 641 0004 4009     		lsrs	r0, r0, #5
 642              	.LVL56:
 643 0006 0123     		movs	r3, #1
 644 0008 9340     		lsls	r3, r3, r2
 645 000a 6030     		adds	r0, r0, #96
 646 000c 014A     		ldr	r2, .L47
 647 000e 42F82030 		str	r3, [r2, r0, lsl #2]
 648              	.LVL57:
 649              	.LBE91:
 650              	.LBE90:
 438:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Check the parameters */
 439:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   assert_param(IS_NVIC_DEVICE_IRQ(IRQn));
 440:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 441:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Clear pending interrupt */
 442:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   NVIC_ClearPendingIRQ(IRQn);
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 57


 443:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** }
 651              		.loc 1 443 0
 652 0012 7047     		bx	lr
 653              	.L48:
 654              		.align	2
 655              	.L47:
 656 0014 00E100E0 		.word	-536813312
 657              		.cfi_endproc
 658              	.LFE76:
 660              		.section	.text.HAL_NVIC_GetActive,"ax",%progbits
 661              		.align	1
 662              		.global	HAL_NVIC_GetActive
 663              		.syntax unified
 664              		.thumb
 665              		.thumb_func
 666              		.fpu softvfp
 668              	HAL_NVIC_GetActive:
 669              	.LFB77:
 444:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 445:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /**
 446:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @brief Gets active interrupt ( reads the active register in NVIC and returns the active bit).
 447:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @param IRQn External interrupt number
 448:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         This parameter can be an enumerator of IRQn_Type enumeration
 449:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSI
 450:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @retval status: - 0  Interrupt status is not pending.
 451:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *                 - 1  Interrupt status is pending.
 452:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   */
 453:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** uint32_t HAL_NVIC_GetActive(IRQn_Type IRQn)
 454:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** {
 670              		.loc 1 454 0
 671              		.cfi_startproc
 672              		@ args = 0, pretend = 0, frame = 0
 673              		@ frame_needed = 0, uses_anonymous_args = 0
 674              		@ link register save eliminated.
 675              	.LVL58:
 676              	.LBB92:
 677              	.LBB93:
1513:Drivers/CMSIS/Include/core_cm3.h **** }
 678              		.loc 2 1513 0
 679 0000 4309     		lsrs	r3, r0, #5
 680 0002 8033     		adds	r3, r3, #128
 681 0004 044A     		ldr	r2, .L50
 682 0006 52F82330 		ldr	r3, [r2, r3, lsl #2]
 683 000a 00F01F00 		and	r0, r0, #31
 684              	.LVL59:
 685 000e 23FA00F0 		lsr	r0, r3, r0
 686              	.LVL60:
 687              	.LBE93:
 688              	.LBE92:
 455:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Check the parameters */
 456:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   assert_param(IS_NVIC_DEVICE_IRQ(IRQn));
 457:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 458:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Return 1 if active else 0 */
 459:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   return NVIC_GetActive(IRQn);
 460:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** }
 689              		.loc 1 460 0
 690 0012 00F00100 		and	r0, r0, #1
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 58


 691 0016 7047     		bx	lr
 692              	.L51:
 693              		.align	2
 694              	.L50:
 695 0018 00E100E0 		.word	-536813312
 696              		.cfi_endproc
 697              	.LFE77:
 699              		.section	.text.HAL_SYSTICK_CLKSourceConfig,"ax",%progbits
 700              		.align	1
 701              		.global	HAL_SYSTICK_CLKSourceConfig
 702              		.syntax unified
 703              		.thumb
 704              		.thumb_func
 705              		.fpu softvfp
 707              	HAL_SYSTICK_CLKSourceConfig:
 708              	.LFB78:
 461:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 462:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /**
 463:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @brief  Configures the SysTick clock source.
 464:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @param  CLKSource: specifies the SysTick clock source.
 465:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *         This parameter can be one of the following values:
 466:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *             @arg SYSTICK_CLKSOURCE_HCLK_DIV8: AHB clock divided by 8 selected as SysTick clock 
 467:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   *             @arg SYSTICK_CLKSOURCE_HCLK: AHB clock selected as SysTick clock source.
 468:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @retval None
 469:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   */
 470:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** void HAL_SYSTICK_CLKSourceConfig(uint32_t CLKSource)
 471:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** {
 709              		.loc 1 471 0
 710              		.cfi_startproc
 711              		@ args = 0, pretend = 0, frame = 0
 712              		@ frame_needed = 0, uses_anonymous_args = 0
 713              		@ link register save eliminated.
 714              	.LVL61:
 472:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* Check the parameters */
 473:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   assert_param(IS_SYSTICK_CLK_SOURCE(CLKSource));
 474:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   if (CLKSource == SYSTICK_CLKSOURCE_HCLK)
 715              		.loc 1 474 0
 716 0000 0428     		cmp	r0, #4
 717 0002 05D0     		beq	.L55
 475:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   {
 476:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     SysTick->CTRL |= SYSTICK_CLKSOURCE_HCLK;
 477:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   }
 478:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   else
 479:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   {
 480:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****     SysTick->CTRL &= ~SYSTICK_CLKSOURCE_HCLK;
 718              		.loc 1 480 0
 719 0004 054A     		ldr	r2, .L56
 720 0006 1368     		ldr	r3, [r2]
 721 0008 23F00403 		bic	r3, r3, #4
 722 000c 1360     		str	r3, [r2]
 481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   }
 482:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** }
 723              		.loc 1 482 0
 724 000e 7047     		bx	lr
 725              	.L55:
 476:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   }
 726              		.loc 1 476 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 59


 727 0010 024A     		ldr	r2, .L56
 728 0012 1368     		ldr	r3, [r2]
 729 0014 43F00403 		orr	r3, r3, #4
 730 0018 1360     		str	r3, [r2]
 731 001a 7047     		bx	lr
 732              	.L57:
 733              		.align	2
 734              	.L56:
 735 001c 10E000E0 		.word	-536813552
 736              		.cfi_endproc
 737              	.LFE78:
 739              		.section	.text.HAL_SYSTICK_Callback,"ax",%progbits
 740              		.align	1
 741              		.weak	HAL_SYSTICK_Callback
 742              		.syntax unified
 743              		.thumb
 744              		.thumb_func
 745              		.fpu softvfp
 747              	HAL_SYSTICK_Callback:
 748              	.LFB80:
 483:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 484:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /**
 485:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @brief  This function handles SYSTICK interrupt request.
 486:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @retval None
 487:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   */
 488:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** void HAL_SYSTICK_IRQHandler(void)
 489:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** {
 490:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   HAL_SYSTICK_Callback();
 491:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** }
 492:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 493:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** /**
 494:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @brief  SYSTICK callback.
 495:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   * @retval None
 496:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   */
 497:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** __weak void HAL_SYSTICK_Callback(void)
 498:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** {
 749              		.loc 1 498 0
 750              		.cfi_startproc
 751              		@ args = 0, pretend = 0, frame = 0
 752              		@ frame_needed = 0, uses_anonymous_args = 0
 753              		@ link register save eliminated.
 499:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
 500:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****             the HAL_SYSTICK_Callback could be implemented in the user file
 501:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****    */
 502:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** }
 754              		.loc 1 502 0
 755 0000 7047     		bx	lr
 756              		.cfi_endproc
 757              	.LFE80:
 759              		.section	.text.HAL_SYSTICK_IRQHandler,"ax",%progbits
 760              		.align	1
 761              		.global	HAL_SYSTICK_IRQHandler
 762              		.syntax unified
 763              		.thumb
 764              		.thumb_func
 765              		.fpu softvfp
 767              	HAL_SYSTICK_IRQHandler:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 60


 768              	.LFB79:
 489:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c ****   HAL_SYSTICK_Callback();
 769              		.loc 1 489 0
 770              		.cfi_startproc
 771              		@ args = 0, pretend = 0, frame = 0
 772              		@ frame_needed = 0, uses_anonymous_args = 0
 773 0000 08B5     		push	{r3, lr}
 774              	.LCFI6:
 775              		.cfi_def_cfa_offset 8
 776              		.cfi_offset 3, -8
 777              		.cfi_offset 14, -4
 490:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** }
 778              		.loc 1 490 0
 779 0002 FFF7FEFF 		bl	HAL_SYSTICK_Callback
 780              	.LVL62:
 491:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c **** 
 781              		.loc 1 491 0
 782 0006 08BD     		pop	{r3, pc}
 783              		.cfi_endproc
 784              	.LFE79:
 786              		.text
 787              	.Letext0:
 788              		.file 4 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
 789              		.file 5 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 790              		.file 6 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 791              		.file 7 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/system_stm32f1xx.h"
 792              		.file 8 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 793              		.file 9 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 794              		.file 10 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\lib\\gcc\\arm-none-ea
 795              		.file 11 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\includ
ARM GAS  C:\Users\crist\AppData\Local\Temp\cczjzKQW.s 			page 61


DEFINED SYMBOLS
                            *ABS*:00000000 stm32f1xx_hal_cortex.c
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:16     .text.HAL_NVIC_SetPriorityGrouping:00000000 $t
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:23     .text.HAL_NVIC_SetPriorityGrouping:00000000 HAL_NVIC_SetPriorityGrouping
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:65     .text.HAL_NVIC_SetPriorityGrouping:00000020 $d
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:70     .text.HAL_NVIC_SetPriority:00000000 $t
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:77     .text.HAL_NVIC_SetPriority:00000000 HAL_NVIC_SetPriority
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:183    .text.HAL_NVIC_SetPriority:00000060 $d
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:191    .text.HAL_NVIC_EnableIRQ:00000000 $t
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:198    .text.HAL_NVIC_EnableIRQ:00000000 HAL_NVIC_EnableIRQ
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:224    .text.HAL_NVIC_EnableIRQ:00000014 $d
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:229    .text.HAL_NVIC_DisableIRQ:00000000 $t
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:236    .text.HAL_NVIC_DisableIRQ:00000000 HAL_NVIC_DisableIRQ
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:263    .text.HAL_NVIC_DisableIRQ:00000014 $d
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:268    .text.HAL_NVIC_SystemReset:00000000 $t
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:275    .text.HAL_NVIC_SystemReset:00000000 HAL_NVIC_SystemReset
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:330    .text.HAL_NVIC_SystemReset:0000001c $d
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:340    .text.HAL_SYSTICK_Config:00000000 $t
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:347    .text.HAL_SYSTICK_Config:00000000 HAL_SYSTICK_Config
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:394    .text.HAL_SYSTICK_Config:00000024 $d
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:400    .text.HAL_NVIC_GetPriorityGrouping:00000000 $t
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:407    .text.HAL_NVIC_GetPriorityGrouping:00000000 HAL_NVIC_GetPriorityGrouping
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:427    .text.HAL_NVIC_GetPriorityGrouping:0000000c $d
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:432    .text.HAL_NVIC_GetPriority:00000000 $t
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:439    .text.HAL_NVIC_GetPriority:00000000 HAL_NVIC_GetPriority
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:537    .text.HAL_NVIC_GetPriority:0000005c $d
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:544    .text.HAL_NVIC_SetPendingIRQ:00000000 $t
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:551    .text.HAL_NVIC_SetPendingIRQ:00000000 HAL_NVIC_SetPendingIRQ
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:578    .text.HAL_NVIC_SetPendingIRQ:00000014 $d
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:583    .text.HAL_NVIC_GetPendingIRQ:00000000 $t
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:590    .text.HAL_NVIC_GetPendingIRQ:00000000 HAL_NVIC_GetPendingIRQ
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:617    .text.HAL_NVIC_GetPendingIRQ:00000018 $d
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:622    .text.HAL_NVIC_ClearPendingIRQ:00000000 $t
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:629    .text.HAL_NVIC_ClearPendingIRQ:00000000 HAL_NVIC_ClearPendingIRQ
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:656    .text.HAL_NVIC_ClearPendingIRQ:00000014 $d
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:661    .text.HAL_NVIC_GetActive:00000000 $t
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:668    .text.HAL_NVIC_GetActive:00000000 HAL_NVIC_GetActive
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:695    .text.HAL_NVIC_GetActive:00000018 $d
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:700    .text.HAL_SYSTICK_CLKSourceConfig:00000000 $t
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:707    .text.HAL_SYSTICK_CLKSourceConfig:00000000 HAL_SYSTICK_CLKSourceConfig
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:735    .text.HAL_SYSTICK_CLKSourceConfig:0000001c $d
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:740    .text.HAL_SYSTICK_Callback:00000000 $t
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:747    .text.HAL_SYSTICK_Callback:00000000 HAL_SYSTICK_Callback
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:760    .text.HAL_SYSTICK_IRQHandler:00000000 $t
C:\Users\crist\AppData\Local\Temp\cczjzKQW.s:767    .text.HAL_SYSTICK_IRQHandler:00000000 HAL_SYSTICK_IRQHandler

NO UNDEFINED SYMBOLS
