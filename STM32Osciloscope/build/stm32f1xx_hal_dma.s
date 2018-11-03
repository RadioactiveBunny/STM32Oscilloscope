ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 1


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
  11              		.file	"stm32f1xx_hal_dma.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.DMA_SetConfig,"ax",%progbits
  16              		.align	1
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu softvfp
  22              	DMA_SetConfig:
  23              	.LFB78:
  24              		.file 1 "Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c"
   1:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /**
   2:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   ******************************************************************************
   3:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @file    stm32f1xx_hal_dma.c
   4:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @author  MCD Application Team
   5:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @brief   DMA HAL module driver.
   6:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *         This file provides firmware functions to manage the following
   7:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *         functionalities of the Direct Memory Access (DMA) peripheral:
   8:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *           + Initialization and de-initialization functions
   9:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *           + IO operation functions
  10:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *           + Peripheral State and errors functions
  11:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   @verbatim
  12:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   ==============================================================================
  13:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****                         ##### How to use this driver #####
  14:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   ==============================================================================
  15:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   [..]
  16:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****    (#) Enable and configure the peripheral to be connected to the DMA Channel
  17:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****        (except for internal SRAM / FLASH memories: no initialization is 
  18:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****        necessary). Please refer to the Reference manual for connection between peripherals
  19:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****        and DMA requests.
  20:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
  21:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****    (#) For a given Channel, program the required configuration through the following parameters:
  22:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****        Channel request, Transfer Direction, Source and Destination data formats,
  23:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****        Circular or Normal mode, Channel Priority level, Source and Destination Increment mode
  24:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****        using HAL_DMA_Init() function.
  25:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
  26:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****    (#) Use HAL_DMA_GetState() function to return the DMA state and HAL_DMA_GetError() in case of er
  27:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****        detection.
  28:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****                     
  29:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****    (#) Use HAL_DMA_Abort() function to abort the current transfer
  30:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****                    
  31:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****      -@-   In Memory-to-Memory transfer mode, Circular mode is not allowed.
  32:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****      *** Polling mode IO operation ***
  33:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****      =================================
  34:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     [..]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 2


  35:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****           (+) Use HAL_DMA_Start() to start DMA transfer after the configuration of Source
  36:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****               address and destination address and the Length of data to be transferred
  37:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****           (+) Use HAL_DMA_PollForTransfer() to poll for the end of current transfer, in this
  38:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****               case a fixed Timeout can be configured by User depending from his application.
  39:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
  40:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****      *** Interrupt mode IO operation ***
  41:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****      ===================================
  42:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     [..]
  43:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****           (+) Configure the DMA interrupt priority using HAL_NVIC_SetPriority()
  44:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****           (+) Enable the DMA IRQ handler using HAL_NVIC_EnableIRQ()
  45:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****           (+) Use HAL_DMA_Start_IT() to start DMA transfer after the configuration of
  46:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****               Source address and destination address and the Length of data to be transferred.
  47:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****               In this case the DMA interrupt is configured
  48:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****           (+) Use HAL_DMA_IRQHandler() called under DMA_IRQHandler() Interrupt subroutine
  49:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****           (+) At the end of data transfer HAL_DMA_IRQHandler() function is executed and user can
  50:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****               add his own function by customization of function pointer XferCpltCallback and
  51:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****               XferErrorCallback (i.e. a member of DMA handle structure).
  52:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
  53:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****      *** DMA HAL driver macros list ***
  54:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****      ============================================= 
  55:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       [..]
  56:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****        Below the list of most used macros in DMA HAL driver.
  57:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
  58:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****        (+) __HAL_DMA_ENABLE: Enable the specified DMA Channel.
  59:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****        (+) __HAL_DMA_DISABLE: Disable the specified DMA Channel.
  60:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****        (+) __HAL_DMA_GET_FLAG: Get the DMA Channel pending flags.
  61:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****        (+) __HAL_DMA_CLEAR_FLAG: Clear the DMA Channel pending flags.
  62:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****        (+) __HAL_DMA_ENABLE_IT: Enable the specified DMA Channel interrupts.
  63:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****        (+) __HAL_DMA_DISABLE_IT: Disable the specified DMA Channel interrupts.
  64:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****        (+) __HAL_DMA_GET_IT_SOURCE: Check whether the specified DMA Channel interrupt has occurred 
  65:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
  66:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****      [..] 
  67:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       (@) You can refer to the DMA HAL driver header file for more useful macros  
  68:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
  69:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   @endverbatim
  70:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   ******************************************************************************
  71:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @attention
  72:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *
  73:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * <h2><center>&copy; COPYRIGHT(c) 2017 STMicroelectronics</center></h2>
  74:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *
  75:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * Redistribution and use in source and binary forms, with or without modification,
  76:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * are permitted provided that the following conditions are met:
  77:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  78:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *      this list of conditions and the following disclaimer.
  79:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  80:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *      this list of conditions and the following disclaimer in the documentation
  81:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *      and/or other materials provided with the distribution.
  82:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  83:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *      may be used to endorse or promote products derived from this software
  84:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *      without specific prior written permission.
  85:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *
  86:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  87:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  88:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  89:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  90:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  91:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 3


  92:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  93:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  94:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  95:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  96:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *
  97:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   ******************************************************************************
  98:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */
  99:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 100:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /* Includes ------------------------------------------------------------------*/
 101:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** #include "stm32f1xx_hal.h"
 102:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 103:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /** @addtogroup STM32F1xx_HAL_Driver
 104:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @{
 105:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */
 106:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 107:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /** @defgroup DMA DMA
 108:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @brief DMA HAL module driver
 109:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @{
 110:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */
 111:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 112:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** #ifdef HAL_DMA_MODULE_ENABLED
 113:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 114:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /* Private typedef -----------------------------------------------------------*/
 115:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /* Private define ------------------------------------------------------------*/
 116:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /* Private macro -------------------------------------------------------------*/
 117:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /* Private variables ---------------------------------------------------------*/
 118:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /* Private function prototypes -----------------------------------------------*/
 119:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /** @defgroup DMA_Private_Functions DMA Private Functions
 120:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @{
 121:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */
 122:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** static void DMA_SetConfig(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32
 123:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /**
 124:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @}
 125:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */
 126:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 127:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /* Exported functions ---------------------------------------------------------*/
 128:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 129:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /** @defgroup DMA_Exported_Functions DMA Exported Functions
 130:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @{
 131:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */
 132:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 133:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /** @defgroup DMA_Exported_Functions_Group1 Initialization and de-initialization functions
 134:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *  @brief   Initialization and de-initialization functions 
 135:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *
 136:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** @verbatim
 137:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****  ===============================================================================
 138:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****              ##### Initialization and de-initialization functions  #####
 139:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****  ===============================================================================
 140:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     [..]
 141:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     This section provides functions allowing to initialize the DMA Channel source
 142:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     and destination addresses, incrementation and data sizes, transfer direction, 
 143:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     circular/normal mode selection, memory-to-memory mode selection and Channel priority value.
 144:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     [..]
 145:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     The HAL_DMA_Init() function follows the DMA configuration procedures as described in
 146:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     reference manual.  
 147:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 148:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** @endverbatim
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 4


 149:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @{
 150:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */
 151:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 152:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /**
 153:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @brief  Initialize the DMA according to the specified
 154:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *         parameters in the DMA_InitTypeDef and initialize the associated handle.
 155:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param  hdma: Pointer to a DMA_HandleTypeDef structure that contains
 156:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *               the configuration information for the specified DMA Channel.
 157:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @retval HAL status
 158:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */
 159:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_Init(DMA_HandleTypeDef *hdma)
 160:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** {
 161:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   uint32_t tmp = 0U;
 162:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 163:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Check the DMA handle allocation */
 164:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   if(hdma == NULL)
 165:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 166:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     return HAL_ERROR;
 167:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 168:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 169:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Check the parameters */
 170:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   assert_param(IS_DMA_ALL_INSTANCE(hdma->Instance));
 171:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   assert_param(IS_DMA_DIRECTION(hdma->Init.Direction));
 172:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   assert_param(IS_DMA_PERIPHERAL_INC_STATE(hdma->Init.PeriphInc));
 173:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   assert_param(IS_DMA_MEMORY_INC_STATE(hdma->Init.MemInc));
 174:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   assert_param(IS_DMA_PERIPHERAL_DATA_SIZE(hdma->Init.PeriphDataAlignment));
 175:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   assert_param(IS_DMA_MEMORY_DATA_SIZE(hdma->Init.MemDataAlignment));
 176:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   assert_param(IS_DMA_MODE(hdma->Init.Mode));
 177:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   assert_param(IS_DMA_PRIORITY(hdma->Init.Priority));
 178:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 179:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** #if defined (STM32F101xE) || defined (STM32F101xG) || defined (STM32F103xE) || defined (STM32F103xG
 180:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* calculation of the channel index */
 181:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   if ((uint32_t)(hdma->Instance) < (uint32_t)(DMA2_Channel1))
 182:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 183:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* DMA1 */
 184:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->ChannelIndex = (((uint32_t)hdma->Instance - (uint32_t)DMA1_Channel1) / ((uint32_t)DMA1_Ch
 185:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA1;
 186:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 187:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   else 
 188:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 189:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* DMA2 */
 190:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->ChannelIndex = (((uint32_t)hdma->Instance - (uint32_t)DMA2_Channel1) / ((uint32_t)DMA2_Ch
 191:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA2;
 192:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 193:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** #else
 194:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* DMA1 */
 195:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->ChannelIndex = (((uint32_t)hdma->Instance - (uint32_t)DMA1_Channel1) / ((uint32_t)DMA1_Chan
 196:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->DmaBaseAddress = DMA1;
 197:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** #endif /* STM32F101xE || STM32F101xG || STM32F103xE || STM32F103xG || STM32F100xE || STM32F105xC ||
 198:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 199:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Change DMA peripheral state */
 200:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->State = HAL_DMA_STATE_BUSY;
 201:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 202:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Get the CR register value */
 203:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   tmp = hdma->Instance->CCR;
 204:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 205:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Clear PL, MSIZE, PSIZE, MINC, PINC, CIRC and DIR bits */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 5


 206:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   tmp &= ((uint32_t)~(DMA_CCR_PL    | DMA_CCR_MSIZE  | DMA_CCR_PSIZE  | \
 207:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****                       DMA_CCR_MINC  | DMA_CCR_PINC   | DMA_CCR_CIRC   | \
 208:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****                       DMA_CCR_DIR));
 209:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 210:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Prepare the DMA Channel configuration */
 211:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   tmp |=  hdma->Init.Direction        |
 212:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****           hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 213:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****           hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 214:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****           hdma->Init.Mode                | hdma->Init.Priority;
 215:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 216:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Write to DMA Channel CR register */
 217:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->Instance->CCR = tmp;
 218:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 219:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 220:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Clean callbacks */
 221:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->XferCpltCallback = NULL;
 222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->XferHalfCpltCallback = NULL;
 223:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->XferErrorCallback = NULL;
 224:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->XferAbortCallback = NULL;
 225:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 226:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Initialise the error code */
 227:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->ErrorCode = HAL_DMA_ERROR_NONE;
 228:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 229:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Initialize the DMA state*/
 230:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->State = HAL_DMA_STATE_READY;
 231:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Allocate lock resource and initialize it */
 232:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->Lock = HAL_UNLOCKED;
 233:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 234:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   return HAL_OK;
 235:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** }
 236:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 237:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /**
 238:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @brief  DeInitialize the DMA peripheral.
 239:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
 240:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *               the configuration information for the specified DMA Channel.
 241:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @retval HAL status
 242:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */
 243:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_DeInit(DMA_HandleTypeDef *hdma)
 244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** {
 245:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Check the DMA handle allocation */
 246:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   if(hdma == NULL)
 247:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 248:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     return HAL_ERROR;
 249:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 250:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 251:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Check the parameters */
 252:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   assert_param(IS_DMA_ALL_INSTANCE(hdma->Instance));
 253:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 254:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Disable the selected DMA Channelx */
 255:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   __HAL_DMA_DISABLE(hdma);
 256:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 257:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Reset DMA Channel control register */
 258:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->Instance->CCR  = 0U;
 259:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 260:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Reset DMA Channel Number of Data to Transfer register */
 261:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->Instance->CNDTR = 0U;
 262:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 6


 263:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Reset DMA Channel peripheral address register */
 264:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->Instance->CPAR  = 0U;
 265:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 266:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Reset DMA Channel memory address register */
 267:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->Instance->CMAR = 0U;
 268:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 269:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** #if defined (STM32F101xE) || defined (STM32F101xG) || defined (STM32F103xE) || defined (STM32F103xG
 270:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* calculation of the channel index */
 271:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   if ((uint32_t)(hdma->Instance) < (uint32_t)(DMA2_Channel1))
 272:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 273:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* DMA1 */
 274:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->ChannelIndex = (((uint32_t)hdma->Instance - (uint32_t)DMA1_Channel1) / ((uint32_t)DMA1_Ch
 275:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA1;
 276:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 277:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   else 
 278:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 279:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* DMA2 */
 280:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->ChannelIndex = (((uint32_t)hdma->Instance - (uint32_t)DMA2_Channel1) / ((uint32_t)DMA2_Ch
 281:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA2;
 282:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 283:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** #else
 284:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* DMA1 */
 285:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->ChannelIndex = (((uint32_t)hdma->Instance - (uint32_t)DMA1_Channel1) / ((uint32_t)DMA1_Chan
 286:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->DmaBaseAddress = DMA1;
 287:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** #endif /* STM32F101xE || STM32F101xG || STM32F103xE || STM32F103xG || STM32F100xE || STM32F105xC ||
 288:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 289:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Clear all flags */
 290:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->DmaBaseAddress->IFCR = (DMA_ISR_GIF1 << (hdma->ChannelIndex));
 291:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 292:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Initialize the error code */
 293:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->ErrorCode = HAL_DMA_ERROR_NONE;
 294:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 295:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Initialize the DMA state */
 296:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->State = HAL_DMA_STATE_RESET;
 297:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 298:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Release Lock */
 299:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   __HAL_UNLOCK(hdma);
 300:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 301:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   return HAL_OK;
 302:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** }
 303:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 304:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /**
 305:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @}
 306:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */
 307:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 308:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /** @defgroup DMA_Exported_Functions_Group2 Input and Output operation functions
 309:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *  @brief   Input and Output operation functions
 310:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *
 311:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** @verbatim
 312:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****  ===============================================================================
 313:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****                       #####  IO operation functions  #####
 314:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****  ===============================================================================
 315:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     [..]  This section provides functions allowing to:
 316:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       (+) Configure the source, destination address and data length and Start DMA transfer
 317:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       (+) Configure the source, destination address and data length and
 318:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****           Start DMA transfer with interrupt
 319:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       (+) Abort DMA transfer
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 7


 320:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       (+) Poll for transfer complete
 321:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       (+) Handle DMA interrupt request
 322:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 323:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** @endverbatim
 324:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @{
 325:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */
 326:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 327:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /**
 328:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @brief  Start the DMA Transfer.
 329:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
 330:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *               the configuration information for the specified DMA Channel.
 331:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param  SrcAddress: The source memory Buffer address
 332:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param  DstAddress: The destination memory Buffer address
 333:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param  DataLength: The length of data to be transferred from source to destination
 334:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @retval HAL status
 335:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */
 336:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_Start(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, 
 337:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** {
 338:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 339:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 340:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Check the parameters */
 341:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   assert_param(IS_DMA_BUFFER_SIZE(DataLength));
 342:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 343:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Process locked */
 344:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   __HAL_LOCK(hdma);
 345:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 346:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   if(HAL_DMA_STATE_READY == hdma->State)
 347:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 348:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Change DMA peripheral state */
 349:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->State = HAL_DMA_STATE_BUSY;
 350:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->ErrorCode = HAL_DMA_ERROR_NONE;
 351:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****             
 352:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Disable the peripheral */
 353:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     __HAL_DMA_DISABLE(hdma);
 354:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     
 355:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Configure the source, destination address and the data length & clear flags*/
 356:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     DMA_SetConfig(hdma, SrcAddress, DstAddress, DataLength);
 357:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     
 358:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Enable the Peripheral */
 359:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     __HAL_DMA_ENABLE(hdma);
 360:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 361:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   else
 362:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 363:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****    /* Process Unlocked */
 364:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****    __HAL_UNLOCK(hdma);  
 365:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****    status = HAL_BUSY;
 366:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }  
 367:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   return status;
 368:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** }
 369:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 370:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /**
 371:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @brief  Start the DMA Transfer with interrupt enabled.
 372:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
 373:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *               the configuration information for the specified DMA Channel.
 374:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param  SrcAddress: The source memory Buffer address
 375:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param  DstAddress: The destination memory Buffer address
 376:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param  DataLength: The length of data to be transferred from source to destination
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 8


 377:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @retval HAL status
 378:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */
 379:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_Start_IT(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddres
 380:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** {
 381:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 382:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 383:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Check the parameters */
 384:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   assert_param(IS_DMA_BUFFER_SIZE(DataLength));
 385:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 386:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Process locked */
 387:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   __HAL_LOCK(hdma);
 388:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   if(HAL_DMA_STATE_READY == hdma->State)
 390:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 391:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Change DMA peripheral state */
 392:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->State = HAL_DMA_STATE_BUSY;
 393:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->ErrorCode = HAL_DMA_ERROR_NONE;
 394:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     
 395:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Disable the peripheral */
 396:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     __HAL_DMA_DISABLE(hdma);
 397:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     
 398:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Configure the source, destination address and the data length & clear flags*/
 399:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     DMA_SetConfig(hdma, SrcAddress, DstAddress, DataLength);
 400:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     
 401:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Enable the transfer complete interrupt */
 402:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Enable the transfer Error interrupt */
 403:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     if(NULL != hdma->XferHalfCpltCallback)
 404:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 405:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       /* Enable the Half transfer complete interrupt as well */
 406:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       __HAL_DMA_ENABLE_IT(hdma, (DMA_IT_TC | DMA_IT_HT | DMA_IT_TE));
 407:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     }
 408:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     else
 409:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 410:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       __HAL_DMA_DISABLE_IT(hdma, DMA_IT_HT);
 411:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       __HAL_DMA_ENABLE_IT(hdma, (DMA_IT_TC | DMA_IT_TE));
 412:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     }
 413:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Enable the Peripheral */
 414:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     __HAL_DMA_ENABLE(hdma);
 415:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 416:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   else
 417:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {      
 418:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Process Unlocked */
 419:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     __HAL_UNLOCK(hdma); 
 420:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 421:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Remain BUSY */
 422:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     status = HAL_BUSY;
 423:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }    
 424:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   return status;
 425:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** }
 426:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 427:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /**
 428:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @brief  Abort the DMA Transfer.
 429:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
 430:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *               the configuration information for the specified DMA Channel.
 431:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @retval HAL status
 432:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */
 433:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_Abort(DMA_HandleTypeDef *hdma)
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 9


 434:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** {
 435:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 436:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 437:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Disable DMA IT */
 438:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   __HAL_DMA_DISABLE_IT(hdma, (DMA_IT_TC | DMA_IT_HT | DMA_IT_TE));
 439:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     
 440:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Disable the channel */
 441:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   __HAL_DMA_DISABLE(hdma);
 442:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     
 443:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Clear all flags */
 444:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->DmaBaseAddress->IFCR = (DMA_ISR_GIF1 << hdma->ChannelIndex);
 445:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 446:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Change the DMA state */
 447:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->State = HAL_DMA_STATE_READY;
 448:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 449:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Process Unlocked */
 450:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   __HAL_UNLOCK(hdma);      
 451:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 452:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   return status; 
 453:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** }
 454:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 455:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /**
 456:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @brief  Aborts the DMA Transfer in Interrupt mode.
 457:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param  hdma  : pointer to a DMA_HandleTypeDef structure that contains
 458:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *                 the configuration information for the specified DMA Channel.
 459:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @retval HAL status
 460:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */
 461:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_Abort_IT(DMA_HandleTypeDef *hdma)
 462:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** {  
 463:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 464:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 465:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   if(HAL_DMA_STATE_BUSY != hdma->State)
 466:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 467:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* no transfer ongoing */
 468:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->ErrorCode = HAL_DMA_ERROR_NO_XFER;
 469:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****         
 470:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     status = HAL_ERROR;
 471:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 472:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   else
 473:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   { 
 474:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Disable DMA IT */
 475:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     __HAL_DMA_DISABLE_IT(hdma, (DMA_IT_TC | DMA_IT_HT | DMA_IT_TE));
 476:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 477:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Disable the channel */
 478:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     __HAL_DMA_DISABLE(hdma);
 479:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 480:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Clear all flags */
 481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     __HAL_DMA_CLEAR_FLAG(hdma, __HAL_DMA_GET_GI_FLAG_INDEX(hdma));
 482:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 483:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Change the DMA state */
 484:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->State = HAL_DMA_STATE_READY;
 485:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 486:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Process Unlocked */
 487:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     __HAL_UNLOCK(hdma);
 488:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 489:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Call User Abort callback */
 490:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     if(hdma->XferAbortCallback != NULL)
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 10


 491:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 492:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       hdma->XferAbortCallback(hdma);
 493:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     } 
 494:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 495:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   return status;
 496:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** }
 497:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 498:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /**
 499:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @brief  Polling for transfer complete.
 500:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param  hdma:    pointer to a DMA_HandleTypeDef structure that contains
 501:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *                  the configuration information for the specified DMA Channel.
 502:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param  CompleteLevel: Specifies the DMA level complete.
 503:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param  Timeout:       Timeout duration.
 504:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @retval HAL status
 505:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */
 506:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_PollForTransfer(DMA_HandleTypeDef *hdma, uint32_t CompleteLevel, uint32_t
 507:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** {
 508:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   uint32_t temp;
 509:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   uint32_t tickstart = 0U;
 510:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 511:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   if(HAL_DMA_STATE_BUSY != hdma->State)
 512:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 513:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* no transfer ongoing */
 514:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->ErrorCode = HAL_DMA_ERROR_NO_XFER;
 515:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     __HAL_UNLOCK(hdma);
 516:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     return HAL_ERROR;
 517:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 518:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 519:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Polling mode not supported in circular mode */
 520:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   if (RESET != (hdma->Instance->CCR & DMA_CCR_CIRC))
 521:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 522:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->ErrorCode = HAL_DMA_ERROR_NOT_SUPPORTED;
 523:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     return HAL_ERROR;
 524:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 525:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 526:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Get the level transfer complete flag */
 527:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   if(CompleteLevel == HAL_DMA_FULL_TRANSFER)
 528:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 529:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Transfer Complete flag */
 530:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     temp = __HAL_DMA_GET_TC_FLAG_INDEX(hdma);
 531:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 532:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   else
 533:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 534:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Half Transfer Complete flag */
 535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     temp = __HAL_DMA_GET_HT_FLAG_INDEX(hdma);
 536:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 537:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 538:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Get tick */
 539:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   tickstart = HAL_GetTick();
 540:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 541:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   while(__HAL_DMA_GET_FLAG(hdma, temp) == RESET)
 542:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     if((__HAL_DMA_GET_FLAG(hdma, __HAL_DMA_GET_TE_FLAG_INDEX(hdma)) != RESET))
 544:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 545:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       /* When a DMA transfer error occurs */
 546:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       /* A hardware clear of its EN bits is performed */
 547:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       /* Clear all flags */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 11


 548:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       hdma->DmaBaseAddress->IFCR = (DMA_ISR_GIF1 << hdma->ChannelIndex);
 549:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 550:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       /* Update error code */
 551:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       SET_BIT(hdma->ErrorCode, HAL_DMA_ERROR_TE);
 552:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 553:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       /* Change the DMA state */
 554:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       hdma->State= HAL_DMA_STATE_READY;
 555:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 556:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       /* Process Unlocked */
 557:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       __HAL_UNLOCK(hdma);
 558:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 559:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       return HAL_ERROR;
 560:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     }
 561:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Check for the Timeout */
 562:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     if(Timeout != HAL_MAX_DELAY)
 563:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 564:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       if((Timeout == 0U) || ((HAL_GetTick() - tickstart) > Timeout))
 565:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       {
 566:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****         /* Update error code */
 567:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****         SET_BIT(hdma->ErrorCode, HAL_DMA_ERROR_TIMEOUT);
 568:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 569:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****         /* Change the DMA state */
 570:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****         hdma->State = HAL_DMA_STATE_READY;
 571:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 572:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****         /* Process Unlocked */
 573:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****         __HAL_UNLOCK(hdma);
 574:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 575:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****         return HAL_ERROR;
 576:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       }
 577:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     }
 578:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 579:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 580:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   if(CompleteLevel == HAL_DMA_FULL_TRANSFER)
 581:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 582:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Clear the transfer complete flag */
 583:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     __HAL_DMA_CLEAR_FLAG(hdma, __HAL_DMA_GET_TC_FLAG_INDEX(hdma));
 584:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 585:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* The selected Channelx EN bit is cleared (DMA is disabled and
 586:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     all transfers are complete) */
 587:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->State = HAL_DMA_STATE_READY;
 588:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 589:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   else
 590:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 591:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Clear the half transfer complete flag */
 592:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     __HAL_DMA_CLEAR_FLAG(hdma, __HAL_DMA_GET_HT_FLAG_INDEX(hdma));
 593:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 594:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 595:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Process unlocked */
 596:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   __HAL_UNLOCK(hdma);
 597:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 598:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   return HAL_OK;
 599:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** }
 600:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 601:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /**
 602:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @brief  Handles DMA interrupt request.
 603:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
 604:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *               the configuration information for the specified DMA Channel.  
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 12


 605:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @retval None
 606:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */
 607:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** void HAL_DMA_IRQHandler(DMA_HandleTypeDef *hdma)
 608:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** {
 609:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   uint32_t flag_it = hdma->DmaBaseAddress->ISR;
 610:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   uint32_t source_it = hdma->Instance->CCR;
 611:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 612:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Half Transfer Complete Interrupt management ******************************/
 613:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   if (((flag_it & (DMA_FLAG_HT1 << hdma->ChannelIndex)) != RESET) && ((source_it & DMA_IT_HT) != RE
 614:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 615:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Disable the half transfer interrupt if the DMA mode is not CIRCULAR */
 616:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     if((hdma->Instance->CCR & DMA_CCR_CIRC) == 0U)
 617:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 618:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       /* Disable the half transfer interrupt */
 619:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       __HAL_DMA_DISABLE_IT(hdma, DMA_IT_HT);
 620:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     }
 621:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Clear the half transfer complete flag */
 622:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     __HAL_DMA_CLEAR_FLAG(hdma, __HAL_DMA_GET_HT_FLAG_INDEX(hdma));
 623:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 624:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* DMA peripheral state is not updated in Half Transfer */
 625:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* but in Transfer Complete case */
 626:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 627:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     if(hdma->XferHalfCpltCallback != NULL)
 628:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 629:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       /* Half transfer callback */
 630:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       hdma->XferHalfCpltCallback(hdma);
 631:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     }
 632:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 633:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 634:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Transfer Complete Interrupt management ***********************************/
 635:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   else if (((flag_it & (DMA_FLAG_TC1 << hdma->ChannelIndex)) != RESET) && ((source_it & DMA_IT_TC) 
 636:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 637:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     if((hdma->Instance->CCR & DMA_CCR_CIRC) == 0U)
 638:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 639:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       /* Disable the transfer complete and error interrupt */
 640:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       __HAL_DMA_DISABLE_IT(hdma, DMA_IT_TE | DMA_IT_TC);  
 641:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 642:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       /* Change the DMA state */
 643:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       hdma->State = HAL_DMA_STATE_READY;
 644:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     }
 645:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Clear the transfer complete flag */
 646:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       __HAL_DMA_CLEAR_FLAG(hdma, __HAL_DMA_GET_TC_FLAG_INDEX(hdma));
 647:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 648:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Process Unlocked */
 649:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     __HAL_UNLOCK(hdma);
 650:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 651:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     if(hdma->XferCpltCallback != NULL)
 652:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 653:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       /* Transfer complete callback */
 654:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       hdma->XferCpltCallback(hdma);
 655:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     }
 656:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 657:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 658:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Transfer Error Interrupt management **************************************/
 659:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   else if (( RESET != (flag_it & (DMA_FLAG_TE1 << hdma->ChannelIndex))) && (RESET != (source_it & D
 660:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 661:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* When a DMA transfer error occurs */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 13


 662:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* A hardware clear of its EN bits is performed */
 663:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Disable ALL DMA IT */
 664:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     __HAL_DMA_DISABLE_IT(hdma, (DMA_IT_TC | DMA_IT_HT | DMA_IT_TE));
 665:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 666:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Clear all flags */
 667:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->DmaBaseAddress->IFCR = (DMA_ISR_GIF1 << hdma->ChannelIndex);
 668:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 669:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Update error code */
 670:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->ErrorCode = HAL_DMA_ERROR_TE;
 671:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 672:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Change the DMA state */
 673:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->State = HAL_DMA_STATE_READY;
 674:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 675:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Process Unlocked */
 676:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     __HAL_UNLOCK(hdma);
 677:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 678:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     if (hdma->XferErrorCallback != NULL)
 679:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 680:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       /* Transfer error callback */
 681:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       hdma->XferErrorCallback(hdma);
 682:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     }
 683:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 684:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   return;
 685:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** }
 686:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 687:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /**
 688:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @brief Register callbacks
 689:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param hdma: pointer to a DMA_HandleTypeDef structure that contains
 690:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *              the configuration information for the specified DMA Channel.
 691:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param CallbackID: User Callback identifer
 692:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *                    a HAL_DMA_CallbackIDTypeDef ENUM as parameter.
 693:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param pCallback: pointer to private callbacsk function which has pointer to 
 694:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *                   a DMA_HandleTypeDef structure as parameter.
 695:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @retval HAL status
 696:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */                          
 697:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_RegisterCallback(DMA_HandleTypeDef *hdma, HAL_DMA_CallbackIDTypeDef Callb
 698:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** {
 699:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 700:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 701:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Process locked */
 702:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   __HAL_LOCK(hdma);
 703:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 704:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   if(HAL_DMA_STATE_READY == hdma->State)
 705:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 706:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     switch (CallbackID)
 707:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 708:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     case  HAL_DMA_XFER_CPLT_CB_ID:
 709:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       hdma->XferCpltCallback = pCallback;
 710:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       break;
 711:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       
 712:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     case  HAL_DMA_XFER_HALFCPLT_CB_ID:
 713:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       hdma->XferHalfCpltCallback = pCallback;
 714:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       break;         
 715:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 716:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     case  HAL_DMA_XFER_ERROR_CB_ID:
 717:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       hdma->XferErrorCallback = pCallback;
 718:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       break;         
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 14


 719:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       
 720:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     case  HAL_DMA_XFER_ABORT_CB_ID:
 721:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       hdma->XferAbortCallback = pCallback;
 722:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       break; 
 723:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       
 724:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     default:
 725:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       status = HAL_ERROR;
 726:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       break;                                                            
 727:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     }
 728:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 729:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   else
 730:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 731:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     status = HAL_ERROR;
 732:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   } 
 733:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 734:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Release Lock */
 735:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   __HAL_UNLOCK(hdma);
 736:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 737:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   return status;
 738:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** }
 739:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 740:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /**
 741:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @brief UnRegister callbacks
 742:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param hdma: pointer to a DMA_HandleTypeDef structure that contains
 743:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *              the configuration information for the specified DMA Channel.
 744:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param CallbackID: User Callback identifer
 745:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *                    a HAL_DMA_CallbackIDTypeDef ENUM as parameter.
 746:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @retval HAL status
 747:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */              
 748:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_UnRegisterCallback(DMA_HandleTypeDef *hdma, HAL_DMA_CallbackIDTypeDef Cal
 749:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** {
 750:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 751:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 752:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Process locked */
 753:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   __HAL_LOCK(hdma);
 754:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 755:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   if(HAL_DMA_STATE_READY == hdma->State)
 756:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 757:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     switch (CallbackID)
 758:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 759:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     case  HAL_DMA_XFER_CPLT_CB_ID:
 760:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       hdma->XferCpltCallback = NULL;
 761:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       break;
 762:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 763:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     case  HAL_DMA_XFER_HALFCPLT_CB_ID:
 764:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       hdma->XferHalfCpltCallback = NULL;
 765:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       break;         
 766:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 767:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     case  HAL_DMA_XFER_ERROR_CB_ID:
 768:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       hdma->XferErrorCallback = NULL;
 769:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       break;         
 770:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 771:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     case  HAL_DMA_XFER_ABORT_CB_ID:
 772:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       hdma->XferAbortCallback = NULL;
 773:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       break; 
 774:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 775:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     case   HAL_DMA_XFER_ALL_CB_ID:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 15


 776:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       hdma->XferCpltCallback = NULL;
 777:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       hdma->XferHalfCpltCallback = NULL;
 778:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       hdma->XferErrorCallback = NULL;
 779:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       hdma->XferAbortCallback = NULL;
 780:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       break; 
 781:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 782:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     default:
 783:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       status = HAL_ERROR;
 784:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       break;
 785:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     }
 786:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 787:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   else
 788:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 789:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     status = HAL_ERROR;
 790:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   } 
 791:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 792:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Release Lock */
 793:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   __HAL_UNLOCK(hdma);
 794:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 795:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   return status;
 796:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** }
 797:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 798:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /**
 799:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @}
 800:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */
 801:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 802:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /** @defgroup DMA_Exported_Functions_Group3 Peripheral State and Errors functions
 803:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *  @brief    Peripheral State and Errors functions
 804:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *
 805:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** @verbatim
 806:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****  ===============================================================================
 807:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****             ##### Peripheral State and Errors functions #####
 808:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****  ===============================================================================  
 809:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     [..]
 810:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     This subsection provides functions allowing to
 811:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       (+) Check the DMA state
 812:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       (+) Get error code
 813:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 814:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** @endverbatim
 815:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @{
 816:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */
 817:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 818:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /**
 819:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @brief  Return the DMA hande state.
 820:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
 821:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *               the configuration information for the specified DMA Channel.
 822:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @retval HAL state
 823:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */
 824:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** HAL_DMA_StateTypeDef HAL_DMA_GetState(DMA_HandleTypeDef *hdma)
 825:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** {
 826:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Return DMA handle state */
 827:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   return hdma->State;
 828:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** }
 829:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 830:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /**
 831:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @brief  Return the DMA error code.
 832:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param  hdma : pointer to a DMA_HandleTypeDef structure that contains
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 16


 833:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *              the configuration information for the specified DMA Channel.
 834:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @retval DMA Error Code
 835:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */
 836:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** uint32_t HAL_DMA_GetError(DMA_HandleTypeDef *hdma)
 837:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** {
 838:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   return hdma->ErrorCode;
 839:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** }
 840:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 841:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /**
 842:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @}
 843:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */
 844:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 845:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /**
 846:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @}
 847:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */
 848:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 849:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /** @addtogroup DMA_Private_Functions
 850:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @{
 851:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */
 852:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 853:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** /**
 854:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @brief  Sets the DMA Transfer parameter.
 855:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param  hdma:       pointer to a DMA_HandleTypeDef structure that contains
 856:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   *                     the configuration information for the specified DMA Channel.
 857:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param  SrcAddress: The source memory Buffer address
 858:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param  DstAddress: The destination memory Buffer address
 859:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @param  DataLength: The length of data to be transferred from source to destination
 860:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   * @retval HAL status
 861:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   */
 862:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** static void DMA_SetConfig(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32
 863:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** {
  25              		.loc 1 863 0
  26              		.cfi_startproc
  27              		@ args = 0, pretend = 0, frame = 0
  28              		@ frame_needed = 0, uses_anonymous_args = 0
  29              		@ link register save eliminated.
  30              	.LVL0:
  31 0000 70B4     		push	{r4, r5, r6}
  32              	.LCFI0:
  33              		.cfi_def_cfa_offset 12
  34              		.cfi_offset 4, -12
  35              		.cfi_offset 5, -8
  36              		.cfi_offset 6, -4
 864:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Clear all flags */
 865:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->DmaBaseAddress->IFCR = (DMA_ISR_GIF1 << hdma->ChannelIndex);
  37              		.loc 1 865 0
  38 0002 066C     		ldr	r6, [r0, #64]
  39 0004 C56B     		ldr	r5, [r0, #60]
  40 0006 0124     		movs	r4, #1
  41 0008 B440     		lsls	r4, r4, r6
  42 000a 6C60     		str	r4, [r5, #4]
 866:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 867:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Configure DMA Channel data length */
 868:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->Instance->CNDTR = DataLength;
  43              		.loc 1 868 0
  44 000c 0468     		ldr	r4, [r0]
  45 000e 6360     		str	r3, [r4, #4]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 17


 869:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 870:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Memory to Peripheral */
 871:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   if((hdma->Init.Direction) == DMA_MEMORY_TO_PERIPH)
  46              		.loc 1 871 0
  47 0010 4368     		ldr	r3, [r0, #4]
  48              	.LVL1:
  49 0012 102B     		cmp	r3, #16
  50 0014 05D0     		beq	.L5
 872:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 873:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Configure DMA Channel destination address */
 874:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->Instance->CPAR = DstAddress;
 875:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 876:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Configure DMA Channel source address */
 877:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->Instance->CMAR = SrcAddress;
 878:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 879:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Peripheral to Memory */
 880:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   else
 881:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 882:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Configure DMA Channel source address */
 883:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->Instance->CPAR = SrcAddress;
  51              		.loc 1 883 0
  52 0016 0368     		ldr	r3, [r0]
  53 0018 9960     		str	r1, [r3, #8]
  54              	.LVL2:
 884:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 885:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     /* Configure DMA Channel destination address */
 886:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->Instance->CMAR = DstAddress;
  55              		.loc 1 886 0
  56 001a 0368     		ldr	r3, [r0]
  57 001c DA60     		str	r2, [r3, #12]
  58              	.L1:
 887:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 888:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** }
  59              		.loc 1 888 0
  60 001e 70BC     		pop	{r4, r5, r6}
  61              	.LCFI1:
  62              		.cfi_remember_state
  63              		.cfi_restore 6
  64              		.cfi_restore 5
  65              		.cfi_restore 4
  66              		.cfi_def_cfa_offset 0
  67 0020 7047     		bx	lr
  68              	.LVL3:
  69              	.L5:
  70              	.LCFI2:
  71              		.cfi_restore_state
 874:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
  72              		.loc 1 874 0
  73 0022 0368     		ldr	r3, [r0]
  74 0024 9A60     		str	r2, [r3, #8]
  75              	.LVL4:
 877:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
  76              		.loc 1 877 0
  77 0026 0368     		ldr	r3, [r0]
  78 0028 D960     		str	r1, [r3, #12]
  79 002a F8E7     		b	.L1
  80              		.cfi_endproc
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 18


  81              	.LFE78:
  83              		.section	.text.HAL_DMA_Init,"ax",%progbits
  84              		.align	1
  85              		.global	HAL_DMA_Init
  86              		.syntax unified
  87              		.thumb
  88              		.thumb_func
  89              		.fpu softvfp
  91              	HAL_DMA_Init:
  92              	.LFB66:
 160:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   uint32_t tmp = 0U;
  93              		.loc 1 160 0
  94              		.cfi_startproc
  95              		@ args = 0, pretend = 0, frame = 0
  96              		@ frame_needed = 0, uses_anonymous_args = 0
  97              		@ link register save eliminated.
  98              	.LVL5:
 164:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
  99              		.loc 1 164 0
 100 0000 0028     		cmp	r0, #0
 101 0002 30D0     		beq	.L8
 160:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   uint32_t tmp = 0U;
 102              		.loc 1 160 0
 103 0004 10B4     		push	{r4}
 104              	.LCFI3:
 105              		.cfi_def_cfa_offset 4
 106              		.cfi_offset 4, -4
 107 0006 0346     		mov	r3, r0
 195:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->DmaBaseAddress = DMA1;
 108              		.loc 1 195 0
 109 0008 0168     		ldr	r1, [r0]
 110 000a 184A     		ldr	r2, .L13
 111 000c 0A44     		add	r2, r2, r1
 112 000e 1848     		ldr	r0, .L13+4
 113              	.LVL6:
 114 0010 A0FB0202 		umull	r0, r2, r0, r2
 115 0014 1209     		lsrs	r2, r2, #4
 116 0016 9200     		lsls	r2, r2, #2
 117 0018 1A64     		str	r2, [r3, #64]
 196:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** #endif /* STM32F101xE || STM32F101xG || STM32F103xE || STM32F103xG || STM32F100xE || STM32F105xC ||
 118              		.loc 1 196 0
 119 001a 164A     		ldr	r2, .L13+8
 120 001c DA63     		str	r2, [r3, #60]
 200:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 121              		.loc 1 200 0
 122 001e 0222     		movs	r2, #2
 123 0020 83F82120 		strb	r2, [r3, #33]
 203:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 124              		.loc 1 203 0
 125 0024 0868     		ldr	r0, [r1]
 126              	.LVL7:
 206:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****                       DMA_CCR_MINC  | DMA_CCR_PINC   | DMA_CCR_CIRC   | \
 127              		.loc 1 206 0
 128 0026 20F47F50 		bic	r0, r0, #16320
 129              	.LVL8:
 130 002a 20F03000 		bic	r0, r0, #48
 131              	.LVL9:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 19


 211:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****           hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 132              		.loc 1 211 0
 133 002e 5A68     		ldr	r2, [r3, #4]
 212:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****           hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 134              		.loc 1 212 0
 135 0030 9C68     		ldr	r4, [r3, #8]
 211:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****           hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 136              		.loc 1 211 0
 137 0032 2243     		orrs	r2, r2, r4
 212:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****           hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 138              		.loc 1 212 0
 139 0034 DC68     		ldr	r4, [r3, #12]
 140 0036 2243     		orrs	r2, r2, r4
 213:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****           hdma->Init.Mode                | hdma->Init.Priority;
 141              		.loc 1 213 0
 142 0038 1C69     		ldr	r4, [r3, #16]
 212:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****           hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 143              		.loc 1 212 0
 144 003a 2243     		orrs	r2, r2, r4
 213:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****           hdma->Init.Mode                | hdma->Init.Priority;
 145              		.loc 1 213 0
 146 003c 5C69     		ldr	r4, [r3, #20]
 147 003e 2243     		orrs	r2, r2, r4
 214:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 148              		.loc 1 214 0
 149 0040 9C69     		ldr	r4, [r3, #24]
 213:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****           hdma->Init.Mode                | hdma->Init.Priority;
 150              		.loc 1 213 0
 151 0042 2243     		orrs	r2, r2, r4
 214:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 152              		.loc 1 214 0
 153 0044 DC69     		ldr	r4, [r3, #28]
 154 0046 2243     		orrs	r2, r2, r4
 211:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****           hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 155              		.loc 1 211 0
 156 0048 0243     		orrs	r2, r2, r0
 157              	.LVL10:
 217:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 158              		.loc 1 217 0
 159 004a 0A60     		str	r2, [r1]
 221:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->XferHalfCpltCallback = NULL;
 160              		.loc 1 221 0
 161 004c 0020     		movs	r0, #0
 162 004e 9862     		str	r0, [r3, #40]
 222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->XferErrorCallback = NULL;
 163              		.loc 1 222 0
 164 0050 D862     		str	r0, [r3, #44]
 223:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->XferAbortCallback = NULL;
 165              		.loc 1 223 0
 166 0052 1863     		str	r0, [r3, #48]
 224:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 167              		.loc 1 224 0
 168 0054 5863     		str	r0, [r3, #52]
 227:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 169              		.loc 1 227 0
 170 0056 9863     		str	r0, [r3, #56]
 230:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Allocate lock resource and initialize it */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 20


 171              		.loc 1 230 0
 172 0058 0122     		movs	r2, #1
 173              	.LVL11:
 174 005a 83F82120 		strb	r2, [r3, #33]
 232:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 175              		.loc 1 232 0
 176 005e 83F82000 		strb	r0, [r3, #32]
 235:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 177              		.loc 1 235 0
 178 0062 10BC     		pop	{r4}
 179              	.LCFI4:
 180              		.cfi_restore 4
 181              		.cfi_def_cfa_offset 0
 182 0064 7047     		bx	lr
 183              	.LVL12:
 184              	.L8:
 166:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 185              		.loc 1 166 0
 186 0066 0120     		movs	r0, #1
 187              	.LVL13:
 235:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 188              		.loc 1 235 0
 189 0068 7047     		bx	lr
 190              	.L14:
 191 006a 00BF     		.align	2
 192              	.L13:
 193 006c F8FFFDBF 		.word	-1073872904
 194 0070 CDCCCCCC 		.word	-858993459
 195 0074 00000240 		.word	1073872896
 196              		.cfi_endproc
 197              	.LFE66:
 199              		.section	.text.HAL_DMA_DeInit,"ax",%progbits
 200              		.align	1
 201              		.global	HAL_DMA_DeInit
 202              		.syntax unified
 203              		.thumb
 204              		.thumb_func
 205              		.fpu softvfp
 207              	HAL_DMA_DeInit:
 208              	.LFB67:
 244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Check the DMA handle allocation */
 209              		.loc 1 244 0
 210              		.cfi_startproc
 211              		@ args = 0, pretend = 0, frame = 0
 212              		@ frame_needed = 0, uses_anonymous_args = 0
 213              		@ link register save eliminated.
 214              	.LVL14:
 246:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 215              		.loc 1 246 0
 216 0000 28B3     		cbz	r0, .L17
 244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Check the DMA handle allocation */
 217              		.loc 1 244 0
 218 0002 10B4     		push	{r4}
 219              	.LCFI5:
 220              		.cfi_def_cfa_offset 4
 221              		.cfi_offset 4, -4
 222 0004 0346     		mov	r3, r0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 21


 255:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 223              		.loc 1 255 0
 224 0006 0168     		ldr	r1, [r0]
 225 0008 0A68     		ldr	r2, [r1]
 226 000a 22F00102 		bic	r2, r2, #1
 227 000e 0A60     		str	r2, [r1]
 258:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 228              		.loc 1 258 0
 229 0010 0268     		ldr	r2, [r0]
 230 0012 0020     		movs	r0, #0
 231              	.LVL15:
 232 0014 1060     		str	r0, [r2]
 261:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 233              		.loc 1 261 0
 234 0016 1A68     		ldr	r2, [r3]
 235 0018 5060     		str	r0, [r2, #4]
 264:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 236              		.loc 1 264 0
 237 001a 1A68     		ldr	r2, [r3]
 238 001c 9060     		str	r0, [r2, #8]
 267:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 239              		.loc 1 267 0
 240 001e 1A68     		ldr	r2, [r3]
 241 0020 D060     		str	r0, [r2, #12]
 285:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   hdma->DmaBaseAddress = DMA1;
 242              		.loc 1 285 0
 243 0022 1968     		ldr	r1, [r3]
 244 0024 0B4A     		ldr	r2, .L22
 245 0026 0A44     		add	r2, r2, r1
 246 0028 0B49     		ldr	r1, .L22+4
 247 002a A1FB0212 		umull	r1, r2, r1, r2
 248 002e 1209     		lsrs	r2, r2, #4
 249 0030 9200     		lsls	r2, r2, #2
 250 0032 1A64     		str	r2, [r3, #64]
 286:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** #endif /* STM32F101xE || STM32F101xG || STM32F103xE || STM32F103xG || STM32F100xE || STM32F105xC ||
 251              		.loc 1 286 0
 252 0034 094C     		ldr	r4, .L22+8
 253 0036 DC63     		str	r4, [r3, #60]
 290:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 254              		.loc 1 290 0
 255 0038 0121     		movs	r1, #1
 256 003a 01FA02F2 		lsl	r2, r1, r2
 257 003e 6260     		str	r2, [r4, #4]
 293:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 258              		.loc 1 293 0
 259 0040 9863     		str	r0, [r3, #56]
 296:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 260              		.loc 1 296 0
 261 0042 83F82100 		strb	r0, [r3, #33]
 299:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 262              		.loc 1 299 0
 263 0046 83F82000 		strb	r0, [r3, #32]
 302:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 264              		.loc 1 302 0
 265 004a 10BC     		pop	{r4}
 266              	.LCFI6:
 267              		.cfi_restore 4
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 22


 268              		.cfi_def_cfa_offset 0
 269 004c 7047     		bx	lr
 270              	.LVL16:
 271              	.L17:
 248:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 272              		.loc 1 248 0
 273 004e 0120     		movs	r0, #1
 274              	.LVL17:
 302:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 275              		.loc 1 302 0
 276 0050 7047     		bx	lr
 277              	.L23:
 278 0052 00BF     		.align	2
 279              	.L22:
 280 0054 F8FFFDBF 		.word	-1073872904
 281 0058 CDCCCCCC 		.word	-858993459
 282 005c 00000240 		.word	1073872896
 283              		.cfi_endproc
 284              	.LFE67:
 286              		.section	.text.HAL_DMA_Start,"ax",%progbits
 287              		.align	1
 288              		.global	HAL_DMA_Start
 289              		.syntax unified
 290              		.thumb
 291              		.thumb_func
 292              		.fpu softvfp
 294              	HAL_DMA_Start:
 295              	.LFB68:
 337:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 296              		.loc 1 337 0
 297              		.cfi_startproc
 298              		@ args = 0, pretend = 0, frame = 0
 299              		@ frame_needed = 0, uses_anonymous_args = 0
 300              	.LVL18:
 301 0000 70B5     		push	{r4, r5, r6, lr}
 302              	.LCFI7:
 303              		.cfi_def_cfa_offset 16
 304              		.cfi_offset 4, -16
 305              		.cfi_offset 5, -12
 306              		.cfi_offset 6, -8
 307              		.cfi_offset 14, -4
 308              	.LVL19:
 344:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 309              		.loc 1 344 0
 310 0002 90F82040 		ldrb	r4, [r0, #32]	@ zero_extendqisi2
 311 0006 012C     		cmp	r4, #1
 312 0008 20D0     		beq	.L27
 344:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 313              		.loc 1 344 0 is_stmt 0 discriminator 2
 314 000a 0124     		movs	r4, #1
 315 000c 80F82040 		strb	r4, [r0, #32]
 346:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 316              		.loc 1 346 0 is_stmt 1 discriminator 2
 317 0010 90F82140 		ldrb	r4, [r0, #33]	@ zero_extendqisi2
 318 0014 012C     		cmp	r4, #1
 319 0016 04D0     		beq	.L29
 364:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****    status = HAL_BUSY;
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 23


 320              		.loc 1 364 0
 321 0018 0023     		movs	r3, #0
 322              	.LVL20:
 323 001a 80F82030 		strb	r3, [r0, #32]
 324              	.LVL21:
 365:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }  
 325              		.loc 1 365 0
 326 001e 0220     		movs	r0, #2
 327              	.LVL22:
 328              	.L25:
 368:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 329              		.loc 1 368 0
 330 0020 70BD     		pop	{r4, r5, r6, pc}
 331              	.LVL23:
 332              	.L29:
 333 0022 0446     		mov	r4, r0
 349:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->ErrorCode = HAL_DMA_ERROR_NONE;
 334              		.loc 1 349 0
 335 0024 0220     		movs	r0, #2
 336              	.LVL24:
 337 0026 84F82100 		strb	r0, [r4, #33]
 350:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****             
 338              		.loc 1 350 0
 339 002a 0025     		movs	r5, #0
 340 002c A563     		str	r5, [r4, #56]
 353:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     
 341              		.loc 1 353 0
 342 002e 2668     		ldr	r6, [r4]
 343 0030 3068     		ldr	r0, [r6]
 344 0032 20F00100 		bic	r0, r0, #1
 345 0036 3060     		str	r0, [r6]
 356:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     
 346              		.loc 1 356 0
 347 0038 2046     		mov	r0, r4
 348 003a FFF7FEFF 		bl	DMA_SetConfig
 349              	.LVL25:
 359:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 350              		.loc 1 359 0
 351 003e 2268     		ldr	r2, [r4]
 352 0040 1368     		ldr	r3, [r2]
 353 0042 43F00103 		orr	r3, r3, #1
 354 0046 1360     		str	r3, [r2]
 338:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 355              		.loc 1 338 0
 356 0048 2846     		mov	r0, r5
 357 004a E9E7     		b	.L25
 358              	.LVL26:
 359              	.L27:
 344:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 360              		.loc 1 344 0
 361 004c 0220     		movs	r0, #2
 362              	.LVL27:
 363 004e E7E7     		b	.L25
 364              		.cfi_endproc
 365              	.LFE68:
 367              		.section	.text.HAL_DMA_Start_IT,"ax",%progbits
 368              		.align	1
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 24


 369              		.global	HAL_DMA_Start_IT
 370              		.syntax unified
 371              		.thumb
 372              		.thumb_func
 373              		.fpu softvfp
 375              	HAL_DMA_Start_IT:
 376              	.LFB69:
 380:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 377              		.loc 1 380 0
 378              		.cfi_startproc
 379              		@ args = 0, pretend = 0, frame = 0
 380              		@ frame_needed = 0, uses_anonymous_args = 0
 381              	.LVL28:
 382 0000 38B5     		push	{r3, r4, r5, lr}
 383              	.LCFI8:
 384              		.cfi_def_cfa_offset 16
 385              		.cfi_offset 3, -16
 386              		.cfi_offset 4, -12
 387              		.cfi_offset 5, -8
 388              		.cfi_offset 14, -4
 389              	.LVL29:
 387:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 390              		.loc 1 387 0
 391 0002 90F82040 		ldrb	r4, [r0, #32]	@ zero_extendqisi2
 392 0006 012C     		cmp	r4, #1
 393 0008 32D0     		beq	.L35
 387:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 394              		.loc 1 387 0 is_stmt 0 discriminator 2
 395 000a 0124     		movs	r4, #1
 396 000c 80F82040 		strb	r4, [r0, #32]
 389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 397              		.loc 1 389 0 is_stmt 1 discriminator 2
 398 0010 90F82140 		ldrb	r4, [r0, #33]	@ zero_extendqisi2
 399 0014 012C     		cmp	r4, #1
 400 0016 04D0     		beq	.L37
 419:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 401              		.loc 1 419 0
 402 0018 0023     		movs	r3, #0
 403              	.LVL30:
 404 001a 80F82030 		strb	r3, [r0, #32]
 405              	.LVL31:
 422:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }    
 406              		.loc 1 422 0
 407 001e 0220     		movs	r0, #2
 408              	.LVL32:
 409              	.L31:
 425:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 410              		.loc 1 425 0
 411 0020 38BD     		pop	{r3, r4, r5, pc}
 412              	.LVL33:
 413              	.L37:
 414 0022 0446     		mov	r4, r0
 392:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     hdma->ErrorCode = HAL_DMA_ERROR_NONE;
 415              		.loc 1 392 0
 416 0024 0220     		movs	r0, #2
 417              	.LVL34:
 418 0026 84F82100 		strb	r0, [r4, #33]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 25


 393:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     
 419              		.loc 1 393 0
 420 002a 0020     		movs	r0, #0
 421 002c A063     		str	r0, [r4, #56]
 396:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     
 422              		.loc 1 396 0
 423 002e 2568     		ldr	r5, [r4]
 424 0030 2868     		ldr	r0, [r5]
 425 0032 20F00100 		bic	r0, r0, #1
 426 0036 2860     		str	r0, [r5]
 399:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     
 427              		.loc 1 399 0
 428 0038 2046     		mov	r0, r4
 429 003a FFF7FEFF 		bl	DMA_SetConfig
 430              	.LVL35:
 403:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 431              		.loc 1 403 0
 432 003e E36A     		ldr	r3, [r4, #44]
 433 0040 5BB1     		cbz	r3, .L33
 406:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     }
 434              		.loc 1 406 0
 435 0042 2268     		ldr	r2, [r4]
 436 0044 1368     		ldr	r3, [r2]
 437 0046 43F00E03 		orr	r3, r3, #14
 438 004a 1360     		str	r3, [r2]
 439              	.L34:
 414:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 440              		.loc 1 414 0
 441 004c 2268     		ldr	r2, [r4]
 442 004e 1368     		ldr	r3, [r2]
 443 0050 43F00103 		orr	r3, r3, #1
 444 0054 1360     		str	r3, [r2]
 381:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 445              		.loc 1 381 0
 446 0056 0020     		movs	r0, #0
 447 0058 E2E7     		b	.L31
 448              	.L33:
 410:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       __HAL_DMA_ENABLE_IT(hdma, (DMA_IT_TC | DMA_IT_TE));
 449              		.loc 1 410 0
 450 005a 2268     		ldr	r2, [r4]
 451 005c 1368     		ldr	r3, [r2]
 452 005e 23F00403 		bic	r3, r3, #4
 453 0062 1360     		str	r3, [r2]
 411:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     }
 454              		.loc 1 411 0
 455 0064 2268     		ldr	r2, [r4]
 456 0066 1368     		ldr	r3, [r2]
 457 0068 43F00A03 		orr	r3, r3, #10
 458 006c 1360     		str	r3, [r2]
 459 006e EDE7     		b	.L34
 460              	.LVL36:
 461              	.L35:
 387:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 462              		.loc 1 387 0
 463 0070 0220     		movs	r0, #2
 464              	.LVL37:
 465 0072 D5E7     		b	.L31
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 26


 466              		.cfi_endproc
 467              	.LFE69:
 469              		.section	.text.HAL_DMA_Abort,"ax",%progbits
 470              		.align	1
 471              		.global	HAL_DMA_Abort
 472              		.syntax unified
 473              		.thumb
 474              		.thumb_func
 475              		.fpu softvfp
 477              	HAL_DMA_Abort:
 478              	.LFB70:
 434:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 479              		.loc 1 434 0
 480              		.cfi_startproc
 481              		@ args = 0, pretend = 0, frame = 0
 482              		@ frame_needed = 0, uses_anonymous_args = 0
 483              		@ link register save eliminated.
 484              	.LVL38:
 485 0000 0346     		mov	r3, r0
 486              	.LVL39:
 438:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     
 487              		.loc 1 438 0
 488 0002 0168     		ldr	r1, [r0]
 489 0004 0A68     		ldr	r2, [r1]
 490 0006 22F00E02 		bic	r2, r2, #14
 491 000a 0A60     		str	r2, [r1]
 441:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     
 492              		.loc 1 441 0
 493 000c 0168     		ldr	r1, [r0]
 494 000e 0A68     		ldr	r2, [r1]
 495 0010 22F00102 		bic	r2, r2, #1
 496 0014 0A60     		str	r2, [r1]
 444:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 497              		.loc 1 444 0
 498 0016 026C     		ldr	r2, [r0, #64]
 499 0018 C06B     		ldr	r0, [r0, #60]
 500              	.LVL40:
 501 001a 0121     		movs	r1, #1
 502 001c 01FA02F2 		lsl	r2, r1, r2
 503 0020 4260     		str	r2, [r0, #4]
 447:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 504              		.loc 1 447 0
 505 0022 83F82110 		strb	r1, [r3, #33]
 450:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 506              		.loc 1 450 0
 507 0026 0020     		movs	r0, #0
 508 0028 83F82000 		strb	r0, [r3, #32]
 453:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 509              		.loc 1 453 0
 510 002c 7047     		bx	lr
 511              		.cfi_endproc
 512              	.LFE70:
 514              		.section	.text.HAL_DMA_Abort_IT,"ax",%progbits
 515              		.align	1
 516              		.global	HAL_DMA_Abort_IT
 517              		.syntax unified
 518              		.thumb
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 27


 519              		.thumb_func
 520              		.fpu softvfp
 522              	HAL_DMA_Abort_IT:
 523              	.LFB71:
 462:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 524              		.loc 1 462 0
 525              		.cfi_startproc
 526              		@ args = 0, pretend = 0, frame = 0
 527              		@ frame_needed = 0, uses_anonymous_args = 0
 528              	.LVL41:
 529 0000 08B5     		push	{r3, lr}
 530              	.LCFI9:
 531              		.cfi_def_cfa_offset 8
 532              		.cfi_offset 3, -8
 533              		.cfi_offset 14, -4
 534              	.LVL42:
 465:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 535              		.loc 1 465 0
 536 0002 90F82130 		ldrb	r3, [r0, #33]	@ zero_extendqisi2
 537 0006 022B     		cmp	r3, #2
 538 0008 03D0     		beq	.L40
 468:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****         
 539              		.loc 1 468 0
 540 000a 0423     		movs	r3, #4
 541 000c 8363     		str	r3, [r0, #56]
 542              	.LVL43:
 470:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 543              		.loc 1 470 0
 544 000e 0120     		movs	r0, #1
 545              	.LVL44:
 546              	.L41:
 496:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 547              		.loc 1 496 0
 548 0010 08BD     		pop	{r3, pc}
 549              	.LVL45:
 550              	.L40:
 475:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 551              		.loc 1 475 0
 552 0012 0268     		ldr	r2, [r0]
 553 0014 1368     		ldr	r3, [r2]
 554 0016 23F00E03 		bic	r3, r3, #14
 555 001a 1360     		str	r3, [r2]
 478:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 556              		.loc 1 478 0
 557 001c 0268     		ldr	r2, [r0]
 558 001e 1368     		ldr	r3, [r2]
 559 0020 23F00103 		bic	r3, r3, #1
 560 0024 1360     		str	r3, [r2]
 481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 561              		.loc 1 481 0
 562 0026 0368     		ldr	r3, [r0]
 563 0028 194A     		ldr	r2, .L52
 564 002a 9342     		cmp	r3, r2
 565 002c 14D0     		beq	.L43
 481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 566              		.loc 1 481 0 is_stmt 0 discriminator 1
 567 002e 1432     		adds	r2, r2, #20
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 28


 568 0030 9342     		cmp	r3, r2
 569 0032 1FD0     		beq	.L44
 481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 570              		.loc 1 481 0 discriminator 3
 571 0034 1432     		adds	r2, r2, #20
 572 0036 9342     		cmp	r3, r2
 573 0038 1ED0     		beq	.L45
 481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 574              		.loc 1 481 0 discriminator 5
 575 003a 1432     		adds	r2, r2, #20
 576 003c 9342     		cmp	r3, r2
 577 003e 1ED0     		beq	.L46
 481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 578              		.loc 1 481 0 discriminator 7
 579 0040 1432     		adds	r2, r2, #20
 580 0042 9342     		cmp	r3, r2
 581 0044 1ED0     		beq	.L47
 481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 582              		.loc 1 481 0 discriminator 9
 583 0046 1432     		adds	r2, r2, #20
 584 0048 9342     		cmp	r3, r2
 585 004a 02D0     		beq	.L51
 481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 586              		.loc 1 481 0
 587 004c 4FF08072 		mov	r2, #16777216
 588 0050 03E0     		b	.L42
 589              	.L51:
 590 0052 4FF48012 		mov	r2, #1048576
 591 0056 00E0     		b	.L42
 592              	.L43:
 593 0058 0122     		movs	r2, #1
 594              	.L42:
 481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 595              		.loc 1 481 0 discriminator 24
 596 005a 0E4B     		ldr	r3, .L52+4
 597 005c 5A60     		str	r2, [r3, #4]
 484:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 598              		.loc 1 484 0 is_stmt 1 discriminator 24
 599 005e 0123     		movs	r3, #1
 600 0060 80F82130 		strb	r3, [r0, #33]
 487:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 601              		.loc 1 487 0 discriminator 24
 602 0064 0023     		movs	r3, #0
 603 0066 80F82030 		strb	r3, [r0, #32]
 490:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 604              		.loc 1 490 0 discriminator 24
 605 006a 436B     		ldr	r3, [r0, #52]
 606 006c 6BB1     		cbz	r3, .L49
 492:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     } 
 607              		.loc 1 492 0
 608 006e 9847     		blx	r3
 609              	.LVL46:
 463:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 610              		.loc 1 463 0
 611 0070 0020     		movs	r0, #0
 612 0072 CDE7     		b	.L41
 613              	.LVL47:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 29


 614              	.L44:
 481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 615              		.loc 1 481 0
 616 0074 1022     		movs	r2, #16
 617 0076 F0E7     		b	.L42
 618              	.L45:
 619 0078 4FF48072 		mov	r2, #256
 620 007c EDE7     		b	.L42
 621              	.L46:
 622 007e 4FF48052 		mov	r2, #4096
 623 0082 EAE7     		b	.L42
 624              	.L47:
 625 0084 4FF48032 		mov	r2, #65536
 626 0088 E7E7     		b	.L42
 627              	.L49:
 463:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 628              		.loc 1 463 0
 629 008a 0020     		movs	r0, #0
 630              	.LVL48:
 631 008c C0E7     		b	.L41
 632              	.L53:
 633 008e 00BF     		.align	2
 634              	.L52:
 635 0090 08000240 		.word	1073872904
 636 0094 00000240 		.word	1073872896
 637              		.cfi_endproc
 638              	.LFE71:
 640              		.section	.text.HAL_DMA_PollForTransfer,"ax",%progbits
 641              		.align	1
 642              		.global	HAL_DMA_PollForTransfer
 643              		.syntax unified
 644              		.thumb
 645              		.thumb_func
 646              		.fpu softvfp
 648              	HAL_DMA_PollForTransfer:
 649              	.LFB72:
 507:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   uint32_t temp;
 650              		.loc 1 507 0
 651              		.cfi_startproc
 652              		@ args = 0, pretend = 0, frame = 0
 653              		@ frame_needed = 0, uses_anonymous_args = 0
 654              	.LVL49:
 511:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 655              		.loc 1 511 0
 656 0000 90F82130 		ldrb	r3, [r0, #33]	@ zero_extendqisi2
 657 0004 022B     		cmp	r3, #2
 658 0006 06D0     		beq	.L55
 514:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     __HAL_UNLOCK(hdma);
 659              		.loc 1 514 0
 660 0008 0423     		movs	r3, #4
 661 000a 8363     		str	r3, [r0, #56]
 515:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     return HAL_ERROR;
 662              		.loc 1 515 0
 663 000c 0023     		movs	r3, #0
 664 000e 80F82030 		strb	r3, [r0, #32]
 516:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 665              		.loc 1 516 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 30


 666 0012 0120     		movs	r0, #1
 667              	.LVL50:
 599:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 668              		.loc 1 599 0
 669 0014 7047     		bx	lr
 670              	.LVL51:
 671              	.L55:
 507:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   uint32_t temp;
 672              		.loc 1 507 0
 673 0016 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 674              	.LCFI10:
 675              		.cfi_def_cfa_offset 24
 676              		.cfi_offset 4, -24
 677              		.cfi_offset 5, -20
 678              		.cfi_offset 6, -16
 679              		.cfi_offset 7, -12
 680              		.cfi_offset 8, -8
 681              		.cfi_offset 14, -4
 520:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 682              		.loc 1 520 0
 683 001a 0368     		ldr	r3, [r0]
 684 001c 1C68     		ldr	r4, [r3]
 685 001e 14F0200F 		tst	r4, #32
 686 0022 15D1     		bne	.L103
 527:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 687              		.loc 1 527 0
 688 0024 E9B9     		cbnz	r1, .L58
 530:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 689              		.loc 1 530 0
 690 0026 7F4C     		ldr	r4, .L112
 691 0028 A342     		cmp	r3, r4
 692 002a 32D0     		beq	.L70
 530:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 693              		.loc 1 530 0 is_stmt 0 discriminator 1
 694 002c 1434     		adds	r4, r4, #20
 695 002e A342     		cmp	r3, r4
 696 0030 37D0     		beq	.L71
 530:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 697              		.loc 1 530 0 discriminator 3
 698 0032 1434     		adds	r4, r4, #20
 699 0034 A342     		cmp	r3, r4
 700 0036 36D0     		beq	.L72
 530:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 701              		.loc 1 530 0 discriminator 5
 702 0038 1434     		adds	r4, r4, #20
 703 003a A342     		cmp	r3, r4
 704 003c 36D0     		beq	.L73
 530:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 705              		.loc 1 530 0 discriminator 7
 706 003e 1434     		adds	r4, r4, #20
 707 0040 A342     		cmp	r3, r4
 708 0042 36D0     		beq	.L74
 530:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 709              		.loc 1 530 0 discriminator 9
 710 0044 1434     		adds	r4, r4, #20
 711 0046 A342     		cmp	r3, r4
 712 0048 08D0     		beq	.L104
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 31


 530:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 713              		.loc 1 530 0
 714 004a 4FF00076 		mov	r6, #33554432
 715 004e 21E0     		b	.L59
 716              	.L103:
 522:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     return HAL_ERROR;
 717              		.loc 1 522 0 is_stmt 1
 718 0050 4FF48073 		mov	r3, #256
 719 0054 8363     		str	r3, [r0, #56]
 523:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 720              		.loc 1 523 0
 721 0056 0120     		movs	r0, #1
 722              	.LVL52:
 723              	.L56:
 599:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 724              		.loc 1 599 0
 725 0058 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 726              	.LVL53:
 727              	.L104:
 530:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 728              		.loc 1 530 0
 729 005c 4FF40016 		mov	r6, #2097152
 730 0060 18E0     		b	.L59
 731              	.L58:
 535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 732              		.loc 1 535 0
 733 0062 704C     		ldr	r4, .L112
 734 0064 A342     		cmp	r3, r4
 735 0066 27D0     		beq	.L76
 535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 736              		.loc 1 535 0 is_stmt 0 discriminator 1
 737 0068 1434     		adds	r4, r4, #20
 738 006a A342     		cmp	r3, r4
 739 006c 26D0     		beq	.L77
 535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 740              		.loc 1 535 0 discriminator 3
 741 006e 1434     		adds	r4, r4, #20
 742 0070 A342     		cmp	r3, r4
 743 0072 25D0     		beq	.L78
 535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 744              		.loc 1 535 0 discriminator 5
 745 0074 1434     		adds	r4, r4, #20
 746 0076 A342     		cmp	r3, r4
 747 0078 25D0     		beq	.L79
 535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 748              		.loc 1 535 0 discriminator 7
 749 007a 1434     		adds	r4, r4, #20
 750 007c A342     		cmp	r3, r4
 751 007e 25D0     		beq	.L80
 535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 752              		.loc 1 535 0 discriminator 9
 753 0080 1434     		adds	r4, r4, #20
 754 0082 A342     		cmp	r3, r4
 755 0084 02D0     		beq	.L105
 535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 756              		.loc 1 535 0
 757 0086 4FF08066 		mov	r6, #67108864
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 32


 758 008a 03E0     		b	.L59
 759              	.L105:
 760 008c 4FF48006 		mov	r6, #4194304
 761 0090 00E0     		b	.L59
 762              	.L70:
 530:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 763              		.loc 1 530 0 is_stmt 1
 764 0092 0226     		movs	r6, #2
 765              	.L59:
 766 0094 1546     		mov	r5, r2
 767 0096 0F46     		mov	r7, r1
 768 0098 0446     		mov	r4, r0
 769              	.LVL54:
 539:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 770              		.loc 1 539 0
 771 009a FFF7FEFF 		bl	HAL_GetTick
 772              	.LVL55:
 773 009e 8046     		mov	r8, r0
 774              	.LVL56:
 541:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 775              		.loc 1 541 0
 776 00a0 20E0     		b	.L63
 777              	.LVL57:
 778              	.L71:
 530:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 779              		.loc 1 530 0
 780 00a2 2026     		movs	r6, #32
 781 00a4 F6E7     		b	.L59
 782              	.L72:
 783 00a6 4FF40076 		mov	r6, #512
 784 00aa F3E7     		b	.L59
 785              	.L73:
 786 00ac 4FF40056 		mov	r6, #8192
 787 00b0 F0E7     		b	.L59
 788              	.L74:
 789 00b2 4FF40036 		mov	r6, #131072
 790 00b6 EDE7     		b	.L59
 791              	.L76:
 535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 792              		.loc 1 535 0
 793 00b8 0426     		movs	r6, #4
 794 00ba EBE7     		b	.L59
 795              	.L77:
 796 00bc 4026     		movs	r6, #64
 797 00be E9E7     		b	.L59
 798              	.L78:
 799 00c0 4FF48066 		mov	r6, #1024
 800 00c4 E6E7     		b	.L59
 801              	.L79:
 802 00c6 4FF48046 		mov	r6, #16384
 803 00ca E3E7     		b	.L59
 804              	.L80:
 805 00cc 4FF48026 		mov	r6, #262144
 806 00d0 E0E7     		b	.L59
 807              	.LVL58:
 808              	.L109:
 543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 33


 809              		.loc 1 543 0
 810 00d2 4FF40003 		mov	r3, #8388608
 811 00d6 00E0     		b	.L61
 812              	.L82:
 813 00d8 0823     		movs	r3, #8
 814              	.L61:
 543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 815              		.loc 1 543 0 is_stmt 0 discriminator 24
 816 00da 1A42     		tst	r2, r3
 817 00dc 29D1     		bne	.L106
 562:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 818              		.loc 1 562 0 is_stmt 1
 819 00de B5F1FF3F 		cmp	r5, #-1
 820 00e2 35D1     		bne	.L107
 821              	.L63:
 541:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 822              		.loc 1 541 0
 823 00e4 504B     		ldr	r3, .L112+4
 824 00e6 1B68     		ldr	r3, [r3]
 825 00e8 3342     		tst	r3, r6
 826 00ea 43D1     		bne	.L108
 543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 827              		.loc 1 543 0
 828 00ec 4E4B     		ldr	r3, .L112+4
 829 00ee 1A68     		ldr	r2, [r3]
 830 00f0 2368     		ldr	r3, [r4]
 831 00f2 4C49     		ldr	r1, .L112
 832 00f4 8B42     		cmp	r3, r1
 833 00f6 EFD0     		beq	.L82
 543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 834              		.loc 1 543 0 is_stmt 0 discriminator 1
 835 00f8 1431     		adds	r1, r1, #20
 836 00fa 8B42     		cmp	r3, r1
 837 00fc 0ED0     		beq	.L83
 543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 838              		.loc 1 543 0 discriminator 3
 839 00fe 1431     		adds	r1, r1, #20
 840 0100 8B42     		cmp	r3, r1
 841 0102 0DD0     		beq	.L84
 543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 842              		.loc 1 543 0 discriminator 5
 843 0104 1431     		adds	r1, r1, #20
 844 0106 8B42     		cmp	r3, r1
 845 0108 0DD0     		beq	.L85
 543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 846              		.loc 1 543 0 discriminator 7
 847 010a 1431     		adds	r1, r1, #20
 848 010c 8B42     		cmp	r3, r1
 849 010e 0DD0     		beq	.L86
 543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 850              		.loc 1 543 0 discriminator 9
 851 0110 1431     		adds	r1, r1, #20
 852 0112 8B42     		cmp	r3, r1
 853 0114 DDD0     		beq	.L109
 543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 854              		.loc 1 543 0
 855 0116 4FF00063 		mov	r3, #134217728
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 34


 856 011a DEE7     		b	.L61
 857              	.L83:
 858 011c 8023     		movs	r3, #128
 859 011e DCE7     		b	.L61
 860              	.L84:
 861 0120 4FF40063 		mov	r3, #2048
 862 0124 D9E7     		b	.L61
 863              	.L85:
 864 0126 4FF40043 		mov	r3, #32768
 865 012a D6E7     		b	.L61
 866              	.L86:
 867 012c 4FF40023 		mov	r3, #524288
 868 0130 D3E7     		b	.L61
 869              	.L106:
 548:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 870              		.loc 1 548 0 is_stmt 1
 871 0132 236C     		ldr	r3, [r4, #64]
 872 0134 E26B     		ldr	r2, [r4, #60]
 873 0136 0120     		movs	r0, #1
 874 0138 00FA03F3 		lsl	r3, r0, r3
 875 013c 5360     		str	r3, [r2, #4]
 551:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 876              		.loc 1 551 0
 877 013e A36B     		ldr	r3, [r4, #56]
 878 0140 0343     		orrs	r3, r3, r0
 879 0142 A363     		str	r3, [r4, #56]
 554:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 880              		.loc 1 554 0
 881 0144 84F82100 		strb	r0, [r4, #33]
 557:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 882              		.loc 1 557 0
 883 0148 0023     		movs	r3, #0
 884 014a 84F82030 		strb	r3, [r4, #32]
 559:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     }
 885              		.loc 1 559 0
 886 014e 83E7     		b	.L56
 887              	.L107:
 564:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       {
 888              		.loc 1 564 0
 889 0150 2DB1     		cbz	r5, .L64
 564:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       {
 890              		.loc 1 564 0 is_stmt 0 discriminator 1
 891 0152 FFF7FEFF 		bl	HAL_GetTick
 892              	.LVL59:
 893 0156 A0EB0800 		sub	r0, r0, r8
 894 015a A842     		cmp	r0, r5
 895 015c C2D9     		bls	.L63
 896              	.L64:
 567:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 897              		.loc 1 567 0 is_stmt 1
 898 015e A36B     		ldr	r3, [r4, #56]
 899 0160 43F02003 		orr	r3, r3, #32
 900 0164 A363     		str	r3, [r4, #56]
 570:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 901              		.loc 1 570 0
 902 0166 0120     		movs	r0, #1
 903 0168 84F82100 		strb	r0, [r4, #33]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 35


 573:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 904              		.loc 1 573 0
 905 016c 0023     		movs	r3, #0
 906 016e 84F82030 		strb	r3, [r4, #32]
 575:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       }
 907              		.loc 1 575 0
 908 0172 71E7     		b	.L56
 909              	.L108:
 580:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 910              		.loc 1 580 0
 911 0174 6FBB     		cbnz	r7, .L66
 583:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 912              		.loc 1 583 0
 913 0176 2368     		ldr	r3, [r4]
 914 0178 2A4A     		ldr	r2, .L112
 915 017a 9342     		cmp	r3, r2
 916 017c 14D0     		beq	.L88
 583:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 917              		.loc 1 583 0 is_stmt 0 discriminator 1
 918 017e 1432     		adds	r2, r2, #20
 919 0180 9342     		cmp	r3, r2
 920 0182 1BD0     		beq	.L89
 583:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 921              		.loc 1 583 0 discriminator 3
 922 0184 1432     		adds	r2, r2, #20
 923 0186 9342     		cmp	r3, r2
 924 0188 1AD0     		beq	.L90
 583:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 925              		.loc 1 583 0 discriminator 5
 926 018a 1432     		adds	r2, r2, #20
 927 018c 9342     		cmp	r3, r2
 928 018e 1AD0     		beq	.L91
 583:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 929              		.loc 1 583 0 discriminator 7
 930 0190 1432     		adds	r2, r2, #20
 931 0192 9342     		cmp	r3, r2
 932 0194 1AD0     		beq	.L92
 583:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 933              		.loc 1 583 0 discriminator 9
 934 0196 1432     		adds	r2, r2, #20
 935 0198 9342     		cmp	r3, r2
 936 019a 02D0     		beq	.L110
 583:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 937              		.loc 1 583 0
 938 019c 4FF00072 		mov	r2, #33554432
 939 01a0 03E0     		b	.L67
 940              	.L110:
 941 01a2 4FF40012 		mov	r2, #2097152
 942 01a6 00E0     		b	.L67
 943              	.L88:
 944 01a8 0222     		movs	r2, #2
 945              	.L67:
 583:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 946              		.loc 1 583 0 discriminator 24
 947 01aa 1F4B     		ldr	r3, .L112+4
 948 01ac 5A60     		str	r2, [r3, #4]
 587:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 36


 949              		.loc 1 587 0 is_stmt 1 discriminator 24
 950 01ae 0123     		movs	r3, #1
 951 01b0 84F82130 		strb	r3, [r4, #33]
 952              	.L68:
 596:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 953              		.loc 1 596 0
 954 01b4 0020     		movs	r0, #0
 955 01b6 84F82000 		strb	r0, [r4, #32]
 598:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** }
 956              		.loc 1 598 0
 957 01ba 4DE7     		b	.L56
 958              	.L89:
 583:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 959              		.loc 1 583 0
 960 01bc 2022     		movs	r2, #32
 961 01be F4E7     		b	.L67
 962              	.L90:
 963 01c0 4FF40072 		mov	r2, #512
 964 01c4 F1E7     		b	.L67
 965              	.L91:
 966 01c6 4FF40052 		mov	r2, #8192
 967 01ca EEE7     		b	.L67
 968              	.L92:
 969 01cc 4FF40032 		mov	r2, #131072
 970 01d0 EBE7     		b	.L67
 971              	.L66:
 592:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 972              		.loc 1 592 0
 973 01d2 2368     		ldr	r3, [r4]
 974 01d4 134A     		ldr	r2, .L112
 975 01d6 9342     		cmp	r3, r2
 976 01d8 14D0     		beq	.L94
 592:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 977              		.loc 1 592 0 is_stmt 0 discriminator 1
 978 01da 1432     		adds	r2, r2, #20
 979 01dc 9342     		cmp	r3, r2
 980 01de 15D0     		beq	.L95
 592:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 981              		.loc 1 592 0 discriminator 3
 982 01e0 1432     		adds	r2, r2, #20
 983 01e2 9342     		cmp	r3, r2
 984 01e4 14D0     		beq	.L96
 592:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 985              		.loc 1 592 0 discriminator 5
 986 01e6 1432     		adds	r2, r2, #20
 987 01e8 9342     		cmp	r3, r2
 988 01ea 14D0     		beq	.L97
 592:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 989              		.loc 1 592 0 discriminator 7
 990 01ec 1432     		adds	r2, r2, #20
 991 01ee 9342     		cmp	r3, r2
 992 01f0 14D0     		beq	.L98
 592:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 993              		.loc 1 592 0 discriminator 9
 994 01f2 1432     		adds	r2, r2, #20
 995 01f4 9342     		cmp	r3, r2
 996 01f6 02D0     		beq	.L111
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 37


 592:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 997              		.loc 1 592 0
 998 01f8 4FF08062 		mov	r2, #67108864
 999 01fc 03E0     		b	.L69
 1000              	.L111:
 1001 01fe 4FF48002 		mov	r2, #4194304
 1002 0202 00E0     		b	.L69
 1003              	.L94:
 1004 0204 0422     		movs	r2, #4
 1005              	.L69:
 592:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 1006              		.loc 1 592 0 discriminator 24
 1007 0206 084B     		ldr	r3, .L112+4
 1008 0208 5A60     		str	r2, [r3, #4]
 1009 020a D3E7     		b	.L68
 1010              	.L95:
 592:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   }
 1011              		.loc 1 592 0
 1012 020c 4022     		movs	r2, #64
 1013 020e FAE7     		b	.L69
 1014              	.L96:
 1015 0210 4FF48062 		mov	r2, #1024
 1016 0214 F7E7     		b	.L69
 1017              	.L97:
 1018 0216 4FF48042 		mov	r2, #16384
 1019 021a F4E7     		b	.L69
 1020              	.L98:
 1021 021c 4FF48022 		mov	r2, #262144
 1022 0220 F1E7     		b	.L69
 1023              	.L113:
 1024 0222 00BF     		.align	2
 1025              	.L112:
 1026 0224 08000240 		.word	1073872904
 1027 0228 00000240 		.word	1073872896
 1028              		.cfi_endproc
 1029              	.LFE72:
 1031              		.section	.text.HAL_DMA_IRQHandler,"ax",%progbits
 1032              		.align	1
 1033              		.global	HAL_DMA_IRQHandler
 1034              		.syntax unified
 1035              		.thumb
 1036              		.thumb_func
 1037              		.fpu softvfp
 1039              	HAL_DMA_IRQHandler:
 1040              	.LFB73:
 608:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   uint32_t flag_it = hdma->DmaBaseAddress->ISR;
 1041              		.loc 1 608 0 is_stmt 1
 1042              		.cfi_startproc
 1043              		@ args = 0, pretend = 0, frame = 0
 1044              		@ frame_needed = 0, uses_anonymous_args = 0
 1045              	.LVL60:
 1046 0000 38B5     		push	{r3, r4, r5, lr}
 1047              	.LCFI11:
 1048              		.cfi_def_cfa_offset 16
 1049              		.cfi_offset 3, -16
 1050              		.cfi_offset 4, -12
 1051              		.cfi_offset 5, -8
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 38


 1052              		.cfi_offset 14, -4
 609:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   uint32_t source_it = hdma->Instance->CCR;
 1053              		.loc 1 609 0
 1054 0002 C36B     		ldr	r3, [r0, #60]
 1055 0004 1A68     		ldr	r2, [r3]
 1056              	.LVL61:
 610:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 1057              		.loc 1 610 0
 1058 0006 0468     		ldr	r4, [r0]
 1059 0008 2568     		ldr	r5, [r4]
 1060              	.LVL62:
 613:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 1061              		.loc 1 613 0
 1062 000a 016C     		ldr	r1, [r0, #64]
 1063 000c 0423     		movs	r3, #4
 1064 000e 8B40     		lsls	r3, r3, r1
 1065 0010 1342     		tst	r3, r2
 1066 0012 35D0     		beq	.L115
 613:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 1067              		.loc 1 613 0 is_stmt 0 discriminator 1
 1068 0014 15F0040F 		tst	r5, #4
 1069 0018 32D0     		beq	.L115
 616:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 1070              		.loc 1 616 0 is_stmt 1
 1071 001a 2368     		ldr	r3, [r4]
 1072 001c 13F0200F 		tst	r3, #32
 1073 0020 03D1     		bne	.L116
 619:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     }
 1074              		.loc 1 619 0
 1075 0022 2368     		ldr	r3, [r4]
 1076 0024 23F00403 		bic	r3, r3, #4
 1077 0028 2360     		str	r3, [r4]
 1078              	.L116:
 622:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1079              		.loc 1 622 0
 1080 002a 0368     		ldr	r3, [r0]
 1081 002c 434A     		ldr	r2, .L137
 1082              	.LVL63:
 1083 002e 9342     		cmp	r3, r2
 1084 0030 14D0     		beq	.L122
 622:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1085              		.loc 1 622 0 is_stmt 0 discriminator 1
 1086 0032 1432     		adds	r2, r2, #20
 1087 0034 9342     		cmp	r3, r2
 1088 0036 18D0     		beq	.L123
 622:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1089              		.loc 1 622 0 discriminator 3
 1090 0038 1432     		adds	r2, r2, #20
 1091 003a 9342     		cmp	r3, r2
 1092 003c 17D0     		beq	.L124
 622:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1093              		.loc 1 622 0 discriminator 5
 1094 003e 1432     		adds	r2, r2, #20
 1095 0040 9342     		cmp	r3, r2
 1096 0042 17D0     		beq	.L125
 622:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1097              		.loc 1 622 0 discriminator 7
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 39


 1098 0044 1432     		adds	r2, r2, #20
 1099 0046 9342     		cmp	r3, r2
 1100 0048 17D0     		beq	.L126
 622:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1101              		.loc 1 622 0 discriminator 9
 1102 004a 1432     		adds	r2, r2, #20
 1103 004c 9342     		cmp	r3, r2
 1104 004e 02D0     		beq	.L135
 622:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1105              		.loc 1 622 0
 1106 0050 4FF08062 		mov	r2, #67108864
 1107 0054 03E0     		b	.L117
 1108              	.L135:
 1109 0056 4FF48002 		mov	r2, #4194304
 1110 005a 00E0     		b	.L117
 1111              	.L122:
 1112 005c 0422     		movs	r2, #4
 1113              	.L117:
 622:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1114              		.loc 1 622 0 discriminator 24
 1115 005e 384B     		ldr	r3, .L137+4
 1116 0060 5A60     		str	r2, [r3, #4]
 627:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 1117              		.loc 1 627 0 is_stmt 1 discriminator 24
 1118 0062 C36A     		ldr	r3, [r0, #44]
 1119 0064 03B1     		cbz	r3, .L114
 630:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     }
 1120              		.loc 1 630 0
 1121 0066 9847     		blx	r3
 1122              	.LVL64:
 1123              	.L114:
 685:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1124              		.loc 1 685 0
 1125 0068 38BD     		pop	{r3, r4, r5, pc}
 1126              	.LVL65:
 1127              	.L123:
 622:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1128              		.loc 1 622 0
 1129 006a 4022     		movs	r2, #64
 1130 006c F7E7     		b	.L117
 1131              	.L124:
 1132 006e 4FF48062 		mov	r2, #1024
 1133 0072 F4E7     		b	.L117
 1134              	.L125:
 1135 0074 4FF48042 		mov	r2, #16384
 1136 0078 F1E7     		b	.L117
 1137              	.L126:
 1138 007a 4FF48022 		mov	r2, #262144
 1139 007e EEE7     		b	.L117
 1140              	.LVL66:
 1141              	.L115:
 635:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 1142              		.loc 1 635 0
 1143 0080 0223     		movs	r3, #2
 1144 0082 8B40     		lsls	r3, r3, r1
 1145 0084 1342     		tst	r3, r2
 1146 0086 3CD0     		beq	.L119
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 40


 635:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 1147              		.loc 1 635 0 is_stmt 0 discriminator 1
 1148 0088 15F0020F 		tst	r5, #2
 1149 008c 39D0     		beq	.L119
 637:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 1150              		.loc 1 637 0 is_stmt 1
 1151 008e 2368     		ldr	r3, [r4]
 1152 0090 13F0200F 		tst	r3, #32
 1153 0094 06D1     		bne	.L120
 640:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1154              		.loc 1 640 0
 1155 0096 2368     		ldr	r3, [r4]
 1156 0098 23F00A03 		bic	r3, r3, #10
 1157 009c 2360     		str	r3, [r4]
 643:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     }
 1158              		.loc 1 643 0
 1159 009e 0123     		movs	r3, #1
 1160 00a0 80F82130 		strb	r3, [r0, #33]
 1161              	.L120:
 646:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1162              		.loc 1 646 0
 1163 00a4 0368     		ldr	r3, [r0]
 1164 00a6 254A     		ldr	r2, .L137
 1165              	.LVL67:
 1166 00a8 9342     		cmp	r3, r2
 1167 00aa 14D0     		beq	.L128
 646:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1168              		.loc 1 646 0 is_stmt 0 discriminator 1
 1169 00ac 1432     		adds	r2, r2, #20
 1170 00ae 9342     		cmp	r3, r2
 1171 00b0 1CD0     		beq	.L129
 646:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1172              		.loc 1 646 0 discriminator 3
 1173 00b2 1432     		adds	r2, r2, #20
 1174 00b4 9342     		cmp	r3, r2
 1175 00b6 1BD0     		beq	.L130
 646:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1176              		.loc 1 646 0 discriminator 5
 1177 00b8 1432     		adds	r2, r2, #20
 1178 00ba 9342     		cmp	r3, r2
 1179 00bc 1BD0     		beq	.L131
 646:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1180              		.loc 1 646 0 discriminator 7
 1181 00be 1432     		adds	r2, r2, #20
 1182 00c0 9342     		cmp	r3, r2
 1183 00c2 1BD0     		beq	.L132
 646:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1184              		.loc 1 646 0 discriminator 9
 1185 00c4 1432     		adds	r2, r2, #20
 1186 00c6 9342     		cmp	r3, r2
 1187 00c8 02D0     		beq	.L136
 646:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1188              		.loc 1 646 0
 1189 00ca 4FF00072 		mov	r2, #33554432
 1190 00ce 03E0     		b	.L121
 1191              	.L136:
 1192 00d0 4FF40012 		mov	r2, #2097152
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 41


 1193 00d4 00E0     		b	.L121
 1194              	.L128:
 1195 00d6 0222     		movs	r2, #2
 1196              	.L121:
 646:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1197              		.loc 1 646 0 discriminator 24
 1198 00d8 194B     		ldr	r3, .L137+4
 1199 00da 5A60     		str	r2, [r3, #4]
 649:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1200              		.loc 1 649 0 is_stmt 1 discriminator 24
 1201 00dc 0023     		movs	r3, #0
 1202 00de 80F82030 		strb	r3, [r0, #32]
 651:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 1203              		.loc 1 651 0 discriminator 24
 1204 00e2 836A     		ldr	r3, [r0, #40]
 1205 00e4 002B     		cmp	r3, #0
 1206 00e6 BFD0     		beq	.L114
 654:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     }
 1207              		.loc 1 654 0
 1208 00e8 9847     		blx	r3
 1209              	.LVL68:
 1210 00ea BDE7     		b	.L114
 1211              	.LVL69:
 1212              	.L129:
 646:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1213              		.loc 1 646 0
 1214 00ec 2022     		movs	r2, #32
 1215 00ee F3E7     		b	.L121
 1216              	.L130:
 1217 00f0 4FF40072 		mov	r2, #512
 1218 00f4 F0E7     		b	.L121
 1219              	.L131:
 1220 00f6 4FF40052 		mov	r2, #8192
 1221 00fa EDE7     		b	.L121
 1222              	.L132:
 1223 00fc 4FF40032 		mov	r2, #131072
 1224 0100 EAE7     		b	.L121
 1225              	.LVL70:
 1226              	.L119:
 659:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 1227              		.loc 1 659 0
 1228 0102 0823     		movs	r3, #8
 1229 0104 03FA01F1 		lsl	r1, r3, r1
 1230 0108 1142     		tst	r1, r2
 1231 010a ADD0     		beq	.L114
 659:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 1232              		.loc 1 659 0 is_stmt 0 discriminator 1
 1233 010c 15F0080F 		tst	r5, #8
 1234 0110 AAD0     		beq	.L114
 664:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1235              		.loc 1 664 0 is_stmt 1
 1236 0112 2368     		ldr	r3, [r4]
 1237 0114 23F00E03 		bic	r3, r3, #14
 1238 0118 2360     		str	r3, [r4]
 667:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1239              		.loc 1 667 0
 1240 011a 026C     		ldr	r2, [r0, #64]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 42


 1241              	.LVL71:
 1242 011c C16B     		ldr	r1, [r0, #60]
 1243 011e 0123     		movs	r3, #1
 1244 0120 03FA02F2 		lsl	r2, r3, r2
 1245 0124 4A60     		str	r2, [r1, #4]
 670:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1246              		.loc 1 670 0
 1247 0126 8363     		str	r3, [r0, #56]
 673:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1248              		.loc 1 673 0
 1249 0128 80F82130 		strb	r3, [r0, #33]
 676:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1250              		.loc 1 676 0
 1251 012c 0023     		movs	r3, #0
 1252 012e 80F82030 		strb	r3, [r0, #32]
 678:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 1253              		.loc 1 678 0
 1254 0132 036B     		ldr	r3, [r0, #48]
 1255 0134 002B     		cmp	r3, #0
 1256 0136 97D0     		beq	.L114
 681:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     }
 1257              		.loc 1 681 0
 1258 0138 9847     		blx	r3
 1259              	.LVL72:
 684:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** }
 1260              		.loc 1 684 0
 1261 013a 95E7     		b	.L114
 1262              	.L138:
 1263              		.align	2
 1264              	.L137:
 1265 013c 08000240 		.word	1073872904
 1266 0140 00000240 		.word	1073872896
 1267              		.cfi_endproc
 1268              	.LFE73:
 1270              		.section	.text.HAL_DMA_RegisterCallback,"ax",%progbits
 1271              		.align	1
 1272              		.global	HAL_DMA_RegisterCallback
 1273              		.syntax unified
 1274              		.thumb
 1275              		.thumb_func
 1276              		.fpu softvfp
 1278              	HAL_DMA_RegisterCallback:
 1279              	.LFB74:
 698:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 1280              		.loc 1 698 0
 1281              		.cfi_startproc
 1282              		@ args = 0, pretend = 0, frame = 0
 1283              		@ frame_needed = 0, uses_anonymous_args = 0
 1284              		@ link register save eliminated.
 1285              	.LVL73:
 1286 0000 0346     		mov	r3, r0
 1287              	.LVL74:
 702:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 1288              		.loc 1 702 0
 1289 0002 90F82000 		ldrb	r0, [r0, #32]	@ zero_extendqisi2
 1290              	.LVL75:
 1291 0006 0128     		cmp	r0, #1
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 43


 1292 0008 1FD0     		beq	.L147
 702:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 1293              		.loc 1 702 0 is_stmt 0 discriminator 2
 1294 000a 0120     		movs	r0, #1
 1295 000c 83F82000 		strb	r0, [r3, #32]
 704:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 1296              		.loc 1 704 0 is_stmt 1 discriminator 2
 1297 0010 93F82100 		ldrb	r0, [r3, #33]	@ zero_extendqisi2
 1298 0014 0128     		cmp	r0, #1
 1299 0016 04D0     		beq	.L150
 731:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   } 
 1300              		.loc 1 731 0
 1301 0018 0120     		movs	r0, #1
 1302              	.L141:
 1303              	.LVL76:
 735:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 1304              		.loc 1 735 0
 1305 001a 0022     		movs	r2, #0
 1306              	.LVL77:
 1307 001c 83F82020 		strb	r2, [r3, #32]
 737:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** }
 1308              		.loc 1 737 0
 1309 0020 7047     		bx	lr
 1310              	.LVL78:
 1311              	.L150:
 706:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 1312              		.loc 1 706 0
 1313 0022 0329     		cmp	r1, #3
 1314 0024 0FD8     		bhi	.L149
 1315 0026 DFE801F0 		tbb	[pc, r1]
 1316              	.L143:
 1317 002a 02       		.byte	(.L142-.L143)/2
 1318 002b 05       		.byte	(.L144-.L143)/2
 1319 002c 08       		.byte	(.L145-.L143)/2
 1320 002d 0B       		.byte	(.L146-.L143)/2
 1321              		.p2align 1
 1322              	.L142:
 709:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       break;
 1323              		.loc 1 709 0
 1324 002e 9A62     		str	r2, [r3, #40]
 699:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 1325              		.loc 1 699 0
 1326 0030 0020     		movs	r0, #0
 710:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       
 1327              		.loc 1 710 0
 1328 0032 F2E7     		b	.L141
 1329              	.L144:
 713:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       break;         
 1330              		.loc 1 713 0
 1331 0034 DA62     		str	r2, [r3, #44]
 699:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 1332              		.loc 1 699 0
 1333 0036 0020     		movs	r0, #0
 714:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1334              		.loc 1 714 0
 1335 0038 EFE7     		b	.L141
 1336              	.L145:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 44


 717:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       break;         
 1337              		.loc 1 717 0
 1338 003a 1A63     		str	r2, [r3, #48]
 699:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 1339              		.loc 1 699 0
 1340 003c 0020     		movs	r0, #0
 718:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       
 1341              		.loc 1 718 0
 1342 003e ECE7     		b	.L141
 1343              	.L146:
 721:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       break; 
 1344              		.loc 1 721 0
 1345 0040 5A63     		str	r2, [r3, #52]
 699:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 1346              		.loc 1 699 0
 1347 0042 0020     		movs	r0, #0
 722:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       
 1348              		.loc 1 722 0
 1349 0044 E9E7     		b	.L141
 1350              	.L149:
 725:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       break;                                                            
 1351              		.loc 1 725 0
 1352 0046 0120     		movs	r0, #1
 1353 0048 E7E7     		b	.L141
 1354              	.L147:
 702:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 1355              		.loc 1 702 0
 1356 004a 0220     		movs	r0, #2
 738:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1357              		.loc 1 738 0
 1358 004c 7047     		bx	lr
 1359              		.cfi_endproc
 1360              	.LFE74:
 1362              		.section	.text.HAL_DMA_UnRegisterCallback,"ax",%progbits
 1363              		.align	1
 1364              		.global	HAL_DMA_UnRegisterCallback
 1365              		.syntax unified
 1366              		.thumb
 1367              		.thumb_func
 1368              		.fpu softvfp
 1370              	HAL_DMA_UnRegisterCallback:
 1371              	.LFB75:
 749:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 1372              		.loc 1 749 0
 1373              		.cfi_startproc
 1374              		@ args = 0, pretend = 0, frame = 0
 1375              		@ frame_needed = 0, uses_anonymous_args = 0
 1376              		@ link register save eliminated.
 1377              	.LVL79:
 1378 0000 0346     		mov	r3, r0
 1379              	.LVL80:
 753:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 1380              		.loc 1 753 0
 1381 0002 90F82020 		ldrb	r2, [r0, #32]	@ zero_extendqisi2
 1382 0006 012A     		cmp	r2, #1
 1383 0008 26D0     		beq	.L160
 753:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 45


 1384              		.loc 1 753 0 is_stmt 0 discriminator 2
 1385 000a 0122     		movs	r2, #1
 1386 000c 80F82020 		strb	r2, [r0, #32]
 755:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   {
 1387              		.loc 1 755 0 is_stmt 1 discriminator 2
 1388 0010 90F82120 		ldrb	r2, [r0, #33]	@ zero_extendqisi2
 1389 0014 012A     		cmp	r2, #1
 1390 0016 04D0     		beq	.L163
 789:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   } 
 1391              		.loc 1 789 0
 1392 0018 0120     		movs	r0, #1
 1393              	.LVL81:
 1394              	.L153:
 793:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 1395              		.loc 1 793 0
 1396 001a 0022     		movs	r2, #0
 1397 001c 83F82020 		strb	r2, [r3, #32]
 795:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** }
 1398              		.loc 1 795 0
 1399 0020 7047     		bx	lr
 1400              	.LVL82:
 1401              	.L163:
 757:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****     {
 1402              		.loc 1 757 0
 1403 0022 0429     		cmp	r1, #4
 1404 0024 16D8     		bhi	.L162
 1405 0026 DFE801F0 		tbb	[pc, r1]
 1406              	.L155:
 1407 002a 03       		.byte	(.L154-.L155)/2
 1408 002b 06       		.byte	(.L156-.L155)/2
 1409 002c 09       		.byte	(.L157-.L155)/2
 1410 002d 0C       		.byte	(.L158-.L155)/2
 1411 002e 0F       		.byte	(.L159-.L155)/2
 1412 002f 00       		.p2align 1
 1413              	.L154:
 760:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       break;
 1414              		.loc 1 760 0
 1415 0030 0020     		movs	r0, #0
 1416              	.LVL83:
 1417 0032 9862     		str	r0, [r3, #40]
 761:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1418              		.loc 1 761 0
 1419 0034 F1E7     		b	.L153
 1420              	.LVL84:
 1421              	.L156:
 764:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       break;         
 1422              		.loc 1 764 0
 1423 0036 0020     		movs	r0, #0
 1424              	.LVL85:
 1425 0038 D862     		str	r0, [r3, #44]
 765:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1426              		.loc 1 765 0
 1427 003a EEE7     		b	.L153
 1428              	.LVL86:
 1429              	.L157:
 768:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       break;         
 1430              		.loc 1 768 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 46


 1431 003c 0020     		movs	r0, #0
 1432              	.LVL87:
 1433 003e 1863     		str	r0, [r3, #48]
 769:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1434              		.loc 1 769 0
 1435 0040 EBE7     		b	.L153
 1436              	.LVL88:
 1437              	.L158:
 772:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       break; 
 1438              		.loc 1 772 0
 1439 0042 0020     		movs	r0, #0
 1440              	.LVL89:
 1441 0044 5863     		str	r0, [r3, #52]
 773:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1442              		.loc 1 773 0
 1443 0046 E8E7     		b	.L153
 1444              	.LVL90:
 1445              	.L159:
 776:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       hdma->XferHalfCpltCallback = NULL;
 1446              		.loc 1 776 0
 1447 0048 0020     		movs	r0, #0
 1448              	.LVL91:
 1449 004a 9862     		str	r0, [r3, #40]
 777:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       hdma->XferErrorCallback = NULL;
 1450              		.loc 1 777 0
 1451 004c D862     		str	r0, [r3, #44]
 778:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       hdma->XferAbortCallback = NULL;
 1452              		.loc 1 778 0
 1453 004e 1863     		str	r0, [r3, #48]
 779:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       break; 
 1454              		.loc 1 779 0
 1455 0050 5863     		str	r0, [r3, #52]
 780:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1456              		.loc 1 780 0
 1457 0052 E2E7     		b	.L153
 1458              	.LVL92:
 1459              	.L162:
 783:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****       break;
 1460              		.loc 1 783 0
 1461 0054 0120     		movs	r0, #1
 1462              	.LVL93:
 1463 0056 E0E7     		b	.L153
 1464              	.LVL94:
 1465              	.L160:
 753:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 1466              		.loc 1 753 0
 1467 0058 0220     		movs	r0, #2
 1468              	.LVL95:
 796:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   
 1469              		.loc 1 796 0
 1470 005a 7047     		bx	lr
 1471              		.cfi_endproc
 1472              	.LFE75:
 1474              		.section	.text.HAL_DMA_GetState,"ax",%progbits
 1475              		.align	1
 1476              		.global	HAL_DMA_GetState
 1477              		.syntax unified
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 47


 1478              		.thumb
 1479              		.thumb_func
 1480              		.fpu softvfp
 1482              	HAL_DMA_GetState:
 1483              	.LFB76:
 825:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   /* Return DMA handle state */
 1484              		.loc 1 825 0
 1485              		.cfi_startproc
 1486              		@ args = 0, pretend = 0, frame = 0
 1487              		@ frame_needed = 0, uses_anonymous_args = 0
 1488              		@ link register save eliminated.
 1489              	.LVL96:
 828:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1490              		.loc 1 828 0
 1491 0000 90F82100 		ldrb	r0, [r0, #33]	@ zero_extendqisi2
 1492              	.LVL97:
 1493 0004 7047     		bx	lr
 1494              		.cfi_endproc
 1495              	.LFE76:
 1497              		.section	.text.HAL_DMA_GetError,"ax",%progbits
 1498              		.align	1
 1499              		.global	HAL_DMA_GetError
 1500              		.syntax unified
 1501              		.thumb
 1502              		.thumb_func
 1503              		.fpu softvfp
 1505              	HAL_DMA_GetError:
 1506              	.LFB77:
 837:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c ****   return hdma->ErrorCode;
 1507              		.loc 1 837 0
 1508              		.cfi_startproc
 1509              		@ args = 0, pretend = 0, frame = 0
 1510              		@ frame_needed = 0, uses_anonymous_args = 0
 1511              		@ link register save eliminated.
 1512              	.LVL98:
 838:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** }
 1513              		.loc 1 838 0
 1514 0000 806B     		ldr	r0, [r0, #56]
 1515              	.LVL99:
 839:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c **** 
 1516              		.loc 1 839 0
 1517 0002 7047     		bx	lr
 1518              		.cfi_endproc
 1519              	.LFE77:
 1521              		.text
 1522              	.Letext0:
 1523              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 1524              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 1525              		.file 4 "Drivers/CMSIS/Include/core_cm3.h"
 1526              		.file 5 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/system_stm32f1xx.h"
 1527              		.file 6 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
 1528              		.file 7 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 1529              		.file 8 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 1530              		.file 9 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\lib\\gcc\\arm-none-eab
 1531              		.file 10 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\includ
 1532              		.file 11 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"
 1533              		.file 12 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 48


 1534              		.file 13 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma.h"
 1535              		.file 14 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s 			page 49


DEFINED SYMBOLS
                            *ABS*:00000000 stm32f1xx_hal_dma.c
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:16     .text.DMA_SetConfig:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:22     .text.DMA_SetConfig:00000000 DMA_SetConfig
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:84     .text.HAL_DMA_Init:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:91     .text.HAL_DMA_Init:00000000 HAL_DMA_Init
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:193    .text.HAL_DMA_Init:0000006c $d
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:200    .text.HAL_DMA_DeInit:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:207    .text.HAL_DMA_DeInit:00000000 HAL_DMA_DeInit
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:280    .text.HAL_DMA_DeInit:00000054 $d
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:287    .text.HAL_DMA_Start:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:294    .text.HAL_DMA_Start:00000000 HAL_DMA_Start
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:368    .text.HAL_DMA_Start_IT:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:375    .text.HAL_DMA_Start_IT:00000000 HAL_DMA_Start_IT
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:470    .text.HAL_DMA_Abort:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:477    .text.HAL_DMA_Abort:00000000 HAL_DMA_Abort
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:515    .text.HAL_DMA_Abort_IT:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:522    .text.HAL_DMA_Abort_IT:00000000 HAL_DMA_Abort_IT
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:635    .text.HAL_DMA_Abort_IT:00000090 $d
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:641    .text.HAL_DMA_PollForTransfer:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:648    .text.HAL_DMA_PollForTransfer:00000000 HAL_DMA_PollForTransfer
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:1026   .text.HAL_DMA_PollForTransfer:00000224 $d
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:1032   .text.HAL_DMA_IRQHandler:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:1039   .text.HAL_DMA_IRQHandler:00000000 HAL_DMA_IRQHandler
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:1265   .text.HAL_DMA_IRQHandler:0000013c $d
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:1271   .text.HAL_DMA_RegisterCallback:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:1278   .text.HAL_DMA_RegisterCallback:00000000 HAL_DMA_RegisterCallback
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:1317   .text.HAL_DMA_RegisterCallback:0000002a $d
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:1321   .text.HAL_DMA_RegisterCallback:0000002e $t
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:1363   .text.HAL_DMA_UnRegisterCallback:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:1370   .text.HAL_DMA_UnRegisterCallback:00000000 HAL_DMA_UnRegisterCallback
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:1407   .text.HAL_DMA_UnRegisterCallback:0000002a $d
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:1475   .text.HAL_DMA_GetState:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:1482   .text.HAL_DMA_GetState:00000000 HAL_DMA_GetState
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:1498   .text.HAL_DMA_GetError:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:1505   .text.HAL_DMA_GetError:00000000 HAL_DMA_GetError
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:1412   .text.HAL_DMA_UnRegisterCallback:0000002f $d
C:\Users\crist\AppData\Local\Temp\ccR4i7lv.s:1412   .text.HAL_DMA_UnRegisterCallback:00000030 $t

UNDEFINED SYMBOLS
HAL_GetTick
