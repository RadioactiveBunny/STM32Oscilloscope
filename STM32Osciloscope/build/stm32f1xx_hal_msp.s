ARM GAS  C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s 			page 1


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
  11              		.file	"stm32f1xx_hal_msp.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.HAL_MspInit,"ax",%progbits
  16              		.align	1
  17              		.global	HAL_MspInit
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu softvfp
  23              	HAL_MspInit:
  24              	.LFB66:
  25              		.file 1 "Src/stm32f1xx_hal_msp.c"
   1:Src/stm32f1xx_hal_msp.c **** /**
   2:Src/stm32f1xx_hal_msp.c ****   ******************************************************************************
   3:Src/stm32f1xx_hal_msp.c ****   * File Name          : stm32f1xx_hal_msp.c
   4:Src/stm32f1xx_hal_msp.c ****   * Description        : This file provides code for the MSP Initialization 
   5:Src/stm32f1xx_hal_msp.c ****   *                      and de-Initialization codes.
   6:Src/stm32f1xx_hal_msp.c ****   ******************************************************************************
   7:Src/stm32f1xx_hal_msp.c ****   ** This notice applies to any and all portions of this file
   8:Src/stm32f1xx_hal_msp.c ****   * that are not between comment pairs USER CODE BEGIN and
   9:Src/stm32f1xx_hal_msp.c ****   * USER CODE END. Other portions of this file, whether 
  10:Src/stm32f1xx_hal_msp.c ****   * inserted by the user or by software development tools
  11:Src/stm32f1xx_hal_msp.c ****   * are owned by their respective copyright owners.
  12:Src/stm32f1xx_hal_msp.c ****   *
  13:Src/stm32f1xx_hal_msp.c ****   * COPYRIGHT(c) 2018 STMicroelectronics
  14:Src/stm32f1xx_hal_msp.c ****   *
  15:Src/stm32f1xx_hal_msp.c ****   * Redistribution and use in source and binary forms, with or without modification,
  16:Src/stm32f1xx_hal_msp.c ****   * are permitted provided that the following conditions are met:
  17:Src/stm32f1xx_hal_msp.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  18:Src/stm32f1xx_hal_msp.c ****   *      this list of conditions and the following disclaimer.
  19:Src/stm32f1xx_hal_msp.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  20:Src/stm32f1xx_hal_msp.c ****   *      this list of conditions and the following disclaimer in the documentation
  21:Src/stm32f1xx_hal_msp.c ****   *      and/or other materials provided with the distribution.
  22:Src/stm32f1xx_hal_msp.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  23:Src/stm32f1xx_hal_msp.c ****   *      may be used to endorse or promote products derived from this software
  24:Src/stm32f1xx_hal_msp.c ****   *      without specific prior written permission.
  25:Src/stm32f1xx_hal_msp.c ****   *
  26:Src/stm32f1xx_hal_msp.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  27:Src/stm32f1xx_hal_msp.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  28:Src/stm32f1xx_hal_msp.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  29:Src/stm32f1xx_hal_msp.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  30:Src/stm32f1xx_hal_msp.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  31:Src/stm32f1xx_hal_msp.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  32:Src/stm32f1xx_hal_msp.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  33:Src/stm32f1xx_hal_msp.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s 			page 2


  34:Src/stm32f1xx_hal_msp.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  35:Src/stm32f1xx_hal_msp.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  36:Src/stm32f1xx_hal_msp.c ****   *
  37:Src/stm32f1xx_hal_msp.c ****   ******************************************************************************
  38:Src/stm32f1xx_hal_msp.c ****   */
  39:Src/stm32f1xx_hal_msp.c **** /* Includes ------------------------------------------------------------------*/
  40:Src/stm32f1xx_hal_msp.c **** #include "stm32f1xx_hal.h"
  41:Src/stm32f1xx_hal_msp.c **** 
  42:Src/stm32f1xx_hal_msp.c **** extern DMA_HandleTypeDef hdma_adc1;
  43:Src/stm32f1xx_hal_msp.c **** 
  44:Src/stm32f1xx_hal_msp.c **** extern void _Error_Handler(char *, int);
  45:Src/stm32f1xx_hal_msp.c **** /* USER CODE BEGIN 0 */
  46:Src/stm32f1xx_hal_msp.c **** 
  47:Src/stm32f1xx_hal_msp.c **** /* USER CODE END 0 */
  48:Src/stm32f1xx_hal_msp.c **** /**
  49:Src/stm32f1xx_hal_msp.c ****   * Initializes the Global MSP.
  50:Src/stm32f1xx_hal_msp.c ****   */
  51:Src/stm32f1xx_hal_msp.c **** void HAL_MspInit(void)
  52:Src/stm32f1xx_hal_msp.c **** {
  26              		.loc 1 52 0
  27              		.cfi_startproc
  28              		@ args = 0, pretend = 0, frame = 8
  29              		@ frame_needed = 0, uses_anonymous_args = 0
  30 0000 00B5     		push	{lr}
  31              	.LCFI0:
  32              		.cfi_def_cfa_offset 4
  33              		.cfi_offset 14, -4
  34 0002 83B0     		sub	sp, sp, #12
  35              	.LCFI1:
  36              		.cfi_def_cfa_offset 16
  37              	.LBB2:
  53:Src/stm32f1xx_hal_msp.c ****   /* USER CODE BEGIN MspInit 0 */
  54:Src/stm32f1xx_hal_msp.c **** 
  55:Src/stm32f1xx_hal_msp.c ****   /* USER CODE END MspInit 0 */
  56:Src/stm32f1xx_hal_msp.c **** 
  57:Src/stm32f1xx_hal_msp.c ****   __HAL_RCC_AFIO_CLK_ENABLE();
  38              		.loc 1 57 0
  39 0004 244B     		ldr	r3, .L3
  40 0006 9A69     		ldr	r2, [r3, #24]
  41 0008 42F00102 		orr	r2, r2, #1
  42 000c 9A61     		str	r2, [r3, #24]
  43 000e 9A69     		ldr	r2, [r3, #24]
  44 0010 02F00102 		and	r2, r2, #1
  45 0014 0092     		str	r2, [sp]
  46 0016 009A     		ldr	r2, [sp]
  47              	.LBE2:
  48              	.LBB3:
  58:Src/stm32f1xx_hal_msp.c ****   __HAL_RCC_PWR_CLK_ENABLE();
  49              		.loc 1 58 0
  50 0018 DA69     		ldr	r2, [r3, #28]
  51 001a 42F08052 		orr	r2, r2, #268435456
  52 001e DA61     		str	r2, [r3, #28]
  53 0020 DB69     		ldr	r3, [r3, #28]
  54 0022 03F08053 		and	r3, r3, #268435456
  55 0026 0193     		str	r3, [sp, #4]
  56 0028 019B     		ldr	r3, [sp, #4]
  57              	.LBE3:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s 			page 3


  59:Src/stm32f1xx_hal_msp.c **** 
  60:Src/stm32f1xx_hal_msp.c ****   HAL_NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_4);
  58              		.loc 1 60 0
  59 002a 0320     		movs	r0, #3
  60 002c FFF7FEFF 		bl	HAL_NVIC_SetPriorityGrouping
  61              	.LVL0:
  61:Src/stm32f1xx_hal_msp.c **** 
  62:Src/stm32f1xx_hal_msp.c ****   /* System interrupt init*/
  63:Src/stm32f1xx_hal_msp.c ****   /* MemoryManagement_IRQn interrupt configuration */
  64:Src/stm32f1xx_hal_msp.c ****   HAL_NVIC_SetPriority(MemoryManagement_IRQn, 0, 0);
  62              		.loc 1 64 0
  63 0030 0022     		movs	r2, #0
  64 0032 1146     		mov	r1, r2
  65 0034 6FF00B00 		mvn	r0, #11
  66 0038 FFF7FEFF 		bl	HAL_NVIC_SetPriority
  67              	.LVL1:
  65:Src/stm32f1xx_hal_msp.c ****   /* BusFault_IRQn interrupt configuration */
  66:Src/stm32f1xx_hal_msp.c ****   HAL_NVIC_SetPriority(BusFault_IRQn, 0, 0);
  68              		.loc 1 66 0
  69 003c 0022     		movs	r2, #0
  70 003e 1146     		mov	r1, r2
  71 0040 6FF00A00 		mvn	r0, #10
  72 0044 FFF7FEFF 		bl	HAL_NVIC_SetPriority
  73              	.LVL2:
  67:Src/stm32f1xx_hal_msp.c ****   /* UsageFault_IRQn interrupt configuration */
  68:Src/stm32f1xx_hal_msp.c ****   HAL_NVIC_SetPriority(UsageFault_IRQn, 0, 0);
  74              		.loc 1 68 0
  75 0048 0022     		movs	r2, #0
  76 004a 1146     		mov	r1, r2
  77 004c 6FF00900 		mvn	r0, #9
  78 0050 FFF7FEFF 		bl	HAL_NVIC_SetPriority
  79              	.LVL3:
  69:Src/stm32f1xx_hal_msp.c ****   /* SVCall_IRQn interrupt configuration */
  70:Src/stm32f1xx_hal_msp.c ****   HAL_NVIC_SetPriority(SVCall_IRQn, 0, 0);
  80              		.loc 1 70 0
  81 0054 0022     		movs	r2, #0
  82 0056 1146     		mov	r1, r2
  83 0058 6FF00400 		mvn	r0, #4
  84 005c FFF7FEFF 		bl	HAL_NVIC_SetPriority
  85              	.LVL4:
  71:Src/stm32f1xx_hal_msp.c ****   /* DebugMonitor_IRQn interrupt configuration */
  72:Src/stm32f1xx_hal_msp.c ****   HAL_NVIC_SetPriority(DebugMonitor_IRQn, 0, 0);
  86              		.loc 1 72 0
  87 0060 0022     		movs	r2, #0
  88 0062 1146     		mov	r1, r2
  89 0064 6FF00300 		mvn	r0, #3
  90 0068 FFF7FEFF 		bl	HAL_NVIC_SetPriority
  91              	.LVL5:
  73:Src/stm32f1xx_hal_msp.c ****   /* PendSV_IRQn interrupt configuration */
  74:Src/stm32f1xx_hal_msp.c ****   HAL_NVIC_SetPriority(PendSV_IRQn, 0, 0);
  92              		.loc 1 74 0
  93 006c 0022     		movs	r2, #0
  94 006e 1146     		mov	r1, r2
  95 0070 6FF00100 		mvn	r0, #1
  96 0074 FFF7FEFF 		bl	HAL_NVIC_SetPriority
  97              	.LVL6:
  75:Src/stm32f1xx_hal_msp.c ****   /* SysTick_IRQn interrupt configuration */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s 			page 4


  76:Src/stm32f1xx_hal_msp.c ****   HAL_NVIC_SetPriority(SysTick_IRQn, 0, 0);
  98              		.loc 1 76 0
  99 0078 0022     		movs	r2, #0
 100 007a 1146     		mov	r1, r2
 101 007c 4FF0FF30 		mov	r0, #-1
 102 0080 FFF7FEFF 		bl	HAL_NVIC_SetPriority
 103              	.LVL7:
 104              	.LBB4:
  77:Src/stm32f1xx_hal_msp.c **** 
  78:Src/stm32f1xx_hal_msp.c ****     /**DISABLE: JTAG-DP Disabled and SW-DP Disabled 
  79:Src/stm32f1xx_hal_msp.c ****     */
  80:Src/stm32f1xx_hal_msp.c ****   __HAL_AFIO_REMAP_SWJ_DISABLE();
 105              		.loc 1 80 0
 106 0084 054A     		ldr	r2, .L3+4
 107 0086 5368     		ldr	r3, [r2, #4]
 108              	.LVL8:
 109 0088 23F0E063 		bic	r3, r3, #117440512
 110              	.LVL9:
 111 008c 43F08063 		orr	r3, r3, #67108864
 112              	.LVL10:
 113 0090 5360     		str	r3, [r2, #4]
 114              	.LBE4:
  81:Src/stm32f1xx_hal_msp.c **** 
  82:Src/stm32f1xx_hal_msp.c ****   /* USER CODE BEGIN MspInit 1 */
  83:Src/stm32f1xx_hal_msp.c **** 
  84:Src/stm32f1xx_hal_msp.c ****   /* USER CODE END MspInit 1 */
  85:Src/stm32f1xx_hal_msp.c **** }
 115              		.loc 1 85 0
 116 0092 03B0     		add	sp, sp, #12
 117              	.LCFI2:
 118              		.cfi_def_cfa_offset 4
 119              		@ sp needed
 120 0094 5DF804FB 		ldr	pc, [sp], #4
 121              	.L4:
 122              		.align	2
 123              	.L3:
 124 0098 00100240 		.word	1073876992
 125 009c 00000140 		.word	1073807360
 126              		.cfi_endproc
 127              	.LFE66:
 129              		.section	.text.HAL_ADC_MspInit,"ax",%progbits
 130              		.align	1
 131              		.global	HAL_ADC_MspInit
 132              		.syntax unified
 133              		.thumb
 134              		.thumb_func
 135              		.fpu softvfp
 137              	HAL_ADC_MspInit:
 138              	.LFB67:
  86:Src/stm32f1xx_hal_msp.c **** 
  87:Src/stm32f1xx_hal_msp.c **** void HAL_ADC_MspInit(ADC_HandleTypeDef* hadc)
  88:Src/stm32f1xx_hal_msp.c **** {
 139              		.loc 1 88 0
 140              		.cfi_startproc
 141              		@ args = 0, pretend = 0, frame = 24
 142              		@ frame_needed = 0, uses_anonymous_args = 0
 143              	.LVL11:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s 			page 5


  89:Src/stm32f1xx_hal_msp.c **** 
  90:Src/stm32f1xx_hal_msp.c ****   GPIO_InitTypeDef GPIO_InitStruct;
  91:Src/stm32f1xx_hal_msp.c ****   if(hadc->Instance==ADC1)
 144              		.loc 1 91 0
 145 0000 0268     		ldr	r2, [r0]
 146 0002 1C4B     		ldr	r3, .L14
 147 0004 9A42     		cmp	r2, r3
 148 0006 00D0     		beq	.L12
 149 0008 7047     		bx	lr
 150              	.L12:
  88:Src/stm32f1xx_hal_msp.c **** 
 151              		.loc 1 88 0
 152 000a 10B5     		push	{r4, lr}
 153              	.LCFI3:
 154              		.cfi_def_cfa_offset 8
 155              		.cfi_offset 4, -8
 156              		.cfi_offset 14, -4
 157 000c 86B0     		sub	sp, sp, #24
 158              	.LCFI4:
 159              		.cfi_def_cfa_offset 32
 160 000e 0446     		mov	r4, r0
 161              	.LBB5:
  92:Src/stm32f1xx_hal_msp.c ****   {
  93:Src/stm32f1xx_hal_msp.c ****   /* USER CODE BEGIN ADC1_MspInit 0 */
  94:Src/stm32f1xx_hal_msp.c **** 
  95:Src/stm32f1xx_hal_msp.c ****   /* USER CODE END ADC1_MspInit 0 */
  96:Src/stm32f1xx_hal_msp.c ****     /* Peripheral clock enable */
  97:Src/stm32f1xx_hal_msp.c ****     __HAL_RCC_ADC1_CLK_ENABLE();
 162              		.loc 1 97 0
 163 0010 03F56C43 		add	r3, r3, #60416
 164 0014 9A69     		ldr	r2, [r3, #24]
 165 0016 42F40072 		orr	r2, r2, #512
 166 001a 9A61     		str	r2, [r3, #24]
 167 001c 9B69     		ldr	r3, [r3, #24]
 168 001e 03F40073 		and	r3, r3, #512
 169 0022 0193     		str	r3, [sp, #4]
 170 0024 019B     		ldr	r3, [sp, #4]
 171              	.LBE5:
  98:Src/stm32f1xx_hal_msp.c ****   
  99:Src/stm32f1xx_hal_msp.c ****     /**ADC1 GPIO Configuration    
 100:Src/stm32f1xx_hal_msp.c ****     PA0-WKUP     ------> ADC1_IN0 
 101:Src/stm32f1xx_hal_msp.c ****     */
 102:Src/stm32f1xx_hal_msp.c ****     GPIO_InitStruct.Pin = GPIO_PIN_0;
 172              		.loc 1 102 0
 173 0026 0123     		movs	r3, #1
 174 0028 0293     		str	r3, [sp, #8]
 103:Src/stm32f1xx_hal_msp.c ****     GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
 175              		.loc 1 103 0
 176 002a 0323     		movs	r3, #3
 177 002c 0393     		str	r3, [sp, #12]
 104:Src/stm32f1xx_hal_msp.c ****     HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
 178              		.loc 1 104 0
 179 002e 02A9     		add	r1, sp, #8
 180 0030 1148     		ldr	r0, .L14+4
 181              	.LVL12:
 182 0032 FFF7FEFF 		bl	HAL_GPIO_Init
 183              	.LVL13:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s 			page 6


 105:Src/stm32f1xx_hal_msp.c **** 
 106:Src/stm32f1xx_hal_msp.c ****     /* ADC1 DMA Init */
 107:Src/stm32f1xx_hal_msp.c ****     /* ADC1 Init */
 108:Src/stm32f1xx_hal_msp.c ****     hdma_adc1.Instance = DMA1_Channel1;
 184              		.loc 1 108 0
 185 0036 1148     		ldr	r0, .L14+8
 186 0038 114B     		ldr	r3, .L14+12
 187 003a 0360     		str	r3, [r0]
 109:Src/stm32f1xx_hal_msp.c ****     hdma_adc1.Init.Direction = DMA_PERIPH_TO_MEMORY;
 188              		.loc 1 109 0
 189 003c 0023     		movs	r3, #0
 190 003e 4360     		str	r3, [r0, #4]
 110:Src/stm32f1xx_hal_msp.c ****     hdma_adc1.Init.PeriphInc = DMA_PINC_DISABLE;
 191              		.loc 1 110 0
 192 0040 8360     		str	r3, [r0, #8]
 111:Src/stm32f1xx_hal_msp.c ****     hdma_adc1.Init.MemInc = DMA_MINC_ENABLE;
 193              		.loc 1 111 0
 194 0042 8022     		movs	r2, #128
 195 0044 C260     		str	r2, [r0, #12]
 112:Src/stm32f1xx_hal_msp.c ****     hdma_adc1.Init.PeriphDataAlignment = DMA_PDATAALIGN_HALFWORD;
 196              		.loc 1 112 0
 197 0046 4FF48072 		mov	r2, #256
 198 004a 0261     		str	r2, [r0, #16]
 113:Src/stm32f1xx_hal_msp.c ****     hdma_adc1.Init.MemDataAlignment = DMA_MDATAALIGN_HALFWORD;
 199              		.loc 1 113 0
 200 004c 4FF48062 		mov	r2, #1024
 201 0050 4261     		str	r2, [r0, #20]
 114:Src/stm32f1xx_hal_msp.c ****     hdma_adc1.Init.Mode = DMA_NORMAL;
 202              		.loc 1 114 0
 203 0052 8361     		str	r3, [r0, #24]
 115:Src/stm32f1xx_hal_msp.c ****     hdma_adc1.Init.Priority = DMA_PRIORITY_MEDIUM;
 204              		.loc 1 115 0
 205 0054 4FF48053 		mov	r3, #4096
 206 0058 C361     		str	r3, [r0, #28]
 116:Src/stm32f1xx_hal_msp.c ****     if (HAL_DMA_Init(&hdma_adc1) != HAL_OK)
 207              		.loc 1 116 0
 208 005a FFF7FEFF 		bl	HAL_DMA_Init
 209              	.LVL14:
 210 005e 20B9     		cbnz	r0, .L13
 211              	.L7:
 117:Src/stm32f1xx_hal_msp.c ****     {
 118:Src/stm32f1xx_hal_msp.c ****       _Error_Handler(__FILE__, __LINE__);
 119:Src/stm32f1xx_hal_msp.c ****     }
 120:Src/stm32f1xx_hal_msp.c **** 
 121:Src/stm32f1xx_hal_msp.c ****     __HAL_LINKDMA(hadc,DMA_Handle,hdma_adc1);
 212              		.loc 1 121 0
 213 0060 064B     		ldr	r3, .L14+8
 214 0062 2362     		str	r3, [r4, #32]
 215 0064 5C62     		str	r4, [r3, #36]
 122:Src/stm32f1xx_hal_msp.c **** 
 123:Src/stm32f1xx_hal_msp.c ****   /* USER CODE BEGIN ADC1_MspInit 1 */
 124:Src/stm32f1xx_hal_msp.c **** 
 125:Src/stm32f1xx_hal_msp.c ****   /* USER CODE END ADC1_MspInit 1 */
 126:Src/stm32f1xx_hal_msp.c ****   }
 127:Src/stm32f1xx_hal_msp.c **** 
 128:Src/stm32f1xx_hal_msp.c **** }
 216              		.loc 1 128 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s 			page 7


 217 0066 06B0     		add	sp, sp, #24
 218              	.LCFI5:
 219              		.cfi_remember_state
 220              		.cfi_def_cfa_offset 8
 221              		@ sp needed
 222 0068 10BD     		pop	{r4, pc}
 223              	.LVL15:
 224              	.L13:
 225              	.LCFI6:
 226              		.cfi_restore_state
 118:Src/stm32f1xx_hal_msp.c ****     }
 227              		.loc 1 118 0
 228 006a 7621     		movs	r1, #118
 229 006c 0548     		ldr	r0, .L14+16
 230 006e FFF7FEFF 		bl	_Error_Handler
 231              	.LVL16:
 232 0072 F5E7     		b	.L7
 233              	.L15:
 234              		.align	2
 235              	.L14:
 236 0074 00240140 		.word	1073816576
 237 0078 00080140 		.word	1073809408
 238 007c 00000000 		.word	hdma_adc1
 239 0080 08000240 		.word	1073872904
 240 0084 00000000 		.word	.LC0
 241              		.cfi_endproc
 242              	.LFE67:
 244              		.section	.text.HAL_ADC_MspDeInit,"ax",%progbits
 245              		.align	1
 246              		.global	HAL_ADC_MspDeInit
 247              		.syntax unified
 248              		.thumb
 249              		.thumb_func
 250              		.fpu softvfp
 252              	HAL_ADC_MspDeInit:
 253              	.LFB68:
 129:Src/stm32f1xx_hal_msp.c **** 
 130:Src/stm32f1xx_hal_msp.c **** void HAL_ADC_MspDeInit(ADC_HandleTypeDef* hadc)
 131:Src/stm32f1xx_hal_msp.c **** {
 254              		.loc 1 131 0
 255              		.cfi_startproc
 256              		@ args = 0, pretend = 0, frame = 0
 257              		@ frame_needed = 0, uses_anonymous_args = 0
 258              	.LVL17:
 132:Src/stm32f1xx_hal_msp.c **** 
 133:Src/stm32f1xx_hal_msp.c ****   if(hadc->Instance==ADC1)
 259              		.loc 1 133 0
 260 0000 0268     		ldr	r2, [r0]
 261 0002 094B     		ldr	r3, .L23
 262 0004 9A42     		cmp	r2, r3
 263 0006 00D0     		beq	.L22
 264 0008 7047     		bx	lr
 265              	.L22:
 131:Src/stm32f1xx_hal_msp.c **** 
 266              		.loc 1 131 0
 267 000a 10B5     		push	{r4, lr}
 268              	.LCFI7:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s 			page 8


 269              		.cfi_def_cfa_offset 8
 270              		.cfi_offset 4, -8
 271              		.cfi_offset 14, -4
 272 000c 0446     		mov	r4, r0
 134:Src/stm32f1xx_hal_msp.c ****   {
 135:Src/stm32f1xx_hal_msp.c ****   /* USER CODE BEGIN ADC1_MspDeInit 0 */
 136:Src/stm32f1xx_hal_msp.c **** 
 137:Src/stm32f1xx_hal_msp.c ****   /* USER CODE END ADC1_MspDeInit 0 */
 138:Src/stm32f1xx_hal_msp.c ****     /* Peripheral clock disable */
 139:Src/stm32f1xx_hal_msp.c ****     __HAL_RCC_ADC1_CLK_DISABLE();
 273              		.loc 1 139 0
 274 000e 074A     		ldr	r2, .L23+4
 275 0010 9369     		ldr	r3, [r2, #24]
 276 0012 23F40073 		bic	r3, r3, #512
 277 0016 9361     		str	r3, [r2, #24]
 140:Src/stm32f1xx_hal_msp.c ****   
 141:Src/stm32f1xx_hal_msp.c ****     /**ADC1 GPIO Configuration    
 142:Src/stm32f1xx_hal_msp.c ****     PA0-WKUP     ------> ADC1_IN0 
 143:Src/stm32f1xx_hal_msp.c ****     */
 144:Src/stm32f1xx_hal_msp.c ****     HAL_GPIO_DeInit(GPIOA, GPIO_PIN_0);
 278              		.loc 1 144 0
 279 0018 0121     		movs	r1, #1
 280 001a 0548     		ldr	r0, .L23+8
 281              	.LVL18:
 282 001c FFF7FEFF 		bl	HAL_GPIO_DeInit
 283              	.LVL19:
 145:Src/stm32f1xx_hal_msp.c **** 
 146:Src/stm32f1xx_hal_msp.c ****     /* ADC1 DMA DeInit */
 147:Src/stm32f1xx_hal_msp.c ****     HAL_DMA_DeInit(hadc->DMA_Handle);
 284              		.loc 1 147 0
 285 0020 206A     		ldr	r0, [r4, #32]
 286 0022 FFF7FEFF 		bl	HAL_DMA_DeInit
 287              	.LVL20:
 148:Src/stm32f1xx_hal_msp.c ****   /* USER CODE BEGIN ADC1_MspDeInit 1 */
 149:Src/stm32f1xx_hal_msp.c **** 
 150:Src/stm32f1xx_hal_msp.c ****   /* USER CODE END ADC1_MspDeInit 1 */
 151:Src/stm32f1xx_hal_msp.c ****   }
 152:Src/stm32f1xx_hal_msp.c **** 
 153:Src/stm32f1xx_hal_msp.c **** }
 288              		.loc 1 153 0
 289 0026 10BD     		pop	{r4, pc}
 290              	.LVL21:
 291              	.L24:
 292              		.align	2
 293              	.L23:
 294 0028 00240140 		.word	1073816576
 295 002c 00100240 		.word	1073876992
 296 0030 00080140 		.word	1073809408
 297              		.cfi_endproc
 298              	.LFE68:
 300              		.section	.text.HAL_SPI_MspInit,"ax",%progbits
 301              		.align	1
 302              		.global	HAL_SPI_MspInit
 303              		.syntax unified
 304              		.thumb
 305              		.thumb_func
 306              		.fpu softvfp
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s 			page 9


 308              	HAL_SPI_MspInit:
 309              	.LFB69:
 154:Src/stm32f1xx_hal_msp.c **** 
 155:Src/stm32f1xx_hal_msp.c **** void HAL_SPI_MspInit(SPI_HandleTypeDef* hspi)
 156:Src/stm32f1xx_hal_msp.c **** {
 310              		.loc 1 156 0
 311              		.cfi_startproc
 312              		@ args = 0, pretend = 0, frame = 24
 313              		@ frame_needed = 0, uses_anonymous_args = 0
 314              	.LVL22:
 157:Src/stm32f1xx_hal_msp.c **** 
 158:Src/stm32f1xx_hal_msp.c ****   GPIO_InitTypeDef GPIO_InitStruct;
 159:Src/stm32f1xx_hal_msp.c ****   if(hspi->Instance==SPI2)
 315              		.loc 1 159 0
 316 0000 0268     		ldr	r2, [r0]
 317 0002 144B     		ldr	r3, .L32
 318 0004 9A42     		cmp	r2, r3
 319 0006 00D0     		beq	.L31
 320 0008 7047     		bx	lr
 321              	.L31:
 156:Src/stm32f1xx_hal_msp.c **** 
 322              		.loc 1 156 0
 323 000a 10B5     		push	{r4, lr}
 324              	.LCFI8:
 325              		.cfi_def_cfa_offset 8
 326              		.cfi_offset 4, -8
 327              		.cfi_offset 14, -4
 328 000c 86B0     		sub	sp, sp, #24
 329              	.LCFI9:
 330              		.cfi_def_cfa_offset 32
 331              	.LBB6:
 160:Src/stm32f1xx_hal_msp.c ****   {
 161:Src/stm32f1xx_hal_msp.c ****   /* USER CODE BEGIN SPI2_MspInit 0 */
 162:Src/stm32f1xx_hal_msp.c **** 
 163:Src/stm32f1xx_hal_msp.c ****   /* USER CODE END SPI2_MspInit 0 */
 164:Src/stm32f1xx_hal_msp.c ****     /* Peripheral clock enable */
 165:Src/stm32f1xx_hal_msp.c ****     __HAL_RCC_SPI2_CLK_ENABLE();
 332              		.loc 1 165 0
 333 000e 03F5EC33 		add	r3, r3, #120832
 334 0012 DA69     		ldr	r2, [r3, #28]
 335 0014 42F48042 		orr	r2, r2, #16384
 336 0018 DA61     		str	r2, [r3, #28]
 337 001a DB69     		ldr	r3, [r3, #28]
 338 001c 03F48043 		and	r3, r3, #16384
 339 0020 0193     		str	r3, [sp, #4]
 340 0022 019B     		ldr	r3, [sp, #4]
 341              	.LBE6:
 166:Src/stm32f1xx_hal_msp.c ****   
 167:Src/stm32f1xx_hal_msp.c ****     /**SPI2 GPIO Configuration    
 168:Src/stm32f1xx_hal_msp.c ****     PB13     ------> SPI2_SCK
 169:Src/stm32f1xx_hal_msp.c ****     PB14     ------> SPI2_MISO
 170:Src/stm32f1xx_hal_msp.c ****     PB15     ------> SPI2_MOSI 
 171:Src/stm32f1xx_hal_msp.c ****     */
 172:Src/stm32f1xx_hal_msp.c ****     GPIO_InitStruct.Pin = GPIO_PIN_13|GPIO_PIN_15;
 342              		.loc 1 172 0
 343 0024 4FF42043 		mov	r3, #40960
 344 0028 0293     		str	r3, [sp, #8]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s 			page 10


 173:Src/stm32f1xx_hal_msp.c ****     GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
 345              		.loc 1 173 0
 346 002a 0223     		movs	r3, #2
 347 002c 0393     		str	r3, [sp, #12]
 174:Src/stm32f1xx_hal_msp.c ****     GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
 348              		.loc 1 174 0
 349 002e 0323     		movs	r3, #3
 350 0030 0593     		str	r3, [sp, #20]
 175:Src/stm32f1xx_hal_msp.c ****     HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);
 351              		.loc 1 175 0
 352 0032 094C     		ldr	r4, .L32+4
 353 0034 02A9     		add	r1, sp, #8
 354 0036 2046     		mov	r0, r4
 355              	.LVL23:
 356 0038 FFF7FEFF 		bl	HAL_GPIO_Init
 357              	.LVL24:
 176:Src/stm32f1xx_hal_msp.c **** 
 177:Src/stm32f1xx_hal_msp.c ****     GPIO_InitStruct.Pin = GPIO_PIN_14;
 358              		.loc 1 177 0
 359 003c 4FF48043 		mov	r3, #16384
 360 0040 0293     		str	r3, [sp, #8]
 178:Src/stm32f1xx_hal_msp.c ****     GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
 361              		.loc 1 178 0
 362 0042 0023     		movs	r3, #0
 363 0044 0393     		str	r3, [sp, #12]
 179:Src/stm32f1xx_hal_msp.c ****     GPIO_InitStruct.Pull = GPIO_NOPULL;
 364              		.loc 1 179 0
 365 0046 0493     		str	r3, [sp, #16]
 180:Src/stm32f1xx_hal_msp.c ****     HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);
 366              		.loc 1 180 0
 367 0048 02A9     		add	r1, sp, #8
 368 004a 2046     		mov	r0, r4
 369 004c FFF7FEFF 		bl	HAL_GPIO_Init
 370              	.LVL25:
 181:Src/stm32f1xx_hal_msp.c **** 
 182:Src/stm32f1xx_hal_msp.c ****   /* USER CODE BEGIN SPI2_MspInit 1 */
 183:Src/stm32f1xx_hal_msp.c **** 
 184:Src/stm32f1xx_hal_msp.c ****   /* USER CODE END SPI2_MspInit 1 */
 185:Src/stm32f1xx_hal_msp.c ****   }
 186:Src/stm32f1xx_hal_msp.c **** 
 187:Src/stm32f1xx_hal_msp.c **** }
 371              		.loc 1 187 0
 372 0050 06B0     		add	sp, sp, #24
 373              	.LCFI10:
 374              		.cfi_def_cfa_offset 8
 375              		@ sp needed
 376 0052 10BD     		pop	{r4, pc}
 377              	.L33:
 378              		.align	2
 379              	.L32:
 380 0054 00380040 		.word	1073756160
 381 0058 000C0140 		.word	1073810432
 382              		.cfi_endproc
 383              	.LFE69:
 385              		.section	.text.HAL_SPI_MspDeInit,"ax",%progbits
 386              		.align	1
 387              		.global	HAL_SPI_MspDeInit
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s 			page 11


 388              		.syntax unified
 389              		.thumb
 390              		.thumb_func
 391              		.fpu softvfp
 393              	HAL_SPI_MspDeInit:
 394              	.LFB70:
 188:Src/stm32f1xx_hal_msp.c **** 
 189:Src/stm32f1xx_hal_msp.c **** void HAL_SPI_MspDeInit(SPI_HandleTypeDef* hspi)
 190:Src/stm32f1xx_hal_msp.c **** {
 395              		.loc 1 190 0
 396              		.cfi_startproc
 397              		@ args = 0, pretend = 0, frame = 0
 398              		@ frame_needed = 0, uses_anonymous_args = 0
 399              	.LVL26:
 400 0000 08B5     		push	{r3, lr}
 401              	.LCFI11:
 402              		.cfi_def_cfa_offset 8
 403              		.cfi_offset 3, -8
 404              		.cfi_offset 14, -4
 191:Src/stm32f1xx_hal_msp.c **** 
 192:Src/stm32f1xx_hal_msp.c ****   if(hspi->Instance==SPI2)
 405              		.loc 1 192 0
 406 0002 0268     		ldr	r2, [r0]
 407 0004 074B     		ldr	r3, .L38
 408 0006 9A42     		cmp	r2, r3
 409 0008 00D0     		beq	.L37
 410              	.LVL27:
 411              	.L34:
 193:Src/stm32f1xx_hal_msp.c ****   {
 194:Src/stm32f1xx_hal_msp.c ****   /* USER CODE BEGIN SPI2_MspDeInit 0 */
 195:Src/stm32f1xx_hal_msp.c **** 
 196:Src/stm32f1xx_hal_msp.c ****   /* USER CODE END SPI2_MspDeInit 0 */
 197:Src/stm32f1xx_hal_msp.c ****     /* Peripheral clock disable */
 198:Src/stm32f1xx_hal_msp.c ****     __HAL_RCC_SPI2_CLK_DISABLE();
 199:Src/stm32f1xx_hal_msp.c ****   
 200:Src/stm32f1xx_hal_msp.c ****     /**SPI2 GPIO Configuration    
 201:Src/stm32f1xx_hal_msp.c ****     PB13     ------> SPI2_SCK
 202:Src/stm32f1xx_hal_msp.c ****     PB14     ------> SPI2_MISO
 203:Src/stm32f1xx_hal_msp.c ****     PB15     ------> SPI2_MOSI 
 204:Src/stm32f1xx_hal_msp.c ****     */
 205:Src/stm32f1xx_hal_msp.c ****     HAL_GPIO_DeInit(GPIOB, GPIO_PIN_13|GPIO_PIN_14|GPIO_PIN_15);
 206:Src/stm32f1xx_hal_msp.c **** 
 207:Src/stm32f1xx_hal_msp.c ****   /* USER CODE BEGIN SPI2_MspDeInit 1 */
 208:Src/stm32f1xx_hal_msp.c **** 
 209:Src/stm32f1xx_hal_msp.c ****   /* USER CODE END SPI2_MspDeInit 1 */
 210:Src/stm32f1xx_hal_msp.c ****   }
 211:Src/stm32f1xx_hal_msp.c **** 
 212:Src/stm32f1xx_hal_msp.c **** }
 412              		.loc 1 212 0
 413 000a 08BD     		pop	{r3, pc}
 414              	.LVL28:
 415              	.L37:
 198:Src/stm32f1xx_hal_msp.c ****   
 416              		.loc 1 198 0
 417 000c 064A     		ldr	r2, .L38+4
 418 000e D369     		ldr	r3, [r2, #28]
 419 0010 23F48043 		bic	r3, r3, #16384
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s 			page 12


 420 0014 D361     		str	r3, [r2, #28]
 205:Src/stm32f1xx_hal_msp.c **** 
 421              		.loc 1 205 0
 422 0016 4FF46041 		mov	r1, #57344
 423 001a 0448     		ldr	r0, .L38+8
 424              	.LVL29:
 425 001c FFF7FEFF 		bl	HAL_GPIO_DeInit
 426              	.LVL30:
 427              		.loc 1 212 0
 428 0020 F3E7     		b	.L34
 429              	.L39:
 430 0022 00BF     		.align	2
 431              	.L38:
 432 0024 00380040 		.word	1073756160
 433 0028 00100240 		.word	1073876992
 434 002c 000C0140 		.word	1073810432
 435              		.cfi_endproc
 436              	.LFE70:
 438              		.section	.rodata.HAL_ADC_MspInit.str1.4,"aMS",%progbits,1
 439              		.align	2
 440              	.LC0:
 441 0000 5372632F 		.ascii	"Src/stm32f1xx_hal_msp.c\000"
 441      73746D33 
 441      32663178 
 441      785F6861 
 441      6C5F6D73 
 442              		.text
 443              	.Letext0:
 444              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 445              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 446              		.file 4 "Drivers/CMSIS/Include/core_cm3.h"
 447              		.file 5 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/system_stm32f1xx.h"
 448              		.file 6 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
 449              		.file 7 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 450              		.file 8 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 451              		.file 9 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\lib\\gcc\\arm-none-eab
 452              		.file 10 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\includ
 453              		.file 11 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"
 454              		.file 12 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio.h"
 455              		.file 13 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma.h"
 456              		.file 14 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc.h"
 457              		.file 15 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_spi.h"
 458              		.file 16 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_cortex.h"
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s 			page 13


DEFINED SYMBOLS
                            *ABS*:00000000 stm32f1xx_hal_msp.c
C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s:16     .text.HAL_MspInit:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s:23     .text.HAL_MspInit:00000000 HAL_MspInit
C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s:124    .text.HAL_MspInit:00000098 $d
C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s:130    .text.HAL_ADC_MspInit:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s:137    .text.HAL_ADC_MspInit:00000000 HAL_ADC_MspInit
C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s:236    .text.HAL_ADC_MspInit:00000074 $d
C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s:245    .text.HAL_ADC_MspDeInit:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s:252    .text.HAL_ADC_MspDeInit:00000000 HAL_ADC_MspDeInit
C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s:294    .text.HAL_ADC_MspDeInit:00000028 $d
C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s:301    .text.HAL_SPI_MspInit:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s:308    .text.HAL_SPI_MspInit:00000000 HAL_SPI_MspInit
C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s:380    .text.HAL_SPI_MspInit:00000054 $d
C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s:386    .text.HAL_SPI_MspDeInit:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s:393    .text.HAL_SPI_MspDeInit:00000000 HAL_SPI_MspDeInit
C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s:432    .text.HAL_SPI_MspDeInit:00000024 $d
C:\Users\crist\AppData\Local\Temp\ccDCRAAk.s:439    .rodata.HAL_ADC_MspInit.str1.4:00000000 $d

UNDEFINED SYMBOLS
HAL_NVIC_SetPriorityGrouping
HAL_NVIC_SetPriority
HAL_GPIO_Init
HAL_DMA_Init
_Error_Handler
hdma_adc1
HAL_GPIO_DeInit
HAL_DMA_DeInit
