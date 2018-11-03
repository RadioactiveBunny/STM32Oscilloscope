ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 1


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
  11              		.file	"ili93412.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.ILI9341_SPI_Error,"ax",%progbits
  16              		.align	1
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu softvfp
  22              	ILI9341_SPI_Error:
  23              	.LFB66:
  24              		.file 1 "Src/ili93412.c"
   1:Src/ili93412.c **** #include "main.h"
   2:Src/ili93412.c **** #include "stm32f1xx_hal.h"
   3:Src/ili93412.c **** #include "ili9341.h"
   4:Src/ili93412.c **** #include "font.h"
   5:Src/ili93412.c **** 
   6:Src/ili93412.c **** #define WAIT_TX_CHECK_TIMEOUT(Timeout) \
   7:Src/ili93412.c **** while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE))) \
   8:Src/ili93412.c **** { \
   9:Src/ili93412.c **** 	if((HAL_GetTick()-tickstart_local) >=  Timeout) \
  10:Src/ili93412.c **** 	{ \
  11:Src/ili93412.c **** 		return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT); \
  12:Src/ili93412.c **** 	} \
  13:Src/ili93412.c **** } \
  14:Src/ili93412.c **** 
  15:Src/ili93412.c **** 
  16:Src/ili93412.c **** static __attribute__((noinline)) HAL_StatusTypeDef ILI9341_SPI_Error(SPI_HandleTypeDef* hspi_handle
  17:Src/ili93412.c **** {
  25              		.loc 1 17 0
  26              		.cfi_startproc
  27              		@ args = 0, pretend = 0, frame = 0
  28              		@ frame_needed = 0, uses_anonymous_args = 0
  29              		@ link register save eliminated.
  30              	.LVL0:
  18:Src/ili93412.c **** 	hspi_handle->State = HAL_SPI_STATE_READY;
  31              		.loc 1 18 0
  32 0000 0123     		movs	r3, #1
  33 0002 80F85130 		strb	r3, [r0, #81]
  19:Src/ili93412.c **** 	__HAL_UNLOCK(hspi_handle);
  34              		.loc 1 19 0
  35 0006 0023     		movs	r3, #0
  36 0008 80F85030 		strb	r3, [r0, #80]
  20:Src/ili93412.c **** 	LCD_CS_PORT->BSRR = LCD_CS_PIN;
  37              		.loc 1 20 0
  38 000c 03F18043 		add	r3, r3, #1073741824
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 2


  39 0010 03F58433 		add	r3, r3, #67584
  40 0014 4FF40042 		mov	r2, #32768
  41 0018 1A61     		str	r2, [r3, #16]
  21:Src/ili93412.c **** 	return errorcode;
  22:Src/ili93412.c **** }
  42              		.loc 1 22 0
  43 001a 0846     		mov	r0, r1
  44              	.LVL1:
  45 001c 7047     		bx	lr
  46              		.cfi_endproc
  47              	.LFE66:
  49              		.section	.text.ILI9341_SPI_BeginDraw,"ax",%progbits
  50              		.align	1
  51              		.global	ILI9341_SPI_BeginDraw
  52              		.syntax unified
  53              		.thumb
  54              		.thumb_func
  55              		.fpu softvfp
  57              	ILI9341_SPI_BeginDraw:
  58              	.LFB67:
  23:Src/ili93412.c **** 
  24:Src/ili93412.c **** 
  25:Src/ili93412.c **** HAL_StatusTypeDef ILI9341_SPI_BeginDraw(SPI_HandleTypeDef* hspi_handle)
  26:Src/ili93412.c **** {
  59              		.loc 1 26 0
  60              		.cfi_startproc
  61              		@ args = 0, pretend = 0, frame = 0
  62              		@ frame_needed = 0, uses_anonymous_args = 0
  63              	.LVL2:
  64 0000 08B5     		push	{r3, lr}
  65              	.LCFI0:
  66              		.cfi_def_cfa_offset 8
  67              		.cfi_offset 3, -8
  68              		.cfi_offset 14, -4
  27:Src/ili93412.c **** 	/*chip select ili9341*/
  28:Src/ili93412.c **** 	LCD_CS_PORT->BSRR=(uint32_t)LCD_CS_PIN << 16U;
  69              		.loc 1 28 0
  70 0002 1B4B     		ldr	r3, .L11
  71 0004 4FF00042 		mov	r2, #-2147483648
  72 0008 1A61     		str	r2, [r3, #16]
  29:Src/ili93412.c **** 
  30:Src/ili93412.c **** 	/* Check Direction parameter */
  31:Src/ili93412.c **** 	assert_param(IS_SPI_DIRECTION_2LINES_OR_1LINE(hspi_handle->Init.Direction));
  32:Src/ili93412.c **** 
  33:Src/ili93412.c **** 	/* Process Locked */
  34:Src/ili93412.c **** 	__HAL_LOCK(hspi_handle);
  73              		.loc 1 34 0
  74 000a 90F85030 		ldrb	r3, [r0, #80]	@ zero_extendqisi2
  75 000e 012B     		cmp	r3, #1
  76 0010 2AD0     		beq	.L6
  77              		.loc 1 34 0 is_stmt 0 discriminator 2
  78 0012 0123     		movs	r3, #1
  79 0014 80F85030 		strb	r3, [r0, #80]
  35:Src/ili93412.c **** 
  36:Src/ili93412.c **** 	if(hspi_handle->State != HAL_SPI_STATE_READY)
  80              		.loc 1 36 0 is_stmt 1 discriminator 2
  81 0018 90F85130 		ldrb	r3, [r0, #81]	@ zero_extendqisi2
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 3


  82 001c DBB2     		uxtb	r3, r3
  83 001e 012B     		cmp	r3, #1
  84 0020 18D1     		bne	.L9
  37:Src/ili93412.c **** 	{
  38:Src/ili93412.c **** 		return ILI9341_SPI_Error(hspi_handle, HAL_BUSY);
  39:Src/ili93412.c **** 	}
  40:Src/ili93412.c **** 
  41:Src/ili93412.c **** 	/* Set the transaction information */
  42:Src/ili93412.c **** 	hspi_handle->State       = HAL_SPI_STATE_BUSY_TX;
  85              		.loc 1 42 0
  86 0022 0323     		movs	r3, #3
  87 0024 80F85130 		strb	r3, [r0, #81]
  43:Src/ili93412.c **** 	hspi_handle->ErrorCode   = HAL_SPI_ERROR_NONE;
  88              		.loc 1 43 0
  89 0028 0023     		movs	r3, #0
  90 002a 4365     		str	r3, [r0, #84]
  44:Src/ili93412.c **** 
  45:Src/ili93412.c **** 	/*Init field not used in handle to zero */
  46:Src/ili93412.c **** 	hspi_handle->pRxBuffPtr  = (uint8_t *)NULL;
  91              		.loc 1 46 0
  92 002c 8363     		str	r3, [r0, #56]
  47:Src/ili93412.c **** 	hspi_handle->RxXferSize  = 0U;
  93              		.loc 1 47 0
  94 002e 8387     		strh	r3, [r0, #60]	@ movhi
  48:Src/ili93412.c **** 	hspi_handle->RxXferCount = 0U;
  95              		.loc 1 48 0
  96 0030 C387     		strh	r3, [r0, #62]	@ movhi
  49:Src/ili93412.c **** 	hspi_handle->TxISR       = NULL;
  97              		.loc 1 49 0
  98 0032 4364     		str	r3, [r0, #68]
  50:Src/ili93412.c **** 	hspi_handle->RxISR       = NULL;
  99              		.loc 1 50 0
 100 0034 0364     		str	r3, [r0, #64]
  51:Src/ili93412.c **** 
  52:Src/ili93412.c **** 	/* Configure communication direction : 1Line */
  53:Src/ili93412.c **** 	if(hspi_handle->Init.Direction == SPI_DIRECTION_1LINE)
 101              		.loc 1 53 0
 102 0036 8368     		ldr	r3, [r0, #8]
 103 0038 B3F5004F 		cmp	r3, #32768
 104 003c 0ED0     		beq	.L10
 105              	.L5:
  54:Src/ili93412.c **** 	{
  55:Src/ili93412.c **** 		SPI_1LINE_TX(hspi_handle);
  56:Src/ili93412.c **** 	}
  57:Src/ili93412.c **** 
  58:Src/ili93412.c **** 	#if (USE_SPI_CRC != 0U)
  59:Src/ili93412.c **** 	/* Reset CRC Calculation */
  60:Src/ili93412.c **** 	if(hspi_handle->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
  61:Src/ili93412.c **** 	{
  62:Src/ili93412.c **** 		SPI_RESET_CRC(hspi_handle);
  63:Src/ili93412.c **** 	}
  64:Src/ili93412.c **** 	#endif /* USE_SPI_CRC */
  65:Src/ili93412.c **** 
  66:Src/ili93412.c **** 	/* Check if the SPI is already enabled */
  67:Src/ili93412.c **** 	if((hspi_handle->Instance->CR1 & SPI_CR1_SPE) != SPI_CR1_SPE)
 106              		.loc 1 67 0
 107 003e 0368     		ldr	r3, [r0]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 4


 108 0040 1A68     		ldr	r2, [r3]
 109 0042 12F0400F 		tst	r2, #64
 110 0046 11D1     		bne	.L7
  68:Src/ili93412.c **** 	{
  69:Src/ili93412.c **** 		/* Enable SPI peripheral */
  70:Src/ili93412.c **** 		__HAL_SPI_ENABLE(hspi_handle);
 111              		.loc 1 70 0
 112 0048 1A68     		ldr	r2, [r3]
 113 004a 42F04002 		orr	r2, r2, #64
 114 004e 1A60     		str	r2, [r3]
  71:Src/ili93412.c **** 	}
  72:Src/ili93412.c **** 	return HAL_OK;
 115              		.loc 1 72 0
 116 0050 0020     		movs	r0, #0
 117              	.LVL3:
 118 0052 02E0     		b	.L3
 119              	.LVL4:
 120              	.L9:
  38:Src/ili93412.c **** 	}
 121              		.loc 1 38 0
 122 0054 0221     		movs	r1, #2
 123 0056 FFF7FEFF 		bl	ILI9341_SPI_Error
 124              	.LVL5:
 125              	.L3:
  73:Src/ili93412.c **** }
 126              		.loc 1 73 0
 127 005a 08BD     		pop	{r3, pc}
 128              	.LVL6:
 129              	.L10:
  55:Src/ili93412.c **** 	}
 130              		.loc 1 55 0
 131 005c 0268     		ldr	r2, [r0]
 132 005e 1368     		ldr	r3, [r2]
 133 0060 43F48043 		orr	r3, r3, #16384
 134 0064 1360     		str	r3, [r2]
 135 0066 EAE7     		b	.L5
 136              	.L6:
  34:Src/ili93412.c **** 
 137              		.loc 1 34 0
 138 0068 0220     		movs	r0, #2
 139              	.LVL7:
 140 006a F6E7     		b	.L3
 141              	.LVL8:
 142              	.L7:
  72:Src/ili93412.c **** }
 143              		.loc 1 72 0
 144 006c 0020     		movs	r0, #0
 145              	.LVL9:
 146 006e F4E7     		b	.L3
 147              	.L12:
 148              		.align	2
 149              	.L11:
 150 0070 00080140 		.word	1073809408
 151              		.cfi_endproc
 152              	.LFE67:
 154              		.section	.text.ILI9341_SPI_StopDraw,"ax",%progbits
 155              		.align	1
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 5


 156              		.global	ILI9341_SPI_StopDraw
 157              		.syntax unified
 158              		.thumb
 159              		.thumb_func
 160              		.fpu softvfp
 162              	ILI9341_SPI_StopDraw:
 163              	.LFB68:
  74:Src/ili93412.c **** 
  75:Src/ili93412.c **** 
  76:Src/ili93412.c **** HAL_StatusTypeDef ILI9341_SPI_StopDraw(SPI_HandleTypeDef* hspi_handle)
  77:Src/ili93412.c **** {
 164              		.loc 1 77 0
 165              		.cfi_startproc
 166              		@ args = 0, pretend = 0, frame = 8
 167              		@ frame_needed = 0, uses_anonymous_args = 0
 168              	.LVL10:
 169 0000 00B5     		push	{lr}
 170              	.LCFI1:
 171              		.cfi_def_cfa_offset 4
 172              		.cfi_offset 14, -4
 173 0002 83B0     		sub	sp, sp, #12
 174              	.LCFI2:
 175              		.cfi_def_cfa_offset 16
  78:Src/ili93412.c **** 	/* Clear overrun flag in 2 Lines communication mode because received is not read */
  79:Src/ili93412.c **** 	if(hspi_handle->Init.Direction == SPI_DIRECTION_2LINES)
 176              		.loc 1 79 0
 177 0004 8368     		ldr	r3, [r0, #8]
 178 0006 33B9     		cbnz	r3, .L14
 179              	.LBB2:
  80:Src/ili93412.c **** 	{
  81:Src/ili93412.c **** 		__HAL_SPI_CLEAR_OVRFLAG(hspi_handle);
 180              		.loc 1 81 0
 181 0008 0193     		str	r3, [sp, #4]
 182 000a 0368     		ldr	r3, [r0]
 183 000c DA68     		ldr	r2, [r3, #12]
 184 000e 0192     		str	r2, [sp, #4]
 185 0010 9B68     		ldr	r3, [r3, #8]
 186 0012 0193     		str	r3, [sp, #4]
 187 0014 019B     		ldr	r3, [sp, #4]
 188              	.L14:
 189              	.LBE2:
  82:Src/ili93412.c **** 	}
  83:Src/ili93412.c **** 	#if (USE_SPI_CRC != 0U)
  84:Src/ili93412.c **** 	/* Enable CRC Transmission */
  85:Src/ili93412.c **** 	if(hspi_handle->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
  86:Src/ili93412.c **** 	{
  87:Src/ili93412.c **** 		SET_BIT(hspi_handle->Instance->CR1, SPI_CR1_CRCNEXT);
  88:Src/ili93412.c **** 	}
  89:Src/ili93412.c **** 	#endif /* USE_SPI_CRC */
  90:Src/ili93412.c **** 
  91:Src/ili93412.c **** 	if(hspi_handle->ErrorCode != HAL_SPI_ERROR_NONE)
 190              		.loc 1 91 0
 191 0016 436D     		ldr	r3, [r0, #84]
 192 0018 4BB9     		cbnz	r3, .L18
  92:Src/ili93412.c **** 	{
  93:Src/ili93412.c **** 		return ILI9341_SPI_Error(hspi_handle, HAL_ERROR);
  94:Src/ili93412.c **** 	}
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 6


  95:Src/ili93412.c **** 	LCD_CS_PORT->BSRR=(uint32_t)LCD_CS_PIN << 16U;
 193              		.loc 1 95 0
 194 001a 074B     		ldr	r3, .L19
 195 001c 4FF00042 		mov	r2, #-2147483648
 196 0020 1A61     		str	r2, [r3, #16]
  96:Src/ili93412.c **** 	return ILI9341_SPI_Error(hspi_handle, HAL_OK);
 197              		.loc 1 96 0
 198 0022 0021     		movs	r1, #0
 199 0024 FFF7FEFF 		bl	ILI9341_SPI_Error
 200              	.LVL11:
 201              	.L16:
  97:Src/ili93412.c **** }
 202              		.loc 1 97 0
 203 0028 03B0     		add	sp, sp, #12
 204              	.LCFI3:
 205              		.cfi_remember_state
 206              		.cfi_def_cfa_offset 4
 207              		@ sp needed
 208 002a 5DF804FB 		ldr	pc, [sp], #4
 209              	.LVL12:
 210              	.L18:
 211              	.LCFI4:
 212              		.cfi_restore_state
  93:Src/ili93412.c **** 	}
 213              		.loc 1 93 0
 214 002e 0121     		movs	r1, #1
 215 0030 FFF7FEFF 		bl	ILI9341_SPI_Error
 216              	.LVL13:
 217 0034 F8E7     		b	.L16
 218              	.L20:
 219 0036 00BF     		.align	2
 220              	.L19:
 221 0038 00080140 		.word	1073809408
 222              		.cfi_endproc
 223              	.LFE68:
 225              		.section	.text.ILI9341_Write_Command,"ax",%progbits
 226              		.align	1
 227              		.global	ILI9341_Write_Command
 228              		.syntax unified
 229              		.thumb
 230              		.thumb_func
 231              		.fpu softvfp
 233              	ILI9341_Write_Command:
 234              	.LFB69:
  98:Src/ili93412.c **** 
  99:Src/ili93412.c **** 
 100:Src/ili93412.c **** /* Send command (char) to LCD */
 101:Src/ili93412.c **** HAL_StatusTypeDef ILI9341_Write_Command(SPI_HandleTypeDef* hspi_handle, uint8_t Command)
 102:Src/ili93412.c **** {
 235              		.loc 1 102 0
 236              		.cfi_startproc
 237              		@ args = 0, pretend = 0, frame = 0
 238              		@ frame_needed = 0, uses_anonymous_args = 0
 239              	.LVL14:
 240 0000 70B5     		push	{r4, r5, r6, lr}
 241              	.LCFI5:
 242              		.cfi_def_cfa_offset 16
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 7


 243              		.cfi_offset 4, -16
 244              		.cfi_offset 5, -12
 245              		.cfi_offset 6, -8
 246              		.cfi_offset 14, -4
 247 0002 0446     		mov	r4, r0
 248 0004 0E46     		mov	r6, r1
 103:Src/ili93412.c **** 	const uint32_t tickstart_local = HAL_GetTick();
 249              		.loc 1 103 0
 250 0006 FFF7FEFF 		bl	HAL_GetTick
 251              	.LVL15:
 252 000a 0546     		mov	r5, r0
 253              	.LVL16:
 104:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
 254              		.loc 1 104 0
 255 000c 0D4B     		ldr	r3, .L27
 256 000e 4FF08052 		mov	r2, #268435456
 257 0012 1A61     		str	r2, [r3, #16]
 105:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)Command;
 258              		.loc 1 105 0
 259 0014 2368     		ldr	r3, [r4]
 260 0016 1E73     		strb	r6, [r3, #12]
 261              	.LVL17:
 262              	.L22:
 106:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(2)
 263              		.loc 1 106 0 discriminator 2
 264 0018 2368     		ldr	r3, [r4]
 265 001a 9B68     		ldr	r3, [r3, #8]
 266 001c 13F0020F 		tst	r3, #2
 267 0020 09D1     		bne	.L26
 268              		.loc 1 106 0 is_stmt 0 discriminator 3
 269 0022 FFF7FEFF 		bl	HAL_GetTick
 270              	.LVL18:
 271 0026 401B     		subs	r0, r0, r5
 272 0028 0128     		cmp	r0, #1
 273 002a F5D9     		bls	.L22
 274              		.loc 1 106 0 discriminator 1
 275 002c 0321     		movs	r1, #3
 276 002e 2046     		mov	r0, r4
 277 0030 FFF7FEFF 		bl	ILI9341_SPI_Error
 278              	.LVL19:
 279 0034 04E0     		b	.L23
 280              	.L26:
 107:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 281              		.loc 1 107 0 is_stmt 1
 282 0036 034B     		ldr	r3, .L27
 283 0038 4FF48052 		mov	r2, #4096
 284 003c 1A61     		str	r2, [r3, #16]
 108:Src/ili93412.c **** 	return HAL_OK;
 285              		.loc 1 108 0
 286 003e 0020     		movs	r0, #0
 287              	.L23:
 109:Src/ili93412.c **** }
 288              		.loc 1 109 0
 289 0040 70BD     		pop	{r4, r5, r6, pc}
 290              	.LVL20:
 291              	.L28:
 292 0042 00BF     		.align	2
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 8


 293              	.L27:
 294 0044 00080140 		.word	1073809408
 295              		.cfi_endproc
 296              	.LFE69:
 298              		.section	.text.ILI9341_Write_Data,"ax",%progbits
 299              		.align	1
 300              		.global	ILI9341_Write_Data
 301              		.syntax unified
 302              		.thumb
 303              		.thumb_func
 304              		.fpu softvfp
 306              	ILI9341_Write_Data:
 307              	.LFB70:
 110:Src/ili93412.c **** 
 111:Src/ili93412.c **** 
 112:Src/ili93412.c **** /* Send Data (char) to LCD */
 113:Src/ili93412.c **** HAL_StatusTypeDef ILI9341_Write_Data(SPI_HandleTypeDef* hspi_handle, uint8_t Data)
 114:Src/ili93412.c **** {
 308              		.loc 1 114 0
 309              		.cfi_startproc
 310              		@ args = 0, pretend = 0, frame = 0
 311              		@ frame_needed = 0, uses_anonymous_args = 0
 312              	.LVL21:
 313 0000 70B5     		push	{r4, r5, r6, lr}
 314              	.LCFI6:
 315              		.cfi_def_cfa_offset 16
 316              		.cfi_offset 4, -16
 317              		.cfi_offset 5, -12
 318              		.cfi_offset 6, -8
 319              		.cfi_offset 14, -4
 320 0002 0446     		mov	r4, r0
 321 0004 0E46     		mov	r6, r1
 115:Src/ili93412.c **** 	const uint32_t tickstart_local = HAL_GetTick();
 322              		.loc 1 115 0
 323 0006 FFF7FEFF 		bl	HAL_GetTick
 324              	.LVL22:
 325 000a 0546     		mov	r5, r0
 326              	.LVL23:
 116:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)Data;
 327              		.loc 1 116 0
 328 000c 2368     		ldr	r3, [r4]
 329 000e 1E73     		strb	r6, [r3, #12]
 330              	.LVL24:
 331              	.L30:
 117:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(2)
 332              		.loc 1 117 0 discriminator 2
 333 0010 2368     		ldr	r3, [r4]
 334 0012 9B68     		ldr	r3, [r3, #8]
 335 0014 13F0020F 		tst	r3, #2
 336 0018 09D1     		bne	.L34
 337              		.loc 1 117 0 is_stmt 0 discriminator 3
 338 001a FFF7FEFF 		bl	HAL_GetTick
 339              	.LVL25:
 340 001e 401B     		subs	r0, r0, r5
 341 0020 0128     		cmp	r0, #1
 342 0022 F5D9     		bls	.L30
 343              		.loc 1 117 0 discriminator 1
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 9


 344 0024 0321     		movs	r1, #3
 345 0026 2046     		mov	r0, r4
 346 0028 FFF7FEFF 		bl	ILI9341_SPI_Error
 347              	.LVL26:
 348 002c 00E0     		b	.L31
 349              	.L34:
 118:Src/ili93412.c **** 	return HAL_OK;
 350              		.loc 1 118 0 is_stmt 1
 351 002e 0020     		movs	r0, #0
 352              	.L31:
 119:Src/ili93412.c **** }
 353              		.loc 1 119 0
 354 0030 70BD     		pop	{r4, r5, r6, pc}
 355              		.cfi_endproc
 356              	.LFE70:
 358              		.section	.text.ILI9341_Enable,"ax",%progbits
 359              		.align	1
 360              		.global	ILI9341_Enable
 361              		.syntax unified
 362              		.thumb
 363              		.thumb_func
 364              		.fpu softvfp
 366              	ILI9341_Enable:
 367              	.LFB71:
 120:Src/ili93412.c **** 
 121:Src/ili93412.c **** 
 122:Src/ili93412.c **** void ILI9341_Enable(void)
 123:Src/ili93412.c **** {
 368              		.loc 1 123 0
 369              		.cfi_startproc
 370              		@ args = 0, pretend = 0, frame = 0
 371              		@ frame_needed = 0, uses_anonymous_args = 0
 372              		@ link register save eliminated.
 124:Src/ili93412.c **** 	LCD_RST_PORT->BSRR = LCD_RST_PIN;
 373              		.loc 1 124 0
 374 0000 024B     		ldr	r3, .L36
 375 0002 4FF40062 		mov	r2, #2048
 376 0006 1A61     		str	r2, [r3, #16]
 125:Src/ili93412.c **** }
 377              		.loc 1 125 0
 378 0008 7047     		bx	lr
 379              	.L37:
 380 000a 00BF     		.align	2
 381              	.L36:
 382 000c 00080140 		.word	1073809408
 383              		.cfi_endproc
 384              	.LFE71:
 386              		.section	.text.ILI9341_Reset,"ax",%progbits
 387              		.align	1
 388              		.global	ILI9341_Reset
 389              		.syntax unified
 390              		.thumb
 391              		.thumb_func
 392              		.fpu softvfp
 394              	ILI9341_Reset:
 395              	.LFB72:
 126:Src/ili93412.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 10


 127:Src/ili93412.c **** 
 128:Src/ili93412.c **** void ILI9341_Reset(void)
 129:Src/ili93412.c **** {
 396              		.loc 1 129 0
 397              		.cfi_startproc
 398              		@ args = 0, pretend = 0, frame = 0
 399              		@ frame_needed = 0, uses_anonymous_args = 0
 400 0000 10B5     		push	{r4, lr}
 401              	.LCFI7:
 402              		.cfi_def_cfa_offset 8
 403              		.cfi_offset 4, -8
 404              		.cfi_offset 14, -4
 130:Src/ili93412.c **** 	LCD_RST_PORT->BSRR =(uint32_t)LCD_RST_PIN<<16U;
 405              		.loc 1 130 0
 406 0002 064C     		ldr	r4, .L40
 407 0004 4FF00063 		mov	r3, #134217728
 408 0008 2361     		str	r3, [r4, #16]
 131:Src/ili93412.c **** 	HAL_Delay(400);
 409              		.loc 1 131 0
 410 000a 4FF4C870 		mov	r0, #400
 411 000e FFF7FEFF 		bl	HAL_Delay
 412              	.LVL27:
 132:Src/ili93412.c **** 	LCD_RST_PORT->BSRR = LCD_RST_PIN;
 413              		.loc 1 132 0
 414 0012 4FF40063 		mov	r3, #2048
 415 0016 2361     		str	r3, [r4, #16]
 133:Src/ili93412.c **** }
 416              		.loc 1 133 0
 417 0018 10BD     		pop	{r4, pc}
 418              	.L41:
 419 001a 00BF     		.align	2
 420              	.L40:
 421 001c 00080140 		.word	1073809408
 422              		.cfi_endproc
 423              	.LFE72:
 425              		.section	.text.ILI9341_Init,"ax",%progbits
 426              		.align	1
 427              		.global	ILI9341_Init
 428              		.syntax unified
 429              		.thumb
 430              		.thumb_func
 431              		.fpu softvfp
 433              	ILI9341_Init:
 434              	.LFB73:
 134:Src/ili93412.c **** 
 135:Src/ili93412.c **** 
 136:Src/ili93412.c **** /*Initialize LCD display*/
 137:Src/ili93412.c **** HAL_StatusTypeDef ILI9341_Init(SPI_HandleTypeDef* hspi_handle)
 138:Src/ili93412.c **** {
 435              		.loc 1 138 0
 436              		.cfi_startproc
 437              		@ args = 0, pretend = 0, frame = 0
 438              		@ frame_needed = 0, uses_anonymous_args = 0
 439              	.LVL28:
 440 0000 10B5     		push	{r4, lr}
 441              	.LCFI8:
 442              		.cfi_def_cfa_offset 8
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 11


 443              		.cfi_offset 4, -8
 444              		.cfi_offset 14, -4
 445 0002 0446     		mov	r4, r0
 139:Src/ili93412.c **** 	ILI9341_Enable();
 446              		.loc 1 139 0
 447 0004 FFF7FEFF 		bl	ILI9341_Enable
 448              	.LVL29:
 140:Src/ili93412.c **** 	ILI9341_Reset();
 449              		.loc 1 140 0
 450 0008 FFF7FEFF 		bl	ILI9341_Reset
 451              	.LVL30:
 141:Src/ili93412.c **** 	//SOFTWARE RESET
 142:Src/ili93412.c **** 	if(ILI9341_SPI_BeginDraw(hspi_handle) != HAL_OK)
 452              		.loc 1 142 0
 453 000c 2046     		mov	r0, r4
 454 000e FFF7FEFF 		bl	ILI9341_SPI_BeginDraw
 455              	.LVL31:
 456 0012 0028     		cmp	r0, #0
 457 0014 40F05F81 		bne	.L44
 143:Src/ili93412.c **** 		return HAL_BUSY;
 144:Src/ili93412.c **** 
 145:Src/ili93412.c **** 	ILI9341_Write_Command(hspi_handle, 0x01);
 458              		.loc 1 145 0
 459 0018 0121     		movs	r1, #1
 460 001a 2046     		mov	r0, r4
 461 001c FFF7FEFF 		bl	ILI9341_Write_Command
 462              	.LVL32:
 146:Src/ili93412.c **** 	HAL_Delay(1000);
 463              		.loc 1 146 0
 464 0020 4FF47A70 		mov	r0, #1000
 465 0024 FFF7FEFF 		bl	HAL_Delay
 466              	.LVL33:
 147:Src/ili93412.c **** 
 148:Src/ili93412.c **** 	//POWER CONTROL A
 149:Src/ili93412.c **** 	ILI9341_Write_Command(hspi_handle, 0xCB);
 467              		.loc 1 149 0
 468 0028 CB21     		movs	r1, #203
 469 002a 2046     		mov	r0, r4
 470 002c FFF7FEFF 		bl	ILI9341_Write_Command
 471              	.LVL34:
 150:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x39);
 472              		.loc 1 150 0
 473 0030 3921     		movs	r1, #57
 474 0032 2046     		mov	r0, r4
 475 0034 FFF7FEFF 		bl	ILI9341_Write_Data
 476              	.LVL35:
 151:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x2C);
 477              		.loc 1 151 0
 478 0038 2C21     		movs	r1, #44
 479 003a 2046     		mov	r0, r4
 480 003c FFF7FEFF 		bl	ILI9341_Write_Data
 481              	.LVL36:
 152:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
 482              		.loc 1 152 0
 483 0040 0021     		movs	r1, #0
 484 0042 2046     		mov	r0, r4
 485 0044 FFF7FEFF 		bl	ILI9341_Write_Data
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 12


 486              	.LVL37:
 153:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x34);
 487              		.loc 1 153 0
 488 0048 3421     		movs	r1, #52
 489 004a 2046     		mov	r0, r4
 490 004c FFF7FEFF 		bl	ILI9341_Write_Data
 491              	.LVL38:
 154:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x02);
 492              		.loc 1 154 0
 493 0050 0221     		movs	r1, #2
 494 0052 2046     		mov	r0, r4
 495 0054 FFF7FEFF 		bl	ILI9341_Write_Data
 496              	.LVL39:
 155:Src/ili93412.c **** 
 156:Src/ili93412.c **** 	//POWER CONTROL B
 157:Src/ili93412.c **** 	ILI9341_Write_Command(hspi_handle, 0xCF);
 497              		.loc 1 157 0
 498 0058 CF21     		movs	r1, #207
 499 005a 2046     		mov	r0, r4
 500 005c FFF7FEFF 		bl	ILI9341_Write_Command
 501              	.LVL40:
 158:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
 502              		.loc 1 158 0
 503 0060 0021     		movs	r1, #0
 504 0062 2046     		mov	r0, r4
 505 0064 FFF7FEFF 		bl	ILI9341_Write_Data
 506              	.LVL41:
 159:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0xC1);
 507              		.loc 1 159 0
 508 0068 C121     		movs	r1, #193
 509 006a 2046     		mov	r0, r4
 510 006c FFF7FEFF 		bl	ILI9341_Write_Data
 511              	.LVL42:
 160:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x30);
 512              		.loc 1 160 0
 513 0070 3021     		movs	r1, #48
 514 0072 2046     		mov	r0, r4
 515 0074 FFF7FEFF 		bl	ILI9341_Write_Data
 516              	.LVL43:
 161:Src/ili93412.c **** 
 162:Src/ili93412.c **** 	//DRIVER TIMING CONTROL A
 163:Src/ili93412.c **** 	ILI9341_Write_Command(hspi_handle, 0xE8);
 517              		.loc 1 163 0
 518 0078 E821     		movs	r1, #232
 519 007a 2046     		mov	r0, r4
 520 007c FFF7FEFF 		bl	ILI9341_Write_Command
 521              	.LVL44:
 164:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x85);
 522              		.loc 1 164 0
 523 0080 8521     		movs	r1, #133
 524 0082 2046     		mov	r0, r4
 525 0084 FFF7FEFF 		bl	ILI9341_Write_Data
 526              	.LVL45:
 165:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
 527              		.loc 1 165 0
 528 0088 0021     		movs	r1, #0
 529 008a 2046     		mov	r0, r4
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 13


 530 008c FFF7FEFF 		bl	ILI9341_Write_Data
 531              	.LVL46:
 166:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x78);
 532              		.loc 1 166 0
 533 0090 7821     		movs	r1, #120
 534 0092 2046     		mov	r0, r4
 535 0094 FFF7FEFF 		bl	ILI9341_Write_Data
 536              	.LVL47:
 167:Src/ili93412.c **** 
 168:Src/ili93412.c **** 	//DRIVER TIMING CONTROL B
 169:Src/ili93412.c **** 	ILI9341_Write_Command(hspi_handle, 0xEA);
 537              		.loc 1 169 0
 538 0098 EA21     		movs	r1, #234
 539 009a 2046     		mov	r0, r4
 540 009c FFF7FEFF 		bl	ILI9341_Write_Command
 541              	.LVL48:
 170:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
 542              		.loc 1 170 0
 543 00a0 0021     		movs	r1, #0
 544 00a2 2046     		mov	r0, r4
 545 00a4 FFF7FEFF 		bl	ILI9341_Write_Data
 546              	.LVL49:
 171:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
 547              		.loc 1 171 0
 548 00a8 0021     		movs	r1, #0
 549 00aa 2046     		mov	r0, r4
 550 00ac FFF7FEFF 		bl	ILI9341_Write_Data
 551              	.LVL50:
 172:Src/ili93412.c **** 
 173:Src/ili93412.c **** 	//POWER ON SEQUENCE CONTROL
 174:Src/ili93412.c **** 	ILI9341_Write_Command(hspi_handle, 0xED);
 552              		.loc 1 174 0
 553 00b0 ED21     		movs	r1, #237
 554 00b2 2046     		mov	r0, r4
 555 00b4 FFF7FEFF 		bl	ILI9341_Write_Command
 556              	.LVL51:
 175:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x64);
 557              		.loc 1 175 0
 558 00b8 6421     		movs	r1, #100
 559 00ba 2046     		mov	r0, r4
 560 00bc FFF7FEFF 		bl	ILI9341_Write_Data
 561              	.LVL52:
 176:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x03);
 562              		.loc 1 176 0
 563 00c0 0321     		movs	r1, #3
 564 00c2 2046     		mov	r0, r4
 565 00c4 FFF7FEFF 		bl	ILI9341_Write_Data
 566              	.LVL53:
 177:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x12);
 567              		.loc 1 177 0
 568 00c8 1221     		movs	r1, #18
 569 00ca 2046     		mov	r0, r4
 570 00cc FFF7FEFF 		bl	ILI9341_Write_Data
 571              	.LVL54:
 178:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x81);
 572              		.loc 1 178 0
 573 00d0 8121     		movs	r1, #129
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 14


 574 00d2 2046     		mov	r0, r4
 575 00d4 FFF7FEFF 		bl	ILI9341_Write_Data
 576              	.LVL55:
 179:Src/ili93412.c **** 
 180:Src/ili93412.c **** 	//PUMP RATIO CONTROL
 181:Src/ili93412.c **** 	ILI9341_Write_Command(hspi_handle, 0xF7);
 577              		.loc 1 181 0
 578 00d8 F721     		movs	r1, #247
 579 00da 2046     		mov	r0, r4
 580 00dc FFF7FEFF 		bl	ILI9341_Write_Command
 581              	.LVL56:
 182:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x20);
 582              		.loc 1 182 0
 583 00e0 2021     		movs	r1, #32
 584 00e2 2046     		mov	r0, r4
 585 00e4 FFF7FEFF 		bl	ILI9341_Write_Data
 586              	.LVL57:
 183:Src/ili93412.c **** 
 184:Src/ili93412.c **** 	//POWER CONTROL,VRH[5:0]
 185:Src/ili93412.c **** 	ILI9341_Write_Command(hspi_handle, 0xC0);
 587              		.loc 1 185 0
 588 00e8 C021     		movs	r1, #192
 589 00ea 2046     		mov	r0, r4
 590 00ec FFF7FEFF 		bl	ILI9341_Write_Command
 591              	.LVL58:
 186:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x23);
 592              		.loc 1 186 0
 593 00f0 2321     		movs	r1, #35
 594 00f2 2046     		mov	r0, r4
 595 00f4 FFF7FEFF 		bl	ILI9341_Write_Data
 596              	.LVL59:
 187:Src/ili93412.c **** 
 188:Src/ili93412.c **** 	//POWER CONTROL,SAP[2:0];BT[3:0]
 189:Src/ili93412.c **** 	ILI9341_Write_Command(hspi_handle, 0xC1);
 597              		.loc 1 189 0
 598 00f8 C121     		movs	r1, #193
 599 00fa 2046     		mov	r0, r4
 600 00fc FFF7FEFF 		bl	ILI9341_Write_Command
 601              	.LVL60:
 190:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x10);
 602              		.loc 1 190 0
 603 0100 1021     		movs	r1, #16
 604 0102 2046     		mov	r0, r4
 605 0104 FFF7FEFF 		bl	ILI9341_Write_Data
 606              	.LVL61:
 191:Src/ili93412.c **** 
 192:Src/ili93412.c **** 	//VCM CONTROL
 193:Src/ili93412.c **** 	ILI9341_Write_Command(hspi_handle, 0xC5);
 607              		.loc 1 193 0
 608 0108 C521     		movs	r1, #197
 609 010a 2046     		mov	r0, r4
 610 010c FFF7FEFF 		bl	ILI9341_Write_Command
 611              	.LVL62:
 194:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x3E);
 612              		.loc 1 194 0
 613 0110 3E21     		movs	r1, #62
 614 0112 2046     		mov	r0, r4
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 15


 615 0114 FFF7FEFF 		bl	ILI9341_Write_Data
 616              	.LVL63:
 195:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x28);
 617              		.loc 1 195 0
 618 0118 2821     		movs	r1, #40
 619 011a 2046     		mov	r0, r4
 620 011c FFF7FEFF 		bl	ILI9341_Write_Data
 621              	.LVL64:
 196:Src/ili93412.c **** 
 197:Src/ili93412.c **** 	//VCM CONTROL 2
 198:Src/ili93412.c **** 	ILI9341_Write_Command(hspi_handle, 0xC7);
 622              		.loc 1 198 0
 623 0120 C721     		movs	r1, #199
 624 0122 2046     		mov	r0, r4
 625 0124 FFF7FEFF 		bl	ILI9341_Write_Command
 626              	.LVL65:
 199:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x86);
 627              		.loc 1 199 0
 628 0128 8621     		movs	r1, #134
 629 012a 2046     		mov	r0, r4
 630 012c FFF7FEFF 		bl	ILI9341_Write_Data
 631              	.LVL66:
 200:Src/ili93412.c **** 
 201:Src/ili93412.c **** 	//MEMORY ACCESS CONTROL
 202:Src/ili93412.c **** 	ILI9341_Write_Command(hspi_handle, 0x36);
 632              		.loc 1 202 0
 633 0130 3621     		movs	r1, #54
 634 0132 2046     		mov	r0, r4
 635 0134 FFF7FEFF 		bl	ILI9341_Write_Command
 636              	.LVL67:
 203:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x48);
 637              		.loc 1 203 0
 638 0138 4821     		movs	r1, #72
 639 013a 2046     		mov	r0, r4
 640 013c FFF7FEFF 		bl	ILI9341_Write_Data
 641              	.LVL68:
 204:Src/ili93412.c **** 
 205:Src/ili93412.c **** 	//PIXEL FORMAT
 206:Src/ili93412.c **** 	ILI9341_Write_Command(hspi_handle, 0x3A);
 642              		.loc 1 206 0
 643 0140 3A21     		movs	r1, #58
 644 0142 2046     		mov	r0, r4
 645 0144 FFF7FEFF 		bl	ILI9341_Write_Command
 646              	.LVL69:
 207:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x55);
 647              		.loc 1 207 0
 648 0148 5521     		movs	r1, #85
 649 014a 2046     		mov	r0, r4
 650 014c FFF7FEFF 		bl	ILI9341_Write_Data
 651              	.LVL70:
 208:Src/ili93412.c **** 
 209:Src/ili93412.c **** 	//FRAME RATIO CONTROL, STANDARD RGB COLOR
 210:Src/ili93412.c **** 	ILI9341_Write_Command(hspi_handle, 0xB1);
 652              		.loc 1 210 0
 653 0150 B121     		movs	r1, #177
 654 0152 2046     		mov	r0, r4
 655 0154 FFF7FEFF 		bl	ILI9341_Write_Command
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 16


 656              	.LVL71:
 211:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
 657              		.loc 1 211 0
 658 0158 0021     		movs	r1, #0
 659 015a 2046     		mov	r0, r4
 660 015c FFF7FEFF 		bl	ILI9341_Write_Data
 661              	.LVL72:
 212:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x18);
 662              		.loc 1 212 0
 663 0160 1821     		movs	r1, #24
 664 0162 2046     		mov	r0, r4
 665 0164 FFF7FEFF 		bl	ILI9341_Write_Data
 666              	.LVL73:
 213:Src/ili93412.c **** 
 214:Src/ili93412.c **** 	//DISPLAY FUNCTION CONTROL
 215:Src/ili93412.c **** 	ILI9341_Write_Command(hspi_handle, 0xB6);
 667              		.loc 1 215 0
 668 0168 B621     		movs	r1, #182
 669 016a 2046     		mov	r0, r4
 670 016c FFF7FEFF 		bl	ILI9341_Write_Command
 671              	.LVL74:
 216:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x08);
 672              		.loc 1 216 0
 673 0170 0821     		movs	r1, #8
 674 0172 2046     		mov	r0, r4
 675 0174 FFF7FEFF 		bl	ILI9341_Write_Data
 676              	.LVL75:
 217:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x82);
 677              		.loc 1 217 0
 678 0178 8221     		movs	r1, #130
 679 017a 2046     		mov	r0, r4
 680 017c FFF7FEFF 		bl	ILI9341_Write_Data
 681              	.LVL76:
 218:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x27);
 682              		.loc 1 218 0
 683 0180 2721     		movs	r1, #39
 684 0182 2046     		mov	r0, r4
 685 0184 FFF7FEFF 		bl	ILI9341_Write_Data
 686              	.LVL77:
 219:Src/ili93412.c **** 
 220:Src/ili93412.c **** 	//3GAMMA FUNCTION DISABLE
 221:Src/ili93412.c **** 	ILI9341_Write_Command(hspi_handle, 0xF2);
 687              		.loc 1 221 0
 688 0188 F221     		movs	r1, #242
 689 018a 2046     		mov	r0, r4
 690 018c FFF7FEFF 		bl	ILI9341_Write_Command
 691              	.LVL78:
 222:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
 692              		.loc 1 222 0
 693 0190 0021     		movs	r1, #0
 694 0192 2046     		mov	r0, r4
 695 0194 FFF7FEFF 		bl	ILI9341_Write_Data
 696              	.LVL79:
 223:Src/ili93412.c **** 
 224:Src/ili93412.c **** 	//GAMMA CURVE SELECTED
 225:Src/ili93412.c **** 	ILI9341_Write_Command(hspi_handle, 0x26);
 697              		.loc 1 225 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 17


 698 0198 2621     		movs	r1, #38
 699 019a 2046     		mov	r0, r4
 700 019c FFF7FEFF 		bl	ILI9341_Write_Command
 701              	.LVL80:
 226:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x01);
 702              		.loc 1 226 0
 703 01a0 0121     		movs	r1, #1
 704 01a2 2046     		mov	r0, r4
 705 01a4 FFF7FEFF 		bl	ILI9341_Write_Data
 706              	.LVL81:
 227:Src/ili93412.c **** 
 228:Src/ili93412.c **** 	//POSITIVE GAMMA CORRECTION
 229:Src/ili93412.c **** 	ILI9341_Write_Command(hspi_handle, 0xE0);
 707              		.loc 1 229 0
 708 01a8 E021     		movs	r1, #224
 709 01aa 2046     		mov	r0, r4
 710 01ac FFF7FEFF 		bl	ILI9341_Write_Command
 711              	.LVL82:
 230:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x0F);
 712              		.loc 1 230 0
 713 01b0 0F21     		movs	r1, #15
 714 01b2 2046     		mov	r0, r4
 715 01b4 FFF7FEFF 		bl	ILI9341_Write_Data
 716              	.LVL83:
 231:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x31);
 717              		.loc 1 231 0
 718 01b8 3121     		movs	r1, #49
 719 01ba 2046     		mov	r0, r4
 720 01bc FFF7FEFF 		bl	ILI9341_Write_Data
 721              	.LVL84:
 232:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x2B);
 722              		.loc 1 232 0
 723 01c0 2B21     		movs	r1, #43
 724 01c2 2046     		mov	r0, r4
 725 01c4 FFF7FEFF 		bl	ILI9341_Write_Data
 726              	.LVL85:
 233:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x0C);
 727              		.loc 1 233 0
 728 01c8 0C21     		movs	r1, #12
 729 01ca 2046     		mov	r0, r4
 730 01cc FFF7FEFF 		bl	ILI9341_Write_Data
 731              	.LVL86:
 234:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x0E);
 732              		.loc 1 234 0
 733 01d0 0E21     		movs	r1, #14
 734 01d2 2046     		mov	r0, r4
 735 01d4 FFF7FEFF 		bl	ILI9341_Write_Data
 736              	.LVL87:
 235:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x08);
 737              		.loc 1 235 0
 738 01d8 0821     		movs	r1, #8
 739 01da 2046     		mov	r0, r4
 740 01dc FFF7FEFF 		bl	ILI9341_Write_Data
 741              	.LVL88:
 236:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x4E);
 742              		.loc 1 236 0
 743 01e0 4E21     		movs	r1, #78
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 18


 744 01e2 2046     		mov	r0, r4
 745 01e4 FFF7FEFF 		bl	ILI9341_Write_Data
 746              	.LVL89:
 237:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0xF1);
 747              		.loc 1 237 0
 748 01e8 F121     		movs	r1, #241
 749 01ea 2046     		mov	r0, r4
 750 01ec FFF7FEFF 		bl	ILI9341_Write_Data
 751              	.LVL90:
 238:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x37);
 752              		.loc 1 238 0
 753 01f0 3721     		movs	r1, #55
 754 01f2 2046     		mov	r0, r4
 755 01f4 FFF7FEFF 		bl	ILI9341_Write_Data
 756              	.LVL91:
 239:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x07);
 757              		.loc 1 239 0
 758 01f8 0721     		movs	r1, #7
 759 01fa 2046     		mov	r0, r4
 760 01fc FFF7FEFF 		bl	ILI9341_Write_Data
 761              	.LVL92:
 240:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x10);
 762              		.loc 1 240 0
 763 0200 1021     		movs	r1, #16
 764 0202 2046     		mov	r0, r4
 765 0204 FFF7FEFF 		bl	ILI9341_Write_Data
 766              	.LVL93:
 241:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x03);
 767              		.loc 1 241 0
 768 0208 0321     		movs	r1, #3
 769 020a 2046     		mov	r0, r4
 770 020c FFF7FEFF 		bl	ILI9341_Write_Data
 771              	.LVL94:
 242:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x0E);
 772              		.loc 1 242 0
 773 0210 0E21     		movs	r1, #14
 774 0212 2046     		mov	r0, r4
 775 0214 FFF7FEFF 		bl	ILI9341_Write_Data
 776              	.LVL95:
 243:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x09);
 777              		.loc 1 243 0
 778 0218 0921     		movs	r1, #9
 779 021a 2046     		mov	r0, r4
 780 021c FFF7FEFF 		bl	ILI9341_Write_Data
 781              	.LVL96:
 244:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
 782              		.loc 1 244 0
 783 0220 0021     		movs	r1, #0
 784 0222 2046     		mov	r0, r4
 785 0224 FFF7FEFF 		bl	ILI9341_Write_Data
 786              	.LVL97:
 245:Src/ili93412.c **** 
 246:Src/ili93412.c **** 	//NEGATIVE GAMMA CORRECTION
 247:Src/ili93412.c **** 	ILI9341_Write_Command(hspi_handle, 0xE1);
 787              		.loc 1 247 0
 788 0228 E121     		movs	r1, #225
 789 022a 2046     		mov	r0, r4
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 19


 790 022c FFF7FEFF 		bl	ILI9341_Write_Command
 791              	.LVL98:
 248:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
 792              		.loc 1 248 0
 793 0230 0021     		movs	r1, #0
 794 0232 2046     		mov	r0, r4
 795 0234 FFF7FEFF 		bl	ILI9341_Write_Data
 796              	.LVL99:
 249:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x0E);
 797              		.loc 1 249 0
 798 0238 0E21     		movs	r1, #14
 799 023a 2046     		mov	r0, r4
 800 023c FFF7FEFF 		bl	ILI9341_Write_Data
 801              	.LVL100:
 250:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x14);
 802              		.loc 1 250 0
 803 0240 1421     		movs	r1, #20
 804 0242 2046     		mov	r0, r4
 805 0244 FFF7FEFF 		bl	ILI9341_Write_Data
 806              	.LVL101:
 251:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x03);
 807              		.loc 1 251 0
 808 0248 0321     		movs	r1, #3
 809 024a 2046     		mov	r0, r4
 810 024c FFF7FEFF 		bl	ILI9341_Write_Data
 811              	.LVL102:
 252:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x11);
 812              		.loc 1 252 0
 813 0250 1121     		movs	r1, #17
 814 0252 2046     		mov	r0, r4
 815 0254 FFF7FEFF 		bl	ILI9341_Write_Data
 816              	.LVL103:
 253:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x07);
 817              		.loc 1 253 0
 818 0258 0721     		movs	r1, #7
 819 025a 2046     		mov	r0, r4
 820 025c FFF7FEFF 		bl	ILI9341_Write_Data
 821              	.LVL104:
 254:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x31);
 822              		.loc 1 254 0
 823 0260 3121     		movs	r1, #49
 824 0262 2046     		mov	r0, r4
 825 0264 FFF7FEFF 		bl	ILI9341_Write_Data
 826              	.LVL105:
 255:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0xC1);
 827              		.loc 1 255 0
 828 0268 C121     		movs	r1, #193
 829 026a 2046     		mov	r0, r4
 830 026c FFF7FEFF 		bl	ILI9341_Write_Data
 831              	.LVL106:
 256:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x48);
 832              		.loc 1 256 0
 833 0270 4821     		movs	r1, #72
 834 0272 2046     		mov	r0, r4
 835 0274 FFF7FEFF 		bl	ILI9341_Write_Data
 836              	.LVL107:
 257:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x08);
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 20


 837              		.loc 1 257 0
 838 0278 0821     		movs	r1, #8
 839 027a 2046     		mov	r0, r4
 840 027c FFF7FEFF 		bl	ILI9341_Write_Data
 841              	.LVL108:
 258:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x0F);
 842              		.loc 1 258 0
 843 0280 0F21     		movs	r1, #15
 844 0282 2046     		mov	r0, r4
 845 0284 FFF7FEFF 		bl	ILI9341_Write_Data
 846              	.LVL109:
 259:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x0C);
 847              		.loc 1 259 0
 848 0288 0C21     		movs	r1, #12
 849 028a 2046     		mov	r0, r4
 850 028c FFF7FEFF 		bl	ILI9341_Write_Data
 851              	.LVL110:
 260:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x31);
 852              		.loc 1 260 0
 853 0290 3121     		movs	r1, #49
 854 0292 2046     		mov	r0, r4
 855 0294 FFF7FEFF 		bl	ILI9341_Write_Data
 856              	.LVL111:
 261:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x36);
 857              		.loc 1 261 0
 858 0298 3621     		movs	r1, #54
 859 029a 2046     		mov	r0, r4
 860 029c FFF7FEFF 		bl	ILI9341_Write_Data
 861              	.LVL112:
 262:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, 0x0F);
 862              		.loc 1 262 0
 863 02a0 0F21     		movs	r1, #15
 864 02a2 2046     		mov	r0, r4
 865 02a4 FFF7FEFF 		bl	ILI9341_Write_Data
 866              	.LVL113:
 263:Src/ili93412.c **** 
 264:Src/ili93412.c **** 	//EXIT SLEEP
 265:Src/ili93412.c **** 	ILI9341_Write_Command(hspi_handle, 0x11);
 867              		.loc 1 265 0
 868 02a8 1121     		movs	r1, #17
 869 02aa 2046     		mov	r0, r4
 870 02ac FFF7FEFF 		bl	ILI9341_Write_Command
 871              	.LVL114:
 266:Src/ili93412.c **** 	HAL_Delay(120);
 872              		.loc 1 266 0
 873 02b0 7820     		movs	r0, #120
 874 02b2 FFF7FEFF 		bl	HAL_Delay
 875              	.LVL115:
 267:Src/ili93412.c **** 
 268:Src/ili93412.c **** 	//TURN ON DISPLAY
 269:Src/ili93412.c **** 	ILI9341_Write_Command(hspi_handle, 0x29);
 876              		.loc 1 269 0
 877 02b6 2921     		movs	r1, #41
 878 02b8 2046     		mov	r0, r4
 879 02ba FFF7FEFF 		bl	ILI9341_Write_Command
 880              	.LVL116:
 270:Src/ili93412.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 21


 271:Src/ili93412.c **** 	//STARTING ROTATION
 272:Src/ili93412.c **** 	ILI9341_Write_Command(hspi_handle, 0x36);
 881              		.loc 1 272 0
 882 02be 3621     		movs	r1, #54
 883 02c0 2046     		mov	r0, r4
 884 02c2 FFF7FEFF 		bl	ILI9341_Write_Command
 885              	.LVL117:
 273:Src/ili93412.c **** 	ILI9341_Write_Data(hspi_handle, SCREEN_HORIZONTAL_1);
 886              		.loc 1 273 0
 887 02c6 2821     		movs	r1, #40
 888 02c8 2046     		mov	r0, r4
 889 02ca FFF7FEFF 		bl	ILI9341_Write_Data
 890              	.LVL118:
 274:Src/ili93412.c **** 
 275:Src/ili93412.c **** 	return ILI9341_SPI_StopDraw(hspi_handle);
 891              		.loc 1 275 0
 892 02ce 2046     		mov	r0, r4
 893 02d0 FFF7FEFF 		bl	ILI9341_SPI_StopDraw
 894              	.LVL119:
 895              	.L43:
 276:Src/ili93412.c **** }
 896              		.loc 1 276 0
 897 02d4 10BD     		pop	{r4, pc}
 898              	.LVL120:
 899              	.L44:
 143:Src/ili93412.c **** 
 900              		.loc 1 143 0
 901 02d6 0220     		movs	r0, #2
 902 02d8 FCE7     		b	.L43
 903              		.cfi_endproc
 904              	.LFE73:
 906              		.section	.text.ILI9341_Draw_Pixel,"ax",%progbits
 907              		.align	1
 908              		.global	ILI9341_Draw_Pixel
 909              		.syntax unified
 910              		.thumb
 911              		.thumb_func
 912              		.fpu softvfp
 914              	ILI9341_Draw_Pixel:
 915              	.LFB74:
 277:Src/ili93412.c **** 
 278:Src/ili93412.c **** 
 279:Src/ili93412.c **** ILI9341_Draw_Pixel(SPI_HandleTypeDef* hspi_handle, uint16_t posX, uint16_t posY, uint16_t Color)
 280:Src/ili93412.c **** {
 916              		.loc 1 280 0
 917              		.cfi_startproc
 918              		@ args = 0, pretend = 0, frame = 0
 919              		@ frame_needed = 0, uses_anonymous_args = 0
 920              	.LVL121:
 921 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 922              	.LCFI9:
 923              		.cfi_def_cfa_offset 32
 924              		.cfi_offset 3, -32
 925              		.cfi_offset 4, -28
 926              		.cfi_offset 5, -24
 927              		.cfi_offset 6, -20
 928              		.cfi_offset 7, -16
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 22


 929              		.cfi_offset 8, -12
 930              		.cfi_offset 9, -8
 931              		.cfi_offset 14, -4
 932 0004 0446     		mov	r4, r0
 933 0006 0E46     		mov	r6, r1
 934 0008 1746     		mov	r7, r2
 935 000a 9846     		mov	r8, r3
 281:Src/ili93412.c **** 	register const uint32_t tickstart_local = HAL_GetTick();
 936              		.loc 1 281 0
 937 000c FFF7FEFF 		bl	HAL_GetTick
 938              	.LVL122:
 939 0010 0546     		mov	r5, r0
 940              	.LVL123:
 941              	.L47:
 282:Src/ili93412.c **** 	const uint32_t Timeout = 500;
 283:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 942              		.loc 1 283 0 discriminator 2
 943 0012 2368     		ldr	r3, [r4]
 944 0014 9B68     		ldr	r3, [r3, #8]
 945 0016 13F0020F 		tst	r3, #2
 946 001a 0BD1     		bne	.L77
 947              		.loc 1 283 0 is_stmt 0 discriminator 3
 948 001c FFF7FEFF 		bl	HAL_GetTick
 949              	.LVL124:
 950 0020 401B     		subs	r0, r0, r5
 951 0022 B0F5FA7F 		cmp	r0, #500
 952 0026 F4D3     		bcc	.L47
 953              		.loc 1 283 0 discriminator 1
 954 0028 0321     		movs	r1, #3
 955 002a 2046     		mov	r0, r4
 956 002c FFF7FEFF 		bl	ILI9341_SPI_Error
 957              	.LVL125:
 958              	.L46:
 284:Src/ili93412.c **** 	/*Send 1 byte column address set command*/
 285:Src/ili93412.c **** 	LCD_DC_PORT->BSRR = (uint32_t)LCD_DC_PIN << 16U;
 286:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2A;
 287:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 288:Src/ili93412.c **** 	LCD_DC_PORT->BSRR = LCD_DC_PIN;
 289:Src/ili93412.c **** 	/*send 4 bytes column address data*/
 290:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posX>>8);
 291:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 292:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posX);
 293:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 294:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)((posX)>>8);
 295:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 296:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posX);
 297:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 298:Src/ili93412.c **** 	
 299:Src/ili93412.c **** 	/*send 1 byte page address set command*/
 300:Src/ili93412.c **** 	LCD_DC_PORT->BSRR = (uint32_t)LCD_DC_PIN << 16U;
 301:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
 302:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 303:Src/ili93412.c **** 	LCD_DC_PORT->BSRR = LCD_DC_PIN;
 304:Src/ili93412.c **** 	/*send 4 bytes page address data*/
 305:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)((posY)>>8);
 306:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 307:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posY);
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 23


 308:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 309:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)((posY)>>8);
 310:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 311:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posY);
 312:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 313:Src/ili93412.c **** 
 314:Src/ili93412.c **** 	/*send 1 byte memory write command*/
 315:Src/ili93412.c **** 	LCD_DC_PORT->BSRR = (uint32_t)LCD_DC_PIN << 16U;
 316:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
 317:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 318:Src/ili93412.c **** 	LCD_DC_PORT->BSRR = LCD_DC_PIN;
 319:Src/ili93412.c **** 	/*send 2 bytes color information*/
 320:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(Color>>8);
 321:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 322:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(Color);
 323:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 324:Src/ili93412.c **** 	return HAL_OK;
 325:Src/ili93412.c **** }
 959              		.loc 1 325 0 is_stmt 1
 960 0030 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 961              	.LVL126:
 962              	.L77:
 285:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2A;
 963              		.loc 1 285 0
 964 0034 874B     		ldr	r3, .L91
 965 0036 4FF08052 		mov	r2, #268435456
 966 003a 1A61     		str	r2, [r3, #16]
 286:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 967              		.loc 1 286 0
 968 003c 2368     		ldr	r3, [r4]
 969 003e 2A22     		movs	r2, #42
 970 0040 1A73     		strb	r2, [r3, #12]
 971              	.L50:
 287:Src/ili93412.c **** 	LCD_DC_PORT->BSRR = LCD_DC_PIN;
 972              		.loc 1 287 0 discriminator 2
 973 0042 2368     		ldr	r3, [r4]
 974 0044 9B68     		ldr	r3, [r3, #8]
 975 0046 13F0020F 		tst	r3, #2
 976 004a 0AD1     		bne	.L78
 287:Src/ili93412.c **** 	LCD_DC_PORT->BSRR = LCD_DC_PIN;
 977              		.loc 1 287 0 is_stmt 0 discriminator 3
 978 004c FFF7FEFF 		bl	HAL_GetTick
 979              	.LVL127:
 980 0050 401B     		subs	r0, r0, r5
 981 0052 B0F5FA7F 		cmp	r0, #500
 982 0056 F4D3     		bcc	.L50
 287:Src/ili93412.c **** 	LCD_DC_PORT->BSRR = LCD_DC_PIN;
 983              		.loc 1 287 0 discriminator 1
 984 0058 0321     		movs	r1, #3
 985 005a 2046     		mov	r0, r4
 986 005c FFF7FEFF 		bl	ILI9341_SPI_Error
 987              	.LVL128:
 988 0060 E6E7     		b	.L46
 989              	.L78:
 288:Src/ili93412.c **** 	/*send 4 bytes column address data*/
 990              		.loc 1 288 0 is_stmt 1
 991 0062 7C4B     		ldr	r3, .L91
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 24


 992 0064 4FF48052 		mov	r2, #4096
 993 0068 1A61     		str	r2, [r3, #16]
 290:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 994              		.loc 1 290 0
 995 006a 2368     		ldr	r3, [r4]
 996 006c 4FEA1629 		lsr	r9, r6, #8
 997 0070 83F80C90 		strb	r9, [r3, #12]
 998              	.L52:
 291:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posX);
 999              		.loc 1 291 0 discriminator 2
 1000 0074 2368     		ldr	r3, [r4]
 1001 0076 9A68     		ldr	r2, [r3, #8]
 1002 0078 12F0020F 		tst	r2, #2
 1003 007c 0AD1     		bne	.L79
 291:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posX);
 1004              		.loc 1 291 0 is_stmt 0 discriminator 3
 1005 007e FFF7FEFF 		bl	HAL_GetTick
 1006              	.LVL129:
 1007 0082 401B     		subs	r0, r0, r5
 1008 0084 B0F5FA7F 		cmp	r0, #500
 1009 0088 F4D3     		bcc	.L52
 291:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posX);
 1010              		.loc 1 291 0 discriminator 1
 1011 008a 0321     		movs	r1, #3
 1012 008c 2046     		mov	r0, r4
 1013 008e FFF7FEFF 		bl	ILI9341_SPI_Error
 1014              	.LVL130:
 1015 0092 CDE7     		b	.L46
 1016              	.L79:
 292:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1017              		.loc 1 292 0 is_stmt 1
 1018 0094 F6B2     		uxtb	r6, r6
 1019 0096 1E73     		strb	r6, [r3, #12]
 1020              	.L54:
 293:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)((posX)>>8);
 1021              		.loc 1 293 0 discriminator 2
 1022 0098 2368     		ldr	r3, [r4]
 1023 009a 9A68     		ldr	r2, [r3, #8]
 1024 009c 12F0020F 		tst	r2, #2
 1025 00a0 0AD1     		bne	.L80
 293:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)((posX)>>8);
 1026              		.loc 1 293 0 is_stmt 0 discriminator 3
 1027 00a2 FFF7FEFF 		bl	HAL_GetTick
 1028              	.LVL131:
 1029 00a6 401B     		subs	r0, r0, r5
 1030 00a8 B0F5FA7F 		cmp	r0, #500
 1031 00ac F4D3     		bcc	.L54
 293:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)((posX)>>8);
 1032              		.loc 1 293 0 discriminator 1
 1033 00ae 0321     		movs	r1, #3
 1034 00b0 2046     		mov	r0, r4
 1035 00b2 FFF7FEFF 		bl	ILI9341_SPI_Error
 1036              	.LVL132:
 1037 00b6 BBE7     		b	.L46
 1038              	.L80:
 294:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1039              		.loc 1 294 0 is_stmt 1
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 25


 1040 00b8 83F80C90 		strb	r9, [r3, #12]
 1041              	.L56:
 295:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posX);
 1042              		.loc 1 295 0 discriminator 2
 1043 00bc 2368     		ldr	r3, [r4]
 1044 00be 9A68     		ldr	r2, [r3, #8]
 1045 00c0 12F0020F 		tst	r2, #2
 1046 00c4 0AD1     		bne	.L81
 295:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posX);
 1047              		.loc 1 295 0 is_stmt 0 discriminator 3
 1048 00c6 FFF7FEFF 		bl	HAL_GetTick
 1049              	.LVL133:
 1050 00ca 401B     		subs	r0, r0, r5
 1051 00cc B0F5FA7F 		cmp	r0, #500
 1052 00d0 F4D3     		bcc	.L56
 295:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posX);
 1053              		.loc 1 295 0 discriminator 1
 1054 00d2 0321     		movs	r1, #3
 1055 00d4 2046     		mov	r0, r4
 1056 00d6 FFF7FEFF 		bl	ILI9341_SPI_Error
 1057              	.LVL134:
 1058 00da A9E7     		b	.L46
 1059              	.L81:
 296:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1060              		.loc 1 296 0 is_stmt 1
 1061 00dc 1E73     		strb	r6, [r3, #12]
 1062              	.L58:
 297:Src/ili93412.c **** 	
 1063              		.loc 1 297 0 discriminator 2
 1064 00de 2368     		ldr	r3, [r4]
 1065 00e0 9B68     		ldr	r3, [r3, #8]
 1066 00e2 13F0020F 		tst	r3, #2
 1067 00e6 0AD1     		bne	.L82
 297:Src/ili93412.c **** 	
 1068              		.loc 1 297 0 is_stmt 0 discriminator 3
 1069 00e8 FFF7FEFF 		bl	HAL_GetTick
 1070              	.LVL135:
 1071 00ec 401B     		subs	r0, r0, r5
 1072 00ee B0F5FA7F 		cmp	r0, #500
 1073 00f2 F4D3     		bcc	.L58
 297:Src/ili93412.c **** 	
 1074              		.loc 1 297 0 discriminator 1
 1075 00f4 0321     		movs	r1, #3
 1076 00f6 2046     		mov	r0, r4
 1077 00f8 FFF7FEFF 		bl	ILI9341_SPI_Error
 1078              	.LVL136:
 1079 00fc 98E7     		b	.L46
 1080              	.L82:
 300:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
 1081              		.loc 1 300 0 is_stmt 1
 1082 00fe 554B     		ldr	r3, .L91
 1083 0100 4FF08052 		mov	r2, #268435456
 1084 0104 1A61     		str	r2, [r3, #16]
 301:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1085              		.loc 1 301 0
 1086 0106 2368     		ldr	r3, [r4]
 1087 0108 2B22     		movs	r2, #43
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 26


 1088 010a 1A73     		strb	r2, [r3, #12]
 1089              	.L60:
 302:Src/ili93412.c **** 	LCD_DC_PORT->BSRR = LCD_DC_PIN;
 1090              		.loc 1 302 0 discriminator 2
 1091 010c 2368     		ldr	r3, [r4]
 1092 010e 9B68     		ldr	r3, [r3, #8]
 1093 0110 13F0020F 		tst	r3, #2
 1094 0114 0AD1     		bne	.L83
 302:Src/ili93412.c **** 	LCD_DC_PORT->BSRR = LCD_DC_PIN;
 1095              		.loc 1 302 0 is_stmt 0 discriminator 3
 1096 0116 FFF7FEFF 		bl	HAL_GetTick
 1097              	.LVL137:
 1098 011a 401B     		subs	r0, r0, r5
 1099 011c B0F5FA7F 		cmp	r0, #500
 1100 0120 F4D3     		bcc	.L60
 302:Src/ili93412.c **** 	LCD_DC_PORT->BSRR = LCD_DC_PIN;
 1101              		.loc 1 302 0 discriminator 1
 1102 0122 0321     		movs	r1, #3
 1103 0124 2046     		mov	r0, r4
 1104 0126 FFF7FEFF 		bl	ILI9341_SPI_Error
 1105              	.LVL138:
 1106 012a 81E7     		b	.L46
 1107              	.L83:
 303:Src/ili93412.c **** 	/*send 4 bytes page address data*/
 1108              		.loc 1 303 0 is_stmt 1
 1109 012c 494B     		ldr	r3, .L91
 1110 012e 4FF48052 		mov	r2, #4096
 1111 0132 1A61     		str	r2, [r3, #16]
 305:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1112              		.loc 1 305 0
 1113 0134 2368     		ldr	r3, [r4]
 1114 0136 3E0A     		lsrs	r6, r7, #8
 1115 0138 1E73     		strb	r6, [r3, #12]
 1116              	.L62:
 306:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posY);
 1117              		.loc 1 306 0 discriminator 2
 1118 013a 2368     		ldr	r3, [r4]
 1119 013c 9A68     		ldr	r2, [r3, #8]
 1120 013e 12F0020F 		tst	r2, #2
 1121 0142 0AD1     		bne	.L84
 306:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posY);
 1122              		.loc 1 306 0 is_stmt 0 discriminator 3
 1123 0144 FFF7FEFF 		bl	HAL_GetTick
 1124              	.LVL139:
 1125 0148 401B     		subs	r0, r0, r5
 1126 014a B0F5FA7F 		cmp	r0, #500
 1127 014e F4D3     		bcc	.L62
 306:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posY);
 1128              		.loc 1 306 0 discriminator 1
 1129 0150 0321     		movs	r1, #3
 1130 0152 2046     		mov	r0, r4
 1131 0154 FFF7FEFF 		bl	ILI9341_SPI_Error
 1132              	.LVL140:
 1133 0158 6AE7     		b	.L46
 1134              	.L84:
 307:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1135              		.loc 1 307 0 is_stmt 1
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 27


 1136 015a FFB2     		uxtb	r7, r7
 1137 015c 1F73     		strb	r7, [r3, #12]
 1138              	.L64:
 308:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)((posY)>>8);
 1139              		.loc 1 308 0 discriminator 2
 1140 015e 2368     		ldr	r3, [r4]
 1141 0160 9A68     		ldr	r2, [r3, #8]
 1142 0162 12F0020F 		tst	r2, #2
 1143 0166 0AD1     		bne	.L85
 308:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)((posY)>>8);
 1144              		.loc 1 308 0 is_stmt 0 discriminator 3
 1145 0168 FFF7FEFF 		bl	HAL_GetTick
 1146              	.LVL141:
 1147 016c 401B     		subs	r0, r0, r5
 1148 016e B0F5FA7F 		cmp	r0, #500
 1149 0172 F4D3     		bcc	.L64
 308:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)((posY)>>8);
 1150              		.loc 1 308 0 discriminator 1
 1151 0174 0321     		movs	r1, #3
 1152 0176 2046     		mov	r0, r4
 1153 0178 FFF7FEFF 		bl	ILI9341_SPI_Error
 1154              	.LVL142:
 1155 017c 58E7     		b	.L46
 1156              	.L85:
 309:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1157              		.loc 1 309 0 is_stmt 1
 1158 017e 1E73     		strb	r6, [r3, #12]
 1159              	.L66:
 310:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posY);
 1160              		.loc 1 310 0 discriminator 2
 1161 0180 2368     		ldr	r3, [r4]
 1162 0182 9A68     		ldr	r2, [r3, #8]
 1163 0184 12F0020F 		tst	r2, #2
 1164 0188 0AD1     		bne	.L86
 310:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posY);
 1165              		.loc 1 310 0 is_stmt 0 discriminator 3
 1166 018a FFF7FEFF 		bl	HAL_GetTick
 1167              	.LVL143:
 1168 018e 401B     		subs	r0, r0, r5
 1169 0190 B0F5FA7F 		cmp	r0, #500
 1170 0194 F4D3     		bcc	.L66
 310:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posY);
 1171              		.loc 1 310 0 discriminator 1
 1172 0196 0321     		movs	r1, #3
 1173 0198 2046     		mov	r0, r4
 1174 019a FFF7FEFF 		bl	ILI9341_SPI_Error
 1175              	.LVL144:
 1176 019e 47E7     		b	.L46
 1177              	.L86:
 311:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1178              		.loc 1 311 0 is_stmt 1
 1179 01a0 1F73     		strb	r7, [r3, #12]
 1180              	.L68:
 312:Src/ili93412.c **** 
 1181              		.loc 1 312 0 discriminator 2
 1182 01a2 2368     		ldr	r3, [r4]
 1183 01a4 9B68     		ldr	r3, [r3, #8]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 28


 1184 01a6 13F0020F 		tst	r3, #2
 1185 01aa 0AD1     		bne	.L87
 312:Src/ili93412.c **** 
 1186              		.loc 1 312 0 is_stmt 0 discriminator 3
 1187 01ac FFF7FEFF 		bl	HAL_GetTick
 1188              	.LVL145:
 1189 01b0 401B     		subs	r0, r0, r5
 1190 01b2 B0F5FA7F 		cmp	r0, #500
 1191 01b6 F4D3     		bcc	.L68
 312:Src/ili93412.c **** 
 1192              		.loc 1 312 0 discriminator 1
 1193 01b8 0321     		movs	r1, #3
 1194 01ba 2046     		mov	r0, r4
 1195 01bc FFF7FEFF 		bl	ILI9341_SPI_Error
 1196              	.LVL146:
 1197 01c0 36E7     		b	.L46
 1198              	.L87:
 315:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
 1199              		.loc 1 315 0 is_stmt 1
 1200 01c2 244B     		ldr	r3, .L91
 1201 01c4 4FF08052 		mov	r2, #268435456
 1202 01c8 1A61     		str	r2, [r3, #16]
 316:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1203              		.loc 1 316 0
 1204 01ca 2368     		ldr	r3, [r4]
 1205 01cc 2C22     		movs	r2, #44
 1206 01ce 1A73     		strb	r2, [r3, #12]
 317:Src/ili93412.c **** 	LCD_DC_PORT->BSRR = LCD_DC_PIN;
 1207              		.loc 1 317 0
 1208 01d0 05E0     		b	.L70
 1209              	.L71:
 317:Src/ili93412.c **** 	LCD_DC_PORT->BSRR = LCD_DC_PIN;
 1210              		.loc 1 317 0 is_stmt 0 discriminator 3
 1211 01d2 FFF7FEFF 		bl	HAL_GetTick
 1212              	.LVL147:
 1213 01d6 401B     		subs	r0, r0, r5
 1214 01d8 B0F5FA7F 		cmp	r0, #500
 1215 01dc 0DD2     		bcs	.L88
 1216              	.L70:
 317:Src/ili93412.c **** 	LCD_DC_PORT->BSRR = LCD_DC_PIN;
 1217              		.loc 1 317 0 discriminator 2
 1218 01de 2368     		ldr	r3, [r4]
 1219 01e0 9B68     		ldr	r3, [r3, #8]
 1220 01e2 13F0020F 		tst	r3, #2
 1221 01e6 F4D0     		beq	.L71
 318:Src/ili93412.c **** 	/*send 2 bytes color information*/
 1222              		.loc 1 318 0 is_stmt 1
 1223 01e8 1A4B     		ldr	r3, .L91
 1224 01ea 4FF48052 		mov	r2, #4096
 1225 01ee 1A61     		str	r2, [r3, #16]
 320:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1226              		.loc 1 320 0
 1227 01f0 2368     		ldr	r3, [r4]
 1228 01f2 4FEA1822 		lsr	r2, r8, #8
 1229 01f6 1A73     		strb	r2, [r3, #12]
 321:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(Color);
 1230              		.loc 1 321 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 29


 1231 01f8 0AE0     		b	.L72
 1232              	.L88:
 317:Src/ili93412.c **** 	LCD_DC_PORT->BSRR = LCD_DC_PIN;
 1233              		.loc 1 317 0 discriminator 1
 1234 01fa 0321     		movs	r1, #3
 1235 01fc 2046     		mov	r0, r4
 1236 01fe FFF7FEFF 		bl	ILI9341_SPI_Error
 1237              	.LVL148:
 1238 0202 15E7     		b	.L46
 1239              	.L73:
 321:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(Color);
 1240              		.loc 1 321 0 discriminator 3
 1241 0204 FFF7FEFF 		bl	HAL_GetTick
 1242              	.LVL149:
 1243 0208 401B     		subs	r0, r0, r5
 1244 020a B0F5FA7F 		cmp	r0, #500
 1245 020e 09D2     		bcs	.L89
 1246              	.L72:
 321:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(Color);
 1247              		.loc 1 321 0 is_stmt 0 discriminator 2
 1248 0210 2368     		ldr	r3, [r4]
 1249 0212 9A68     		ldr	r2, [r3, #8]
 1250 0214 12F0020F 		tst	r2, #2
 1251 0218 F4D0     		beq	.L73
 322:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1252              		.loc 1 322 0 is_stmt 1
 1253 021a 5FFA88F8 		uxtb	r8, r8
 1254 021e 83F80C80 		strb	r8, [r3, #12]
 323:Src/ili93412.c **** 	return HAL_OK;
 1255              		.loc 1 323 0
 1256 0222 0AE0     		b	.L74
 1257              	.L89:
 321:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(Color);
 1258              		.loc 1 321 0 discriminator 1
 1259 0224 0321     		movs	r1, #3
 1260 0226 2046     		mov	r0, r4
 1261 0228 FFF7FEFF 		bl	ILI9341_SPI_Error
 1262              	.LVL150:
 1263 022c 00E7     		b	.L46
 1264              	.L75:
 323:Src/ili93412.c **** 	return HAL_OK;
 1265              		.loc 1 323 0 discriminator 3
 1266 022e FFF7FEFF 		bl	HAL_GetTick
 1267              	.LVL151:
 1268 0232 401B     		subs	r0, r0, r5
 1269 0234 B0F5FA7F 		cmp	r0, #500
 1270 0238 06D2     		bcs	.L90
 1271              	.L74:
 323:Src/ili93412.c **** 	return HAL_OK;
 1272              		.loc 1 323 0 is_stmt 0 discriminator 2
 1273 023a 2368     		ldr	r3, [r4]
 1274 023c 9B68     		ldr	r3, [r3, #8]
 1275 023e 13F0020F 		tst	r3, #2
 1276 0242 F4D0     		beq	.L75
 324:Src/ili93412.c **** }
 1277              		.loc 1 324 0 is_stmt 1
 1278 0244 0020     		movs	r0, #0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 30


 1279 0246 F3E6     		b	.L46
 1280              	.L90:
 323:Src/ili93412.c **** 	return HAL_OK;
 1281              		.loc 1 323 0 discriminator 1
 1282 0248 0321     		movs	r1, #3
 1283 024a 2046     		mov	r0, r4
 1284 024c FFF7FEFF 		bl	ILI9341_SPI_Error
 1285              	.LVL152:
 1286 0250 EEE6     		b	.L46
 1287              	.L92:
 1288 0252 00BF     		.align	2
 1289              	.L91:
 1290 0254 00080140 		.word	1073809408
 1291              		.cfi_endproc
 1292              	.LFE74:
 1294              		.section	.text.ILI9341_Draw_Graph,"ax",%progbits
 1295              		.align	1
 1296              		.global	ILI9341_Draw_Graph
 1297              		.syntax unified
 1298              		.thumb
 1299              		.thumb_func
 1300              		.fpu softvfp
 1302              	ILI9341_Draw_Graph:
 1303              	.LFB75:
 326:Src/ili93412.c **** 
 327:Src/ili93412.c **** 
 328:Src/ili93412.c **** HAL_StatusTypeDef ILI9341_Draw_Graph(SPI_HandleTypeDef* hspi_handle, uint8_t* OldGraph, uint8_t* Ne
 329:Src/ili93412.c **** {
 1304              		.loc 1 329 0
 1305              		.cfi_startproc
 1306              		@ args = 0, pretend = 0, frame = 16
 1307              		@ frame_needed = 0, uses_anonymous_args = 0
 1308              	.LVL153:
 1309 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1310              	.LCFI10:
 1311              		.cfi_def_cfa_offset 36
 1312              		.cfi_offset 4, -36
 1313              		.cfi_offset 5, -32
 1314              		.cfi_offset 6, -28
 1315              		.cfi_offset 7, -24
 1316              		.cfi_offset 8, -20
 1317              		.cfi_offset 9, -16
 1318              		.cfi_offset 10, -12
 1319              		.cfi_offset 11, -8
 1320              		.cfi_offset 14, -4
 1321 0004 85B0     		sub	sp, sp, #20
 1322              	.LCFI11:
 1323              		.cfi_def_cfa_offset 56
 1324 0006 0446     		mov	r4, r0
 1325 0008 0E46     		mov	r6, r1
 1326 000a 1746     		mov	r7, r2
 1327 000c 9846     		mov	r8, r3
 1328              	.LVL154:
 330:Src/ili93412.c **** 	const uint32_t Timeout = 100U;
 331:Src/ili93412.c **** 	register const uint32_t tickstart_local = HAL_GetTick();
 1329              		.loc 1 331 0
 1330 000e FFF7FEFF 		bl	HAL_GetTick
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 31


 1331              	.LVL155:
 1332 0012 0546     		mov	r5, r0
 1333              	.LVL156:
 1334              	.L94:
 332:Src/ili93412.c **** 	uint8_t lGraphPrev, lGraphCur, lGraphDiff; 
 333:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)		
 1335              		.loc 1 333 0 discriminator 2
 1336 0014 2368     		ldr	r3, [r4]
 1337 0016 9B68     		ldr	r3, [r3, #8]
 1338 0018 13F0020F 		tst	r3, #2
 1339 001c 0BD1     		bne	.L208
 1340              		.loc 1 333 0 is_stmt 0 discriminator 3
 1341 001e FFF7FEFF 		bl	HAL_GetTick
 1342              	.LVL157:
 1343 0022 401B     		subs	r0, r0, r5
 1344 0024 6328     		cmp	r0, #99
 1345 0026 F5D9     		bls	.L94
 1346              		.loc 1 333 0 discriminator 1
 1347 0028 0321     		movs	r1, #3
 1348 002a 2046     		mov	r0, r4
 1349 002c FFF7FEFF 		bl	ILI9341_SPI_Error
 1350              	.LVL158:
 1351              	.L95:
 334:Src/ili93412.c **** 
 335:Src/ili93412.c **** 	/*Send 1 byte column address set command*/
 336:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
 337:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2A;
 338:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 339:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 340:Src/ili93412.c **** 	/*send 4 bytes column address data*/
 341:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 342:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 343:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)25;
 344:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 345:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 346:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 347:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)25;
 348:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 349:Src/ili93412.c **** 	
 350:Src/ili93412.c **** 	/*First clear the old graph pixel*/
 351:Src/ili93412.c **** 	/*send 1 byte page address set command*/
 352:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
 353:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
 354:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 355:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 356:Src/ili93412.c **** 	/*send 4 bytes page address data*/
 357:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 358:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 359:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(OldGraph[0]);
 360:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 361:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 362:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 363:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(OldGraph[0]);
 364:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 365:Src/ili93412.c **** 
 366:Src/ili93412.c **** 	/*send 1 byte memory write command*/
 367:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 32


 368:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
 369:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 370:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 371:Src/ili93412.c **** 	/*send 2 bytes color information*/
 372:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(COLOR_1>>8);
 373:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 374:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)COLOR_1;
 375:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 376:Src/ili93412.c **** 
 377:Src/ili93412.c **** 	
 378:Src/ili93412.c **** 	/*Write the new graph pixel*/
 379:Src/ili93412.c **** 	/*Send 1 byte page address set command*/
 380:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
 381:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
 382:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 383:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 384:Src/ili93412.c **** 	/*send 4 bytes page address data*/
 385:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 386:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 387:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(NewGraph[0]);
 388:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 389:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 390:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 391:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(NewGraph[0]);
 392:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 393:Src/ili93412.c **** 	
 394:Src/ili93412.c **** 	/*send 1 byte memory write command*/
 395:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
 396:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
 397:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 398:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 399:Src/ili93412.c **** 	/*send 2 bytes color information*/
 400:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(Color>>8);
 401:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 402:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)Color;
 403:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 404:Src/ili93412.c **** 
 405:Src/ili93412.c **** 
 406:Src/ili93412.c **** 	for(uint8_t i=1; i<230;i++)
 407:Src/ili93412.c **** 	{
 408:Src/ili93412.c **** 		/*Send 1 byte column address set command*/
 409:Src/ili93412.c **** 		LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
 410:Src/ili93412.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2A;
 411:Src/ili93412.c **** 		WAIT_TX_CHECK_TIMEOUT(Timeout)
 412:Src/ili93412.c **** 		LCD_DC_PORT->BSRR=LCD_DC_PIN;
 413:Src/ili93412.c **** 		/*send 4 bytes column address data*/
 414:Src/ili93412.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 415:Src/ili93412.c **** 		WAIT_TX_CHECK_TIMEOUT(Timeout)
 416:Src/ili93412.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)i+25;
 417:Src/ili93412.c **** 		WAIT_TX_CHECK_TIMEOUT(Timeout)
 418:Src/ili93412.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 419:Src/ili93412.c **** 		WAIT_TX_CHECK_TIMEOUT(Timeout)
 420:Src/ili93412.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)i+25;
 421:Src/ili93412.c **** 		WAIT_TX_CHECK_TIMEOUT(Timeout)
 422:Src/ili93412.c **** 		
 423:Src/ili93412.c **** 		/*First clear the old graph pixel*/
 424:Src/ili93412.c **** 		/*send 1 byte page address set command*/
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 33


 425:Src/ili93412.c **** 		LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
 426:Src/ili93412.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
 427:Src/ili93412.c **** 		/*Fetch old graph data from memory while we wait for the byte to send*/
 428:Src/ili93412.c **** 		lGraphPrev = OldGraph[i-1];
 429:Src/ili93412.c **** 	       	lGraphCur = OldGraph[i];
 430:Src/ili93412.c **** 		WAIT_TX_CHECK_TIMEOUT(Timeout)
 431:Src/ili93412.c **** 		LCD_DC_PORT->BSRR=LCD_DC_PIN;
 432:Src/ili93412.c **** 		/*send 4 bytes page address data*/
 433:Src/ili93412.c **** 		if(lGraphCur>=lGraphPrev)
 434:Src/ili93412.c **** 		{
 435:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 436:Src/ili93412.c **** 			lGraphDiff = lGraphCur-lGraphPrev;
 437:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 438:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphPrev);
 439:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 440:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 441:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 442:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphCur);
 443:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 444:Src/ili93412.c **** 		}
 445:Src/ili93412.c **** 		else
 446:Src/ili93412.c **** 		{
 447:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 448:Src/ili93412.c **** 			lGraphDiff = lGraphPrev-lGraphCur;
 449:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 450:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphCur);
 451:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 452:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 453:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 454:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphPrev);
 455:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 456:Src/ili93412.c **** 		}	
 457:Src/ili93412.c **** 
 458:Src/ili93412.c **** 		/*send 1 byte memory write command*/
 459:Src/ili93412.c **** 		LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
 460:Src/ili93412.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
 461:Src/ili93412.c **** 		WAIT_TX_CHECK_TIMEOUT(Timeout)
 462:Src/ili93412.c **** 		LCD_DC_PORT->BSRR=LCD_DC_PIN;
 463:Src/ili93412.c **** 		/*send 2*diff bytes color information*/
 464:Src/ili93412.c **** 		for(uint8_t j=0; j<=lGraphDiff; j++)
 465:Src/ili93412.c **** 		{
 466:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(COLOR_1>>8);
 467:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 468:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)COLOR_1;
 469:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 470:Src/ili93412.c **** 		}
 471:Src/ili93412.c **** 		
 472:Src/ili93412.c **** 		/*Write the new graph pixel*/
 473:Src/ili93412.c **** 		/*Send 1 byte page address set command*/
 474:Src/ili93412.c **** 		LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
 475:Src/ili93412.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
 476:Src/ili93412.c **** 		/*Fetch old graph data from memory while we wait for the byte to send*/
 477:Src/ili93412.c **** 		lGraphPrev = NewGraph[i-1];
 478:Src/ili93412.c **** 		lGraphCur = NewGraph[i];
 479:Src/ili93412.c **** 		WAIT_TX_CHECK_TIMEOUT(Timeout)
 480:Src/ili93412.c **** 		LCD_DC_PORT->BSRR=LCD_DC_PIN;
 481:Src/ili93412.c **** 		/*send 4 bytes page address data*/
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 34


 482:Src/ili93412.c **** 		if(lGraphCur>=lGraphPrev)
 483:Src/ili93412.c **** 		{
 484:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 485:Src/ili93412.c **** 			lGraphDiff = lGraphCur-lGraphPrev;
 486:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 487:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphPrev);
 488:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 489:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 490:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 491:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphCur);
 492:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 493:Src/ili93412.c **** 		}
 494:Src/ili93412.c **** 		else
 495:Src/ili93412.c **** 		{
 496:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 497:Src/ili93412.c **** 			lGraphDiff = lGraphPrev-lGraphCur;
 498:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 499:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphCur);
 500:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 501:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 502:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 503:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphPrev);
 504:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 505:Src/ili93412.c **** 		}
 506:Src/ili93412.c **** 
 507:Src/ili93412.c **** 		/*send 1 byte memory write command*/
 508:Src/ili93412.c **** 		LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
 509:Src/ili93412.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
 510:Src/ili93412.c **** 		WAIT_TX_CHECK_TIMEOUT(Timeout)
 511:Src/ili93412.c **** 		LCD_DC_PORT->BSRR=LCD_DC_PIN;
 512:Src/ili93412.c **** 		/*send 2 bytes color information*/
 513:Src/ili93412.c **** 		for(uint8_t j=0; j<=lGraphDiff; j++)
 514:Src/ili93412.c **** 		{
 515:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(Color>>8);
 516:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 517:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)Color;
 518:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 519:Src/ili93412.c **** 		}
 520:Src/ili93412.c **** 
 521:Src/ili93412.c **** 	}
 522:Src/ili93412.c **** 	return HAL_OK;
 523:Src/ili93412.c **** }
 1352              		.loc 1 523 0 is_stmt 1
 1353 0030 05B0     		add	sp, sp, #20
 1354              	.LCFI12:
 1355              		.cfi_remember_state
 1356              		.cfi_def_cfa_offset 36
 1357              		@ sp needed
 1358 0032 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1359              	.LVL159:
 1360              	.L208:
 1361              	.LCFI13:
 1362              		.cfi_restore_state
 336:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2A;
 1363              		.loc 1 336 0
 1364 0036 B54B     		ldr	r3, .L224
 1365 0038 4FF08052 		mov	r2, #268435456
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 35


 1366 003c 1A61     		str	r2, [r3, #16]
 337:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1367              		.loc 1 337 0
 1368 003e 2368     		ldr	r3, [r4]
 1369 0040 2A22     		movs	r2, #42
 1370 0042 1A73     		strb	r2, [r3, #12]
 1371              	.L97:
 338:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 1372              		.loc 1 338 0 discriminator 2
 1373 0044 2368     		ldr	r3, [r4]
 1374 0046 9B68     		ldr	r3, [r3, #8]
 1375 0048 13F0020F 		tst	r3, #2
 1376 004c 09D1     		bne	.L209
 338:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 1377              		.loc 1 338 0 is_stmt 0 discriminator 3
 1378 004e FFF7FEFF 		bl	HAL_GetTick
 1379              	.LVL160:
 1380 0052 401B     		subs	r0, r0, r5
 1381 0054 6328     		cmp	r0, #99
 1382 0056 F5D9     		bls	.L97
 338:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 1383              		.loc 1 338 0 discriminator 1
 1384 0058 0321     		movs	r1, #3
 1385 005a 2046     		mov	r0, r4
 1386 005c FFF7FEFF 		bl	ILI9341_SPI_Error
 1387              	.LVL161:
 1388 0060 E6E7     		b	.L95
 1389              	.L209:
 339:Src/ili93412.c **** 	/*send 4 bytes column address data*/
 1390              		.loc 1 339 0 is_stmt 1
 1391 0062 AA4B     		ldr	r3, .L224
 1392 0064 4FF48052 		mov	r2, #4096
 1393 0068 1A61     		str	r2, [r3, #16]
 341:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1394              		.loc 1 341 0
 1395 006a 2368     		ldr	r3, [r4]
 1396 006c 0022     		movs	r2, #0
 1397 006e 1A73     		strb	r2, [r3, #12]
 1398              	.L99:
 342:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)25;
 1399              		.loc 1 342 0 discriminator 2
 1400 0070 2368     		ldr	r3, [r4]
 1401 0072 9A68     		ldr	r2, [r3, #8]
 1402 0074 12F0020F 		tst	r2, #2
 1403 0078 09D1     		bne	.L210
 342:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)25;
 1404              		.loc 1 342 0 is_stmt 0 discriminator 3
 1405 007a FFF7FEFF 		bl	HAL_GetTick
 1406              	.LVL162:
 1407 007e 401B     		subs	r0, r0, r5
 1408 0080 6328     		cmp	r0, #99
 1409 0082 F5D9     		bls	.L99
 342:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)25;
 1410              		.loc 1 342 0 discriminator 1
 1411 0084 0321     		movs	r1, #3
 1412 0086 2046     		mov	r0, r4
 1413 0088 FFF7FEFF 		bl	ILI9341_SPI_Error
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 36


 1414              	.LVL163:
 1415 008c D0E7     		b	.L95
 1416              	.L210:
 343:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1417              		.loc 1 343 0 is_stmt 1
 1418 008e 1922     		movs	r2, #25
 1419 0090 1A73     		strb	r2, [r3, #12]
 1420              	.L101:
 344:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 1421              		.loc 1 344 0 discriminator 2
 1422 0092 2368     		ldr	r3, [r4]
 1423 0094 9A68     		ldr	r2, [r3, #8]
 1424 0096 12F0020F 		tst	r2, #2
 1425 009a 09D1     		bne	.L211
 344:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 1426              		.loc 1 344 0 is_stmt 0 discriminator 3
 1427 009c FFF7FEFF 		bl	HAL_GetTick
 1428              	.LVL164:
 1429 00a0 401B     		subs	r0, r0, r5
 1430 00a2 6328     		cmp	r0, #99
 1431 00a4 F5D9     		bls	.L101
 344:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 1432              		.loc 1 344 0 discriminator 1
 1433 00a6 0321     		movs	r1, #3
 1434 00a8 2046     		mov	r0, r4
 1435 00aa FFF7FEFF 		bl	ILI9341_SPI_Error
 1436              	.LVL165:
 1437 00ae BFE7     		b	.L95
 1438              	.L211:
 345:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1439              		.loc 1 345 0 is_stmt 1
 1440 00b0 0022     		movs	r2, #0
 1441 00b2 1A73     		strb	r2, [r3, #12]
 1442              	.L103:
 346:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)25;
 1443              		.loc 1 346 0 discriminator 2
 1444 00b4 2368     		ldr	r3, [r4]
 1445 00b6 9A68     		ldr	r2, [r3, #8]
 1446 00b8 12F0020F 		tst	r2, #2
 1447 00bc 09D1     		bne	.L212
 346:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)25;
 1448              		.loc 1 346 0 is_stmt 0 discriminator 3
 1449 00be FFF7FEFF 		bl	HAL_GetTick
 1450              	.LVL166:
 1451 00c2 401B     		subs	r0, r0, r5
 1452 00c4 6328     		cmp	r0, #99
 1453 00c6 F5D9     		bls	.L103
 346:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)25;
 1454              		.loc 1 346 0 discriminator 1
 1455 00c8 0321     		movs	r1, #3
 1456 00ca 2046     		mov	r0, r4
 1457 00cc FFF7FEFF 		bl	ILI9341_SPI_Error
 1458              	.LVL167:
 1459 00d0 AEE7     		b	.L95
 1460              	.L212:
 347:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1461              		.loc 1 347 0 is_stmt 1
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 37


 1462 00d2 1922     		movs	r2, #25
 1463 00d4 1A73     		strb	r2, [r3, #12]
 1464              	.L105:
 348:Src/ili93412.c **** 	
 1465              		.loc 1 348 0 discriminator 2
 1466 00d6 2368     		ldr	r3, [r4]
 1467 00d8 9B68     		ldr	r3, [r3, #8]
 1468 00da 13F0020F 		tst	r3, #2
 1469 00de 09D1     		bne	.L213
 348:Src/ili93412.c **** 	
 1470              		.loc 1 348 0 is_stmt 0 discriminator 3
 1471 00e0 FFF7FEFF 		bl	HAL_GetTick
 1472              	.LVL168:
 1473 00e4 401B     		subs	r0, r0, r5
 1474 00e6 6328     		cmp	r0, #99
 1475 00e8 F5D9     		bls	.L105
 348:Src/ili93412.c **** 	
 1476              		.loc 1 348 0 discriminator 1
 1477 00ea 0321     		movs	r1, #3
 1478 00ec 2046     		mov	r0, r4
 1479 00ee FFF7FEFF 		bl	ILI9341_SPI_Error
 1480              	.LVL169:
 1481 00f2 9DE7     		b	.L95
 1482              	.L213:
 352:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
 1483              		.loc 1 352 0 is_stmt 1
 1484 00f4 854B     		ldr	r3, .L224
 1485 00f6 4FF08052 		mov	r2, #268435456
 1486 00fa 1A61     		str	r2, [r3, #16]
 353:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1487              		.loc 1 353 0
 1488 00fc 2368     		ldr	r3, [r4]
 1489 00fe 2B22     		movs	r2, #43
 1490 0100 1A73     		strb	r2, [r3, #12]
 1491              	.L107:
 354:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 1492              		.loc 1 354 0 discriminator 2
 1493 0102 2368     		ldr	r3, [r4]
 1494 0104 9B68     		ldr	r3, [r3, #8]
 1495 0106 13F0020F 		tst	r3, #2
 1496 010a 09D1     		bne	.L214
 354:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 1497              		.loc 1 354 0 is_stmt 0 discriminator 3
 1498 010c FFF7FEFF 		bl	HAL_GetTick
 1499              	.LVL170:
 1500 0110 401B     		subs	r0, r0, r5
 1501 0112 6328     		cmp	r0, #99
 1502 0114 F5D9     		bls	.L107
 354:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 1503              		.loc 1 354 0 discriminator 1
 1504 0116 0321     		movs	r1, #3
 1505 0118 2046     		mov	r0, r4
 1506 011a FFF7FEFF 		bl	ILI9341_SPI_Error
 1507              	.LVL171:
 1508 011e 87E7     		b	.L95
 1509              	.L214:
 355:Src/ili93412.c **** 	/*send 4 bytes page address data*/
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 38


 1510              		.loc 1 355 0 is_stmt 1
 1511 0120 7A4B     		ldr	r3, .L224
 1512 0122 4FF48052 		mov	r2, #4096
 1513 0126 1A61     		str	r2, [r3, #16]
 357:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1514              		.loc 1 357 0
 1515 0128 2368     		ldr	r3, [r4]
 1516 012a 0022     		movs	r2, #0
 1517 012c 1A73     		strb	r2, [r3, #12]
 1518              	.L109:
 358:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(OldGraph[0]);
 1519              		.loc 1 358 0 discriminator 2
 1520 012e 2368     		ldr	r3, [r4]
 1521 0130 9A68     		ldr	r2, [r3, #8]
 1522 0132 12F0020F 		tst	r2, #2
 1523 0136 09D1     		bne	.L215
 358:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(OldGraph[0]);
 1524              		.loc 1 358 0 is_stmt 0 discriminator 3
 1525 0138 FFF7FEFF 		bl	HAL_GetTick
 1526              	.LVL172:
 1527 013c 401B     		subs	r0, r0, r5
 1528 013e 6328     		cmp	r0, #99
 1529 0140 F5D9     		bls	.L109
 358:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(OldGraph[0]);
 1530              		.loc 1 358 0 discriminator 1
 1531 0142 0321     		movs	r1, #3
 1532 0144 2046     		mov	r0, r4
 1533 0146 FFF7FEFF 		bl	ILI9341_SPI_Error
 1534              	.LVL173:
 1535 014a 71E7     		b	.L95
 1536              	.L215:
 359:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1537              		.loc 1 359 0 is_stmt 1
 1538 014c 3278     		ldrb	r2, [r6]	@ zero_extendqisi2
 1539 014e 1A73     		strb	r2, [r3, #12]
 1540              	.L111:
 360:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 1541              		.loc 1 360 0 discriminator 2
 1542 0150 2368     		ldr	r3, [r4]
 1543 0152 9A68     		ldr	r2, [r3, #8]
 1544 0154 12F0020F 		tst	r2, #2
 1545 0158 09D1     		bne	.L216
 360:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 1546              		.loc 1 360 0 is_stmt 0 discriminator 3
 1547 015a FFF7FEFF 		bl	HAL_GetTick
 1548              	.LVL174:
 1549 015e 401B     		subs	r0, r0, r5
 1550 0160 6328     		cmp	r0, #99
 1551 0162 F5D9     		bls	.L111
 360:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 1552              		.loc 1 360 0 discriminator 1
 1553 0164 0321     		movs	r1, #3
 1554 0166 2046     		mov	r0, r4
 1555 0168 FFF7FEFF 		bl	ILI9341_SPI_Error
 1556              	.LVL175:
 1557 016c 60E7     		b	.L95
 1558              	.L216:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 39


 361:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1559              		.loc 1 361 0 is_stmt 1
 1560 016e 0022     		movs	r2, #0
 1561 0170 1A73     		strb	r2, [r3, #12]
 1562              	.L113:
 362:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(OldGraph[0]);
 1563              		.loc 1 362 0 discriminator 2
 1564 0172 2368     		ldr	r3, [r4]
 1565 0174 9A68     		ldr	r2, [r3, #8]
 1566 0176 12F0020F 		tst	r2, #2
 1567 017a 09D1     		bne	.L217
 362:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(OldGraph[0]);
 1568              		.loc 1 362 0 is_stmt 0 discriminator 3
 1569 017c FFF7FEFF 		bl	HAL_GetTick
 1570              	.LVL176:
 1571 0180 401B     		subs	r0, r0, r5
 1572 0182 6328     		cmp	r0, #99
 1573 0184 F5D9     		bls	.L113
 362:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(OldGraph[0]);
 1574              		.loc 1 362 0 discriminator 1
 1575 0186 0321     		movs	r1, #3
 1576 0188 2046     		mov	r0, r4
 1577 018a FFF7FEFF 		bl	ILI9341_SPI_Error
 1578              	.LVL177:
 1579 018e 4FE7     		b	.L95
 1580              	.L217:
 363:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1581              		.loc 1 363 0 is_stmt 1
 1582 0190 3278     		ldrb	r2, [r6]	@ zero_extendqisi2
 1583 0192 1A73     		strb	r2, [r3, #12]
 1584              	.L115:
 364:Src/ili93412.c **** 
 1585              		.loc 1 364 0 discriminator 2
 1586 0194 2368     		ldr	r3, [r4]
 1587 0196 9B68     		ldr	r3, [r3, #8]
 1588 0198 13F0020F 		tst	r3, #2
 1589 019c 09D1     		bne	.L218
 364:Src/ili93412.c **** 
 1590              		.loc 1 364 0 is_stmt 0 discriminator 3
 1591 019e FFF7FEFF 		bl	HAL_GetTick
 1592              	.LVL178:
 1593 01a2 401B     		subs	r0, r0, r5
 1594 01a4 6328     		cmp	r0, #99
 1595 01a6 F5D9     		bls	.L115
 364:Src/ili93412.c **** 
 1596              		.loc 1 364 0 discriminator 1
 1597 01a8 0321     		movs	r1, #3
 1598 01aa 2046     		mov	r0, r4
 1599 01ac FFF7FEFF 		bl	ILI9341_SPI_Error
 1600              	.LVL179:
 1601 01b0 3EE7     		b	.L95
 1602              	.L218:
 367:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
 1603              		.loc 1 367 0 is_stmt 1
 1604 01b2 564B     		ldr	r3, .L224
 1605 01b4 4FF08052 		mov	r2, #268435456
 1606 01b8 1A61     		str	r2, [r3, #16]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 40


 368:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1607              		.loc 1 368 0
 1608 01ba 2368     		ldr	r3, [r4]
 1609 01bc 2C22     		movs	r2, #44
 1610 01be 1A73     		strb	r2, [r3, #12]
 369:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 1611              		.loc 1 369 0
 1612 01c0 04E0     		b	.L117
 1613              	.L118:
 369:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 1614              		.loc 1 369 0 is_stmt 0 discriminator 3
 1615 01c2 FFF7FEFF 		bl	HAL_GetTick
 1616              	.LVL180:
 1617 01c6 401B     		subs	r0, r0, r5
 1618 01c8 6328     		cmp	r0, #99
 1619 01ca 0CD8     		bhi	.L219
 1620              	.L117:
 369:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 1621              		.loc 1 369 0 discriminator 2
 1622 01cc 2368     		ldr	r3, [r4]
 1623 01ce 9B68     		ldr	r3, [r3, #8]
 1624 01d0 13F0020F 		tst	r3, #2
 1625 01d4 F5D0     		beq	.L118
 370:Src/ili93412.c **** 	/*send 2 bytes color information*/
 1626              		.loc 1 370 0 is_stmt 1
 1627 01d6 4D4B     		ldr	r3, .L224
 1628 01d8 4FF48052 		mov	r2, #4096
 1629 01dc 1A61     		str	r2, [r3, #16]
 372:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1630              		.loc 1 372 0
 1631 01de 2368     		ldr	r3, [r4]
 1632 01e0 3822     		movs	r2, #56
 1633 01e2 1A73     		strb	r2, [r3, #12]
 373:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)COLOR_1;
 1634              		.loc 1 373 0
 1635 01e4 09E0     		b	.L119
 1636              	.L219:
 369:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 1637              		.loc 1 369 0 discriminator 1
 1638 01e6 0321     		movs	r1, #3
 1639 01e8 2046     		mov	r0, r4
 1640 01ea FFF7FEFF 		bl	ILI9341_SPI_Error
 1641              	.LVL181:
 1642 01ee 1FE7     		b	.L95
 1643              	.L120:
 373:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)COLOR_1;
 1644              		.loc 1 373 0 discriminator 3
 1645 01f0 FFF7FEFF 		bl	HAL_GetTick
 1646              	.LVL182:
 1647 01f4 401B     		subs	r0, r0, r5
 1648 01f6 6328     		cmp	r0, #99
 1649 01f8 07D8     		bhi	.L220
 1650              	.L119:
 373:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)COLOR_1;
 1651              		.loc 1 373 0 is_stmt 0 discriminator 2
 1652 01fa 2368     		ldr	r3, [r4]
 1653 01fc 9A68     		ldr	r2, [r3, #8]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 41


 1654 01fe 12F0020F 		tst	r2, #2
 1655 0202 F5D0     		beq	.L120
 374:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1656              		.loc 1 374 0 is_stmt 1
 1657 0204 8822     		movs	r2, #136
 1658 0206 1A73     		strb	r2, [r3, #12]
 375:Src/ili93412.c **** 
 1659              		.loc 1 375 0
 1660 0208 09E0     		b	.L121
 1661              	.L220:
 373:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)COLOR_1;
 1662              		.loc 1 373 0 discriminator 1
 1663 020a 0321     		movs	r1, #3
 1664 020c 2046     		mov	r0, r4
 1665 020e FFF7FEFF 		bl	ILI9341_SPI_Error
 1666              	.LVL183:
 1667 0212 0DE7     		b	.L95
 1668              	.L122:
 375:Src/ili93412.c **** 
 1669              		.loc 1 375 0 discriminator 3
 1670 0214 FFF7FEFF 		bl	HAL_GetTick
 1671              	.LVL184:
 1672 0218 401B     		subs	r0, r0, r5
 1673 021a 6328     		cmp	r0, #99
 1674 021c 0CD8     		bhi	.L221
 1675              	.L121:
 375:Src/ili93412.c **** 
 1676              		.loc 1 375 0 is_stmt 0 discriminator 2
 1677 021e 2368     		ldr	r3, [r4]
 1678 0220 9B68     		ldr	r3, [r3, #8]
 1679 0222 13F0020F 		tst	r3, #2
 1680 0226 F5D0     		beq	.L122
 380:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
 1681              		.loc 1 380 0 is_stmt 1
 1682 0228 384B     		ldr	r3, .L224
 1683 022a 4FF08052 		mov	r2, #268435456
 1684 022e 1A61     		str	r2, [r3, #16]
 381:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1685              		.loc 1 381 0
 1686 0230 2368     		ldr	r3, [r4]
 1687 0232 2B22     		movs	r2, #43
 1688 0234 1A73     		strb	r2, [r3, #12]
 382:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 1689              		.loc 1 382 0
 1690 0236 09E0     		b	.L123
 1691              	.L221:
 375:Src/ili93412.c **** 
 1692              		.loc 1 375 0 discriminator 1
 1693 0238 0321     		movs	r1, #3
 1694 023a 2046     		mov	r0, r4
 1695 023c FFF7FEFF 		bl	ILI9341_SPI_Error
 1696              	.LVL185:
 1697 0240 F6E6     		b	.L95
 1698              	.L124:
 382:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 1699              		.loc 1 382 0 discriminator 3
 1700 0242 FFF7FEFF 		bl	HAL_GetTick
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 42


 1701              	.LVL186:
 1702 0246 401B     		subs	r0, r0, r5
 1703 0248 6328     		cmp	r0, #99
 1704 024a 0CD8     		bhi	.L222
 1705              	.L123:
 382:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 1706              		.loc 1 382 0 is_stmt 0 discriminator 2
 1707 024c 2368     		ldr	r3, [r4]
 1708 024e 9B68     		ldr	r3, [r3, #8]
 1709 0250 13F0020F 		tst	r3, #2
 1710 0254 F5D0     		beq	.L124
 383:Src/ili93412.c **** 	/*send 4 bytes page address data*/
 1711              		.loc 1 383 0 is_stmt 1
 1712 0256 2D4B     		ldr	r3, .L224
 1713 0258 4FF48052 		mov	r2, #4096
 1714 025c 1A61     		str	r2, [r3, #16]
 385:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1715              		.loc 1 385 0
 1716 025e 2368     		ldr	r3, [r4]
 1717 0260 0022     		movs	r2, #0
 1718 0262 1A73     		strb	r2, [r3, #12]
 386:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(NewGraph[0]);
 1719              		.loc 1 386 0
 1720 0264 09E0     		b	.L125
 1721              	.L222:
 382:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 1722              		.loc 1 382 0 discriminator 1
 1723 0266 0321     		movs	r1, #3
 1724 0268 2046     		mov	r0, r4
 1725 026a FFF7FEFF 		bl	ILI9341_SPI_Error
 1726              	.LVL187:
 1727 026e DFE6     		b	.L95
 1728              	.L126:
 386:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(NewGraph[0]);
 1729              		.loc 1 386 0 discriminator 3
 1730 0270 FFF7FEFF 		bl	HAL_GetTick
 1731              	.LVL188:
 1732 0274 401B     		subs	r0, r0, r5
 1733 0276 6328     		cmp	r0, #99
 1734 0278 43D8     		bhi	.L223
 1735              	.L125:
 386:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(NewGraph[0]);
 1736              		.loc 1 386 0 is_stmt 0 discriminator 2
 1737 027a 2368     		ldr	r3, [r4]
 1738 027c 9A68     		ldr	r2, [r3, #8]
 1739 027e 12F0020F 		tst	r2, #2
 1740 0282 F5D0     		beq	.L126
 387:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1741              		.loc 1 387 0 is_stmt 1
 1742 0284 3A78     		ldrb	r2, [r7]	@ zero_extendqisi2
 1743 0286 1A73     		strb	r2, [r3, #12]
 1744              	.L127:
 388:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 1745              		.loc 1 388 0 discriminator 2
 1746 0288 2368     		ldr	r3, [r4]
 1747 028a 9A68     		ldr	r2, [r3, #8]
 1748 028c 12F0020F 		tst	r2, #2
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 43


 1749 0290 3ED0     		beq	.L128
 389:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1750              		.loc 1 389 0
 1751 0292 0022     		movs	r2, #0
 1752 0294 1A73     		strb	r2, [r3, #12]
 1753              	.L129:
 390:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(NewGraph[0]);
 1754              		.loc 1 390 0 discriminator 2
 1755 0296 2368     		ldr	r3, [r4]
 1756 0298 9A68     		ldr	r2, [r3, #8]
 1757 029a 12F0020F 		tst	r2, #2
 1758 029e 41D0     		beq	.L130
 391:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1759              		.loc 1 391 0
 1760 02a0 3A78     		ldrb	r2, [r7]	@ zero_extendqisi2
 1761 02a2 1A73     		strb	r2, [r3, #12]
 1762              	.L131:
 392:Src/ili93412.c **** 	
 1763              		.loc 1 392 0 discriminator 2
 1764 02a4 2368     		ldr	r3, [r4]
 1765 02a6 9B68     		ldr	r3, [r3, #8]
 1766 02a8 13F0020F 		tst	r3, #2
 1767 02ac 44D0     		beq	.L132
 395:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
 1768              		.loc 1 395 0
 1769 02ae 174B     		ldr	r3, .L224
 1770 02b0 4FF08052 		mov	r2, #268435456
 1771 02b4 1A61     		str	r2, [r3, #16]
 396:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1772              		.loc 1 396 0
 1773 02b6 2368     		ldr	r3, [r4]
 1774 02b8 2C22     		movs	r2, #44
 1775 02ba 1A73     		strb	r2, [r3, #12]
 1776              	.L133:
 397:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 1777              		.loc 1 397 0 discriminator 2
 1778 02bc 2368     		ldr	r3, [r4]
 1779 02be 9B68     		ldr	r3, [r3, #8]
 1780 02c0 13F0020F 		tst	r3, #2
 1781 02c4 42D0     		beq	.L134
 398:Src/ili93412.c **** 	/*send 2 bytes color information*/
 1782              		.loc 1 398 0
 1783 02c6 114B     		ldr	r3, .L224
 1784 02c8 4FF48052 		mov	r2, #4096
 1785 02cc 1A61     		str	r2, [r3, #16]
 400:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1786              		.loc 1 400 0
 1787 02ce 2368     		ldr	r3, [r4]
 1788 02d0 4FEA1822 		lsr	r2, r8, #8
 1789 02d4 0092     		str	r2, [sp]
 1790 02d6 1A73     		strb	r2, [r3, #12]
 1791              	.L135:
 401:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)Color;
 1792              		.loc 1 401 0 discriminator 2
 1793 02d8 2368     		ldr	r3, [r4]
 1794 02da 9A68     		ldr	r2, [r3, #8]
 1795 02dc 12F0020F 		tst	r2, #2
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 44


 1796 02e0 3ED0     		beq	.L136
 402:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 1797              		.loc 1 402 0
 1798 02e2 5FFA88F2 		uxtb	r2, r8
 1799 02e6 0192     		str	r2, [sp, #4]
 1800 02e8 1A73     		strb	r2, [r3, #12]
 1801              	.L137:
 403:Src/ili93412.c **** 
 1802              		.loc 1 403 0 discriminator 2
 1803 02ea 2368     		ldr	r3, [r4]
 1804 02ec 9B68     		ldr	r3, [r3, #8]
 1805 02ee 13F0020F 		tst	r3, #2
 1806 02f2 3FD0     		beq	.L138
 1807              	.LBB3:
 406:Src/ili93412.c **** 	{
 1808              		.loc 1 406 0
 1809 02f4 4FF0010B 		mov	fp, #1
 1810              	.L139:
 1811              	.LVL189:
 406:Src/ili93412.c **** 	{
 1812              		.loc 1 406 0 is_stmt 0 discriminator 1
 1813 02f8 BBF1E50F 		cmp	fp, #229
 1814 02fc 44D9     		bls	.L206
 1815              	.LBE3:
 522:Src/ili93412.c **** }
 1816              		.loc 1 522 0 is_stmt 1
 1817 02fe 0020     		movs	r0, #0
 1818 0300 96E6     		b	.L95
 1819              	.LVL190:
 1820              	.L223:
 386:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(NewGraph[0]);
 1821              		.loc 1 386 0 discriminator 1
 1822 0302 0321     		movs	r1, #3
 1823 0304 2046     		mov	r0, r4
 1824 0306 FFF7FEFF 		bl	ILI9341_SPI_Error
 1825              	.LVL191:
 1826 030a 91E6     		b	.L95
 1827              	.L225:
 1828              		.align	2
 1829              	.L224:
 1830 030c 00080140 		.word	1073809408
 1831              	.L128:
 388:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 1832              		.loc 1 388 0 discriminator 3
 1833 0310 FFF7FEFF 		bl	HAL_GetTick
 1834              	.LVL192:
 1835 0314 401B     		subs	r0, r0, r5
 1836 0316 6328     		cmp	r0, #99
 1837 0318 B6D9     		bls	.L127
 388:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 1838              		.loc 1 388 0 is_stmt 0 discriminator 1
 1839 031a 0321     		movs	r1, #3
 1840 031c 2046     		mov	r0, r4
 1841 031e FFF7FEFF 		bl	ILI9341_SPI_Error
 1842              	.LVL193:
 1843 0322 85E6     		b	.L95
 1844              	.L130:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 45


 390:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(NewGraph[0]);
 1845              		.loc 1 390 0 is_stmt 1 discriminator 3
 1846 0324 FFF7FEFF 		bl	HAL_GetTick
 1847              	.LVL194:
 1848 0328 401B     		subs	r0, r0, r5
 1849 032a 6328     		cmp	r0, #99
 1850 032c B3D9     		bls	.L129
 390:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(NewGraph[0]);
 1851              		.loc 1 390 0 is_stmt 0 discriminator 1
 1852 032e 0321     		movs	r1, #3
 1853 0330 2046     		mov	r0, r4
 1854 0332 FFF7FEFF 		bl	ILI9341_SPI_Error
 1855              	.LVL195:
 1856 0336 7BE6     		b	.L95
 1857              	.L132:
 392:Src/ili93412.c **** 	
 1858              		.loc 1 392 0 is_stmt 1 discriminator 3
 1859 0338 FFF7FEFF 		bl	HAL_GetTick
 1860              	.LVL196:
 1861 033c 401B     		subs	r0, r0, r5
 1862 033e 6328     		cmp	r0, #99
 1863 0340 B0D9     		bls	.L131
 392:Src/ili93412.c **** 	
 1864              		.loc 1 392 0 is_stmt 0 discriminator 1
 1865 0342 0321     		movs	r1, #3
 1866 0344 2046     		mov	r0, r4
 1867 0346 FFF7FEFF 		bl	ILI9341_SPI_Error
 1868              	.LVL197:
 1869 034a 71E6     		b	.L95
 1870              	.L134:
 397:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 1871              		.loc 1 397 0 is_stmt 1 discriminator 3
 1872 034c FFF7FEFF 		bl	HAL_GetTick
 1873              	.LVL198:
 1874 0350 401B     		subs	r0, r0, r5
 1875 0352 6328     		cmp	r0, #99
 1876 0354 B2D9     		bls	.L133
 397:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 1877              		.loc 1 397 0 is_stmt 0 discriminator 1
 1878 0356 0321     		movs	r1, #3
 1879 0358 2046     		mov	r0, r4
 1880 035a FFF7FEFF 		bl	ILI9341_SPI_Error
 1881              	.LVL199:
 1882 035e 67E6     		b	.L95
 1883              	.L136:
 401:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)Color;
 1884              		.loc 1 401 0 is_stmt 1 discriminator 3
 1885 0360 FFF7FEFF 		bl	HAL_GetTick
 1886              	.LVL200:
 1887 0364 401B     		subs	r0, r0, r5
 1888 0366 6328     		cmp	r0, #99
 1889 0368 B6D9     		bls	.L135
 401:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)Color;
 1890              		.loc 1 401 0 is_stmt 0 discriminator 1
 1891 036a 0321     		movs	r1, #3
 1892 036c 2046     		mov	r0, r4
 1893 036e FFF7FEFF 		bl	ILI9341_SPI_Error
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 46


 1894              	.LVL201:
 1895 0372 5DE6     		b	.L95
 1896              	.L138:
 403:Src/ili93412.c **** 
 1897              		.loc 1 403 0 is_stmt 1 discriminator 3
 1898 0374 FFF7FEFF 		bl	HAL_GetTick
 1899              	.LVL202:
 1900 0378 401B     		subs	r0, r0, r5
 1901 037a 6328     		cmp	r0, #99
 1902 037c B5D9     		bls	.L137
 403:Src/ili93412.c **** 
 1903              		.loc 1 403 0 is_stmt 0 discriminator 1
 1904 037e 0321     		movs	r1, #3
 1905 0380 2046     		mov	r0, r4
 1906 0382 FFF7FEFF 		bl	ILI9341_SPI_Error
 1907              	.LVL203:
 1908 0386 53E6     		b	.L95
 1909              	.LVL204:
 1910              	.L206:
 1911              	.LBB8:
 409:Src/ili93412.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2A;
 1912              		.loc 1 409 0 is_stmt 1
 1913 0388 CA4B     		ldr	r3, .L226
 1914 038a 4FF08052 		mov	r2, #268435456
 1915 038e 1A61     		str	r2, [r3, #16]
 410:Src/ili93412.c **** 		WAIT_TX_CHECK_TIMEOUT(Timeout)
 1916              		.loc 1 410 0
 1917 0390 2368     		ldr	r3, [r4]
 1918 0392 2A22     		movs	r2, #42
 1919 0394 1A73     		strb	r2, [r3, #12]
 1920              	.L140:
 411:Src/ili93412.c **** 		LCD_DC_PORT->BSRR=LCD_DC_PIN;
 1921              		.loc 1 411 0 discriminator 2
 1922 0396 2368     		ldr	r3, [r4]
 1923 0398 9B68     		ldr	r3, [r3, #8]
 1924 039a 13F0020F 		tst	r3, #2
 1925 039e 00F0DB80 		beq	.L141
 412:Src/ili93412.c **** 		/*send 4 bytes column address data*/
 1926              		.loc 1 412 0
 1927 03a2 C44B     		ldr	r3, .L226
 1928 03a4 4FF48052 		mov	r2, #4096
 1929 03a8 1A61     		str	r2, [r3, #16]
 414:Src/ili93412.c **** 		WAIT_TX_CHECK_TIMEOUT(Timeout)
 1930              		.loc 1 414 0
 1931 03aa 2368     		ldr	r3, [r4]
 1932 03ac 0022     		movs	r2, #0
 1933 03ae 1A73     		strb	r2, [r3, #12]
 1934              	.L142:
 415:Src/ili93412.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)i+25;
 1935              		.loc 1 415 0 discriminator 2
 1936 03b0 2368     		ldr	r3, [r4]
 1937 03b2 9A68     		ldr	r2, [r3, #8]
 1938 03b4 12F0020F 		tst	r2, #2
 1939 03b8 00F0D980 		beq	.L143
 416:Src/ili93412.c **** 		WAIT_TX_CHECK_TIMEOUT(Timeout)
 1940              		.loc 1 416 0
 1941 03bc 0BF11908 		add	r8, fp, #25
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 47


 1942 03c0 5FFA88F8 		uxtb	r8, r8
 1943 03c4 83F80C80 		strb	r8, [r3, #12]
 1944              	.L144:
 417:Src/ili93412.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 1945              		.loc 1 417 0 discriminator 2
 1946 03c8 2368     		ldr	r3, [r4]
 1947 03ca 9A68     		ldr	r2, [r3, #8]
 1948 03cc 12F0020F 		tst	r2, #2
 1949 03d0 00F0D880 		beq	.L145
 418:Src/ili93412.c **** 		WAIT_TX_CHECK_TIMEOUT(Timeout)
 1950              		.loc 1 418 0
 1951 03d4 0022     		movs	r2, #0
 1952 03d6 1A73     		strb	r2, [r3, #12]
 1953              	.L146:
 419:Src/ili93412.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)i+25;
 1954              		.loc 1 419 0 discriminator 2
 1955 03d8 2368     		ldr	r3, [r4]
 1956 03da 9A68     		ldr	r2, [r3, #8]
 1957 03dc 12F0020F 		tst	r2, #2
 1958 03e0 00F0DB80 		beq	.L147
 420:Src/ili93412.c **** 		WAIT_TX_CHECK_TIMEOUT(Timeout)
 1959              		.loc 1 420 0
 1960 03e4 83F80C80 		strb	r8, [r3, #12]
 1961              	.L148:
 421:Src/ili93412.c **** 		
 1962              		.loc 1 421 0 discriminator 2
 1963 03e8 2368     		ldr	r3, [r4]
 1964 03ea 9B68     		ldr	r3, [r3, #8]
 1965 03ec 13F0020F 		tst	r3, #2
 1966 03f0 00F0DE80 		beq	.L149
 425:Src/ili93412.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
 1967              		.loc 1 425 0
 1968 03f4 AF4B     		ldr	r3, .L226
 1969 03f6 4FF08052 		mov	r2, #268435456
 1970 03fa 1A61     		str	r2, [r3, #16]
 426:Src/ili93412.c **** 		/*Fetch old graph data from memory while we wait for the byte to send*/
 1971              		.loc 1 426 0
 1972 03fc 2368     		ldr	r3, [r4]
 1973 03fe 2B22     		movs	r2, #43
 1974 0400 1A73     		strb	r2, [r3, #12]
 428:Src/ili93412.c **** 	       	lGraphCur = OldGraph[i];
 1975              		.loc 1 428 0
 1976 0402 CDF808B0 		str	fp, [sp, #8]
 1977 0406 0BF1FF33 		add	r3, fp, #-1
 1978 040a 0393     		str	r3, [sp, #12]
 1979 040c 16F80390 		ldrb	r9, [r6, r3]	@ zero_extendqisi2
 1980              	.LVL205:
 429:Src/ili93412.c **** 		WAIT_TX_CHECK_TIMEOUT(Timeout)
 1981              		.loc 1 429 0
 1982 0410 16F80BA0 		ldrb	r10, [r6, fp]	@ zero_extendqisi2
 1983              	.LVL206:
 1984              	.L150:
 430:Src/ili93412.c **** 		LCD_DC_PORT->BSRR=LCD_DC_PIN;
 1985              		.loc 1 430 0 discriminator 2
 1986 0414 2368     		ldr	r3, [r4]
 1987 0416 9B68     		ldr	r3, [r3, #8]
 1988 0418 13F0020F 		tst	r3, #2
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 48


 1989 041c 00F0D380 		beq	.L151
 431:Src/ili93412.c **** 		/*send 4 bytes page address data*/
 1990              		.loc 1 431 0
 1991 0420 A44B     		ldr	r3, .L226
 1992 0422 4FF48052 		mov	r2, #4096
 1993 0426 1A61     		str	r2, [r3, #16]
 433:Src/ili93412.c **** 		{
 1994              		.loc 1 433 0
 1995 0428 D145     		cmp	r9, r10
 1996 042a 00F20381 		bhi	.L152
 435:Src/ili93412.c **** 			lGraphDiff = lGraphCur-lGraphPrev;
 1997              		.loc 1 435 0
 1998 042e 2368     		ldr	r3, [r4]
 1999 0430 0022     		movs	r2, #0
 2000 0432 1A73     		strb	r2, [r3, #12]
 436:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 2001              		.loc 1 436 0
 2002 0434 AAEB0908 		sub	r8, r10, r9
 2003 0438 5FFA88F8 		uxtb	r8, r8
 2004              	.LVL207:
 2005              	.L153:
 437:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphPrev);
 2006              		.loc 1 437 0 discriminator 2
 2007 043c 2368     		ldr	r3, [r4]
 2008 043e 9A68     		ldr	r2, [r3, #8]
 2009 0440 12F0020F 		tst	r2, #2
 2010 0444 00F0CA80 		beq	.L154
 438:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 2011              		.loc 1 438 0
 2012 0448 83F80C90 		strb	r9, [r3, #12]
 2013              	.L155:
 439:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 2014              		.loc 1 439 0 discriminator 2
 2015 044c 2368     		ldr	r3, [r4]
 2016 044e 9A68     		ldr	r2, [r3, #8]
 2017 0450 12F0020F 		tst	r2, #2
 2018 0454 00F0CD80 		beq	.L156
 440:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 2019              		.loc 1 440 0
 2020 0458 0022     		movs	r2, #0
 2021 045a 1A73     		strb	r2, [r3, #12]
 2022              	.L157:
 441:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphCur);
 2023              		.loc 1 441 0 discriminator 2
 2024 045c 2368     		ldr	r3, [r4]
 2025 045e 9A68     		ldr	r2, [r3, #8]
 2026 0460 12F0020F 		tst	r2, #2
 2027 0464 00F0D080 		beq	.L158
 442:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 2028              		.loc 1 442 0
 2029 0468 83F80CA0 		strb	r10, [r3, #12]
 2030              	.L159:
 443:Src/ili93412.c **** 		}
 2031              		.loc 1 443 0 discriminator 2
 2032 046c 2368     		ldr	r3, [r4]
 2033 046e 9B68     		ldr	r3, [r3, #8]
 2034 0470 13F0020F 		tst	r3, #2
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 49


 2035 0474 00F0D380 		beq	.L160
 2036              	.L161:
 459:Src/ili93412.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
 2037              		.loc 1 459 0
 2038 0478 8E4B     		ldr	r3, .L226
 2039 047a 4FF08052 		mov	r2, #268435456
 2040 047e 1A61     		str	r2, [r3, #16]
 460:Src/ili93412.c **** 		WAIT_TX_CHECK_TIMEOUT(Timeout)
 2041              		.loc 1 460 0
 2042 0480 2368     		ldr	r3, [r4]
 2043 0482 2C22     		movs	r2, #44
 2044 0484 1A73     		strb	r2, [r3, #12]
 2045              	.L170:
 461:Src/ili93412.c **** 		LCD_DC_PORT->BSRR=LCD_DC_PIN;
 2046              		.loc 1 461 0 discriminator 2
 2047 0486 2368     		ldr	r3, [r4]
 2048 0488 9B68     		ldr	r3, [r3, #8]
 2049 048a 13F0020F 		tst	r3, #2
 2050 048e 00F01D81 		beq	.L171
 462:Src/ili93412.c **** 		/*send 2*diff bytes color information*/
 2051              		.loc 1 462 0
 2052 0492 884B     		ldr	r3, .L226
 2053 0494 4FF48052 		mov	r2, #4096
 2054 0498 1A61     		str	r2, [r3, #16]
 2055              	.LVL208:
 2056              	.LBB4:
 464:Src/ili93412.c **** 		{
 2057              		.loc 1 464 0
 2058 049a 4FF00009 		mov	r9, #0
 2059              	.LVL209:
 2060              	.L172:
 464:Src/ili93412.c **** 		{
 2061              		.loc 1 464 0 is_stmt 0 discriminator 1
 2062 049e C845     		cmp	r8, r9
 2063 04a0 80F01F81 		bcs	.L177
 2064              	.LBE4:
 474:Src/ili93412.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
 2065              		.loc 1 474 0 is_stmt 1
 2066 04a4 834B     		ldr	r3, .L226
 2067 04a6 4FF08052 		mov	r2, #268435456
 2068 04aa 1A61     		str	r2, [r3, #16]
 475:Src/ili93412.c **** 		/*Fetch old graph data from memory while we wait for the byte to send*/
 2069              		.loc 1 475 0
 2070 04ac 2368     		ldr	r3, [r4]
 2071 04ae 2B22     		movs	r2, #43
 2072 04b0 1A73     		strb	r2, [r3, #12]
 477:Src/ili93412.c **** 		lGraphCur = NewGraph[i];
 2073              		.loc 1 477 0
 2074 04b2 039B     		ldr	r3, [sp, #12]
 2075 04b4 17F80390 		ldrb	r9, [r7, r3]	@ zero_extendqisi2
 2076              	.LVL210:
 478:Src/ili93412.c **** 		WAIT_TX_CHECK_TIMEOUT(Timeout)
 2077              		.loc 1 478 0
 2078 04b8 029B     		ldr	r3, [sp, #8]
 2079 04ba 17F803A0 		ldrb	r10, [r7, r3]	@ zero_extendqisi2
 2080              	.LVL211:
 2081              	.L178:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 50


 479:Src/ili93412.c **** 		LCD_DC_PORT->BSRR=LCD_DC_PIN;
 2082              		.loc 1 479 0 discriminator 2
 2083 04be 2368     		ldr	r3, [r4]
 2084 04c0 9B68     		ldr	r3, [r3, #8]
 2085 04c2 13F0020F 		tst	r3, #2
 2086 04c6 00F03481 		beq	.L179
 480:Src/ili93412.c **** 		/*send 4 bytes page address data*/
 2087              		.loc 1 480 0
 2088 04ca 7A4B     		ldr	r3, .L226
 2089 04cc 4FF48052 		mov	r2, #4096
 2090 04d0 1A61     		str	r2, [r3, #16]
 482:Src/ili93412.c **** 		{
 2091              		.loc 1 482 0
 2092 04d2 D145     		cmp	r9, r10
 2093 04d4 00F26481 		bhi	.L180
 484:Src/ili93412.c **** 			lGraphDiff = lGraphCur-lGraphPrev;
 2094              		.loc 1 484 0
 2095 04d8 2368     		ldr	r3, [r4]
 2096 04da 0022     		movs	r2, #0
 2097 04dc 1A73     		strb	r2, [r3, #12]
 485:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 2098              		.loc 1 485 0
 2099 04de AAEB0908 		sub	r8, r10, r9
 2100              	.LVL212:
 2101 04e2 5FFA88F8 		uxtb	r8, r8
 2102              	.LVL213:
 2103              	.L181:
 486:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphPrev);
 2104              		.loc 1 486 0 discriminator 2
 2105 04e6 2368     		ldr	r3, [r4]
 2106 04e8 9A68     		ldr	r2, [r3, #8]
 2107 04ea 12F0020F 		tst	r2, #2
 2108 04ee 00F02B81 		beq	.L182
 487:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 2109              		.loc 1 487 0
 2110 04f2 83F80C90 		strb	r9, [r3, #12]
 2111              	.L183:
 488:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 2112              		.loc 1 488 0 discriminator 2
 2113 04f6 2368     		ldr	r3, [r4]
 2114 04f8 9A68     		ldr	r2, [r3, #8]
 2115 04fa 12F0020F 		tst	r2, #2
 2116 04fe 00F02E81 		beq	.L184
 489:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 2117              		.loc 1 489 0
 2118 0502 0022     		movs	r2, #0
 2119 0504 1A73     		strb	r2, [r3, #12]
 2120              	.L185:
 490:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphCur);
 2121              		.loc 1 490 0 discriminator 2
 2122 0506 2368     		ldr	r3, [r4]
 2123 0508 9A68     		ldr	r2, [r3, #8]
 2124 050a 12F0020F 		tst	r2, #2
 2125 050e 00F03181 		beq	.L186
 491:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 2126              		.loc 1 491 0
 2127 0512 83F80CA0 		strb	r10, [r3, #12]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 51


 2128              	.L187:
 492:Src/ili93412.c **** 		}
 2129              		.loc 1 492 0 discriminator 2
 2130 0516 2368     		ldr	r3, [r4]
 2131 0518 9B68     		ldr	r3, [r3, #8]
 2132 051a 13F0020F 		tst	r3, #2
 2133 051e 00F03481 		beq	.L188
 2134              	.L189:
 508:Src/ili93412.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
 2135              		.loc 1 508 0
 2136 0522 644B     		ldr	r3, .L226
 2137 0524 4FF08052 		mov	r2, #268435456
 2138 0528 1A61     		str	r2, [r3, #16]
 509:Src/ili93412.c **** 		WAIT_TX_CHECK_TIMEOUT(Timeout)
 2139              		.loc 1 509 0
 2140 052a 2368     		ldr	r3, [r4]
 2141 052c 2C22     		movs	r2, #44
 2142 052e 1A73     		strb	r2, [r3, #12]
 2143              	.L198:
 510:Src/ili93412.c **** 		LCD_DC_PORT->BSRR=LCD_DC_PIN;
 2144              		.loc 1 510 0 discriminator 2
 2145 0530 2368     		ldr	r3, [r4]
 2146 0532 9B68     		ldr	r3, [r3, #8]
 2147 0534 13F0020F 		tst	r3, #2
 2148 0538 00F07D81 		beq	.L199
 511:Src/ili93412.c **** 		/*send 2 bytes color information*/
 2149              		.loc 1 511 0
 2150 053c 5D4B     		ldr	r3, .L226
 2151 053e 4FF48052 		mov	r2, #4096
 2152 0542 1A61     		str	r2, [r3, #16]
 2153              	.LVL214:
 2154              	.LBB5:
 513:Src/ili93412.c **** 		{
 2155              		.loc 1 513 0
 2156 0544 4FF00009 		mov	r9, #0
 2157              	.LVL215:
 2158              	.L200:
 513:Src/ili93412.c **** 		{
 2159              		.loc 1 513 0 is_stmt 0 discriminator 1
 2160 0548 C845     		cmp	r8, r9
 2161 054a 80F08081 		bcs	.L205
 2162              	.LBE5:
 406:Src/ili93412.c **** 	{
 2163              		.loc 1 406 0 is_stmt 1 discriminator 2
 2164 054e 0BF1010B 		add	fp, fp, #1
 2165              	.LVL216:
 2166 0552 5FFA8BFB 		uxtb	fp, fp
 2167              	.LVL217:
 2168 0556 CFE6     		b	.L139
 2169              	.LVL218:
 2170              	.L141:
 411:Src/ili93412.c **** 		LCD_DC_PORT->BSRR=LCD_DC_PIN;
 2171              		.loc 1 411 0 discriminator 3
 2172 0558 FFF7FEFF 		bl	HAL_GetTick
 2173              	.LVL219:
 2174 055c 401B     		subs	r0, r0, r5
 2175 055e 6328     		cmp	r0, #99
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 52


 2176 0560 7FF619AF 		bls	.L140
 411:Src/ili93412.c **** 		LCD_DC_PORT->BSRR=LCD_DC_PIN;
 2177              		.loc 1 411 0 is_stmt 0 discriminator 1
 2178 0564 0321     		movs	r1, #3
 2179 0566 2046     		mov	r0, r4
 2180 0568 FFF7FEFF 		bl	ILI9341_SPI_Error
 2181              	.LVL220:
 2182 056c 60E5     		b	.L95
 2183              	.L143:
 415:Src/ili93412.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)i+25;
 2184              		.loc 1 415 0 is_stmt 1 discriminator 3
 2185 056e FFF7FEFF 		bl	HAL_GetTick
 2186              	.LVL221:
 2187 0572 401B     		subs	r0, r0, r5
 2188 0574 6328     		cmp	r0, #99
 2189 0576 7FF61BAF 		bls	.L142
 415:Src/ili93412.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)i+25;
 2190              		.loc 1 415 0 is_stmt 0 discriminator 1
 2191 057a 0321     		movs	r1, #3
 2192 057c 2046     		mov	r0, r4
 2193 057e FFF7FEFF 		bl	ILI9341_SPI_Error
 2194              	.LVL222:
 2195 0582 55E5     		b	.L95
 2196              	.L145:
 417:Src/ili93412.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 2197              		.loc 1 417 0 is_stmt 1 discriminator 3
 2198 0584 FFF7FEFF 		bl	HAL_GetTick
 2199              	.LVL223:
 2200 0588 401B     		subs	r0, r0, r5
 2201 058a 6328     		cmp	r0, #99
 2202 058c 7FF61CAF 		bls	.L144
 417:Src/ili93412.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 2203              		.loc 1 417 0 is_stmt 0 discriminator 1
 2204 0590 0321     		movs	r1, #3
 2205 0592 2046     		mov	r0, r4
 2206 0594 FFF7FEFF 		bl	ILI9341_SPI_Error
 2207              	.LVL224:
 2208 0598 4AE5     		b	.L95
 2209              	.L147:
 419:Src/ili93412.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)i+25;
 2210              		.loc 1 419 0 is_stmt 1 discriminator 3
 2211 059a FFF7FEFF 		bl	HAL_GetTick
 2212              	.LVL225:
 2213 059e 401B     		subs	r0, r0, r5
 2214 05a0 6328     		cmp	r0, #99
 2215 05a2 7FF619AF 		bls	.L146
 419:Src/ili93412.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)i+25;
 2216              		.loc 1 419 0 is_stmt 0 discriminator 1
 2217 05a6 0321     		movs	r1, #3
 2218 05a8 2046     		mov	r0, r4
 2219 05aa FFF7FEFF 		bl	ILI9341_SPI_Error
 2220              	.LVL226:
 2221 05ae 3FE5     		b	.L95
 2222              	.L149:
 421:Src/ili93412.c **** 		
 2223              		.loc 1 421 0 is_stmt 1 discriminator 3
 2224 05b0 FFF7FEFF 		bl	HAL_GetTick
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 53


 2225              	.LVL227:
 2226 05b4 401B     		subs	r0, r0, r5
 2227 05b6 6328     		cmp	r0, #99
 2228 05b8 7FF616AF 		bls	.L148
 421:Src/ili93412.c **** 		
 2229              		.loc 1 421 0 is_stmt 0 discriminator 1
 2230 05bc 0321     		movs	r1, #3
 2231 05be 2046     		mov	r0, r4
 2232 05c0 FFF7FEFF 		bl	ILI9341_SPI_Error
 2233              	.LVL228:
 2234 05c4 34E5     		b	.L95
 2235              	.LVL229:
 2236              	.L151:
 430:Src/ili93412.c **** 		LCD_DC_PORT->BSRR=LCD_DC_PIN;
 2237              		.loc 1 430 0 is_stmt 1 discriminator 3
 2238 05c6 FFF7FEFF 		bl	HAL_GetTick
 2239              	.LVL230:
 2240 05ca 401B     		subs	r0, r0, r5
 2241 05cc 6328     		cmp	r0, #99
 2242 05ce 7FF621AF 		bls	.L150
 430:Src/ili93412.c **** 		LCD_DC_PORT->BSRR=LCD_DC_PIN;
 2243              		.loc 1 430 0 is_stmt 0 discriminator 1
 2244 05d2 0321     		movs	r1, #3
 2245 05d4 2046     		mov	r0, r4
 2246 05d6 FFF7FEFF 		bl	ILI9341_SPI_Error
 2247              	.LVL231:
 2248 05da 29E5     		b	.L95
 2249              	.LVL232:
 2250              	.L154:
 437:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphPrev);
 2251              		.loc 1 437 0 is_stmt 1 discriminator 3
 2252 05dc FFF7FEFF 		bl	HAL_GetTick
 2253              	.LVL233:
 2254 05e0 401B     		subs	r0, r0, r5
 2255 05e2 6328     		cmp	r0, #99
 2256 05e4 7FF62AAF 		bls	.L153
 437:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphPrev);
 2257              		.loc 1 437 0 is_stmt 0 discriminator 1
 2258 05e8 0321     		movs	r1, #3
 2259 05ea 2046     		mov	r0, r4
 2260 05ec FFF7FEFF 		bl	ILI9341_SPI_Error
 2261              	.LVL234:
 2262 05f0 1EE5     		b	.L95
 2263              	.L156:
 439:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 2264              		.loc 1 439 0 is_stmt 1 discriminator 3
 2265 05f2 FFF7FEFF 		bl	HAL_GetTick
 2266              	.LVL235:
 2267 05f6 401B     		subs	r0, r0, r5
 2268 05f8 6328     		cmp	r0, #99
 2269 05fa 7FF627AF 		bls	.L155
 439:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 2270              		.loc 1 439 0 is_stmt 0 discriminator 1
 2271 05fe 0321     		movs	r1, #3
 2272 0600 2046     		mov	r0, r4
 2273 0602 FFF7FEFF 		bl	ILI9341_SPI_Error
 2274              	.LVL236:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 54


 2275 0606 13E5     		b	.L95
 2276              	.L158:
 441:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphCur);
 2277              		.loc 1 441 0 is_stmt 1 discriminator 3
 2278 0608 FFF7FEFF 		bl	HAL_GetTick
 2279              	.LVL237:
 2280 060c 401B     		subs	r0, r0, r5
 2281 060e 6328     		cmp	r0, #99
 2282 0610 7FF624AF 		bls	.L157
 441:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphCur);
 2283              		.loc 1 441 0 is_stmt 0 discriminator 1
 2284 0614 0321     		movs	r1, #3
 2285 0616 2046     		mov	r0, r4
 2286 0618 FFF7FEFF 		bl	ILI9341_SPI_Error
 2287              	.LVL238:
 2288 061c 08E5     		b	.L95
 2289              	.L160:
 443:Src/ili93412.c **** 		}
 2290              		.loc 1 443 0 is_stmt 1 discriminator 3
 2291 061e FFF7FEFF 		bl	HAL_GetTick
 2292              	.LVL239:
 2293 0622 401B     		subs	r0, r0, r5
 2294 0624 6328     		cmp	r0, #99
 2295 0626 7FF621AF 		bls	.L159
 443:Src/ili93412.c **** 		}
 2296              		.loc 1 443 0 is_stmt 0 discriminator 1
 2297 062a 0321     		movs	r1, #3
 2298 062c 2046     		mov	r0, r4
 2299 062e FFF7FEFF 		bl	ILI9341_SPI_Error
 2300              	.LVL240:
 2301 0632 FDE4     		b	.L95
 2302              	.LVL241:
 2303              	.L152:
 447:Src/ili93412.c **** 			lGraphDiff = lGraphPrev-lGraphCur;
 2304              		.loc 1 447 0 is_stmt 1
 2305 0634 2368     		ldr	r3, [r4]
 2306 0636 0022     		movs	r2, #0
 2307 0638 1A73     		strb	r2, [r3, #12]
 448:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 2308              		.loc 1 448 0
 2309 063a A9EB0A08 		sub	r8, r9, r10
 2310 063e 5FFA88F8 		uxtb	r8, r8
 2311              	.LVL242:
 2312              	.L162:
 449:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphCur);
 2313              		.loc 1 449 0 discriminator 2
 2314 0642 2368     		ldr	r3, [r4]
 2315 0644 9A68     		ldr	r2, [r3, #8]
 2316 0646 12F0020F 		tst	r2, #2
 2317 064a 1FD0     		beq	.L163
 450:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 2318              		.loc 1 450 0
 2319 064c 83F80CA0 		strb	r10, [r3, #12]
 2320              	.L164:
 451:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 2321              		.loc 1 451 0 discriminator 2
 2322 0650 2368     		ldr	r3, [r4]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 55


 2323 0652 9A68     		ldr	r2, [r3, #8]
 2324 0654 12F0020F 		tst	r2, #2
 2325 0658 22D0     		beq	.L165
 452:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 2326              		.loc 1 452 0
 2327 065a 0022     		movs	r2, #0
 2328 065c 1A73     		strb	r2, [r3, #12]
 2329              	.L166:
 453:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphPrev);
 2330              		.loc 1 453 0 discriminator 2
 2331 065e 2368     		ldr	r3, [r4]
 2332 0660 9A68     		ldr	r2, [r3, #8]
 2333 0662 12F0020F 		tst	r2, #2
 2334 0666 27D0     		beq	.L167
 454:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 2335              		.loc 1 454 0
 2336 0668 83F80C90 		strb	r9, [r3, #12]
 2337              	.L168:
 455:Src/ili93412.c **** 		}	
 2338              		.loc 1 455 0 discriminator 2
 2339 066c 2368     		ldr	r3, [r4]
 2340 066e 9B68     		ldr	r3, [r3, #8]
 2341 0670 13F0020F 		tst	r3, #2
 2342 0674 7FF400AF 		bne	.L161
 455:Src/ili93412.c **** 		}	
 2343              		.loc 1 455 0 is_stmt 0 discriminator 3
 2344 0678 FFF7FEFF 		bl	HAL_GetTick
 2345              	.LVL243:
 2346 067c 401B     		subs	r0, r0, r5
 2347 067e 6328     		cmp	r0, #99
 2348 0680 F4D9     		bls	.L168
 455:Src/ili93412.c **** 		}	
 2349              		.loc 1 455 0 discriminator 1
 2350 0682 0321     		movs	r1, #3
 2351 0684 2046     		mov	r0, r4
 2352 0686 FFF7FEFF 		bl	ILI9341_SPI_Error
 2353              	.LVL244:
 2354 068a D1E4     		b	.L95
 2355              	.L163:
 449:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphCur);
 2356              		.loc 1 449 0 is_stmt 1 discriminator 3
 2357 068c FFF7FEFF 		bl	HAL_GetTick
 2358              	.LVL245:
 2359 0690 401B     		subs	r0, r0, r5
 2360 0692 6328     		cmp	r0, #99
 2361 0694 D5D9     		bls	.L162
 449:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphCur);
 2362              		.loc 1 449 0 is_stmt 0 discriminator 1
 2363 0696 0321     		movs	r1, #3
 2364 0698 2046     		mov	r0, r4
 2365 069a FFF7FEFF 		bl	ILI9341_SPI_Error
 2366              	.LVL246:
 2367 069e C7E4     		b	.L95
 2368              	.L165:
 451:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 2369              		.loc 1 451 0 is_stmt 1 discriminator 3
 2370 06a0 FFF7FEFF 		bl	HAL_GetTick
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 56


 2371              	.LVL247:
 2372 06a4 401B     		subs	r0, r0, r5
 2373 06a6 6328     		cmp	r0, #99
 2374 06a8 D2D9     		bls	.L164
 451:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 2375              		.loc 1 451 0 is_stmt 0 discriminator 1
 2376 06aa 0321     		movs	r1, #3
 2377 06ac 2046     		mov	r0, r4
 2378 06ae FFF7FEFF 		bl	ILI9341_SPI_Error
 2379              	.LVL248:
 2380 06b2 BDE4     		b	.L95
 2381              	.L227:
 2382              		.align	2
 2383              	.L226:
 2384 06b4 00080140 		.word	1073809408
 2385              	.L167:
 453:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphPrev);
 2386              		.loc 1 453 0 is_stmt 1 discriminator 3
 2387 06b8 FFF7FEFF 		bl	HAL_GetTick
 2388              	.LVL249:
 2389 06bc 401B     		subs	r0, r0, r5
 2390 06be 6328     		cmp	r0, #99
 2391 06c0 CDD9     		bls	.L166
 453:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphPrev);
 2392              		.loc 1 453 0 is_stmt 0 discriminator 1
 2393 06c2 0321     		movs	r1, #3
 2394 06c4 2046     		mov	r0, r4
 2395 06c6 FFF7FEFF 		bl	ILI9341_SPI_Error
 2396              	.LVL250:
 2397 06ca B1E4     		b	.L95
 2398              	.L171:
 461:Src/ili93412.c **** 		LCD_DC_PORT->BSRR=LCD_DC_PIN;
 2399              		.loc 1 461 0 is_stmt 1 discriminator 3
 2400 06cc FFF7FEFF 		bl	HAL_GetTick
 2401              	.LVL251:
 2402 06d0 401B     		subs	r0, r0, r5
 2403 06d2 6328     		cmp	r0, #99
 2404 06d4 7FF6D7AE 		bls	.L170
 461:Src/ili93412.c **** 		LCD_DC_PORT->BSRR=LCD_DC_PIN;
 2405              		.loc 1 461 0 is_stmt 0 discriminator 1
 2406 06d8 0321     		movs	r1, #3
 2407 06da 2046     		mov	r0, r4
 2408 06dc FFF7FEFF 		bl	ILI9341_SPI_Error
 2409              	.LVL252:
 2410 06e0 A6E4     		b	.L95
 2411              	.LVL253:
 2412              	.L177:
 2413              	.LBB6:
 466:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 2414              		.loc 1 466 0 is_stmt 1
 2415 06e2 2368     		ldr	r3, [r4]
 2416 06e4 3822     		movs	r2, #56
 2417 06e6 1A73     		strb	r2, [r3, #12]
 2418              	.L173:
 467:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)COLOR_1;
 2419              		.loc 1 467 0 discriminator 2
 2420 06e8 2368     		ldr	r3, [r4]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 57


 2421 06ea 9A68     		ldr	r2, [r3, #8]
 2422 06ec 12F0020F 		tst	r2, #2
 2423 06f0 0BD0     		beq	.L174
 468:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 2424              		.loc 1 468 0
 2425 06f2 8822     		movs	r2, #136
 2426 06f4 1A73     		strb	r2, [r3, #12]
 2427              	.L175:
 469:Src/ili93412.c **** 		}
 2428              		.loc 1 469 0 discriminator 2
 2429 06f6 2368     		ldr	r3, [r4]
 2430 06f8 9B68     		ldr	r3, [r3, #8]
 2431 06fa 13F0020F 		tst	r3, #2
 2432 06fe 0ED0     		beq	.L176
 464:Src/ili93412.c **** 		{
 2433              		.loc 1 464 0 discriminator 2
 2434 0700 09F10109 		add	r9, r9, #1
 2435              	.LVL254:
 2436 0704 5FFA89F9 		uxtb	r9, r9
 2437              	.LVL255:
 2438 0708 C9E6     		b	.L172
 2439              	.L174:
 467:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)COLOR_1;
 2440              		.loc 1 467 0 discriminator 3
 2441 070a FFF7FEFF 		bl	HAL_GetTick
 2442              	.LVL256:
 2443 070e 401B     		subs	r0, r0, r5
 2444 0710 6328     		cmp	r0, #99
 2445 0712 E9D9     		bls	.L173
 467:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)COLOR_1;
 2446              		.loc 1 467 0 is_stmt 0 discriminator 1
 2447 0714 0321     		movs	r1, #3
 2448 0716 2046     		mov	r0, r4
 2449 0718 FFF7FEFF 		bl	ILI9341_SPI_Error
 2450              	.LVL257:
 2451 071c 88E4     		b	.L95
 2452              	.L176:
 469:Src/ili93412.c **** 		}
 2453              		.loc 1 469 0 is_stmt 1 discriminator 3
 2454 071e FFF7FEFF 		bl	HAL_GetTick
 2455              	.LVL258:
 2456 0722 401B     		subs	r0, r0, r5
 2457 0724 6328     		cmp	r0, #99
 2458 0726 E6D9     		bls	.L175
 469:Src/ili93412.c **** 		}
 2459              		.loc 1 469 0 is_stmt 0 discriminator 1
 2460 0728 0321     		movs	r1, #3
 2461 072a 2046     		mov	r0, r4
 2462 072c FFF7FEFF 		bl	ILI9341_SPI_Error
 2463              	.LVL259:
 2464 0730 7EE4     		b	.L95
 2465              	.LVL260:
 2466              	.L179:
 2467              	.LBE6:
 479:Src/ili93412.c **** 		LCD_DC_PORT->BSRR=LCD_DC_PIN;
 2468              		.loc 1 479 0 is_stmt 1 discriminator 3
 2469 0732 FFF7FEFF 		bl	HAL_GetTick
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 58


 2470              	.LVL261:
 2471 0736 401B     		subs	r0, r0, r5
 2472 0738 6328     		cmp	r0, #99
 2473 073a 7FF6C0AE 		bls	.L178
 479:Src/ili93412.c **** 		LCD_DC_PORT->BSRR=LCD_DC_PIN;
 2474              		.loc 1 479 0 is_stmt 0 discriminator 1
 2475 073e 0321     		movs	r1, #3
 2476 0740 2046     		mov	r0, r4
 2477 0742 FFF7FEFF 		bl	ILI9341_SPI_Error
 2478              	.LVL262:
 2479 0746 73E4     		b	.L95
 2480              	.L182:
 486:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphPrev);
 2481              		.loc 1 486 0 is_stmt 1 discriminator 3
 2482 0748 FFF7FEFF 		bl	HAL_GetTick
 2483              	.LVL263:
 2484 074c 401B     		subs	r0, r0, r5
 2485 074e 6328     		cmp	r0, #99
 2486 0750 7FF6C9AE 		bls	.L181
 486:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphPrev);
 2487              		.loc 1 486 0 is_stmt 0 discriminator 1
 2488 0754 0321     		movs	r1, #3
 2489 0756 2046     		mov	r0, r4
 2490 0758 FFF7FEFF 		bl	ILI9341_SPI_Error
 2491              	.LVL264:
 2492 075c 68E4     		b	.L95
 2493              	.L184:
 488:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 2494              		.loc 1 488 0 is_stmt 1 discriminator 3
 2495 075e FFF7FEFF 		bl	HAL_GetTick
 2496              	.LVL265:
 2497 0762 401B     		subs	r0, r0, r5
 2498 0764 6328     		cmp	r0, #99
 2499 0766 7FF6C6AE 		bls	.L183
 488:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 2500              		.loc 1 488 0 is_stmt 0 discriminator 1
 2501 076a 0321     		movs	r1, #3
 2502 076c 2046     		mov	r0, r4
 2503 076e FFF7FEFF 		bl	ILI9341_SPI_Error
 2504              	.LVL266:
 2505 0772 5DE4     		b	.L95
 2506              	.L186:
 490:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphCur);
 2507              		.loc 1 490 0 is_stmt 1 discriminator 3
 2508 0774 FFF7FEFF 		bl	HAL_GetTick
 2509              	.LVL267:
 2510 0778 401B     		subs	r0, r0, r5
 2511 077a 6328     		cmp	r0, #99
 2512 077c 7FF6C3AE 		bls	.L185
 490:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphCur);
 2513              		.loc 1 490 0 is_stmt 0 discriminator 1
 2514 0780 0321     		movs	r1, #3
 2515 0782 2046     		mov	r0, r4
 2516 0784 FFF7FEFF 		bl	ILI9341_SPI_Error
 2517              	.LVL268:
 2518 0788 52E4     		b	.L95
 2519              	.L188:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 59


 492:Src/ili93412.c **** 		}
 2520              		.loc 1 492 0 is_stmt 1 discriminator 3
 2521 078a FFF7FEFF 		bl	HAL_GetTick
 2522              	.LVL269:
 2523 078e 401B     		subs	r0, r0, r5
 2524 0790 6328     		cmp	r0, #99
 2525 0792 7FF6C0AE 		bls	.L187
 492:Src/ili93412.c **** 		}
 2526              		.loc 1 492 0 is_stmt 0 discriminator 1
 2527 0796 0321     		movs	r1, #3
 2528 0798 2046     		mov	r0, r4
 2529 079a FFF7FEFF 		bl	ILI9341_SPI_Error
 2530              	.LVL270:
 2531 079e 47E4     		b	.L95
 2532              	.L180:
 496:Src/ili93412.c **** 			lGraphDiff = lGraphPrev-lGraphCur;
 2533              		.loc 1 496 0 is_stmt 1
 2534 07a0 2368     		ldr	r3, [r4]
 2535 07a2 0022     		movs	r2, #0
 2536 07a4 1A73     		strb	r2, [r3, #12]
 497:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 2537              		.loc 1 497 0
 2538 07a6 A9EB0A08 		sub	r8, r9, r10
 2539              	.LVL271:
 2540 07aa 5FFA88F8 		uxtb	r8, r8
 2541              	.LVL272:
 2542              	.L190:
 498:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphCur);
 2543              		.loc 1 498 0 discriminator 2
 2544 07ae 2368     		ldr	r3, [r4]
 2545 07b0 9A68     		ldr	r2, [r3, #8]
 2546 07b2 12F0020F 		tst	r2, #2
 2547 07b6 1FD0     		beq	.L191
 499:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 2548              		.loc 1 499 0
 2549 07b8 83F80CA0 		strb	r10, [r3, #12]
 2550              	.L192:
 500:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 2551              		.loc 1 500 0 discriminator 2
 2552 07bc 2368     		ldr	r3, [r4]
 2553 07be 9A68     		ldr	r2, [r3, #8]
 2554 07c0 12F0020F 		tst	r2, #2
 2555 07c4 22D0     		beq	.L193
 501:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 2556              		.loc 1 501 0
 2557 07c6 0022     		movs	r2, #0
 2558 07c8 1A73     		strb	r2, [r3, #12]
 2559              	.L194:
 502:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphPrev);
 2560              		.loc 1 502 0 discriminator 2
 2561 07ca 2368     		ldr	r3, [r4]
 2562 07cc 9A68     		ldr	r2, [r3, #8]
 2563 07ce 12F0020F 		tst	r2, #2
 2564 07d2 25D0     		beq	.L195
 503:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 2565              		.loc 1 503 0
 2566 07d4 83F80C90 		strb	r9, [r3, #12]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 60


 2567              	.L196:
 504:Src/ili93412.c **** 		}
 2568              		.loc 1 504 0 discriminator 2
 2569 07d8 2368     		ldr	r3, [r4]
 2570 07da 9B68     		ldr	r3, [r3, #8]
 2571 07dc 13F0020F 		tst	r3, #2
 2572 07e0 7FF49FAE 		bne	.L189
 504:Src/ili93412.c **** 		}
 2573              		.loc 1 504 0 is_stmt 0 discriminator 3
 2574 07e4 FFF7FEFF 		bl	HAL_GetTick
 2575              	.LVL273:
 2576 07e8 401B     		subs	r0, r0, r5
 2577 07ea 6328     		cmp	r0, #99
 2578 07ec F4D9     		bls	.L196
 504:Src/ili93412.c **** 		}
 2579              		.loc 1 504 0 discriminator 1
 2580 07ee 0321     		movs	r1, #3
 2581 07f0 2046     		mov	r0, r4
 2582 07f2 FFF7FEFF 		bl	ILI9341_SPI_Error
 2583              	.LVL274:
 2584 07f6 1BE4     		b	.L95
 2585              	.L191:
 498:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphCur);
 2586              		.loc 1 498 0 is_stmt 1 discriminator 3
 2587 07f8 FFF7FEFF 		bl	HAL_GetTick
 2588              	.LVL275:
 2589 07fc 401B     		subs	r0, r0, r5
 2590 07fe 6328     		cmp	r0, #99
 2591 0800 D5D9     		bls	.L190
 498:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphCur);
 2592              		.loc 1 498 0 is_stmt 0 discriminator 1
 2593 0802 0321     		movs	r1, #3
 2594 0804 2046     		mov	r0, r4
 2595 0806 FFF7FEFF 		bl	ILI9341_SPI_Error
 2596              	.LVL276:
 2597 080a 11E4     		b	.L95
 2598              	.L193:
 500:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 2599              		.loc 1 500 0 is_stmt 1 discriminator 3
 2600 080c FFF7FEFF 		bl	HAL_GetTick
 2601              	.LVL277:
 2602 0810 401B     		subs	r0, r0, r5
 2603 0812 6328     		cmp	r0, #99
 2604 0814 D2D9     		bls	.L192
 500:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 2605              		.loc 1 500 0 is_stmt 0 discriminator 1
 2606 0816 0321     		movs	r1, #3
 2607 0818 2046     		mov	r0, r4
 2608 081a FFF7FEFF 		bl	ILI9341_SPI_Error
 2609              	.LVL278:
 2610 081e 07E4     		b	.L95
 2611              	.L195:
 502:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphPrev);
 2612              		.loc 1 502 0 is_stmt 1 discriminator 3
 2613 0820 FFF7FEFF 		bl	HAL_GetTick
 2614              	.LVL279:
 2615 0824 401B     		subs	r0, r0, r5
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 61


 2616 0826 6328     		cmp	r0, #99
 2617 0828 CFD9     		bls	.L194
 502:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphPrev);
 2618              		.loc 1 502 0 is_stmt 0 discriminator 1
 2619 082a 0321     		movs	r1, #3
 2620 082c 2046     		mov	r0, r4
 2621 082e FFF7FEFF 		bl	ILI9341_SPI_Error
 2622              	.LVL280:
 2623 0832 FFF7FDBB 		b	.L95
 2624              	.L199:
 510:Src/ili93412.c **** 		LCD_DC_PORT->BSRR=LCD_DC_PIN;
 2625              		.loc 1 510 0 is_stmt 1 discriminator 3
 2626 0836 FFF7FEFF 		bl	HAL_GetTick
 2627              	.LVL281:
 2628 083a 401B     		subs	r0, r0, r5
 2629 083c 6328     		cmp	r0, #99
 2630 083e 7FF677AE 		bls	.L198
 510:Src/ili93412.c **** 		LCD_DC_PORT->BSRR=LCD_DC_PIN;
 2631              		.loc 1 510 0 is_stmt 0 discriminator 1
 2632 0842 0321     		movs	r1, #3
 2633 0844 2046     		mov	r0, r4
 2634 0846 FFF7FEFF 		bl	ILI9341_SPI_Error
 2635              	.LVL282:
 2636 084a FFF7F1BB 		b	.L95
 2637              	.LVL283:
 2638              	.L205:
 2639              	.LBB7:
 515:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 2640              		.loc 1 515 0 is_stmt 1
 2641 084e 2368     		ldr	r3, [r4]
 2642 0850 009A     		ldr	r2, [sp]
 2643 0852 1A73     		strb	r2, [r3, #12]
 2644              	.L201:
 516:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)Color;
 2645              		.loc 1 516 0 discriminator 2
 2646 0854 2368     		ldr	r3, [r4]
 2647 0856 9A68     		ldr	r2, [r3, #8]
 2648 0858 12F0020F 		tst	r2, #2
 2649 085c 0BD0     		beq	.L202
 517:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 2650              		.loc 1 517 0
 2651 085e 019A     		ldr	r2, [sp, #4]
 2652 0860 1A73     		strb	r2, [r3, #12]
 2653              	.L203:
 518:Src/ili93412.c **** 		}
 2654              		.loc 1 518 0 discriminator 2
 2655 0862 2368     		ldr	r3, [r4]
 2656 0864 9B68     		ldr	r3, [r3, #8]
 2657 0866 13F0020F 		tst	r3, #2
 2658 086a 0FD0     		beq	.L204
 513:Src/ili93412.c **** 		{
 2659              		.loc 1 513 0 discriminator 2
 2660 086c 09F10109 		add	r9, r9, #1
 2661              	.LVL284:
 2662 0870 5FFA89F9 		uxtb	r9, r9
 2663              	.LVL285:
 2664 0874 68E6     		b	.L200
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 62


 2665              	.L202:
 516:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)Color;
 2666              		.loc 1 516 0 discriminator 3
 2667 0876 FFF7FEFF 		bl	HAL_GetTick
 2668              	.LVL286:
 2669 087a 401B     		subs	r0, r0, r5
 2670 087c 6328     		cmp	r0, #99
 2671 087e E9D9     		bls	.L201
 516:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)Color;
 2672              		.loc 1 516 0 is_stmt 0 discriminator 1
 2673 0880 0321     		movs	r1, #3
 2674 0882 2046     		mov	r0, r4
 2675 0884 FFF7FEFF 		bl	ILI9341_SPI_Error
 2676              	.LVL287:
 2677 0888 FFF7D2BB 		b	.L95
 2678              	.L204:
 518:Src/ili93412.c **** 		}
 2679              		.loc 1 518 0 is_stmt 1 discriminator 3
 2680 088c FFF7FEFF 		bl	HAL_GetTick
 2681              	.LVL288:
 2682 0890 401B     		subs	r0, r0, r5
 2683 0892 6328     		cmp	r0, #99
 2684 0894 E5D9     		bls	.L203
 518:Src/ili93412.c **** 		}
 2685              		.loc 1 518 0 is_stmt 0 discriminator 1
 2686 0896 0321     		movs	r1, #3
 2687 0898 2046     		mov	r0, r4
 2688 089a FFF7FEFF 		bl	ILI9341_SPI_Error
 2689              	.LVL289:
 2690 089e FFF7C7BB 		b	.L95
 2691              	.LBE7:
 2692              	.LBE8:
 2693              		.cfi_endproc
 2694              	.LFE75:
 2696 08a2 00BF     		.section	.text.ILI9341_Draw_Square,"ax",%progbits
 2697              		.align	1
 2698              		.global	ILI9341_Draw_Square
 2699              		.syntax unified
 2700              		.thumb
 2701              		.thumb_func
 2702              		.fpu softvfp
 2704              	ILI9341_Draw_Square:
 2705              	.LFB76:
 524:Src/ili93412.c **** 
 525:Src/ili93412.c **** 
 526:Src/ili93412.c **** HAL_StatusTypeDef ILI9341_Draw_Square(	SPI_HandleTypeDef* hspi_handle, 
 527:Src/ili93412.c **** 					uint16_t posX, uint16_t posY, 
 528:Src/ili93412.c **** 					uint16_t endX, uint16_t endY, 
 529:Src/ili93412.c **** 					uint16_t Color)
 530:Src/ili93412.c **** {
 2706              		.loc 1 530 0 is_stmt 1
 2707              		.cfi_startproc
 2708              		@ args = 8, pretend = 0, frame = 8
 2709              		@ frame_needed = 0, uses_anonymous_args = 0
 2710              	.LVL290:
 2711 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2712              	.LCFI14:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 63


 2713              		.cfi_def_cfa_offset 36
 2714              		.cfi_offset 4, -36
 2715              		.cfi_offset 5, -32
 2716              		.cfi_offset 6, -28
 2717              		.cfi_offset 7, -24
 2718              		.cfi_offset 8, -20
 2719              		.cfi_offset 9, -16
 2720              		.cfi_offset 10, -12
 2721              		.cfi_offset 11, -8
 2722              		.cfi_offset 14, -4
 2723 0004 83B0     		sub	sp, sp, #12
 2724              	.LCFI15:
 2725              		.cfi_def_cfa_offset 48
 2726 0006 0446     		mov	r4, r0
 2727 0008 0E46     		mov	r6, r1
 2728 000a 9046     		mov	r8, r2
 2729 000c 1F46     		mov	r7, r3
 2730 000e BDF83090 		ldrh	r9, [sp, #48]
 2731 0012 BDF834A0 		ldrh	r10, [sp, #52]
 531:Src/ili93412.c **** 	register const uint32_t tickstart_local = HAL_GetTick();
 2732              		.loc 1 531 0
 2733 0016 FFF7FEFF 		bl	HAL_GetTick
 2734              	.LVL291:
 2735 001a 0546     		mov	r5, r0
 2736              	.LVL292:
 2737              	.L229:
 532:Src/ili93412.c **** 	const uint32_t Timeout = 500;
 533:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 2738              		.loc 1 533 0 discriminator 2
 2739 001c 2368     		ldr	r3, [r4]
 2740 001e 9B68     		ldr	r3, [r3, #8]
 2741 0020 13F0020F 		tst	r3, #2
 2742 0024 0CD1     		bne	.L263
 2743              		.loc 1 533 0 is_stmt 0 discriminator 3
 2744 0026 FFF7FEFF 		bl	HAL_GetTick
 2745              	.LVL293:
 2746 002a 401B     		subs	r0, r0, r5
 2747 002c B0F5FA7F 		cmp	r0, #500
 2748 0030 F4D3     		bcc	.L229
 2749              		.loc 1 533 0 discriminator 1
 2750 0032 0321     		movs	r1, #3
 2751 0034 2046     		mov	r0, r4
 2752 0036 FFF7FEFF 		bl	ILI9341_SPI_Error
 2753              	.LVL294:
 2754              	.L230:
 534:Src/ili93412.c **** 	/*send 1 byte column address set command*/
 535:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
 536:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2A;
 537:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 538:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 539:Src/ili93412.c **** 	/*send 4 bytes column address data*/
 540:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posX>>8);
 541:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 542:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)posX;
 543:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 544:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(endX>>8);
 545:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 64


 546:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)endX;
 547:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 548:Src/ili93412.c **** 
 549:Src/ili93412.c **** 	/*send 1 byte page address set command*/
 550:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
 551:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
 552:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 553:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 554:Src/ili93412.c **** 	/*send 4 bytes page address data*/
 555:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posY>>8);
 556:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 557:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)posY;
 558:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 559:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(endY>>8);
 560:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 561:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)endY;
 562:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 563:Src/ili93412.c **** 
 564:Src/ili93412.c **** 	/*send 1 byte memory write command*/
 565:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
 566:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
 567:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 568:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 569:Src/ili93412.c **** 	/*send 2*(endY-posY)*(endX-posX) bytes color information*/
 570:Src/ili93412.c **** 	for(uint16_t i=0; i <= endX - posX; i++)
 571:Src/ili93412.c **** 		for(uint16_t j=0; j <= endY - posY; j++)
 572:Src/ili93412.c **** 		{
 573:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(Color>>8);
 574:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 575:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)Color;
 576:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 577:Src/ili93412.c **** 		}
 578:Src/ili93412.c **** 	return HAL_OK;
 579:Src/ili93412.c **** }
 2755              		.loc 1 579 0 is_stmt 1
 2756 003a 03B0     		add	sp, sp, #12
 2757              	.LCFI16:
 2758              		.cfi_remember_state
 2759              		.cfi_def_cfa_offset 36
 2760              		@ sp needed
 2761 003c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2762              	.LVL295:
 2763              	.L263:
 2764              	.LCFI17:
 2765              		.cfi_restore_state
 535:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2A;
 2766              		.loc 1 535 0
 2767 0040 934B     		ldr	r3, .L279
 2768 0042 4FF08052 		mov	r2, #268435456
 2769 0046 1A61     		str	r2, [r3, #16]
 2770              	.LVL296:
 536:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 2771              		.loc 1 536 0
 2772 0048 2368     		ldr	r3, [r4]
 2773 004a 2A22     		movs	r2, #42
 2774 004c 1A73     		strb	r2, [r3, #12]
 2775              	.L232:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 65


 537:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 2776              		.loc 1 537 0 discriminator 2
 2777 004e 2368     		ldr	r3, [r4]
 2778 0050 9B68     		ldr	r3, [r3, #8]
 2779 0052 13F0020F 		tst	r3, #2
 2780 0056 0AD1     		bne	.L264
 537:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 2781              		.loc 1 537 0 is_stmt 0 discriminator 3
 2782 0058 FFF7FEFF 		bl	HAL_GetTick
 2783              	.LVL297:
 2784 005c 401B     		subs	r0, r0, r5
 2785 005e B0F5FA7F 		cmp	r0, #500
 2786 0062 F4D3     		bcc	.L232
 537:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 2787              		.loc 1 537 0 discriminator 1
 2788 0064 0321     		movs	r1, #3
 2789 0066 2046     		mov	r0, r4
 2790 0068 FFF7FEFF 		bl	ILI9341_SPI_Error
 2791              	.LVL298:
 2792 006c E5E7     		b	.L230
 2793              	.L264:
 538:Src/ili93412.c **** 	/*send 4 bytes column address data*/
 2794              		.loc 1 538 0 is_stmt 1
 2795 006e 884B     		ldr	r3, .L279
 2796 0070 4FF48052 		mov	r2, #4096
 2797 0074 1A61     		str	r2, [r3, #16]
 540:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 2798              		.loc 1 540 0
 2799 0076 2368     		ldr	r3, [r4]
 2800 0078 320A     		lsrs	r2, r6, #8
 2801 007a 1A73     		strb	r2, [r3, #12]
 2802              	.L234:
 541:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)posX;
 2803              		.loc 1 541 0 discriminator 2
 2804 007c 2368     		ldr	r3, [r4]
 2805 007e 9A68     		ldr	r2, [r3, #8]
 2806 0080 12F0020F 		tst	r2, #2
 2807 0084 0AD1     		bne	.L265
 541:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)posX;
 2808              		.loc 1 541 0 is_stmt 0 discriminator 3
 2809 0086 FFF7FEFF 		bl	HAL_GetTick
 2810              	.LVL299:
 2811 008a 401B     		subs	r0, r0, r5
 2812 008c B0F5FA7F 		cmp	r0, #500
 2813 0090 F4D3     		bcc	.L234
 541:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)posX;
 2814              		.loc 1 541 0 discriminator 1
 2815 0092 0321     		movs	r1, #3
 2816 0094 2046     		mov	r0, r4
 2817 0096 FFF7FEFF 		bl	ILI9341_SPI_Error
 2818              	.LVL300:
 2819 009a CEE7     		b	.L230
 2820              	.L265:
 542:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 2821              		.loc 1 542 0 is_stmt 1
 2822 009c F2B2     		uxtb	r2, r6
 2823 009e 1A73     		strb	r2, [r3, #12]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 66


 2824              	.L236:
 543:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(endX>>8);
 2825              		.loc 1 543 0 discriminator 2
 2826 00a0 2368     		ldr	r3, [r4]
 2827 00a2 9A68     		ldr	r2, [r3, #8]
 2828 00a4 12F0020F 		tst	r2, #2
 2829 00a8 0AD1     		bne	.L266
 543:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(endX>>8);
 2830              		.loc 1 543 0 is_stmt 0 discriminator 3
 2831 00aa FFF7FEFF 		bl	HAL_GetTick
 2832              	.LVL301:
 2833 00ae 401B     		subs	r0, r0, r5
 2834 00b0 B0F5FA7F 		cmp	r0, #500
 2835 00b4 F4D3     		bcc	.L236
 543:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(endX>>8);
 2836              		.loc 1 543 0 discriminator 1
 2837 00b6 0321     		movs	r1, #3
 2838 00b8 2046     		mov	r0, r4
 2839 00ba FFF7FEFF 		bl	ILI9341_SPI_Error
 2840              	.LVL302:
 2841 00be BCE7     		b	.L230
 2842              	.L266:
 544:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 2843              		.loc 1 544 0 is_stmt 1
 2844 00c0 3A0A     		lsrs	r2, r7, #8
 2845 00c2 1A73     		strb	r2, [r3, #12]
 2846              	.L238:
 545:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)endX;
 2847              		.loc 1 545 0 discriminator 2
 2848 00c4 2368     		ldr	r3, [r4]
 2849 00c6 9A68     		ldr	r2, [r3, #8]
 2850 00c8 12F0020F 		tst	r2, #2
 2851 00cc 0AD1     		bne	.L267
 545:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)endX;
 2852              		.loc 1 545 0 is_stmt 0 discriminator 3
 2853 00ce FFF7FEFF 		bl	HAL_GetTick
 2854              	.LVL303:
 2855 00d2 401B     		subs	r0, r0, r5
 2856 00d4 B0F5FA7F 		cmp	r0, #500
 2857 00d8 F4D3     		bcc	.L238
 545:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)endX;
 2858              		.loc 1 545 0 discriminator 1
 2859 00da 0321     		movs	r1, #3
 2860 00dc 2046     		mov	r0, r4
 2861 00de FFF7FEFF 		bl	ILI9341_SPI_Error
 2862              	.LVL304:
 2863 00e2 AAE7     		b	.L230
 2864              	.L267:
 546:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 2865              		.loc 1 546 0 is_stmt 1
 2866 00e4 FAB2     		uxtb	r2, r7
 2867 00e6 1A73     		strb	r2, [r3, #12]
 2868              	.L240:
 547:Src/ili93412.c **** 
 2869              		.loc 1 547 0 discriminator 2
 2870 00e8 2368     		ldr	r3, [r4]
 2871 00ea 9B68     		ldr	r3, [r3, #8]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 67


 2872 00ec 13F0020F 		tst	r3, #2
 2873 00f0 0AD1     		bne	.L268
 547:Src/ili93412.c **** 
 2874              		.loc 1 547 0 is_stmt 0 discriminator 3
 2875 00f2 FFF7FEFF 		bl	HAL_GetTick
 2876              	.LVL305:
 2877 00f6 401B     		subs	r0, r0, r5
 2878 00f8 B0F5FA7F 		cmp	r0, #500
 2879 00fc F4D3     		bcc	.L240
 547:Src/ili93412.c **** 
 2880              		.loc 1 547 0 discriminator 1
 2881 00fe 0321     		movs	r1, #3
 2882 0100 2046     		mov	r0, r4
 2883 0102 FFF7FEFF 		bl	ILI9341_SPI_Error
 2884              	.LVL306:
 2885 0106 98E7     		b	.L230
 2886              	.L268:
 550:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
 2887              		.loc 1 550 0 is_stmt 1
 2888 0108 614B     		ldr	r3, .L279
 2889 010a 4FF08052 		mov	r2, #268435456
 2890 010e 1A61     		str	r2, [r3, #16]
 551:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 2891              		.loc 1 551 0
 2892 0110 2368     		ldr	r3, [r4]
 2893 0112 2B22     		movs	r2, #43
 2894 0114 1A73     		strb	r2, [r3, #12]
 2895              	.L242:
 552:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 2896              		.loc 1 552 0 discriminator 2
 2897 0116 2368     		ldr	r3, [r4]
 2898 0118 9B68     		ldr	r3, [r3, #8]
 2899 011a 13F0020F 		tst	r3, #2
 2900 011e 0AD1     		bne	.L269
 552:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 2901              		.loc 1 552 0 is_stmt 0 discriminator 3
 2902 0120 FFF7FEFF 		bl	HAL_GetTick
 2903              	.LVL307:
 2904 0124 401B     		subs	r0, r0, r5
 2905 0126 B0F5FA7F 		cmp	r0, #500
 2906 012a F4D3     		bcc	.L242
 552:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 2907              		.loc 1 552 0 discriminator 1
 2908 012c 0321     		movs	r1, #3
 2909 012e 2046     		mov	r0, r4
 2910 0130 FFF7FEFF 		bl	ILI9341_SPI_Error
 2911              	.LVL308:
 2912 0134 81E7     		b	.L230
 2913              	.L269:
 553:Src/ili93412.c **** 	/*send 4 bytes page address data*/
 2914              		.loc 1 553 0 is_stmt 1
 2915 0136 564B     		ldr	r3, .L279
 2916 0138 4FF48052 		mov	r2, #4096
 2917 013c 1A61     		str	r2, [r3, #16]
 555:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 2918              		.loc 1 555 0
 2919 013e 2368     		ldr	r3, [r4]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 68


 2920 0140 4FEA1822 		lsr	r2, r8, #8
 2921 0144 1A73     		strb	r2, [r3, #12]
 2922              	.L244:
 556:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)posY;
 2923              		.loc 1 556 0 discriminator 2
 2924 0146 2368     		ldr	r3, [r4]
 2925 0148 9A68     		ldr	r2, [r3, #8]
 2926 014a 12F0020F 		tst	r2, #2
 2927 014e 0AD1     		bne	.L270
 556:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)posY;
 2928              		.loc 1 556 0 is_stmt 0 discriminator 3
 2929 0150 FFF7FEFF 		bl	HAL_GetTick
 2930              	.LVL309:
 2931 0154 401B     		subs	r0, r0, r5
 2932 0156 B0F5FA7F 		cmp	r0, #500
 2933 015a F4D3     		bcc	.L244
 556:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)posY;
 2934              		.loc 1 556 0 discriminator 1
 2935 015c 0321     		movs	r1, #3
 2936 015e 2046     		mov	r0, r4
 2937 0160 FFF7FEFF 		bl	ILI9341_SPI_Error
 2938              	.LVL310:
 2939 0164 69E7     		b	.L230
 2940              	.L270:
 557:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 2941              		.loc 1 557 0 is_stmt 1
 2942 0166 5FFA88F2 		uxtb	r2, r8
 2943 016a 1A73     		strb	r2, [r3, #12]
 2944              	.L246:
 558:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(endY>>8);
 2945              		.loc 1 558 0 discriminator 2
 2946 016c 2368     		ldr	r3, [r4]
 2947 016e 9A68     		ldr	r2, [r3, #8]
 2948 0170 12F0020F 		tst	r2, #2
 2949 0174 0AD1     		bne	.L271
 558:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(endY>>8);
 2950              		.loc 1 558 0 is_stmt 0 discriminator 3
 2951 0176 FFF7FEFF 		bl	HAL_GetTick
 2952              	.LVL311:
 2953 017a 401B     		subs	r0, r0, r5
 2954 017c B0F5FA7F 		cmp	r0, #500
 2955 0180 F4D3     		bcc	.L246
 558:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(endY>>8);
 2956              		.loc 1 558 0 discriminator 1
 2957 0182 0321     		movs	r1, #3
 2958 0184 2046     		mov	r0, r4
 2959 0186 FFF7FEFF 		bl	ILI9341_SPI_Error
 2960              	.LVL312:
 2961 018a 56E7     		b	.L230
 2962              	.L271:
 559:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 2963              		.loc 1 559 0 is_stmt 1
 2964 018c 4FEA1922 		lsr	r2, r9, #8
 2965 0190 1A73     		strb	r2, [r3, #12]
 2966              	.L248:
 560:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)endY;
 2967              		.loc 1 560 0 discriminator 2
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 69


 2968 0192 2368     		ldr	r3, [r4]
 2969 0194 9A68     		ldr	r2, [r3, #8]
 2970 0196 12F0020F 		tst	r2, #2
 2971 019a 0AD1     		bne	.L272
 560:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)endY;
 2972              		.loc 1 560 0 is_stmt 0 discriminator 3
 2973 019c FFF7FEFF 		bl	HAL_GetTick
 2974              	.LVL313:
 2975 01a0 401B     		subs	r0, r0, r5
 2976 01a2 B0F5FA7F 		cmp	r0, #500
 2977 01a6 F4D3     		bcc	.L248
 560:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)endY;
 2978              		.loc 1 560 0 discriminator 1
 2979 01a8 0321     		movs	r1, #3
 2980 01aa 2046     		mov	r0, r4
 2981 01ac FFF7FEFF 		bl	ILI9341_SPI_Error
 2982              	.LVL314:
 2983 01b0 43E7     		b	.L230
 2984              	.L272:
 561:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 2985              		.loc 1 561 0 is_stmt 1
 2986 01b2 5FFA89F2 		uxtb	r2, r9
 2987 01b6 1A73     		strb	r2, [r3, #12]
 2988              	.L250:
 562:Src/ili93412.c **** 
 2989              		.loc 1 562 0 discriminator 2
 2990 01b8 2368     		ldr	r3, [r4]
 2991 01ba 9B68     		ldr	r3, [r3, #8]
 2992 01bc 13F0020F 		tst	r3, #2
 2993 01c0 0AD1     		bne	.L273
 562:Src/ili93412.c **** 
 2994              		.loc 1 562 0 is_stmt 0 discriminator 3
 2995 01c2 FFF7FEFF 		bl	HAL_GetTick
 2996              	.LVL315:
 2997 01c6 401B     		subs	r0, r0, r5
 2998 01c8 B0F5FA7F 		cmp	r0, #500
 2999 01cc F4D3     		bcc	.L250
 562:Src/ili93412.c **** 
 3000              		.loc 1 562 0 discriminator 1
 3001 01ce 0321     		movs	r1, #3
 3002 01d0 2046     		mov	r0, r4
 3003 01d2 FFF7FEFF 		bl	ILI9341_SPI_Error
 3004              	.LVL316:
 3005 01d6 30E7     		b	.L230
 3006              	.L273:
 565:Src/ili93412.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
 3007              		.loc 1 565 0 is_stmt 1
 3008 01d8 2D4B     		ldr	r3, .L279
 3009 01da 4FF08052 		mov	r2, #268435456
 3010 01de 1A61     		str	r2, [r3, #16]
 566:Src/ili93412.c **** 	WAIT_TX_CHECK_TIMEOUT(Timeout)
 3011              		.loc 1 566 0
 3012 01e0 2368     		ldr	r3, [r4]
 3013 01e2 2C22     		movs	r2, #44
 3014 01e4 1A73     		strb	r2, [r3, #12]
 567:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 3015              		.loc 1 567 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 70


 3016 01e6 05E0     		b	.L252
 3017              	.L253:
 567:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 3018              		.loc 1 567 0 is_stmt 0 discriminator 3
 3019 01e8 FFF7FEFF 		bl	HAL_GetTick
 3020              	.LVL317:
 3021 01ec 401B     		subs	r0, r0, r5
 3022 01ee B0F5FA7F 		cmp	r0, #500
 3023 01f2 19D2     		bcs	.L274
 3024              	.L252:
 567:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 3025              		.loc 1 567 0 discriminator 2
 3026 01f4 2368     		ldr	r3, [r4]
 3027 01f6 9B68     		ldr	r3, [r3, #8]
 3028 01f8 13F0020F 		tst	r3, #2
 3029 01fc F4D0     		beq	.L253
 568:Src/ili93412.c **** 	/*send 2*(endY-posY)*(endX-posX) bytes color information*/
 3030              		.loc 1 568 0 is_stmt 1
 3031 01fe 244B     		ldr	r3, .L279
 3032 0200 4FF48052 		mov	r2, #4096
 3033 0204 1A61     		str	r2, [r3, #16]
 3034              	.LVL318:
 3035              	.LBB9:
 570:Src/ili93412.c **** 		for(uint16_t j=0; j <= endY - posY; j++)
 3036              		.loc 1 570 0
 3037 0206 0023     		movs	r3, #0
 3038 0208 0193     		str	r3, [sp, #4]
 3039              	.LVL319:
 3040              	.L254:
 570:Src/ili93412.c **** 		for(uint16_t j=0; j <= endY - posY; j++)
 3041              		.loc 1 570 0 is_stmt 0 discriminator 1
 3042 020a BB1B     		subs	r3, r7, r6
 3043 020c 019A     		ldr	r2, [sp, #4]
 3044 020e 9A42     		cmp	r2, r3
 3045 0210 3CDC     		bgt	.L275
 3046              	.LBB10:
 571:Src/ili93412.c **** 		{
 3047              		.loc 1 571 0 is_stmt 1
 3048 0212 4FF0000B 		mov	fp, #0
 3049              	.L260:
 3050              	.LVL320:
 571:Src/ili93412.c **** 		{
 3051              		.loc 1 571 0 is_stmt 0 discriminator 1
 3052 0216 A9EB0803 		sub	r3, r9, r8
 3053 021a 9B45     		cmp	fp, r3
 3054 021c 31DC     		bgt	.L276
 573:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 3055              		.loc 1 573 0 is_stmt 1
 3056 021e 2368     		ldr	r3, [r4]
 3057 0220 4FEA1A22 		lsr	r2, r10, #8
 3058 0224 1A73     		strb	r2, [r3, #12]
 574:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)Color;
 3059              		.loc 1 574 0
 3060 0226 0AE0     		b	.L255
 3061              	.LVL321:
 3062              	.L274:
 3063              	.LBE10:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 71


 3064              	.LBE9:
 567:Src/ili93412.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 3065              		.loc 1 567 0 discriminator 1
 3066 0228 0321     		movs	r1, #3
 3067 022a 2046     		mov	r0, r4
 3068 022c FFF7FEFF 		bl	ILI9341_SPI_Error
 3069              	.LVL322:
 3070 0230 03E7     		b	.L230
 3071              	.LVL323:
 3072              	.L256:
 3073              	.LBB12:
 3074              	.LBB11:
 574:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)Color;
 3075              		.loc 1 574 0 discriminator 3
 3076 0232 FFF7FEFF 		bl	HAL_GetTick
 3077              	.LVL324:
 3078 0236 401B     		subs	r0, r0, r5
 3079 0238 B0F5FA7F 		cmp	r0, #500
 3080 023c 17D2     		bcs	.L277
 3081              	.L255:
 574:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)Color;
 3082              		.loc 1 574 0 is_stmt 0 discriminator 2
 3083 023e 2368     		ldr	r3, [r4]
 3084 0240 9A68     		ldr	r2, [r3, #8]
 3085 0242 12F0020F 		tst	r2, #2
 3086 0246 F4D0     		beq	.L256
 575:Src/ili93412.c **** 			WAIT_TX_CHECK_TIMEOUT(Timeout)
 3087              		.loc 1 575 0 is_stmt 1
 3088 0248 5FFA8AF2 		uxtb	r2, r10
 3089 024c 1A73     		strb	r2, [r3, #12]
 3090              	.L257:
 576:Src/ili93412.c **** 		}
 3091              		.loc 1 576 0 discriminator 2
 3092 024e 2368     		ldr	r3, [r4]
 3093 0250 9B68     		ldr	r3, [r3, #8]
 3094 0252 13F0020F 		tst	r3, #2
 3095 0256 0FD1     		bne	.L278
 576:Src/ili93412.c **** 		}
 3096              		.loc 1 576 0 is_stmt 0 discriminator 3
 3097 0258 FFF7FEFF 		bl	HAL_GetTick
 3098              	.LVL325:
 3099 025c 401B     		subs	r0, r0, r5
 3100 025e B0F5FA7F 		cmp	r0, #500
 3101 0262 F4D3     		bcc	.L257
 576:Src/ili93412.c **** 		}
 3102              		.loc 1 576 0 discriminator 1
 3103 0264 0321     		movs	r1, #3
 3104 0266 2046     		mov	r0, r4
 3105 0268 FFF7FEFF 		bl	ILI9341_SPI_Error
 3106              	.LVL326:
 3107 026c E5E6     		b	.L230
 3108              	.L277:
 574:Src/ili93412.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)Color;
 3109              		.loc 1 574 0 is_stmt 1 discriminator 1
 3110 026e 0321     		movs	r1, #3
 3111 0270 2046     		mov	r0, r4
 3112 0272 FFF7FEFF 		bl	ILI9341_SPI_Error
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 72


 3113              	.LVL327:
 3114 0276 E0E6     		b	.L230
 3115              	.L278:
 571:Src/ili93412.c **** 		{
 3116              		.loc 1 571 0 discriminator 2
 3117 0278 0BF1010B 		add	fp, fp, #1
 3118              	.LVL328:
 3119 027c 1FFA8BFB 		uxth	fp, fp
 3120              	.LVL329:
 3121 0280 C9E7     		b	.L260
 3122              	.L276:
 3123              	.LBE11:
 570:Src/ili93412.c **** 		for(uint16_t j=0; j <= endY - posY; j++)
 3124              		.loc 1 570 0 discriminator 2
 3125 0282 019B     		ldr	r3, [sp, #4]
 3126 0284 0133     		adds	r3, r3, #1
 3127 0286 9BB2     		uxth	r3, r3
 3128 0288 0193     		str	r3, [sp, #4]
 3129              	.LVL330:
 3130 028a BEE7     		b	.L254
 3131              	.LVL331:
 3132              	.L275:
 3133              	.LBE12:
 578:Src/ili93412.c **** }
 3134              		.loc 1 578 0
 3135 028c 0020     		movs	r0, #0
 3136 028e D4E6     		b	.L230
 3137              	.L280:
 3138              		.align	2
 3139              	.L279:
 3140 0290 00080140 		.word	1073809408
 3141              		.cfi_endproc
 3142              	.LFE76:
 3144              		.section	.text.ILI9341_Draw_Char,"ax",%progbits
 3145              		.align	1
 3146              		.global	ILI9341_Draw_Char
 3147              		.syntax unified
 3148              		.thumb
 3149              		.thumb_func
 3150              		.fpu softvfp
 3152              	ILI9341_Draw_Char:
 3153              	.LFB77:
 580:Src/ili93412.c **** 
 581:Src/ili93412.c **** 
 582:Src/ili93412.c **** HAL_StatusTypeDef ILI9341_Draw_Char(SPI_HandleTypeDef* hspi_handle, char Character, char oldCharact
 583:Src/ili93412.c **** {
 3154              		.loc 1 583 0
 3155              		.cfi_startproc
 3156              		@ args = 12, pretend = 0, frame = 24
 3157              		@ frame_needed = 0, uses_anonymous_args = 0
 3158              	.LVL332:
 3159 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3160              	.LCFI18:
 3161              		.cfi_def_cfa_offset 36
 3162              		.cfi_offset 4, -36
 3163              		.cfi_offset 5, -32
 3164              		.cfi_offset 6, -28
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 73


 3165              		.cfi_offset 7, -24
 3166              		.cfi_offset 8, -20
 3167              		.cfi_offset 9, -16
 3168              		.cfi_offset 10, -12
 3169              		.cfi_offset 11, -8
 3170              		.cfi_offset 14, -4
 3171 0004 89B0     		sub	sp, sp, #36
 3172              	.LCFI19:
 3173              		.cfi_def_cfa_offset 72
 3174 0006 0390     		str	r0, [sp, #12]
 3175 0008 9946     		mov	r9, r3
 3176 000a BDF848A0 		ldrh	r10, [sp, #72]
 3177 000e BDF84CB0 		ldrh	fp, [sp, #76]
 3178 0012 9DF85080 		ldrb	r8, [sp, #80]	@ zero_extendqisi2
 3179              	.LVL333:
 584:Src/ili93412.c **** 	uint8_t 	function_char, function_old_char;
 585:Src/ili93412.c **** 	uint8_t 	i,j;
 586:Src/ili93412.c **** 	
 587:Src/ili93412.c **** 	function_char = Character;
 588:Src/ili93412.c **** 	function_old_char = oldCharacter;
 589:Src/ili93412.c **** 	
 590:Src/ili93412.c **** 	if (function_char < ' ') {
 3180              		.loc 1 590 0
 3181 0016 1F29     		cmp	r1, #31
 3182 0018 07D9     		bls	.L295
 591:Src/ili93412.c **** 		function_char = 0;
 592:Src/ili93412.c **** 	} else {
 593:Src/ili93412.c **** 		function_char -= 32;
 3183              		.loc 1 593 0
 3184 001a 2039     		subs	r1, r1, #32
 3185              	.LVL334:
 3186 001c CCB2     		uxtb	r4, r1
 3187              	.LVL335:
 3188              	.L282:
 594:Src/ili93412.c **** 	}
 595:Src/ili93412.c **** 	
 596:Src/ili93412.c **** 	if (function_old_char < ' ') {
 3189              		.loc 1 596 0
 3190 001e 1F2A     		cmp	r2, #31
 3191 0020 05D9     		bls	.L296
 597:Src/ili93412.c **** 		function_old_char = 0;
 598:Src/ili93412.c **** 	} else {
 599:Src/ili93412.c **** 		function_old_char -= 32;
 3192              		.loc 1 599 0
 3193 0022 203A     		subs	r2, r2, #32
 3194              	.LVL336:
 3195 0024 D0B2     		uxtb	r0, r2
 3196              	.LVL337:
 3197              	.L283:
 3198              	.LBB13:
 600:Src/ili93412.c **** 	}
 601:Src/ili93412.c **** 	
 602:Src/ili93412.c **** 	char temp[CHAR_WIDTH];
 603:Src/ili93412.c **** 	char temp_old[CHAR_WIDTH];
 604:Src/ili93412.c **** 	char concurrent_pixels;
 605:Src/ili93412.c **** 	
 606:Src/ili93412.c **** 	for(uint8_t k = 0; k<CHAR_WIDTH; k++)
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 74


 3199              		.loc 1 606 0
 3200 0026 0021     		movs	r1, #0
 3201 0028 0AE0     		b	.L284
 3202              	.LVL338:
 3203              	.L295:
 3204              	.LBE13:
 591:Src/ili93412.c **** 	} else {
 3205              		.loc 1 591 0
 3206 002a 0024     		movs	r4, #0
 3207 002c F7E7     		b	.L282
 3208              	.LVL339:
 3209              	.L296:
 597:Src/ili93412.c **** 		function_old_char = 0;
 3210              		.loc 1 597 0
 3211 002e 0020     		movs	r0, #0
 3212              	.LVL340:
 3213 0030 F9E7     		b	.L283
 3214              	.LVL341:
 3215              	.L285:
 3216              	.LBB14:
 607:Src/ili93412.c **** 	{
 608:Src/ili93412.c **** 		temp[k] = font[function_char][k];
 609:Src/ili93412.c **** 		temp_old[k] = font[function_old_char][k];
 610:Src/ili93412.c **** 		concurrent_pixels = temp[k] & temp_old[k];
 611:Src/ili93412.c **** 		temp[k] = temp[k] & (~concurrent_pixels);
 612:Src/ili93412.c **** 		if(function_old_char != 0)
 613:Src/ili93412.c **** 			temp_old[k] = temp_old[k] & (~concurrent_pixels);
 614:Src/ili93412.c **** 		else
 615:Src/ili93412.c **** 			temp_old[k] = 0xFF & (~concurrent_pixels);
 3217              		.loc 1 615 0
 3218 0032 F643     		mvns	r6, r6
 3219              	.LVL342:
 3220 0034 08AB     		add	r3, sp, #32
 3221 0036 0B44     		add	r3, r3, r1
 3222 0038 03F8106C 		strb	r6, [r3, #-16]
 3223              	.LVL343:
 3224              	.L286:
 606:Src/ili93412.c **** 	{
 3225              		.loc 1 606 0 discriminator 2
 3226 003c 0131     		adds	r1, r1, #1
 3227              	.LVL344:
 3228 003e C9B2     		uxtb	r1, r1
 3229              	.LVL345:
 3230              	.L284:
 606:Src/ili93412.c **** 	{
 3231              		.loc 1 606 0 is_stmt 0 discriminator 1
 3232 0040 0529     		cmp	r1, #5
 3233 0042 1DD8     		bhi	.L299
 608:Src/ili93412.c **** 		temp_old[k] = font[function_old_char][k];
 3234              		.loc 1 608 0 is_stmt 1
 3235 0044 464A     		ldr	r2, .L304
 3236 0046 04EB4405 		add	r5, r4, r4, lsl #1
 3237 004a 6B00     		lsls	r3, r5, #1
 3238 004c 1344     		add	r3, r3, r2
 3239 004e 5B5C     		ldrb	r3, [r3, r1]	@ zero_extendqisi2
 609:Src/ili93412.c **** 		concurrent_pixels = temp[k] & temp_old[k];
 3240              		.loc 1 609 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 75


 3241 0050 00EB4006 		add	r6, r0, r0, lsl #1
 3242 0054 7500     		lsls	r5, r6, #1
 3243 0056 2A44     		add	r2, r2, r5
 3244 0058 555C     		ldrb	r5, [r2, r1]	@ zero_extendqisi2
 3245 005a 08AA     		add	r2, sp, #32
 3246 005c 5718     		adds	r7, r2, r1
 3247 005e 07F8105C 		strb	r5, [r7, #-16]
 610:Src/ili93412.c **** 		temp[k] = temp[k] & (~concurrent_pixels);
 3248              		.loc 1 610 0
 3249 0062 03EA0506 		and	r6, r3, r5
 3250              	.LVL346:
 611:Src/ili93412.c **** 		if(function_old_char != 0)
 3251              		.loc 1 611 0
 3252 0066 5BB2     		sxtb	r3, r3
 3253 0068 F243     		mvns	r2, r6
 3254 006a 52B2     		sxtb	r2, r2
 3255 006c 1340     		ands	r3, r3, r2
 3256 006e 07F8083C 		strb	r3, [r7, #-8]
 612:Src/ili93412.c **** 			temp_old[k] = temp_old[k] & (~concurrent_pixels);
 3257              		.loc 1 612 0
 3258 0072 0028     		cmp	r0, #0
 3259 0074 DDD0     		beq	.L285
 613:Src/ili93412.c **** 		else
 3260              		.loc 1 613 0
 3261 0076 6DB2     		sxtb	r5, r5
 3262 0078 2A40     		ands	r2, r2, r5
 3263 007a 07F8102C 		strb	r2, [r7, #-16]
 3264 007e DDE7     		b	.L286
 3265              	.LVL347:
 3266              	.L299:
 3267              	.LBE14:
 616:Src/ili93412.c **** 	}
 617:Src/ili93412.c **** 	
 618:Src/ili93412.c **** 	for (j=0; j<CHAR_WIDTH; j++) {
 3268              		.loc 1 618 0
 3269 0080 0027     		movs	r7, #0
 3270 0082 63E0     		b	.L288
 3271              	.LVL348:
 3272              	.L301:
 619:Src/ili93412.c **** 		for (i=0; i<CHAR_HEIGHT; i++) {
 620:Src/ili93412.c **** 			if (temp_old[j] & (1<<i)) 
 621:Src/ili93412.c **** 			{
 622:Src/ili93412.c **** 				if(Size == 1)
 623:Src/ili93412.c **** 				{
 624:Src/ili93412.c **** 					ILI9341_Draw_Pixel(hspi_handle, posX+j, posY+i, COLOR_1);
 3273              		.loc 1 624 0
 3274 0084 0AEB0402 		add	r2, r10, r4
 3275 0088 09EB0701 		add	r1, r9, r7
 3276 008c 43F68803 		movw	r3, #14472
 3277 0090 92B2     		uxth	r2, r2
 3278 0092 89B2     		uxth	r1, r1
 3279 0094 0398     		ldr	r0, [sp, #12]
 3280 0096 FFF7FEFF 		bl	ILI9341_Draw_Pixel
 3281              	.LVL349:
 3282 009a 32E0     		b	.L289
 3283              	.L302:
 625:Src/ili93412.c **** 				}
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 76


 626:Src/ili93412.c **** 				else
 627:Src/ili93412.c **** 				{
 628:Src/ili93412.c **** 					ILI9341_Draw_Square(hspi_handle, posX+(j*Size), posY+(i*Size), posX+(j*Size) + Size-1, posY+(i
 629:Src/ili93412.c **** 				}
 630:Src/ili93412.c **** 			}
 631:Src/ili93412.c **** 			if (temp[j] & (1<<i)) 
 632:Src/ili93412.c **** 			{
 633:Src/ili93412.c **** 				if(Size == 1)
 634:Src/ili93412.c **** 				{
 635:Src/ili93412.c **** 					ILI9341_Draw_Pixel(hspi_handle, posX+j, posY+i, Color);
 3284              		.loc 1 635 0
 3285 009c 0AEB0402 		add	r2, r10, r4
 3286 00a0 09EB0701 		add	r1, r9, r7
 3287 00a4 2B46     		mov	r3, r5
 3288 00a6 92B2     		uxth	r2, r2
 3289 00a8 89B2     		uxth	r1, r1
 3290 00aa 0398     		ldr	r0, [sp, #12]
 3291 00ac FFF7FEFF 		bl	ILI9341_Draw_Pixel
 3292              	.LVL350:
 3293              	.L291:
 619:Src/ili93412.c **** 		for (i=0; i<CHAR_HEIGHT; i++) {
 3294              		.loc 1 619 0 discriminator 2
 3295 00b0 0134     		adds	r4, r4, #1
 3296              	.LVL351:
 3297 00b2 E4B2     		uxtb	r4, r4
 3298              	.LVL352:
 3299              	.L294:
 619:Src/ili93412.c **** 		for (i=0; i<CHAR_HEIGHT; i++) {
 3300              		.loc 1 619 0 is_stmt 0 discriminator 1
 3301 00b4 072C     		cmp	r4, #7
 3302 00b6 46D8     		bhi	.L300
 620:Src/ili93412.c **** 			{
 3303              		.loc 1 620 0 is_stmt 1
 3304 00b8 3E46     		mov	r6, r7
 3305 00ba 08AB     		add	r3, sp, #32
 3306 00bc 3B44     		add	r3, r3, r7
 3307 00be 13F8103C 		ldrb	r3, [r3, #-16]	@ zero_extendqisi2
 3308 00c2 A346     		mov	fp, r4
 3309 00c4 2341     		asrs	r3, r3, r4
 3310 00c6 13F0010F 		tst	r3, #1
 3311 00ca 1AD0     		beq	.L289
 622:Src/ili93412.c **** 				{
 3312              		.loc 1 622 0
 3313 00cc B8F1010F 		cmp	r8, #1
 3314 00d0 D8D0     		beq	.L301
 628:Src/ili93412.c **** 				}
 3315              		.loc 1 628 0
 3316 00d2 1FFA88F0 		uxth	r0, r8
 3317 00d6 07FB0091 		mla	r1, r7, r0, r9
 3318 00da 89B2     		uxth	r1, r1
 3319 00dc 04FB00A2 		mla	r2, r4, r0, r10
 3320 00e0 92B2     		uxth	r2, r2
 3321 00e2 4318     		adds	r3, r0, r1
 3322 00e4 9BB2     		uxth	r3, r3
 3323 00e6 1044     		add	r0, r0, r2
 3324 00e8 80B2     		uxth	r0, r0
 3325 00ea 013B     		subs	r3, r3, #1
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 77


 3326 00ec 43F6880C 		movw	ip, #14472
 3327 00f0 CDF804C0 		str	ip, [sp, #4]
 3328 00f4 0138     		subs	r0, r0, #1
 3329 00f6 80B2     		uxth	r0, r0
 3330 00f8 0090     		str	r0, [sp]
 3331 00fa 9BB2     		uxth	r3, r3
 3332 00fc 0398     		ldr	r0, [sp, #12]
 3333 00fe FFF7FEFF 		bl	ILI9341_Draw_Square
 3334              	.LVL353:
 3335              	.L289:
 631:Src/ili93412.c **** 			{
 3336              		.loc 1 631 0
 3337 0102 08AB     		add	r3, sp, #32
 3338 0104 1E44     		add	r6, r6, r3
 3339 0106 16F8083C 		ldrb	r3, [r6, #-8]	@ zero_extendqisi2
 3340 010a 43FA0BFB 		asr	fp, r3, fp
 3341 010e 1BF0010F 		tst	fp, #1
 3342 0112 CDD0     		beq	.L291
 633:Src/ili93412.c **** 				{
 3343              		.loc 1 633 0
 3344 0114 B8F1010F 		cmp	r8, #1
 3345 0118 C0D0     		beq	.L302
 636:Src/ili93412.c **** 				}
 637:Src/ili93412.c **** 				else
 638:Src/ili93412.c **** 				{
 639:Src/ili93412.c **** 					ILI9341_Draw_Square(hspi_handle, posX+(j*Size), posY+(i*Size), posX+(j*Size) + Size-1, posY+(i
 3346              		.loc 1 639 0
 3347 011a 1FFA88F0 		uxth	r0, r8
 3348 011e 07FB0091 		mla	r1, r7, r0, r9
 3349 0122 89B2     		uxth	r1, r1
 3350 0124 04FB00A2 		mla	r2, r4, r0, r10
 3351 0128 92B2     		uxth	r2, r2
 3352 012a 4318     		adds	r3, r0, r1
 3353 012c 9BB2     		uxth	r3, r3
 3354 012e 1044     		add	r0, r0, r2
 3355 0130 80B2     		uxth	r0, r0
 3356 0132 013B     		subs	r3, r3, #1
 3357 0134 0195     		str	r5, [sp, #4]
 3358 0136 0138     		subs	r0, r0, #1
 3359 0138 80B2     		uxth	r0, r0
 3360 013a 0090     		str	r0, [sp]
 3361 013c 9BB2     		uxth	r3, r3
 3362 013e 0398     		ldr	r0, [sp, #12]
 3363 0140 FFF7FEFF 		bl	ILI9341_Draw_Square
 3364              	.LVL354:
 3365 0144 B4E7     		b	.L291
 3366              	.L300:
 3367 0146 AB46     		mov	fp, r5
 618:Src/ili93412.c **** 		for (i=0; i<CHAR_HEIGHT; i++) {
 3368              		.loc 1 618 0 discriminator 2
 3369 0148 0137     		adds	r7, r7, #1
 3370              	.LVL355:
 3371 014a FFB2     		uxtb	r7, r7
 3372              	.LVL356:
 3373              	.L288:
 618:Src/ili93412.c **** 		for (i=0; i<CHAR_HEIGHT; i++) {
 3374              		.loc 1 618 0 is_stmt 0 discriminator 1
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 78


 3375 014c 052F     		cmp	r7, #5
 3376 014e 02D8     		bhi	.L303
 619:Src/ili93412.c **** 			if (temp_old[j] & (1<<i)) 
 3377              		.loc 1 619 0 is_stmt 1
 3378 0150 0024     		movs	r4, #0
 3379 0152 5D46     		mov	r5, fp
 3380 0154 AEE7     		b	.L294
 3381              	.L303:
 640:Src/ili93412.c **** 				}
 641:Src/ili93412.c **** 			}
 642:Src/ili93412.c **** 		}
 643:Src/ili93412.c **** 	}
 644:Src/ili93412.c **** 	return HAL_OK;
 645:Src/ili93412.c **** }
 3382              		.loc 1 645 0
 3383 0156 0020     		movs	r0, #0
 3384 0158 09B0     		add	sp, sp, #36
 3385              	.LCFI20:
 3386              		.cfi_def_cfa_offset 36
 3387              		@ sp needed
 3388 015a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3389              	.LVL357:
 3390              	.L305:
 3391 015e 00BF     		.align	2
 3392              	.L304:
 3393 0160 00000000 		.word	.LANCHOR0
 3394              		.cfi_endproc
 3395              	.LFE77:
 3397              		.section	.text.ILI9341_Draw_Main_Interface,"ax",%progbits
 3398              		.align	1
 3399              		.global	ILI9341_Draw_Main_Interface
 3400              		.syntax unified
 3401              		.thumb
 3402              		.thumb_func
 3403              		.fpu softvfp
 3405              	ILI9341_Draw_Main_Interface:
 3406              	.LFB78:
 646:Src/ili93412.c **** 
 647:Src/ili93412.c **** 
 648:Src/ili93412.c **** HAL_StatusTypeDef ILI9341_Draw_Main_Interface(SPI_HandleTypeDef* hspi_handle)
 649:Src/ili93412.c **** {
 3407              		.loc 1 649 0
 3408              		.cfi_startproc
 3409              		@ args = 0, pretend = 0, frame = 0
 3410              		@ frame_needed = 0, uses_anonymous_args = 0
 3411              	.LVL358:
 3412 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 3413              	.LCFI21:
 3414              		.cfi_def_cfa_offset 20
 3415              		.cfi_offset 4, -20
 3416              		.cfi_offset 5, -16
 3417              		.cfi_offset 6, -12
 3418              		.cfi_offset 7, -8
 3419              		.cfi_offset 14, -4
 3420 0002 83B0     		sub	sp, sp, #12
 3421              	.LCFI22:
 3422              		.cfi_def_cfa_offset 32
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 79


 3423 0004 0546     		mov	r5, r0
 650:Src/ili93412.c **** 	ILI9341_Draw_Square(hspi_handle,   0,   0, 320, 120, COLOR_1);
 3424              		.loc 1 650 0
 3425 0006 43F68806 		movw	r6, #14472
 3426 000a 0196     		str	r6, [sp, #4]
 3427 000c 7824     		movs	r4, #120
 3428 000e 0094     		str	r4, [sp]
 3429 0010 4FF4A073 		mov	r3, #320
 3430 0014 0022     		movs	r2, #0
 3431 0016 1146     		mov	r1, r2
 3432 0018 FFF7FEFF 		bl	ILI9341_Draw_Square
 3433              	.LVL359:
 651:Src/ili93412.c **** 	ILI9341_Draw_Square(hspi_handle,   0, 120, 320, 240, COLOR_1);
 3434              		.loc 1 651 0
 3435 001c 0196     		str	r6, [sp, #4]
 3436 001e F026     		movs	r6, #240
 3437 0020 0096     		str	r6, [sp]
 3438 0022 4FF4A073 		mov	r3, #320
 3439 0026 2246     		mov	r2, r4
 3440 0028 0021     		movs	r1, #0
 3441 002a 2846     		mov	r0, r5
 3442 002c FFF7FEFF 		bl	ILI9341_Draw_Square
 3443              	.LVL360:
 652:Src/ili93412.c **** 	
 653:Src/ili93412.c **** 	ILI9341_Draw_Square(hspi_handle, 256,   0, 259, 240, COLOR_2);
 3444              		.loc 1 653 0
 3445 0030 43F6C324 		movw	r4, #15043
 3446 0034 0194     		str	r4, [sp, #4]
 3447 0036 0096     		str	r6, [sp]
 3448 0038 40F20313 		movw	r3, #259
 3449 003c 0022     		movs	r2, #0
 3450 003e 4FF48071 		mov	r1, #256
 3451 0042 2846     		mov	r0, r5
 3452 0044 FFF7FEFF 		bl	ILI9341_Draw_Square
 3453              	.LVL361:
 654:Src/ili93412.c **** 	ILI9341_Draw_Square(hspi_handle,   0, 200, 320, 204, COLOR_2);
 3454              		.loc 1 654 0
 3455 0048 0194     		str	r4, [sp, #4]
 3456 004a CC27     		movs	r7, #204
 3457 004c 0097     		str	r7, [sp]
 3458 004e 4FF4A073 		mov	r3, #320
 3459 0052 C822     		movs	r2, #200
 3460 0054 0021     		movs	r1, #0
 3461 0056 2846     		mov	r0, r5
 3462 0058 FFF7FEFF 		bl	ILI9341_Draw_Square
 3463              	.LVL362:
 655:Src/ili93412.c **** 	ILI9341_Draw_Square(hspi_handle, 260,  96, 320, 101, COLOR_2);
 3464              		.loc 1 655 0
 3465 005c 0194     		str	r4, [sp, #4]
 3466 005e 6523     		movs	r3, #101
 3467 0060 0093     		str	r3, [sp]
 3468 0062 4FF4A073 		mov	r3, #320
 3469 0066 6022     		movs	r2, #96
 3470 0068 4FF48271 		mov	r1, #260
 3471 006c 2846     		mov	r0, r5
 3472 006e FFF7FEFF 		bl	ILI9341_Draw_Square
 3473              	.LVL363:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 80


 656:Src/ili93412.c **** 	ILI9341_Draw_Square(hspi_handle,  86, 204,  89, 240, COLOR_2);
 3474              		.loc 1 656 0
 3475 0072 0194     		str	r4, [sp, #4]
 3476 0074 0096     		str	r6, [sp]
 3477 0076 5923     		movs	r3, #89
 3478 0078 3A46     		mov	r2, r7
 3479 007a 5621     		movs	r1, #86
 3480 007c 2846     		mov	r0, r5
 3481 007e FFF7FEFF 		bl	ILI9341_Draw_Square
 3482              	.LVL364:
 657:Src/ili93412.c **** 	ILI9341_Draw_Square(hspi_handle, 171, 204, 174, 240, COLOR_2);
 3483              		.loc 1 657 0
 3484 0082 0194     		str	r4, [sp, #4]
 3485 0084 0096     		str	r6, [sp]
 3486 0086 AE23     		movs	r3, #174
 3487 0088 3A46     		mov	r2, r7
 3488 008a AB21     		movs	r1, #171
 3489 008c 2846     		mov	r0, r5
 3490 008e FFF7FEFF 		bl	ILI9341_Draw_Square
 3491              	.LVL365:
 658:Src/ili93412.c **** 	
 659:Src/ili93412.c **** 	/*Amplitude Indicators*/
 660:Src/ili93412.c **** 	ILI9341_Draw_Square(hspi_handle,  25,  95, 255,  96, COLOR_3);
 3492              		.loc 1 660 0
 3493 0092 46F2E324 		movw	r4, #25315
 3494 0096 0194     		str	r4, [sp, #4]
 3495 0098 6023     		movs	r3, #96
 3496 009a 0093     		str	r3, [sp]
 3497 009c FF23     		movs	r3, #255
 3498 009e 5F22     		movs	r2, #95
 3499 00a0 1921     		movs	r1, #25
 3500 00a2 2846     		mov	r0, r5
 3501 00a4 FFF7FEFF 		bl	ILI9341_Draw_Square
 3502              	.LVL366:
 661:Src/ili93412.c **** 	ILI9341_Draw_Square(hspi_handle,  25,   5, 255,   6, COLOR_3);
 3503              		.loc 1 661 0
 3504 00a8 0194     		str	r4, [sp, #4]
 3505 00aa 0623     		movs	r3, #6
 3506 00ac 0093     		str	r3, [sp]
 3507 00ae FF23     		movs	r3, #255
 3508 00b0 0522     		movs	r2, #5
 3509 00b2 1921     		movs	r1, #25
 3510 00b4 2846     		mov	r0, r5
 3511 00b6 FFF7FEFF 		bl	ILI9341_Draw_Square
 3512              	.LVL367:
 662:Src/ili93412.c **** 	ILI9341_Draw_Square(hspi_handle,  25, 185, 255, 186, COLOR_3);
 3513              		.loc 1 662 0
 3514 00ba 0194     		str	r4, [sp, #4]
 3515 00bc BA23     		movs	r3, #186
 3516 00be 0093     		str	r3, [sp]
 3517 00c0 FF23     		movs	r3, #255
 3518 00c2 B922     		movs	r2, #185
 3519 00c4 1921     		movs	r1, #25
 3520 00c6 2846     		mov	r0, r5
 3521 00c8 FFF7FEFF 		bl	ILI9341_Draw_Square
 3522              	.LVL368:
 663:Src/ili93412.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 81


 664:Src/ili93412.c **** 	ILI9341_Draw_Square(hspi_handle,  15,  94,  24,  97, COLOR_3);
 3523              		.loc 1 664 0
 3524 00cc 0194     		str	r4, [sp, #4]
 3525 00ce 6123     		movs	r3, #97
 3526 00d0 0093     		str	r3, [sp]
 3527 00d2 1823     		movs	r3, #24
 3528 00d4 5E22     		movs	r2, #94
 3529 00d6 0F21     		movs	r1, #15
 3530 00d8 2846     		mov	r0, r5
 3531 00da FFF7FEFF 		bl	ILI9341_Draw_Square
 3532              	.LVL369:
 665:Src/ili93412.c **** 	ILI9341_Draw_Square(hspi_handle,  15,   4,  24,   7, COLOR_3);
 3533              		.loc 1 665 0
 3534 00de 0194     		str	r4, [sp, #4]
 3535 00e0 0723     		movs	r3, #7
 3536 00e2 0093     		str	r3, [sp]
 3537 00e4 1823     		movs	r3, #24
 3538 00e6 0422     		movs	r2, #4
 3539 00e8 0F21     		movs	r1, #15
 3540 00ea 2846     		mov	r0, r5
 3541 00ec FFF7FEFF 		bl	ILI9341_Draw_Square
 3542              	.LVL370:
 666:Src/ili93412.c **** 	ILI9341_Draw_Square(hspi_handle,  15, 184,  24, 187, COLOR_3);
 3543              		.loc 1 666 0
 3544 00f0 0194     		str	r4, [sp, #4]
 3545 00f2 BB23     		movs	r3, #187
 3546 00f4 0093     		str	r3, [sp]
 3547 00f6 1823     		movs	r3, #24
 3548 00f8 B822     		movs	r2, #184
 3549 00fa 0F21     		movs	r1, #15
 3550 00fc 2846     		mov	r0, r5
 3551 00fe FFF7FEFF 		bl	ILI9341_Draw_Square
 3552              	.LVL371:
 667:Src/ili93412.c **** 	ILI9341_Draw_Square(hspi_handle,  15,  49,  23,  51, COLOR_3);
 3553              		.loc 1 667 0
 3554 0102 0194     		str	r4, [sp, #4]
 3555 0104 3323     		movs	r3, #51
 3556 0106 0093     		str	r3, [sp]
 3557 0108 1723     		movs	r3, #23
 3558 010a 3122     		movs	r2, #49
 3559 010c 0F21     		movs	r1, #15
 3560 010e 2846     		mov	r0, r5
 3561 0110 FFF7FEFF 		bl	ILI9341_Draw_Square
 3562              	.LVL372:
 668:Src/ili93412.c **** 	ILI9341_Draw_Square(hspi_handle,  15, 139,  23, 141, COLOR_3);
 3563              		.loc 1 668 0
 3564 0114 0194     		str	r4, [sp, #4]
 3565 0116 8D23     		movs	r3, #141
 3566 0118 0093     		str	r3, [sp]
 3567 011a 1723     		movs	r3, #23
 3568 011c 8B22     		movs	r2, #139
 3569 011e 0F21     		movs	r1, #15
 3570 0120 2846     		mov	r0, r5
 3571 0122 FFF7FEFF 		bl	ILI9341_Draw_Square
 3572              	.LVL373:
 3573              	.LBB15:
 669:Src/ili93412.c **** 	
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 82


 670:Src/ili93412.c **** 	for(int i=5 ; i<186 ; i+=9)
 3574              		.loc 1 670 0
 3575 0126 0524     		movs	r4, #5
 3576 0128 0CE0     		b	.L307
 3577              	.LVL374:
 3578              	.L308:
 671:Src/ili93412.c **** 	{
 672:Src/ili93412.c **** 		ILI9341_Draw_Square(hspi_handle,  15 ,i,  20,i+1, COLOR_3);
 3579              		.loc 1 672 0 discriminator 3
 3580 012a A2B2     		uxth	r2, r4
 3581 012c 46F2E323 		movw	r3, #25315
 3582 0130 0193     		str	r3, [sp, #4]
 3583 0132 531C     		adds	r3, r2, #1
 3584 0134 9BB2     		uxth	r3, r3
 3585 0136 0093     		str	r3, [sp]
 3586 0138 1423     		movs	r3, #20
 3587 013a 0F21     		movs	r1, #15
 3588 013c 2846     		mov	r0, r5
 3589 013e FFF7FEFF 		bl	ILI9341_Draw_Square
 3590              	.LVL375:
 670:Src/ili93412.c **** 	{
 3591              		.loc 1 670 0 discriminator 3
 3592 0142 0934     		adds	r4, r4, #9
 3593              	.LVL376:
 3594              	.L307:
 670:Src/ili93412.c **** 	{
 3595              		.loc 1 670 0 is_stmt 0 discriminator 1
 3596 0144 B92C     		cmp	r4, #185
 3597 0146 F0DD     		ble	.L308
 3598              	.LBE15:
 673:Src/ili93412.c **** 	}
 674:Src/ili93412.c **** 	
 675:Src/ili93412.c **** 	/*Timebase indicators*/
 676:Src/ili93412.c **** 	ILI9341_Draw_Square(hspi_handle,  24, 187,  25, 197, COLOR_3);
 3599              		.loc 1 676 0 is_stmt 1
 3600 0148 46F2E326 		movw	r6, #25315
 3601 014c 0196     		str	r6, [sp, #4]
 3602 014e C524     		movs	r4, #197
 3603              	.LVL377:
 3604 0150 0094     		str	r4, [sp]
 3605 0152 1923     		movs	r3, #25
 3606 0154 BB22     		movs	r2, #187
 3607 0156 1821     		movs	r1, #24
 3608 0158 2846     		mov	r0, r5
 3609 015a FFF7FEFF 		bl	ILI9341_Draw_Square
 3610              	.LVL378:
 677:Src/ili93412.c **** 	ILI9341_Draw_Square(hspi_handle, 140, 187, 141, 197, COLOR_3);
 3611              		.loc 1 677 0
 3612 015e 0196     		str	r6, [sp, #4]
 3613 0160 0094     		str	r4, [sp]
 3614 0162 8D23     		movs	r3, #141
 3615 0164 BB22     		movs	r2, #187
 3616 0166 8C21     		movs	r1, #140
 3617 0168 2846     		mov	r0, r5
 3618 016a FFF7FEFF 		bl	ILI9341_Draw_Square
 3619              	.LVL379:
 678:Src/ili93412.c **** 	ILI9341_Draw_Square(hspi_handle, 254, 187, 255, 197, COLOR_3);
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 83


 3620              		.loc 1 678 0
 3621 016e 0196     		str	r6, [sp, #4]
 3622 0170 0094     		str	r4, [sp]
 3623 0172 FF23     		movs	r3, #255
 3624 0174 BB22     		movs	r2, #187
 3625 0176 FE21     		movs	r1, #254
 3626 0178 2846     		mov	r0, r5
 3627 017a FFF7FEFF 		bl	ILI9341_Draw_Square
 3628              	.LVL380:
 3629              	.LBB16:
 679:Src/ili93412.c **** 	for(int i=24;i<255;i+=29)
 3630              		.loc 1 679 0
 3631 017e 1824     		movs	r4, #24
 3632 0180 0CE0     		b	.L309
 3633              	.LVL381:
 3634              	.L310:
 680:Src/ili93412.c **** 	{
 681:Src/ili93412.c **** 		ILI9341_Draw_Square(hspi_handle, i, 187, i+1, 192,COLOR_3);
 3635              		.loc 1 681 0 discriminator 3
 3636 0182 A1B2     		uxth	r1, r4
 3637 0184 4B1C     		adds	r3, r1, #1
 3638 0186 46F2E322 		movw	r2, #25315
 3639 018a 0192     		str	r2, [sp, #4]
 3640 018c C022     		movs	r2, #192
 3641 018e 0092     		str	r2, [sp]
 3642 0190 9BB2     		uxth	r3, r3
 3643 0192 BB22     		movs	r2, #187
 3644 0194 2846     		mov	r0, r5
 3645 0196 FFF7FEFF 		bl	ILI9341_Draw_Square
 3646              	.LVL382:
 679:Src/ili93412.c **** 	for(int i=24;i<255;i+=29)
 3647              		.loc 1 679 0 discriminator 3
 3648 019a 1D34     		adds	r4, r4, #29
 3649              	.LVL383:
 3650              	.L309:
 679:Src/ili93412.c **** 	for(int i=24;i<255;i+=29)
 3651              		.loc 1 679 0 is_stmt 0 discriminator 1
 3652 019c FE2C     		cmp	r4, #254
 3653 019e F0DD     		ble	.L310
 3654              	.LBE16:
 682:Src/ili93412.c **** 	}
 683:Src/ili93412.c **** 	
 684:Src/ili93412.c **** }
 3655              		.loc 1 684 0 is_stmt 1
 3656 01a0 03B0     		add	sp, sp, #12
 3657              	.LCFI23:
 3658              		.cfi_def_cfa_offset 20
 3659              		@ sp needed
 3660 01a2 F0BD     		pop	{r4, r5, r6, r7, pc}
 3661              		.cfi_endproc
 3662              	.LFE78:
 3664              		.section	.rodata.font,"a",%progbits
 3665              		.align	2
 3666              		.set	.LANCHOR0,. + 0
 3669              	font:
 3670 0000 00       		.byte	0
 3671 0001 00       		.byte	0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 84


 3672 0002 00       		.byte	0
 3673 0003 00       		.byte	0
 3674 0004 00       		.byte	0
 3675 0005 00       		.byte	0
 3676 0006 5C       		.byte	92
 3677 0007 00       		.byte	0
 3678 0008 00       		.byte	0
 3679 0009 00       		.byte	0
 3680 000a 00       		.byte	0
 3681 000b 00       		.byte	0
 3682 000c 06       		.byte	6
 3683 000d 00       		.byte	0
 3684 000e 06       		.byte	6
 3685 000f 00       		.byte	0
 3686 0010 00       		.byte	0
 3687 0011 00       		.byte	0
 3688 0012 28       		.byte	40
 3689 0013 7C       		.byte	124
 3690 0014 28       		.byte	40
 3691 0015 7C       		.byte	124
 3692 0016 28       		.byte	40
 3693 0017 00       		.byte	0
 3694 0018 5C       		.byte	92
 3695 0019 54       		.byte	84
 3696 001a FE       		.byte	-2
 3697 001b 54       		.byte	84
 3698 001c 74       		.byte	116
 3699 001d 00       		.byte	0
 3700 001e 44       		.byte	68
 3701 001f 20       		.byte	32
 3702 0020 10       		.byte	16
 3703 0021 08       		.byte	8
 3704 0022 44       		.byte	68
 3705 0023 00       		.byte	0
 3706 0024 28       		.byte	40
 3707 0025 54       		.byte	84
 3708 0026 54       		.byte	84
 3709 0027 20       		.byte	32
 3710 0028 50       		.byte	80
 3711 0029 00       		.byte	0
 3712 002a 06       		.byte	6
 3713 002b 00       		.byte	0
 3714 002c 00       		.byte	0
 3715 002d 00       		.byte	0
 3716 002e 00       		.byte	0
 3717 002f 00       		.byte	0
 3718 0030 38       		.byte	56
 3719 0031 44       		.byte	68
 3720 0032 00       		.byte	0
 3721 0033 00       		.byte	0
 3722 0034 00       		.byte	0
 3723 0035 00       		.byte	0
 3724 0036 44       		.byte	68
 3725 0037 38       		.byte	56
 3726 0038 00       		.byte	0
 3727 0039 00       		.byte	0
 3728 003a 00       		.byte	0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 85


 3729 003b 00       		.byte	0
 3730 003c 02       		.byte	2
 3731 003d 07       		.byte	7
 3732 003e 02       		.byte	2
 3733 003f 00       		.byte	0
 3734 0040 00       		.byte	0
 3735 0041 00       		.byte	0
 3736 0042 10       		.byte	16
 3737 0043 10       		.byte	16
 3738 0044 7C       		.byte	124
 3739 0045 10       		.byte	16
 3740 0046 10       		.byte	16
 3741 0047 00       		.byte	0
 3742 0048 C0       		.byte	-64
 3743 0049 00       		.byte	0
 3744 004a 00       		.byte	0
 3745 004b 00       		.byte	0
 3746 004c 00       		.byte	0
 3747 004d 00       		.byte	0
 3748 004e 10       		.byte	16
 3749 004f 10       		.byte	16
 3750 0050 10       		.byte	16
 3751 0051 10       		.byte	16
 3752 0052 10       		.byte	16
 3753 0053 00       		.byte	0
 3754 0054 40       		.byte	64
 3755 0055 00       		.byte	0
 3756 0056 00       		.byte	0
 3757 0057 00       		.byte	0
 3758 0058 00       		.byte	0
 3759 0059 00       		.byte	0
 3760 005a 60       		.byte	96
 3761 005b 10       		.byte	16
 3762 005c 0C       		.byte	12
 3763 005d 00       		.byte	0
 3764 005e 00       		.byte	0
 3765 005f 00       		.byte	0
 3766 0060 7C       		.byte	124
 3767 0061 64       		.byte	100
 3768 0062 54       		.byte	84
 3769 0063 4C       		.byte	76
 3770 0064 7C       		.byte	124
 3771 0065 00       		.byte	0
 3772 0066 48       		.byte	72
 3773 0067 7C       		.byte	124
 3774 0068 40       		.byte	64
 3775 0069 00       		.byte	0
 3776 006a 00       		.byte	0
 3777 006b 00       		.byte	0
 3778 006c 64       		.byte	100
 3779 006d 54       		.byte	84
 3780 006e 54       		.byte	84
 3781 006f 54       		.byte	84
 3782 0070 48       		.byte	72
 3783 0071 00       		.byte	0
 3784 0072 44       		.byte	68
 3785 0073 54       		.byte	84
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 86


 3786 0074 54       		.byte	84
 3787 0075 54       		.byte	84
 3788 0076 6C       		.byte	108
 3789 0077 00       		.byte	0
 3790 0078 3C       		.byte	60
 3791 0079 20       		.byte	32
 3792 007a 70       		.byte	112
 3793 007b 20       		.byte	32
 3794 007c 20       		.byte	32
 3795 007d 00       		.byte	0
 3796 007e 5C       		.byte	92
 3797 007f 54       		.byte	84
 3798 0080 54       		.byte	84
 3799 0081 54       		.byte	84
 3800 0082 24       		.byte	36
 3801 0083 00       		.byte	0
 3802 0084 7C       		.byte	124
 3803 0085 54       		.byte	84
 3804 0086 54       		.byte	84
 3805 0087 54       		.byte	84
 3806 0088 74       		.byte	116
 3807 0089 00       		.byte	0
 3808 008a 04       		.byte	4
 3809 008b 04       		.byte	4
 3810 008c 64       		.byte	100
 3811 008d 14       		.byte	20
 3812 008e 0C       		.byte	12
 3813 008f 00       		.byte	0
 3814 0090 7C       		.byte	124
 3815 0091 54       		.byte	84
 3816 0092 54       		.byte	84
 3817 0093 54       		.byte	84
 3818 0094 7C       		.byte	124
 3819 0095 00       		.byte	0
 3820 0096 5C       		.byte	92
 3821 0097 54       		.byte	84
 3822 0098 54       		.byte	84
 3823 0099 54       		.byte	84
 3824 009a 7C       		.byte	124
 3825 009b 00       		.byte	0
 3826 009c 44       		.byte	68
 3827 009d 00       		.byte	0
 3828 009e 00       		.byte	0
 3829 009f 00       		.byte	0
 3830 00a0 00       		.byte	0
 3831 00a1 00       		.byte	0
 3832 00a2 C4       		.byte	-60
 3833 00a3 00       		.byte	0
 3834 00a4 00       		.byte	0
 3835 00a5 00       		.byte	0
 3836 00a6 00       		.byte	0
 3837 00a7 00       		.byte	0
 3838 00a8 10       		.byte	16
 3839 00a9 28       		.byte	40
 3840 00aa 44       		.byte	68
 3841 00ab 00       		.byte	0
 3842 00ac 00       		.byte	0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 87


 3843 00ad 00       		.byte	0
 3844 00ae 28       		.byte	40
 3845 00af 28       		.byte	40
 3846 00b0 28       		.byte	40
 3847 00b1 28       		.byte	40
 3848 00b2 28       		.byte	40
 3849 00b3 00       		.byte	0
 3850 00b4 44       		.byte	68
 3851 00b5 28       		.byte	40
 3852 00b6 10       		.byte	16
 3853 00b7 00       		.byte	0
 3854 00b8 00       		.byte	0
 3855 00b9 00       		.byte	0
 3856 00ba 08       		.byte	8
 3857 00bb 04       		.byte	4
 3858 00bc 54       		.byte	84
 3859 00bd 08       		.byte	8
 3860 00be 00       		.byte	0
 3861 00bf 00       		.byte	0
 3862 00c0 7C       		.byte	124
 3863 00c1 44       		.byte	68
 3864 00c2 54       		.byte	84
 3865 00c3 54       		.byte	84
 3866 00c4 5C       		.byte	92
 3867 00c5 00       		.byte	0
 3868 00c6 7C       		.byte	124
 3869 00c7 24       		.byte	36
 3870 00c8 24       		.byte	36
 3871 00c9 24       		.byte	36
 3872 00ca 7C       		.byte	124
 3873 00cb 00       		.byte	0
 3874 00cc 7C       		.byte	124
 3875 00cd 54       		.byte	84
 3876 00ce 54       		.byte	84
 3877 00cf 54       		.byte	84
 3878 00d0 6C       		.byte	108
 3879 00d1 00       		.byte	0
 3880 00d2 7C       		.byte	124
 3881 00d3 44       		.byte	68
 3882 00d4 44       		.byte	68
 3883 00d5 44       		.byte	68
 3884 00d6 44       		.byte	68
 3885 00d7 00       		.byte	0
 3886 00d8 7C       		.byte	124
 3887 00d9 44       		.byte	68
 3888 00da 44       		.byte	68
 3889 00db 44       		.byte	68
 3890 00dc 38       		.byte	56
 3891 00dd 00       		.byte	0
 3892 00de 7C       		.byte	124
 3893 00df 54       		.byte	84
 3894 00e0 54       		.byte	84
 3895 00e1 54       		.byte	84
 3896 00e2 44       		.byte	68
 3897 00e3 00       		.byte	0
 3898 00e4 7C       		.byte	124
 3899 00e5 14       		.byte	20
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 88


 3900 00e6 14       		.byte	20
 3901 00e7 14       		.byte	20
 3902 00e8 04       		.byte	4
 3903 00e9 00       		.byte	0
 3904 00ea 7C       		.byte	124
 3905 00eb 44       		.byte	68
 3906 00ec 44       		.byte	68
 3907 00ed 54       		.byte	84
 3908 00ee 74       		.byte	116
 3909 00ef 00       		.byte	0
 3910 00f0 7C       		.byte	124
 3911 00f1 10       		.byte	16
 3912 00f2 10       		.byte	16
 3913 00f3 10       		.byte	16
 3914 00f4 7C       		.byte	124
 3915 00f5 00       		.byte	0
 3916 00f6 44       		.byte	68
 3917 00f7 44       		.byte	68
 3918 00f8 7C       		.byte	124
 3919 00f9 44       		.byte	68
 3920 00fa 44       		.byte	68
 3921 00fb 00       		.byte	0
 3922 00fc 60       		.byte	96
 3923 00fd 40       		.byte	64
 3924 00fe 40       		.byte	64
 3925 00ff 44       		.byte	68
 3926 0100 7C       		.byte	124
 3927 0101 00       		.byte	0
 3928 0102 7C       		.byte	124
 3929 0103 10       		.byte	16
 3930 0104 10       		.byte	16
 3931 0105 28       		.byte	40
 3932 0106 44       		.byte	68
 3933 0107 00       		.byte	0
 3934 0108 7C       		.byte	124
 3935 0109 40       		.byte	64
 3936 010a 40       		.byte	64
 3937 010b 40       		.byte	64
 3938 010c 40       		.byte	64
 3939 010d 00       		.byte	0
 3940 010e 7C       		.byte	124
 3941 010f 08       		.byte	8
 3942 0110 10       		.byte	16
 3943 0111 08       		.byte	8
 3944 0112 7C       		.byte	124
 3945 0113 00       		.byte	0
 3946 0114 7C       		.byte	124
 3947 0115 08       		.byte	8
 3948 0116 10       		.byte	16
 3949 0117 20       		.byte	32
 3950 0118 7C       		.byte	124
 3951 0119 00       		.byte	0
 3952 011a 38       		.byte	56
 3953 011b 44       		.byte	68
 3954 011c 44       		.byte	68
 3955 011d 44       		.byte	68
 3956 011e 38       		.byte	56
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 89


 3957 011f 00       		.byte	0
 3958 0120 7C       		.byte	124
 3959 0121 14       		.byte	20
 3960 0122 14       		.byte	20
 3961 0123 14       		.byte	20
 3962 0124 08       		.byte	8
 3963 0125 00       		.byte	0
 3964 0126 3C       		.byte	60
 3965 0127 24       		.byte	36
 3966 0128 64       		.byte	100
 3967 0129 24       		.byte	36
 3968 012a 3C       		.byte	60
 3969 012b 00       		.byte	0
 3970 012c 7C       		.byte	124
 3971 012d 14       		.byte	20
 3972 012e 14       		.byte	20
 3973 012f 14       		.byte	20
 3974 0130 68       		.byte	104
 3975 0131 00       		.byte	0
 3976 0132 5C       		.byte	92
 3977 0133 54       		.byte	84
 3978 0134 54       		.byte	84
 3979 0135 54       		.byte	84
 3980 0136 74       		.byte	116
 3981 0137 00       		.byte	0
 3982 0138 04       		.byte	4
 3983 0139 04       		.byte	4
 3984 013a 7C       		.byte	124
 3985 013b 04       		.byte	4
 3986 013c 04       		.byte	4
 3987 013d 00       		.byte	0
 3988 013e 7C       		.byte	124
 3989 013f 40       		.byte	64
 3990 0140 40       		.byte	64
 3991 0141 40       		.byte	64
 3992 0142 7C       		.byte	124
 3993 0143 00       		.byte	0
 3994 0144 0C       		.byte	12
 3995 0145 30       		.byte	48
 3996 0146 40       		.byte	64
 3997 0147 30       		.byte	48
 3998 0148 0C       		.byte	12
 3999 0149 00       		.byte	0
 4000 014a 3C       		.byte	60
 4001 014b 40       		.byte	64
 4002 014c 30       		.byte	48
 4003 014d 40       		.byte	64
 4004 014e 3C       		.byte	60
 4005 014f 00       		.byte	0
 4006 0150 44       		.byte	68
 4007 0151 28       		.byte	40
 4008 0152 10       		.byte	16
 4009 0153 28       		.byte	40
 4010 0154 44       		.byte	68
 4011 0155 00       		.byte	0
 4012 0156 0C       		.byte	12
 4013 0157 10       		.byte	16
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 90


 4014 0158 60       		.byte	96
 4015 0159 10       		.byte	16
 4016 015a 0C       		.byte	12
 4017 015b 00       		.byte	0
 4018 015c 44       		.byte	68
 4019 015d 64       		.byte	100
 4020 015e 54       		.byte	84
 4021 015f 4C       		.byte	76
 4022 0160 44       		.byte	68
 4023 0161 00       		.byte	0
 4024 0162 7C       		.byte	124
 4025 0163 44       		.byte	68
 4026 0164 00       		.byte	0
 4027 0165 00       		.byte	0
 4028 0166 00       		.byte	0
 4029 0167 00       		.byte	0
 4030 0168 0C       		.byte	12
 4031 0169 10       		.byte	16
 4032 016a 60       		.byte	96
 4033 016b 00       		.byte	0
 4034 016c 00       		.byte	0
 4035 016d 00       		.byte	0
 4036 016e 44       		.byte	68
 4037 016f 7C       		.byte	124
 4038 0170 00       		.byte	0
 4039 0171 00       		.byte	0
 4040 0172 00       		.byte	0
 4041 0173 00       		.byte	0
 4042 0174 00       		.byte	0
 4043 0175 01       		.byte	1
 4044 0176 00       		.byte	0
 4045 0177 01       		.byte	1
 4046 0178 00       		.byte	0
 4047 0179 00       		.byte	0
 4048 017a 40       		.byte	64
 4049 017b 40       		.byte	64
 4050 017c 40       		.byte	64
 4051 017d 40       		.byte	64
 4052 017e 40       		.byte	64
 4053 017f 40       		.byte	64
 4054 0180 00       		.byte	0
 4055 0181 01       		.byte	1
 4056 0182 00       		.byte	0
 4057 0183 00       		.byte	0
 4058 0184 00       		.byte	0
 4059 0185 00       		.byte	0
 4060 0186 7C       		.byte	124
 4061 0187 24       		.byte	36
 4062 0188 24       		.byte	36
 4063 0189 24       		.byte	36
 4064 018a 7C       		.byte	124
 4065 018b 00       		.byte	0
 4066 018c 7C       		.byte	124
 4067 018d 54       		.byte	84
 4068 018e 54       		.byte	84
 4069 018f 54       		.byte	84
 4070 0190 6C       		.byte	108
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 91


 4071 0191 00       		.byte	0
 4072 0192 7C       		.byte	124
 4073 0193 44       		.byte	68
 4074 0194 44       		.byte	68
 4075 0195 44       		.byte	68
 4076 0196 44       		.byte	68
 4077 0197 00       		.byte	0
 4078 0198 7C       		.byte	124
 4079 0199 44       		.byte	68
 4080 019a 44       		.byte	68
 4081 019b 44       		.byte	68
 4082 019c 38       		.byte	56
 4083 019d 00       		.byte	0
 4084 019e 7C       		.byte	124
 4085 019f 54       		.byte	84
 4086 01a0 54       		.byte	84
 4087 01a1 54       		.byte	84
 4088 01a2 44       		.byte	68
 4089 01a3 00       		.byte	0
 4090 01a4 7C       		.byte	124
 4091 01a5 14       		.byte	20
 4092 01a6 14       		.byte	20
 4093 01a7 14       		.byte	20
 4094 01a8 04       		.byte	4
 4095 01a9 00       		.byte	0
 4096 01aa 7C       		.byte	124
 4097 01ab 44       		.byte	68
 4098 01ac 44       		.byte	68
 4099 01ad 54       		.byte	84
 4100 01ae 74       		.byte	116
 4101 01af 00       		.byte	0
 4102 01b0 7C       		.byte	124
 4103 01b1 10       		.byte	16
 4104 01b2 10       		.byte	16
 4105 01b3 10       		.byte	16
 4106 01b4 7C       		.byte	124
 4107 01b5 00       		.byte	0
 4108 01b6 44       		.byte	68
 4109 01b7 44       		.byte	68
 4110 01b8 7C       		.byte	124
 4111 01b9 44       		.byte	68
 4112 01ba 44       		.byte	68
 4113 01bb 00       		.byte	0
 4114 01bc 60       		.byte	96
 4115 01bd 40       		.byte	64
 4116 01be 40       		.byte	64
 4117 01bf 44       		.byte	68
 4118 01c0 7C       		.byte	124
 4119 01c1 00       		.byte	0
 4120 01c2 7C       		.byte	124
 4121 01c3 10       		.byte	16
 4122 01c4 10       		.byte	16
 4123 01c5 28       		.byte	40
 4124 01c6 44       		.byte	68
 4125 01c7 00       		.byte	0
 4126 01c8 7C       		.byte	124
 4127 01c9 40       		.byte	64
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 92


 4128 01ca 40       		.byte	64
 4129 01cb 40       		.byte	64
 4130 01cc 40       		.byte	64
 4131 01cd 00       		.byte	0
 4132 01ce 7C       		.byte	124
 4133 01cf 08       		.byte	8
 4134 01d0 10       		.byte	16
 4135 01d1 08       		.byte	8
 4136 01d2 7C       		.byte	124
 4137 01d3 00       		.byte	0
 4138 01d4 7C       		.byte	124
 4139 01d5 08       		.byte	8
 4140 01d6 10       		.byte	16
 4141 01d7 20       		.byte	32
 4142 01d8 7C       		.byte	124
 4143 01d9 00       		.byte	0
 4144 01da 38       		.byte	56
 4145 01db 44       		.byte	68
 4146 01dc 44       		.byte	68
 4147 01dd 44       		.byte	68
 4148 01de 38       		.byte	56
 4149 01df 00       		.byte	0
 4150 01e0 7C       		.byte	124
 4151 01e1 14       		.byte	20
 4152 01e2 14       		.byte	20
 4153 01e3 14       		.byte	20
 4154 01e4 08       		.byte	8
 4155 01e5 00       		.byte	0
 4156 01e6 3C       		.byte	60
 4157 01e7 24       		.byte	36
 4158 01e8 64       		.byte	100
 4159 01e9 24       		.byte	36
 4160 01ea 3C       		.byte	60
 4161 01eb 00       		.byte	0
 4162 01ec 7C       		.byte	124
 4163 01ed 14       		.byte	20
 4164 01ee 14       		.byte	20
 4165 01ef 14       		.byte	20
 4166 01f0 68       		.byte	104
 4167 01f1 00       		.byte	0
 4168 01f2 5C       		.byte	92
 4169 01f3 54       		.byte	84
 4170 01f4 54       		.byte	84
 4171 01f5 54       		.byte	84
 4172 01f6 74       		.byte	116
 4173 01f7 00       		.byte	0
 4174 01f8 04       		.byte	4
 4175 01f9 04       		.byte	4
 4176 01fa 7C       		.byte	124
 4177 01fb 04       		.byte	4
 4178 01fc 04       		.byte	4
 4179 01fd 00       		.byte	0
 4180 01fe 7C       		.byte	124
 4181 01ff 40       		.byte	64
 4182 0200 40       		.byte	64
 4183 0201 40       		.byte	64
 4184 0202 7C       		.byte	124
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 93


 4185 0203 00       		.byte	0
 4186 0204 0C       		.byte	12
 4187 0205 30       		.byte	48
 4188 0206 40       		.byte	64
 4189 0207 30       		.byte	48
 4190 0208 0C       		.byte	12
 4191 0209 00       		.byte	0
 4192 020a 3C       		.byte	60
 4193 020b 40       		.byte	64
 4194 020c 30       		.byte	48
 4195 020d 40       		.byte	64
 4196 020e 3C       		.byte	60
 4197 020f 00       		.byte	0
 4198 0210 44       		.byte	68
 4199 0211 28       		.byte	40
 4200 0212 10       		.byte	16
 4201 0213 28       		.byte	40
 4202 0214 44       		.byte	68
 4203 0215 00       		.byte	0
 4204 0216 0C       		.byte	12
 4205 0217 10       		.byte	16
 4206 0218 60       		.byte	96
 4207 0219 10       		.byte	16
 4208 021a 0C       		.byte	12
 4209 021b 00       		.byte	0
 4210 021c 44       		.byte	68
 4211 021d 64       		.byte	100
 4212 021e 54       		.byte	84
 4213 021f 4C       		.byte	76
 4214 0220 44       		.byte	68
 4215 0221 00       		.byte	0
 4216 0222 10       		.byte	16
 4217 0223 7C       		.byte	124
 4218 0224 44       		.byte	68
 4219 0225 00       		.byte	0
 4220 0226 00       		.byte	0
 4221 0227 00       		.byte	0
 4222 0228 6C       		.byte	108
 4223 0229 00       		.byte	0
 4224 022a 00       		.byte	0
 4225 022b 00       		.byte	0
 4226 022c 00       		.byte	0
 4227 022d 00       		.byte	0
 4228 022e 44       		.byte	68
 4229 022f 7C       		.byte	124
 4230 0230 10       		.byte	16
 4231 0231 00       		.byte	0
 4232 0232 00       		.byte	0
 4233 0233 00       		.byte	0
 4234 0234 02       		.byte	2
 4235 0235 01       		.byte	1
 4236 0236 02       		.byte	2
 4237 0237 01       		.byte	1
 4238 0238 00       		.byte	0
 4239 0239 00       		.byte	0
 4240 023a FF       		.byte	-1
 4241 023b FF       		.byte	-1
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 94


 4242 023c FF       		.byte	-1
 4243 023d FF       		.byte	-1
 4244 023e FF       		.byte	-1
 4245 023f FF       		.byte	-1
 4246              		.text
 4247              	.Letext0:
 4248              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 4249              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 4250              		.file 4 "Drivers/CMSIS/Include/core_cm3.h"
 4251              		.file 5 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/system_stm32f1xx.h"
 4252              		.file 6 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
 4253              		.file 7 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 4254              		.file 8 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 4255              		.file 9 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\lib\\gcc\\arm-none-eab
 4256              		.file 10 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\includ
 4257              		.file 11 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"
 4258              		.file 12 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma.h"
 4259              		.file 13 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_spi.h"
 4260              		.file 14 "Inc/font.h"
 4261              		.file 15 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s 			page 95


DEFINED SYMBOLS
                            *ABS*:00000000 ili93412.c
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:16     .text.ILI9341_SPI_Error:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:22     .text.ILI9341_SPI_Error:00000000 ILI9341_SPI_Error
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:50     .text.ILI9341_SPI_BeginDraw:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:57     .text.ILI9341_SPI_BeginDraw:00000000 ILI9341_SPI_BeginDraw
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:150    .text.ILI9341_SPI_BeginDraw:00000070 $d
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:155    .text.ILI9341_SPI_StopDraw:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:162    .text.ILI9341_SPI_StopDraw:00000000 ILI9341_SPI_StopDraw
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:221    .text.ILI9341_SPI_StopDraw:00000038 $d
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:226    .text.ILI9341_Write_Command:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:233    .text.ILI9341_Write_Command:00000000 ILI9341_Write_Command
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:294    .text.ILI9341_Write_Command:00000044 $d
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:299    .text.ILI9341_Write_Data:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:306    .text.ILI9341_Write_Data:00000000 ILI9341_Write_Data
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:359    .text.ILI9341_Enable:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:366    .text.ILI9341_Enable:00000000 ILI9341_Enable
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:382    .text.ILI9341_Enable:0000000c $d
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:387    .text.ILI9341_Reset:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:394    .text.ILI9341_Reset:00000000 ILI9341_Reset
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:421    .text.ILI9341_Reset:0000001c $d
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:426    .text.ILI9341_Init:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:433    .text.ILI9341_Init:00000000 ILI9341_Init
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:907    .text.ILI9341_Draw_Pixel:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:914    .text.ILI9341_Draw_Pixel:00000000 ILI9341_Draw_Pixel
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:1290   .text.ILI9341_Draw_Pixel:00000254 $d
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:1295   .text.ILI9341_Draw_Graph:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:1302   .text.ILI9341_Draw_Graph:00000000 ILI9341_Draw_Graph
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:1830   .text.ILI9341_Draw_Graph:0000030c $d
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:1833   .text.ILI9341_Draw_Graph:00000310 $t
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:2384   .text.ILI9341_Draw_Graph:000006b4 $d
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:2387   .text.ILI9341_Draw_Graph:000006b8 $t
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:2697   .text.ILI9341_Draw_Square:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:2704   .text.ILI9341_Draw_Square:00000000 ILI9341_Draw_Square
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:3140   .text.ILI9341_Draw_Square:00000290 $d
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:3145   .text.ILI9341_Draw_Char:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:3152   .text.ILI9341_Draw_Char:00000000 ILI9341_Draw_Char
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:3393   .text.ILI9341_Draw_Char:00000160 $d
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:3398   .text.ILI9341_Draw_Main_Interface:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:3405   .text.ILI9341_Draw_Main_Interface:00000000 ILI9341_Draw_Main_Interface
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:3665   .rodata.font:00000000 $d
C:\Users\crist\AppData\Local\Temp\ccX7Nb7r.s:3669   .rodata.font:00000000 font

UNDEFINED SYMBOLS
HAL_GetTick
HAL_Delay
