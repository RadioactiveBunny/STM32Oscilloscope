ARM GAS  C:\Users\crist\AppData\Local\Temp\ccJNdO6L.s 			page 1


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
  11              		.file	"stm32f1xx_hal_spi_ex.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.HAL_SPI_Init,"ax",%progbits
  16              		.align	1
  17              		.global	HAL_SPI_Init
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu softvfp
  23              	HAL_SPI_Init:
  24              	.LFB66:
  25              		.file 1 "Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c"
   1:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** /**
   2:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   ******************************************************************************
   3:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * @file    stm32f1xx_hal_spi_ex.c
   4:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * @author  MCD Application Team
   5:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * @brief   Extended SPI HAL module driver.
   6:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   *    
   7:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   *          This file provides firmware functions to manage the following 
   8:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   *          functionalities SPI extension peripheral:
   9:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   *           + Extended Peripheral Control functions
  10:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   *  
  11:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   ******************************************************************************
  12:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * @attention
  13:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   *
  14:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
  15:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   *
  16:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * Redistribution and use in source and binary forms, with or without modification,
  17:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * are permitted provided that the following conditions are met:
  18:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  19:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   *      this list of conditions and the following disclaimer.
  20:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  21:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   *      this list of conditions and the following disclaimer in the documentation
  22:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   *      and/or other materials provided with the distribution.
  23:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  24:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   *      may be used to endorse or promote products derived from this software
  25:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   *      without specific prior written permission.
  26:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   *
  27:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  28:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  29:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  30:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  31:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  32:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  33:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccJNdO6L.s 			page 2


  34:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  35:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  36:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  37:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   *
  38:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   ******************************************************************************
  39:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   */
  40:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** 
  41:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** /* Includes ------------------------------------------------------------------*/
  42:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** #include "stm32f1xx_hal.h"
  43:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** 
  44:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** /** @addtogroup STM32F1xx_HAL_Driver
  45:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * @{
  46:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   */
  47:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** 
  48:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** /** @addtogroup SPI
  49:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * @{
  50:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   */
  51:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** #ifdef HAL_SPI_MODULE_ENABLED
  52:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** 
  53:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** /** @defgroup SPI_Private_Variables SPI Private Variables
  54:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * @{
  55:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   */
  56:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** #if (USE_SPI_CRC != 0U)
  57:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** /* Variable used to determine if device is impacted by implementation of workaround
  58:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****    related to wrong CRC errors detection on SPI2. Conditions in which this workaround has to be app
  59:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****     - STM32F101CDE/STM32F103CDE
  60:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****     - Revision ID : Z
  61:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****     - SPI2
  62:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****     - In receive only mode, with CRC calculation enabled, at the end of the CRC reception,
  63:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****       the software needs to check the CRCERR flag. If it is found set, read back the SPI_RXCRC:
  64:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****         + If the value is 0, the complete data transfer is successful.
  65:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****         + Otherwise, one or more errors have been detected during the data transfer by CPU or DMA.
  66:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****       If CRCERR is found reset, the complete data transfer is considered successful.
  67:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** */
  68:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** uint8_t uCRCErrorWorkaroundCheck = 0U;
  69:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** #endif /* USE_SPI_CRC */
  70:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** /**
  71:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * @}
  72:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   */
  73:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** 
  74:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** 
  75:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** /* Private typedef -----------------------------------------------------------*/
  76:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** /* Private define ------------------------------------------------------------*/
  77:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** /* Private macro -------------------------------------------------------------*/
  78:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** /* Private variables ---------------------------------------------------------*/
  79:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** /* Private function prototypes -----------------------------------------------*/
  80:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** /* Private functions ---------------------------------------------------------*/
  81:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** 
  82:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** /** @addtogroup SPI_Exported_Functions
  83:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * @{
  84:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   */
  85:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** 
  86:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** /** @addtogroup SPI_Exported_Functions_Group1
  87:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   *
  88:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * @{
  89:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   */
  90:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccJNdO6L.s 			page 3


  91:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** /**
  92:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * @brief  Initializes the SPI according to the specified parameters 
  93:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   *         in the SPI_InitTypeDef and create the associated handle.
  94:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
  95:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   *                the configuration information for SPI module.
  96:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   * @retval HAL status
  97:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   */
  98:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** HAL_StatusTypeDef HAL_SPI_Init(SPI_HandleTypeDef *hspi)
  99:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** {
  26              		.loc 1 99 0
  27              		.cfi_startproc
  28              		@ args = 0, pretend = 0, frame = 0
  29              		@ frame_needed = 0, uses_anonymous_args = 0
  30              	.LVL0:
 100:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   /* Check the SPI handle allocation */
 101:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   if(hspi == NULL)
  31              		.loc 1 101 0
  32 0000 0028     		cmp	r0, #0
  33 0002 3CD0     		beq	.L4
  99:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   /* Check the SPI handle allocation */
  34              		.loc 1 99 0
  35 0004 10B5     		push	{r4, lr}
  36              	.LCFI0:
  37              		.cfi_def_cfa_offset 8
  38              		.cfi_offset 4, -8
  39              		.cfi_offset 14, -4
  40 0006 0446     		mov	r4, r0
 102:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   {
 103:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****     return HAL_ERROR;
 104:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   }
 105:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** 
 106:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   /* Check the parameters */
 107:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   assert_param(IS_SPI_ALL_INSTANCE(hspi->Instance));
 108:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   assert_param(IS_SPI_MODE(hspi->Init.Mode));
 109:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   assert_param(IS_SPI_DIRECTION(hspi->Init.Direction));
 110:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   assert_param(IS_SPI_DATASIZE(hspi->Init.DataSize));
 111:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   assert_param(IS_SPI_CPOL(hspi->Init.CLKPolarity));
 112:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   assert_param(IS_SPI_CPHA(hspi->Init.CLKPhase));
 113:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   assert_param(IS_SPI_NSS(hspi->Init.NSS));
 114:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   assert_param(IS_SPI_BAUDRATE_PRESCALER(hspi->Init.BaudRatePrescaler));
 115:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   assert_param(IS_SPI_FIRST_BIT(hspi->Init.FirstBit));
 116:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** 
 117:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** #if (USE_SPI_CRC != 0U)
 118:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   assert_param(IS_SPI_CRC_CALCULATION(hspi->Init.CRCCalculation));
 119:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
 120:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   {
 121:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****     assert_param(IS_SPI_CRC_POLYNOMIAL(hspi->Init.CRCPolynomial));
 122:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   }
 123:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** #else
 124:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   hspi->Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  41              		.loc 1 124 0
  42 0008 0023     		movs	r3, #0
  43 000a 8362     		str	r3, [r0, #40]
 125:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** #endif /* USE_SPI_CRC */
 126:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** 
 127:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   if(hspi->State == HAL_SPI_STATE_RESET)
  44              		.loc 1 127 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccJNdO6L.s 			page 4


  45 000c 90F85130 		ldrb	r3, [r0, #81]	@ zero_extendqisi2
  46 0010 002B     		cmp	r3, #0
  47 0012 31D0     		beq	.L9
  48              	.LVL1:
  49              	.L3:
 128:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   {
 129:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****     /* Init the low level hardware : GPIO, CLOCK, NVIC... */
 130:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****     HAL_SPI_MspInit(hspi);
 131:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   }
 132:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   
 133:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   hspi->State = HAL_SPI_STATE_BUSY;
  50              		.loc 1 133 0
  51 0014 0223     		movs	r3, #2
  52 0016 84F85130 		strb	r3, [r4, #81]
 134:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** 
 135:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   /* Disble the selected SPI peripheral */
 136:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   __HAL_SPI_DISABLE(hspi);
  53              		.loc 1 136 0
  54 001a 2268     		ldr	r2, [r4]
  55 001c 1368     		ldr	r3, [r2]
  56 001e 23F04003 		bic	r3, r3, #64
  57 0022 1360     		str	r3, [r2]
 137:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** 
 138:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   /*----------------------- SPIx CR1 & CR2 Configuration ---------------------*/
 139:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   /* Configure : SPI Mode, Communication Mode, Data size, Clock polarity and phase, NSS management,
 140:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   Communication speed, First bit and CRC calculation state */
 141:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   WRITE_REG(hspi->Instance->CR1, (hspi->Init.Mode | hspi->Init.Direction | hspi->Init.DataSize |
  58              		.loc 1 141 0
  59 0024 6368     		ldr	r3, [r4, #4]
  60 0026 A268     		ldr	r2, [r4, #8]
  61 0028 1343     		orrs	r3, r3, r2
  62 002a E268     		ldr	r2, [r4, #12]
  63 002c 1343     		orrs	r3, r3, r2
  64 002e 2269     		ldr	r2, [r4, #16]
  65 0030 1343     		orrs	r3, r3, r2
  66 0032 6269     		ldr	r2, [r4, #20]
  67 0034 1343     		orrs	r3, r3, r2
  68 0036 A269     		ldr	r2, [r4, #24]
  69 0038 02F40072 		and	r2, r2, #512
  70 003c 1343     		orrs	r3, r3, r2
  71 003e E269     		ldr	r2, [r4, #28]
  72 0040 1343     		orrs	r3, r3, r2
  73 0042 226A     		ldr	r2, [r4, #32]
  74 0044 1343     		orrs	r3, r3, r2
  75 0046 A16A     		ldr	r1, [r4, #40]
  76 0048 2268     		ldr	r2, [r4]
  77 004a 0B43     		orrs	r3, r3, r1
  78 004c 1360     		str	r3, [r2]
 142:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****                                   hspi->Init.CLKPolarity | hspi->Init.CLKPhase | (hspi->Init.NSS & 
 143:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****                                   hspi->Init.BaudRatePrescaler | hspi->Init.FirstBit  | hspi->Init.
 144:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** 
 145:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   /* Configure : NSS management */
 146:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   WRITE_REG(hspi->Instance->CR2, (((hspi->Init.NSS >> 16U) & SPI_CR2_SSOE) | hspi->Init.TIMode));
  79              		.loc 1 146 0
  80 004e 638B     		ldrh	r3, [r4, #26]
  81 0050 03F00403 		and	r3, r3, #4
  82 0054 616A     		ldr	r1, [r4, #36]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccJNdO6L.s 			page 5


  83 0056 2268     		ldr	r2, [r4]
  84 0058 0B43     		orrs	r3, r3, r1
  85 005a 5360     		str	r3, [r2, #4]
 147:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** 
 148:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   /*---------------------------- SPIx CRCPOLY Configuration ------------------*/
 149:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   /* Configure : CRC Polynomial */
 150:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   WRITE_REG(hspi->Instance->CRCPR, hspi->Init.CRCPolynomial);
  86              		.loc 1 150 0
  87 005c 2368     		ldr	r3, [r4]
  88 005e E26A     		ldr	r2, [r4, #44]
  89 0060 1A61     		str	r2, [r3, #16]
 151:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** 
 152:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** #if defined(SPI_I2SCFGR_I2SMOD)
 153:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   /* Activate the SPI mode (Make sure that I2SMOD bit in I2SCFGR register is reset) */
 154:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   CLEAR_BIT(hspi->Instance->I2SCFGR, SPI_I2SCFGR_I2SMOD);
  90              		.loc 1 154 0
  91 0062 2268     		ldr	r2, [r4]
  92 0064 D369     		ldr	r3, [r2, #28]
  93 0066 23F40063 		bic	r3, r3, #2048
  94 006a D361     		str	r3, [r2, #28]
 155:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** #endif /* SPI_I2SCFGR_I2SMOD */
 156:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** 
 157:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** #if (USE_SPI_CRC != 0U)
 158:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** #if defined (STM32F101xE) || defined (STM32F103xE)
 159:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   /* Check RevisionID value for identifying if Device is Rev Z (0x0001) in order to enable workarou
 160:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****      CRC errors wrongly detected */
 161:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   /* Pb is that ES_STM32F10xxCDE also identify an issue in Debug registers access while not in Debu
 162:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****      Revision ID information is only available in Debug mode, so Workaround could not be implemente
 163:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****      to distinguish Rev Z devices (issue present) from more recent version (issue fixed).
 164:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****      So, in case of Revison Z F101 or F103 devices, below variable should be assigned to 1 */
 165:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   uCRCErrorWorkaroundCheck = 0U;
 166:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** #else
 167:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   uCRCErrorWorkaroundCheck = 0U;
 168:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** #endif /* STM32F101xE || STM32F103xE */
 169:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** #endif /* USE_SPI_CRC */
 170:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** 
 171:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   hspi->ErrorCode = HAL_SPI_ERROR_NONE;
  95              		.loc 1 171 0
  96 006c 0020     		movs	r0, #0
  97 006e 6065     		str	r0, [r4, #84]
 172:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   hspi->State = HAL_SPI_STATE_READY;
  98              		.loc 1 172 0
  99 0070 0123     		movs	r3, #1
 100 0072 84F85130 		strb	r3, [r4, #81]
 173:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   
 174:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   return HAL_OK;
 175:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c **** }
 101              		.loc 1 175 0
 102 0076 10BD     		pop	{r4, pc}
 103              	.LVL2:
 104              	.L9:
 130:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   }
 105              		.loc 1 130 0
 106 0078 FFF7FEFF 		bl	HAL_SPI_MspInit
 107              	.LVL3:
 108 007c CAE7     		b	.L3
 109              	.LVL4:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccJNdO6L.s 			page 6


 110              	.L4:
 111              	.LCFI1:
 112              		.cfi_def_cfa_offset 0
 113              		.cfi_restore 4
 114              		.cfi_restore 14
 103:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c ****   }
 115              		.loc 1 103 0
 116 007e 0120     		movs	r0, #1
 117              	.LVL5:
 118              		.loc 1 175 0
 119 0080 7047     		bx	lr
 120              		.cfi_endproc
 121              	.LFE66:
 123              		.text
 124              	.Letext0:
 125              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 126              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 127              		.file 4 "Drivers/CMSIS/Include/core_cm3.h"
 128              		.file 5 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/system_stm32f1xx.h"
 129              		.file 6 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
 130              		.file 7 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 131              		.file 8 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 132              		.file 9 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\lib\\gcc\\arm-none-eab
 133              		.file 10 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\includ
 134              		.file 11 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"
 135              		.file 12 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma.h"
 136              		.file 13 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_spi.h"
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccJNdO6L.s 			page 7


DEFINED SYMBOLS
                            *ABS*:00000000 stm32f1xx_hal_spi_ex.c
C:\Users\crist\AppData\Local\Temp\ccJNdO6L.s:16     .text.HAL_SPI_Init:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccJNdO6L.s:23     .text.HAL_SPI_Init:00000000 HAL_SPI_Init

UNDEFINED SYMBOLS
HAL_SPI_MspInit
