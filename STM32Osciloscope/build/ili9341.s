ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 1


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
  11              		.file	"ili9341.c"
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
  24              		.file 1 "Src/ili9341.c"
   1:Src/ili9341.c **** #include "main.h"
   2:Src/ili9341.c **** #include "stm32f1xx_hal.h"
   3:Src/ili9341.c **** #include "ili9341.h"
   4:Src/ili9341.c **** 
   5:Src/ili9341.c **** //defined in main.c
   6:Src/ili9341.c **** int LCD_HEIGHT;
   7:Src/ili9341.c **** int LCD_WIDTH;
   8:Src/ili9341.c **** 
   9:Src/ili9341.c **** static __attribute__((noinline)) HAL_StatusTypeDef ILI9341_SPI_Error(SPI_HandleTypeDef* hspi_handle
  10:Src/ili9341.c **** {
  25              		.loc 1 10 0
  26              		.cfi_startproc
  27              		@ args = 0, pretend = 0, frame = 0
  28              		@ frame_needed = 0, uses_anonymous_args = 0
  29              		@ link register save eliminated.
  30              	.LVL0:
  11:Src/ili9341.c **** 	hspi_handle->State = HAL_SPI_STATE_READY;
  31              		.loc 1 11 0
  32 0000 0123     		movs	r3, #1
  33 0002 80F85130 		strb	r3, [r0, #81]
  12:Src/ili9341.c **** 	__HAL_UNLOCK(hspi_handle);
  34              		.loc 1 12 0
  35 0006 0023     		movs	r3, #0
  36 0008 80F85030 		strb	r3, [r0, #80]
  13:Src/ili9341.c **** 	LCD_CS_PORT->BSRR = LCD_CS_PIN;
  37              		.loc 1 13 0
  38 000c 03F18043 		add	r3, r3, #1073741824
  39 0010 03F58433 		add	r3, r3, #67584
  40 0014 4FF40042 		mov	r2, #32768
  41 0018 1A61     		str	r2, [r3, #16]
  14:Src/ili9341.c **** 	return errorcode;
  15:Src/ili9341.c **** }
  42              		.loc 1 15 0
  43 001a 0846     		mov	r0, r1
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 2


  44              	.LVL1:
  45 001c 7047     		bx	lr
  46              		.cfi_endproc
  47              	.LFE66:
  49              		.section	.text.ILI9341_Write_Command,"ax",%progbits
  50              		.align	1
  51              		.global	ILI9341_Write_Command
  52              		.syntax unified
  53              		.thumb
  54              		.thumb_func
  55              		.fpu softvfp
  57              	ILI9341_Write_Command:
  58              	.LFB67:
  16:Src/ili9341.c **** /* Send command (char) to LCD */
  17:Src/ili9341.c **** HAL_StatusTypeDef ILI9341_Write_Command(SPI_HandleTypeDef* hspi_handle, uint8_t Command)
  18:Src/ili9341.c **** {
  59              		.loc 1 18 0
  60              		.cfi_startproc
  61              		@ args = 0, pretend = 0, frame = 0
  62              		@ frame_needed = 0, uses_anonymous_args = 0
  63              	.LVL2:
  64 0000 70B5     		push	{r4, r5, r6, lr}
  65              	.LCFI0:
  66              		.cfi_def_cfa_offset 16
  67              		.cfi_offset 4, -16
  68              		.cfi_offset 5, -12
  69              		.cfi_offset 6, -8
  70              		.cfi_offset 14, -4
  71 0002 0446     		mov	r4, r0
  72 0004 0E46     		mov	r6, r1
  19:Src/ili9341.c **** 	const uint32_t tickstart_local = HAL_GetTick();
  73              		.loc 1 19 0
  74 0006 FFF7FEFF 		bl	HAL_GetTick
  75              	.LVL3:
  76 000a 0546     		mov	r5, r0
  77              	.LVL4:
  20:Src/ili9341.c **** 	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
  78              		.loc 1 20 0
  79 000c 0D4B     		ldr	r3, .L8
  80 000e 4FF08052 		mov	r2, #268435456
  81 0012 1A61     		str	r2, [r3, #16]
  21:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)Command;
  82              		.loc 1 21 0
  83 0014 2368     		ldr	r3, [r4]
  84 0016 1E73     		strb	r6, [r3, #12]
  85              	.LVL5:
  86              	.L3:
  22:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
  87              		.loc 1 22 0
  88 0018 2368     		ldr	r3, [r4]
  89 001a 9B68     		ldr	r3, [r3, #8]
  90 001c 13F0020F 		tst	r3, #2
  91 0020 09D1     		bne	.L7
  23:Src/ili9341.c **** 	{
  24:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  2)
  92              		.loc 1 24 0
  93 0022 FFF7FEFF 		bl	HAL_GetTick
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 3


  94              	.LVL6:
  95 0026 401B     		subs	r0, r0, r5
  96 0028 0128     		cmp	r0, #1
  97 002a F5D9     		bls	.L3
  25:Src/ili9341.c **** 		{
  26:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
  98              		.loc 1 26 0
  99 002c 0321     		movs	r1, #3
 100 002e 2046     		mov	r0, r4
 101 0030 FFF7FEFF 		bl	ILI9341_SPI_Error
 102              	.LVL7:
 103 0034 04E0     		b	.L4
 104              	.L7:
  27:Src/ili9341.c **** 		}
  28:Src/ili9341.c **** 	}
  29:Src/ili9341.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 105              		.loc 1 29 0
 106 0036 034B     		ldr	r3, .L8
 107 0038 4FF48052 		mov	r2, #4096
 108 003c 1A61     		str	r2, [r3, #16]
  30:Src/ili9341.c **** 	return HAL_OK;
 109              		.loc 1 30 0
 110 003e 0020     		movs	r0, #0
 111              	.L4:
  31:Src/ili9341.c **** }
 112              		.loc 1 31 0
 113 0040 70BD     		pop	{r4, r5, r6, pc}
 114              	.LVL8:
 115              	.L9:
 116 0042 00BF     		.align	2
 117              	.L8:
 118 0044 00080140 		.word	1073809408
 119              		.cfi_endproc
 120              	.LFE67:
 122              		.section	.text.ILI9341_Write_Data,"ax",%progbits
 123              		.align	1
 124              		.global	ILI9341_Write_Data
 125              		.syntax unified
 126              		.thumb
 127              		.thumb_func
 128              		.fpu softvfp
 130              	ILI9341_Write_Data:
 131              	.LFB68:
  32:Src/ili9341.c **** 
  33:Src/ili9341.c **** /* Send Data (char) to LCD */
  34:Src/ili9341.c **** HAL_StatusTypeDef ILI9341_Write_Data(SPI_HandleTypeDef* hspi_handle, uint8_t Data)
  35:Src/ili9341.c **** {
 132              		.loc 1 35 0
 133              		.cfi_startproc
 134              		@ args = 0, pretend = 0, frame = 0
 135              		@ frame_needed = 0, uses_anonymous_args = 0
 136              	.LVL9:
 137 0000 70B5     		push	{r4, r5, r6, lr}
 138              	.LCFI1:
 139              		.cfi_def_cfa_offset 16
 140              		.cfi_offset 4, -16
 141              		.cfi_offset 5, -12
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 4


 142              		.cfi_offset 6, -8
 143              		.cfi_offset 14, -4
 144 0002 0446     		mov	r4, r0
 145 0004 0E46     		mov	r6, r1
  36:Src/ili9341.c **** 	const uint32_t tickstart_local = HAL_GetTick();
 146              		.loc 1 36 0
 147 0006 FFF7FEFF 		bl	HAL_GetTick
 148              	.LVL10:
 149 000a 0546     		mov	r5, r0
 150              	.LVL11:
  37:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)Data;
 151              		.loc 1 37 0
 152 000c 2368     		ldr	r3, [r4]
 153 000e 1E73     		strb	r6, [r3, #12]
 154              	.LVL12:
 155              	.L11:
  38:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 156              		.loc 1 38 0
 157 0010 2368     		ldr	r3, [r4]
 158 0012 9B68     		ldr	r3, [r3, #8]
 159 0014 13F0020F 		tst	r3, #2
 160 0018 09D1     		bne	.L15
  39:Src/ili9341.c **** 	{
  40:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  2)
 161              		.loc 1 40 0
 162 001a FFF7FEFF 		bl	HAL_GetTick
 163              	.LVL13:
 164 001e 401B     		subs	r0, r0, r5
 165 0020 0128     		cmp	r0, #1
 166 0022 F5D9     		bls	.L11
  41:Src/ili9341.c **** 		{
  42:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 167              		.loc 1 42 0
 168 0024 0321     		movs	r1, #3
 169 0026 2046     		mov	r0, r4
 170 0028 FFF7FEFF 		bl	ILI9341_SPI_Error
 171              	.LVL14:
 172 002c 00E0     		b	.L12
 173              	.L15:
  43:Src/ili9341.c **** 		}
  44:Src/ili9341.c **** 	}
  45:Src/ili9341.c **** 	return HAL_OK;
 174              		.loc 1 45 0
 175 002e 0020     		movs	r0, #0
 176              	.L12:
  46:Src/ili9341.c **** }
 177              		.loc 1 46 0
 178 0030 70BD     		pop	{r4, r5, r6, pc}
 179              		.cfi_endproc
 180              	.LFE68:
 182              		.section	.text.ILI9341_Enable,"ax",%progbits
 183              		.align	1
 184              		.global	ILI9341_Enable
 185              		.syntax unified
 186              		.thumb
 187              		.thumb_func
 188              		.fpu softvfp
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 5


 190              	ILI9341_Enable:
 191              	.LFB69:
  47:Src/ili9341.c **** 
  48:Src/ili9341.c **** void ILI9341_Enable(void)
  49:Src/ili9341.c **** {
 192              		.loc 1 49 0
 193              		.cfi_startproc
 194              		@ args = 0, pretend = 0, frame = 0
 195              		@ frame_needed = 0, uses_anonymous_args = 0
 196              		@ link register save eliminated.
  50:Src/ili9341.c **** 	LCD_RST_PORT->BSRR = LCD_RST_PIN;
 197              		.loc 1 50 0
 198 0000 024B     		ldr	r3, .L17
 199 0002 4FF40062 		mov	r2, #2048
 200 0006 1A61     		str	r2, [r3, #16]
  51:Src/ili9341.c **** }
 201              		.loc 1 51 0
 202 0008 7047     		bx	lr
 203              	.L18:
 204 000a 00BF     		.align	2
 205              	.L17:
 206 000c 00080140 		.word	1073809408
 207              		.cfi_endproc
 208              	.LFE69:
 210              		.section	.text.ILI9341_Reset,"ax",%progbits
 211              		.align	1
 212              		.global	ILI9341_Reset
 213              		.syntax unified
 214              		.thumb
 215              		.thumb_func
 216              		.fpu softvfp
 218              	ILI9341_Reset:
 219              	.LFB70:
  52:Src/ili9341.c **** 
  53:Src/ili9341.c **** void ILI9341_Reset(void)
  54:Src/ili9341.c **** {
 220              		.loc 1 54 0
 221              		.cfi_startproc
 222              		@ args = 0, pretend = 0, frame = 0
 223              		@ frame_needed = 0, uses_anonymous_args = 0
 224 0000 10B5     		push	{r4, lr}
 225              	.LCFI2:
 226              		.cfi_def_cfa_offset 8
 227              		.cfi_offset 4, -8
 228              		.cfi_offset 14, -4
  55:Src/ili9341.c **** 	LCD_RST_PORT->BSRR =(uint32_t)LCD_RST_PIN<<16U;
 229              		.loc 1 55 0
 230 0002 064C     		ldr	r4, .L21
 231 0004 4FF00063 		mov	r3, #134217728
 232 0008 2361     		str	r3, [r4, #16]
  56:Src/ili9341.c **** 	HAL_Delay(400);
 233              		.loc 1 56 0
 234 000a 4FF4C870 		mov	r0, #400
 235 000e FFF7FEFF 		bl	HAL_Delay
 236              	.LVL15:
  57:Src/ili9341.c **** 	LCD_RST_PORT->BSRR = LCD_RST_PIN;
 237              		.loc 1 57 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 6


 238 0012 4FF40063 		mov	r3, #2048
 239 0016 2361     		str	r3, [r4, #16]
  58:Src/ili9341.c **** }
 240              		.loc 1 58 0
 241 0018 10BD     		pop	{r4, pc}
 242              	.L22:
 243 001a 00BF     		.align	2
 244              	.L21:
 245 001c 00080140 		.word	1073809408
 246              		.cfi_endproc
 247              	.LFE70:
 249              		.section	.text.ILI9341_SPI_BeginDraw,"ax",%progbits
 250              		.align	1
 251              		.global	ILI9341_SPI_BeginDraw
 252              		.syntax unified
 253              		.thumb
 254              		.thumb_func
 255              		.fpu softvfp
 257              	ILI9341_SPI_BeginDraw:
 258              	.LFB72:
  59:Src/ili9341.c **** 
  60:Src/ili9341.c **** /*Initialize LCD display*/
  61:Src/ili9341.c **** HAL_StatusTypeDef ILI9341_Init(SPI_HandleTypeDef* hspi_handle)
  62:Src/ili9341.c **** {
  63:Src/ili9341.c **** 
  64:Src/ili9341.c **** 	ILI9341_Enable();
  65:Src/ili9341.c **** 
  66:Src/ili9341.c **** 	ILI9341_Reset();
  67:Src/ili9341.c **** 
  68:Src/ili9341.c **** 	//SOFTWARE RESET
  69:Src/ili9341.c **** 	if(ILI9341_SPI_BeginDraw(hspi_handle) != HAL_OK)
  70:Src/ili9341.c **** 		return HAL_BUSY;
  71:Src/ili9341.c **** 
  72:Src/ili9341.c **** 	ILI9341_Write_Command(hspi_handle, 0x01);
  73:Src/ili9341.c **** 	HAL_Delay(1000);
  74:Src/ili9341.c **** 
  75:Src/ili9341.c **** 	//POWER CONTROL A
  76:Src/ili9341.c **** 	ILI9341_Write_Command(hspi_handle, 0xCB);
  77:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x39);
  78:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x2C);
  79:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
  80:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x34);
  81:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x02);
  82:Src/ili9341.c **** 
  83:Src/ili9341.c **** 	//POWER CONTROL B
  84:Src/ili9341.c **** 	ILI9341_Write_Command(hspi_handle, 0xCF);
  85:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
  86:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0xC1);
  87:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x30);
  88:Src/ili9341.c **** 
  89:Src/ili9341.c **** 	//DRIVER TIMING CONTROL A
  90:Src/ili9341.c **** 	ILI9341_Write_Command(hspi_handle, 0xE8);
  91:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x85);
  92:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
  93:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x78);
  94:Src/ili9341.c **** 
  95:Src/ili9341.c **** 	//DRIVER TIMING CONTROL B
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 7


  96:Src/ili9341.c **** 	ILI9341_Write_Command(hspi_handle, 0xEA);
  97:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
  98:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
  99:Src/ili9341.c **** 
 100:Src/ili9341.c **** 	//POWER ON SEQUENCE CONTROL
 101:Src/ili9341.c **** 	ILI9341_Write_Command(hspi_handle, 0xED);
 102:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x64);
 103:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x03);
 104:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x12);
 105:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x81);
 106:Src/ili9341.c **** 
 107:Src/ili9341.c **** 	//PUMP RATIO CONTROL
 108:Src/ili9341.c **** 	ILI9341_Write_Command(hspi_handle, 0xF7);
 109:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x20);
 110:Src/ili9341.c **** 
 111:Src/ili9341.c **** 	//POWER CONTROL,VRH[5:0]
 112:Src/ili9341.c **** 	ILI9341_Write_Command(hspi_handle, 0xC0);
 113:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x23);
 114:Src/ili9341.c **** 
 115:Src/ili9341.c **** 	//POWER CONTROL,SAP[2:0];BT[3:0]
 116:Src/ili9341.c **** 	ILI9341_Write_Command(hspi_handle, 0xC1);
 117:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x10);
 118:Src/ili9341.c **** 
 119:Src/ili9341.c **** 	//VCM CONTROL
 120:Src/ili9341.c **** 	ILI9341_Write_Command(hspi_handle, 0xC5);
 121:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x3E);
 122:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x28);
 123:Src/ili9341.c **** 
 124:Src/ili9341.c **** 	//VCM CONTROL 2
 125:Src/ili9341.c **** 	ILI9341_Write_Command(hspi_handle, 0xC7);
 126:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x86);
 127:Src/ili9341.c **** 
 128:Src/ili9341.c **** 	//MEMORY ACCESS CONTROL
 129:Src/ili9341.c **** 	ILI9341_Write_Command(hspi_handle, 0x36);
 130:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x48);
 131:Src/ili9341.c **** 
 132:Src/ili9341.c **** 	//PIXEL FORMAT
 133:Src/ili9341.c **** 	ILI9341_Write_Command(hspi_handle, 0x3A);
 134:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x55);
 135:Src/ili9341.c **** 
 136:Src/ili9341.c **** 	//FRAME RATIO CONTROL, STANDARD RGB COLOR
 137:Src/ili9341.c **** 	ILI9341_Write_Command(hspi_handle, 0xB1);
 138:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
 139:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x18);
 140:Src/ili9341.c **** 
 141:Src/ili9341.c **** 	//DISPLAY FUNCTION CONTROL
 142:Src/ili9341.c **** 	ILI9341_Write_Command(hspi_handle, 0xB6);
 143:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x08);
 144:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x82);
 145:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x27);
 146:Src/ili9341.c **** 
 147:Src/ili9341.c **** 	//3GAMMA FUNCTION DISABLE
 148:Src/ili9341.c **** 	ILI9341_Write_Command(hspi_handle, 0xF2);
 149:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
 150:Src/ili9341.c **** 
 151:Src/ili9341.c **** 	//GAMMA CURVE SELECTED
 152:Src/ili9341.c **** 	ILI9341_Write_Command(hspi_handle, 0x26);
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 8


 153:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x01);
 154:Src/ili9341.c **** 
 155:Src/ili9341.c **** 	//POSITIVE GAMMA CORRECTION
 156:Src/ili9341.c **** 	ILI9341_Write_Command(hspi_handle, 0xE0);
 157:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x0F);
 158:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x31);
 159:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x2B);
 160:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x0C);
 161:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x0E);
 162:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x08);
 163:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x4E);
 164:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0xF1);
 165:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x37);
 166:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x07);
 167:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x10);
 168:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x03);
 169:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x0E);
 170:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x09);
 171:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
 172:Src/ili9341.c **** 
 173:Src/ili9341.c **** 	//NEGATIVE GAMMA CORRECTION
 174:Src/ili9341.c **** 	ILI9341_Write_Command(hspi_handle, 0xE1);
 175:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
 176:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x0E);
 177:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x14);
 178:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x03);
 179:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x11);
 180:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x07);
 181:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x31);
 182:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0xC1);
 183:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x48);
 184:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x08);
 185:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x0F);
 186:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x0C);
 187:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x31);
 188:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x36);
 189:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x0F);
 190:Src/ili9341.c **** 
 191:Src/ili9341.c **** 	//EXIT SLEEP
 192:Src/ili9341.c **** 	ILI9341_Write_Command(hspi_handle, 0x11);
 193:Src/ili9341.c **** 	HAL_Delay(120);
 194:Src/ili9341.c **** 
 195:Src/ili9341.c **** 	//TURN ON DISPLAY
 196:Src/ili9341.c **** 	ILI9341_Write_Command(hspi_handle, 0x29);
 197:Src/ili9341.c **** 
 198:Src/ili9341.c **** 	//STARTING ROTATION
 199:Src/ili9341.c **** 	ILI9341_Write_Command(hspi_handle, 0x36);
 200:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, SCREEN_HORIZONTAL_1);
 201:Src/ili9341.c **** 
 202:Src/ili9341.c **** 	return ILI9341_SPI_StopDraw(hspi_handle);
 203:Src/ili9341.c **** }
 204:Src/ili9341.c **** 
 205:Src/ili9341.c **** 
 206:Src/ili9341.c **** HAL_StatusTypeDef ILI9341_SPI_BeginDraw(SPI_HandleTypeDef* hspi_handle)
 207:Src/ili9341.c **** {
 259              		.loc 1 207 0
 260              		.cfi_startproc
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 9


 261              		@ args = 0, pretend = 0, frame = 0
 262              		@ frame_needed = 0, uses_anonymous_args = 0
 263              	.LVL16:
 264 0000 08B5     		push	{r3, lr}
 265              	.LCFI3:
 266              		.cfi_def_cfa_offset 8
 267              		.cfi_offset 3, -8
 268              		.cfi_offset 14, -4
 208:Src/ili9341.c **** 	/*chip select ili9341*/
 209:Src/ili9341.c **** 	LCD_CS_PORT->BSRR=(uint32_t)LCD_CS_PIN << 16U;
 269              		.loc 1 209 0
 270 0002 1B4B     		ldr	r3, .L32
 271 0004 4FF00042 		mov	r2, #-2147483648
 272 0008 1A61     		str	r2, [r3, #16]
 210:Src/ili9341.c **** 
 211:Src/ili9341.c **** 	/* Check Direction parameter */
 212:Src/ili9341.c **** 	assert_param(IS_SPI_DIRECTION_2LINES_OR_1LINE(hspi_handle->Init.Direction));
 213:Src/ili9341.c **** 
 214:Src/ili9341.c **** 	/* Process Locked */
 215:Src/ili9341.c **** 	__HAL_LOCK(hspi_handle);
 273              		.loc 1 215 0
 274 000a 90F85030 		ldrb	r3, [r0, #80]	@ zero_extendqisi2
 275 000e 012B     		cmp	r3, #1
 276 0010 2AD0     		beq	.L27
 277              		.loc 1 215 0 is_stmt 0 discriminator 2
 278 0012 0123     		movs	r3, #1
 279 0014 80F85030 		strb	r3, [r0, #80]
 216:Src/ili9341.c **** 
 217:Src/ili9341.c **** 	if(hspi_handle->State != HAL_SPI_STATE_READY)
 280              		.loc 1 217 0 is_stmt 1 discriminator 2
 281 0018 90F85130 		ldrb	r3, [r0, #81]	@ zero_extendqisi2
 282 001c DBB2     		uxtb	r3, r3
 283 001e 012B     		cmp	r3, #1
 284 0020 18D1     		bne	.L30
 218:Src/ili9341.c **** 	{
 219:Src/ili9341.c **** 		return ILI9341_SPI_Error(hspi_handle, HAL_BUSY);
 220:Src/ili9341.c **** 	}
 221:Src/ili9341.c **** 
 222:Src/ili9341.c **** 	/* Set the transaction information */
 223:Src/ili9341.c **** 	hspi_handle->State       = HAL_SPI_STATE_BUSY_TX;
 285              		.loc 1 223 0
 286 0022 0323     		movs	r3, #3
 287 0024 80F85130 		strb	r3, [r0, #81]
 224:Src/ili9341.c **** 	hspi_handle->ErrorCode   = HAL_SPI_ERROR_NONE;
 288              		.loc 1 224 0
 289 0028 0023     		movs	r3, #0
 290 002a 4365     		str	r3, [r0, #84]
 225:Src/ili9341.c **** 
 226:Src/ili9341.c **** 	/*Init field not used in handle to zero */
 227:Src/ili9341.c **** 	hspi_handle->pRxBuffPtr  = (uint8_t *)NULL;
 291              		.loc 1 227 0
 292 002c 8363     		str	r3, [r0, #56]
 228:Src/ili9341.c **** 	hspi_handle->RxXferSize  = 0U;
 293              		.loc 1 228 0
 294 002e 8387     		strh	r3, [r0, #60]	@ movhi
 229:Src/ili9341.c **** 	hspi_handle->RxXferCount = 0U;
 295              		.loc 1 229 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 10


 296 0030 C387     		strh	r3, [r0, #62]	@ movhi
 230:Src/ili9341.c **** 	hspi_handle->TxISR       = NULL;
 297              		.loc 1 230 0
 298 0032 4364     		str	r3, [r0, #68]
 231:Src/ili9341.c **** 	hspi_handle->RxISR       = NULL;
 299              		.loc 1 231 0
 300 0034 0364     		str	r3, [r0, #64]
 232:Src/ili9341.c **** 
 233:Src/ili9341.c **** 	/* Configure communication direction : 1Line */
 234:Src/ili9341.c **** 	if(hspi_handle->Init.Direction == SPI_DIRECTION_1LINE)
 301              		.loc 1 234 0
 302 0036 8368     		ldr	r3, [r0, #8]
 303 0038 B3F5004F 		cmp	r3, #32768
 304 003c 0ED0     		beq	.L31
 305              	.L26:
 235:Src/ili9341.c **** 	{
 236:Src/ili9341.c **** 		SPI_1LINE_TX(hspi_handle);
 237:Src/ili9341.c **** 	}
 238:Src/ili9341.c **** 
 239:Src/ili9341.c **** 	#if (USE_SPI_CRC != 0U)
 240:Src/ili9341.c **** 	/* Reset CRC Calculation */
 241:Src/ili9341.c **** 	if(hspi_handle->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
 242:Src/ili9341.c **** 	{
 243:Src/ili9341.c **** 		SPI_RESET_CRC(hspi_handle);
 244:Src/ili9341.c **** 	}
 245:Src/ili9341.c **** 	#endif /* USE_SPI_CRC */
 246:Src/ili9341.c **** 
 247:Src/ili9341.c **** 	/* Check if the SPI is already enabled */
 248:Src/ili9341.c **** 	if((hspi_handle->Instance->CR1 & SPI_CR1_SPE) != SPI_CR1_SPE)
 306              		.loc 1 248 0
 307 003e 0368     		ldr	r3, [r0]
 308 0040 1A68     		ldr	r2, [r3]
 309 0042 12F0400F 		tst	r2, #64
 310 0046 11D1     		bne	.L28
 249:Src/ili9341.c **** 	{
 250:Src/ili9341.c **** 		/* Enable SPI peripheral */
 251:Src/ili9341.c **** 		__HAL_SPI_ENABLE(hspi_handle);
 311              		.loc 1 251 0
 312 0048 1A68     		ldr	r2, [r3]
 313 004a 42F04002 		orr	r2, r2, #64
 314 004e 1A60     		str	r2, [r3]
 252:Src/ili9341.c **** 	}
 253:Src/ili9341.c **** 	return HAL_OK;
 315              		.loc 1 253 0
 316 0050 0020     		movs	r0, #0
 317              	.LVL17:
 318 0052 02E0     		b	.L24
 319              	.LVL18:
 320              	.L30:
 219:Src/ili9341.c **** 	}
 321              		.loc 1 219 0
 322 0054 0221     		movs	r1, #2
 323 0056 FFF7FEFF 		bl	ILI9341_SPI_Error
 324              	.LVL19:
 325              	.L24:
 254:Src/ili9341.c **** }
 326              		.loc 1 254 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 11


 327 005a 08BD     		pop	{r3, pc}
 328              	.LVL20:
 329              	.L31:
 236:Src/ili9341.c **** 	}
 330              		.loc 1 236 0
 331 005c 0268     		ldr	r2, [r0]
 332 005e 1368     		ldr	r3, [r2]
 333 0060 43F48043 		orr	r3, r3, #16384
 334 0064 1360     		str	r3, [r2]
 335 0066 EAE7     		b	.L26
 336              	.L27:
 215:Src/ili9341.c **** 
 337              		.loc 1 215 0
 338 0068 0220     		movs	r0, #2
 339              	.LVL21:
 340 006a F6E7     		b	.L24
 341              	.LVL22:
 342              	.L28:
 253:Src/ili9341.c **** }
 343              		.loc 1 253 0
 344 006c 0020     		movs	r0, #0
 345              	.LVL23:
 346 006e F4E7     		b	.L24
 347              	.L33:
 348              		.align	2
 349              	.L32:
 350 0070 00080140 		.word	1073809408
 351              		.cfi_endproc
 352              	.LFE72:
 354              		.section	.text.ILI9341_SPI_StopDraw,"ax",%progbits
 355              		.align	1
 356              		.global	ILI9341_SPI_StopDraw
 357              		.syntax unified
 358              		.thumb
 359              		.thumb_func
 360              		.fpu softvfp
 362              	ILI9341_SPI_StopDraw:
 363              	.LFB73:
 255:Src/ili9341.c **** 
 256:Src/ili9341.c **** HAL_StatusTypeDef ILI9341_SPI_StopDraw(SPI_HandleTypeDef* hspi_handle)
 257:Src/ili9341.c **** {
 364              		.loc 1 257 0
 365              		.cfi_startproc
 366              		@ args = 0, pretend = 0, frame = 8
 367              		@ frame_needed = 0, uses_anonymous_args = 0
 368              	.LVL24:
 369 0000 00B5     		push	{lr}
 370              	.LCFI4:
 371              		.cfi_def_cfa_offset 4
 372              		.cfi_offset 14, -4
 373 0002 83B0     		sub	sp, sp, #12
 374              	.LCFI5:
 375              		.cfi_def_cfa_offset 16
 258:Src/ili9341.c **** 	/* Clear overrun flag in 2 Lines communication mode because received is not read */
 259:Src/ili9341.c **** 	if(hspi_handle->Init.Direction == SPI_DIRECTION_2LINES)
 376              		.loc 1 259 0
 377 0004 8368     		ldr	r3, [r0, #8]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 12


 378 0006 33B9     		cbnz	r3, .L35
 379              	.LBB2:
 260:Src/ili9341.c **** 	{
 261:Src/ili9341.c **** 		__HAL_SPI_CLEAR_OVRFLAG(hspi_handle);
 380              		.loc 1 261 0
 381 0008 0193     		str	r3, [sp, #4]
 382 000a 0368     		ldr	r3, [r0]
 383 000c DA68     		ldr	r2, [r3, #12]
 384 000e 0192     		str	r2, [sp, #4]
 385 0010 9B68     		ldr	r3, [r3, #8]
 386 0012 0193     		str	r3, [sp, #4]
 387 0014 019B     		ldr	r3, [sp, #4]
 388              	.L35:
 389              	.LBE2:
 262:Src/ili9341.c **** 	}
 263:Src/ili9341.c **** 	#if (USE_SPI_CRC != 0U)
 264:Src/ili9341.c **** 	/* Enable CRC Transmission */
 265:Src/ili9341.c **** 	if(hspi_handle->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
 266:Src/ili9341.c **** 	{
 267:Src/ili9341.c **** 		SET_BIT(hspi_handle->Instance->CR1, SPI_CR1_CRCNEXT);
 268:Src/ili9341.c **** 	}
 269:Src/ili9341.c **** 	#endif /* USE_SPI_CRC */
 270:Src/ili9341.c **** 
 271:Src/ili9341.c **** 	if(hspi_handle->ErrorCode != HAL_SPI_ERROR_NONE)
 390              		.loc 1 271 0
 391 0016 436D     		ldr	r3, [r0, #84]
 392 0018 4BB9     		cbnz	r3, .L39
 272:Src/ili9341.c **** 	{
 273:Src/ili9341.c **** 		return ILI9341_SPI_Error(hspi_handle, HAL_ERROR);
 274:Src/ili9341.c **** 	}
 275:Src/ili9341.c **** 	LCD_CS_PORT->BSRR=(uint32_t)LCD_CS_PIN << 16U;
 393              		.loc 1 275 0
 394 001a 074B     		ldr	r3, .L40
 395 001c 4FF00042 		mov	r2, #-2147483648
 396 0020 1A61     		str	r2, [r3, #16]
 276:Src/ili9341.c **** 	return ILI9341_SPI_Error(hspi_handle, HAL_OK);
 397              		.loc 1 276 0
 398 0022 0021     		movs	r1, #0
 399 0024 FFF7FEFF 		bl	ILI9341_SPI_Error
 400              	.LVL25:
 401              	.L37:
 277:Src/ili9341.c **** }
 402              		.loc 1 277 0
 403 0028 03B0     		add	sp, sp, #12
 404              	.LCFI6:
 405              		.cfi_remember_state
 406              		.cfi_def_cfa_offset 4
 407              		@ sp needed
 408 002a 5DF804FB 		ldr	pc, [sp], #4
 409              	.LVL26:
 410              	.L39:
 411              	.LCFI7:
 412              		.cfi_restore_state
 273:Src/ili9341.c **** 	}
 413              		.loc 1 273 0
 414 002e 0121     		movs	r1, #1
 415 0030 FFF7FEFF 		bl	ILI9341_SPI_Error
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 13


 416              	.LVL27:
 417 0034 F8E7     		b	.L37
 418              	.L41:
 419 0036 00BF     		.align	2
 420              	.L40:
 421 0038 00080140 		.word	1073809408
 422              		.cfi_endproc
 423              	.LFE73:
 425              		.section	.text.ILI9341_Init,"ax",%progbits
 426              		.align	1
 427              		.global	ILI9341_Init
 428              		.syntax unified
 429              		.thumb
 430              		.thumb_func
 431              		.fpu softvfp
 433              	ILI9341_Init:
 434              	.LFB71:
  62:Src/ili9341.c **** 
 435              		.loc 1 62 0
 436              		.cfi_startproc
 437              		@ args = 0, pretend = 0, frame = 0
 438              		@ frame_needed = 0, uses_anonymous_args = 0
 439              	.LVL28:
 440 0000 10B5     		push	{r4, lr}
 441              	.LCFI8:
 442              		.cfi_def_cfa_offset 8
 443              		.cfi_offset 4, -8
 444              		.cfi_offset 14, -4
 445 0002 0446     		mov	r4, r0
  64:Src/ili9341.c **** 
 446              		.loc 1 64 0
 447 0004 FFF7FEFF 		bl	ILI9341_Enable
 448              	.LVL29:
  66:Src/ili9341.c **** 
 449              		.loc 1 66 0
 450 0008 FFF7FEFF 		bl	ILI9341_Reset
 451              	.LVL30:
  69:Src/ili9341.c **** 		return HAL_BUSY;
 452              		.loc 1 69 0
 453 000c 2046     		mov	r0, r4
 454 000e FFF7FEFF 		bl	ILI9341_SPI_BeginDraw
 455              	.LVL31:
 456 0012 0028     		cmp	r0, #0
 457 0014 40F05F81 		bne	.L44
  72:Src/ili9341.c **** 	HAL_Delay(1000);
 458              		.loc 1 72 0
 459 0018 0121     		movs	r1, #1
 460 001a 2046     		mov	r0, r4
 461 001c FFF7FEFF 		bl	ILI9341_Write_Command
 462              	.LVL32:
  73:Src/ili9341.c **** 
 463              		.loc 1 73 0
 464 0020 4FF47A70 		mov	r0, #1000
 465 0024 FFF7FEFF 		bl	HAL_Delay
 466              	.LVL33:
  76:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x39);
 467              		.loc 1 76 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 14


 468 0028 CB21     		movs	r1, #203
 469 002a 2046     		mov	r0, r4
 470 002c FFF7FEFF 		bl	ILI9341_Write_Command
 471              	.LVL34:
  77:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x2C);
 472              		.loc 1 77 0
 473 0030 3921     		movs	r1, #57
 474 0032 2046     		mov	r0, r4
 475 0034 FFF7FEFF 		bl	ILI9341_Write_Data
 476              	.LVL35:
  78:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
 477              		.loc 1 78 0
 478 0038 2C21     		movs	r1, #44
 479 003a 2046     		mov	r0, r4
 480 003c FFF7FEFF 		bl	ILI9341_Write_Data
 481              	.LVL36:
  79:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x34);
 482              		.loc 1 79 0
 483 0040 0021     		movs	r1, #0
 484 0042 2046     		mov	r0, r4
 485 0044 FFF7FEFF 		bl	ILI9341_Write_Data
 486              	.LVL37:
  80:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x02);
 487              		.loc 1 80 0
 488 0048 3421     		movs	r1, #52
 489 004a 2046     		mov	r0, r4
 490 004c FFF7FEFF 		bl	ILI9341_Write_Data
 491              	.LVL38:
  81:Src/ili9341.c **** 
 492              		.loc 1 81 0
 493 0050 0221     		movs	r1, #2
 494 0052 2046     		mov	r0, r4
 495 0054 FFF7FEFF 		bl	ILI9341_Write_Data
 496              	.LVL39:
  84:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
 497              		.loc 1 84 0
 498 0058 CF21     		movs	r1, #207
 499 005a 2046     		mov	r0, r4
 500 005c FFF7FEFF 		bl	ILI9341_Write_Command
 501              	.LVL40:
  85:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0xC1);
 502              		.loc 1 85 0
 503 0060 0021     		movs	r1, #0
 504 0062 2046     		mov	r0, r4
 505 0064 FFF7FEFF 		bl	ILI9341_Write_Data
 506              	.LVL41:
  86:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x30);
 507              		.loc 1 86 0
 508 0068 C121     		movs	r1, #193
 509 006a 2046     		mov	r0, r4
 510 006c FFF7FEFF 		bl	ILI9341_Write_Data
 511              	.LVL42:
  87:Src/ili9341.c **** 
 512              		.loc 1 87 0
 513 0070 3021     		movs	r1, #48
 514 0072 2046     		mov	r0, r4
 515 0074 FFF7FEFF 		bl	ILI9341_Write_Data
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 15


 516              	.LVL43:
  90:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x85);
 517              		.loc 1 90 0
 518 0078 E821     		movs	r1, #232
 519 007a 2046     		mov	r0, r4
 520 007c FFF7FEFF 		bl	ILI9341_Write_Command
 521              	.LVL44:
  91:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
 522              		.loc 1 91 0
 523 0080 8521     		movs	r1, #133
 524 0082 2046     		mov	r0, r4
 525 0084 FFF7FEFF 		bl	ILI9341_Write_Data
 526              	.LVL45:
  92:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x78);
 527              		.loc 1 92 0
 528 0088 0021     		movs	r1, #0
 529 008a 2046     		mov	r0, r4
 530 008c FFF7FEFF 		bl	ILI9341_Write_Data
 531              	.LVL46:
  93:Src/ili9341.c **** 
 532              		.loc 1 93 0
 533 0090 7821     		movs	r1, #120
 534 0092 2046     		mov	r0, r4
 535 0094 FFF7FEFF 		bl	ILI9341_Write_Data
 536              	.LVL47:
  96:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
 537              		.loc 1 96 0
 538 0098 EA21     		movs	r1, #234
 539 009a 2046     		mov	r0, r4
 540 009c FFF7FEFF 		bl	ILI9341_Write_Command
 541              	.LVL48:
  97:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
 542              		.loc 1 97 0
 543 00a0 0021     		movs	r1, #0
 544 00a2 2046     		mov	r0, r4
 545 00a4 FFF7FEFF 		bl	ILI9341_Write_Data
 546              	.LVL49:
  98:Src/ili9341.c **** 
 547              		.loc 1 98 0
 548 00a8 0021     		movs	r1, #0
 549 00aa 2046     		mov	r0, r4
 550 00ac FFF7FEFF 		bl	ILI9341_Write_Data
 551              	.LVL50:
 101:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x64);
 552              		.loc 1 101 0
 553 00b0 ED21     		movs	r1, #237
 554 00b2 2046     		mov	r0, r4
 555 00b4 FFF7FEFF 		bl	ILI9341_Write_Command
 556              	.LVL51:
 102:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x03);
 557              		.loc 1 102 0
 558 00b8 6421     		movs	r1, #100
 559 00ba 2046     		mov	r0, r4
 560 00bc FFF7FEFF 		bl	ILI9341_Write_Data
 561              	.LVL52:
 103:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x12);
 562              		.loc 1 103 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 16


 563 00c0 0321     		movs	r1, #3
 564 00c2 2046     		mov	r0, r4
 565 00c4 FFF7FEFF 		bl	ILI9341_Write_Data
 566              	.LVL53:
 104:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x81);
 567              		.loc 1 104 0
 568 00c8 1221     		movs	r1, #18
 569 00ca 2046     		mov	r0, r4
 570 00cc FFF7FEFF 		bl	ILI9341_Write_Data
 571              	.LVL54:
 105:Src/ili9341.c **** 
 572              		.loc 1 105 0
 573 00d0 8121     		movs	r1, #129
 574 00d2 2046     		mov	r0, r4
 575 00d4 FFF7FEFF 		bl	ILI9341_Write_Data
 576              	.LVL55:
 108:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x20);
 577              		.loc 1 108 0
 578 00d8 F721     		movs	r1, #247
 579 00da 2046     		mov	r0, r4
 580 00dc FFF7FEFF 		bl	ILI9341_Write_Command
 581              	.LVL56:
 109:Src/ili9341.c **** 
 582              		.loc 1 109 0
 583 00e0 2021     		movs	r1, #32
 584 00e2 2046     		mov	r0, r4
 585 00e4 FFF7FEFF 		bl	ILI9341_Write_Data
 586              	.LVL57:
 112:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x23);
 587              		.loc 1 112 0
 588 00e8 C021     		movs	r1, #192
 589 00ea 2046     		mov	r0, r4
 590 00ec FFF7FEFF 		bl	ILI9341_Write_Command
 591              	.LVL58:
 113:Src/ili9341.c **** 
 592              		.loc 1 113 0
 593 00f0 2321     		movs	r1, #35
 594 00f2 2046     		mov	r0, r4
 595 00f4 FFF7FEFF 		bl	ILI9341_Write_Data
 596              	.LVL59:
 116:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x10);
 597              		.loc 1 116 0
 598 00f8 C121     		movs	r1, #193
 599 00fa 2046     		mov	r0, r4
 600 00fc FFF7FEFF 		bl	ILI9341_Write_Command
 601              	.LVL60:
 117:Src/ili9341.c **** 
 602              		.loc 1 117 0
 603 0100 1021     		movs	r1, #16
 604 0102 2046     		mov	r0, r4
 605 0104 FFF7FEFF 		bl	ILI9341_Write_Data
 606              	.LVL61:
 120:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x3E);
 607              		.loc 1 120 0
 608 0108 C521     		movs	r1, #197
 609 010a 2046     		mov	r0, r4
 610 010c FFF7FEFF 		bl	ILI9341_Write_Command
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 17


 611              	.LVL62:
 121:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x28);
 612              		.loc 1 121 0
 613 0110 3E21     		movs	r1, #62
 614 0112 2046     		mov	r0, r4
 615 0114 FFF7FEFF 		bl	ILI9341_Write_Data
 616              	.LVL63:
 122:Src/ili9341.c **** 
 617              		.loc 1 122 0
 618 0118 2821     		movs	r1, #40
 619 011a 2046     		mov	r0, r4
 620 011c FFF7FEFF 		bl	ILI9341_Write_Data
 621              	.LVL64:
 125:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x86);
 622              		.loc 1 125 0
 623 0120 C721     		movs	r1, #199
 624 0122 2046     		mov	r0, r4
 625 0124 FFF7FEFF 		bl	ILI9341_Write_Command
 626              	.LVL65:
 126:Src/ili9341.c **** 
 627              		.loc 1 126 0
 628 0128 8621     		movs	r1, #134
 629 012a 2046     		mov	r0, r4
 630 012c FFF7FEFF 		bl	ILI9341_Write_Data
 631              	.LVL66:
 129:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x48);
 632              		.loc 1 129 0
 633 0130 3621     		movs	r1, #54
 634 0132 2046     		mov	r0, r4
 635 0134 FFF7FEFF 		bl	ILI9341_Write_Command
 636              	.LVL67:
 130:Src/ili9341.c **** 
 637              		.loc 1 130 0
 638 0138 4821     		movs	r1, #72
 639 013a 2046     		mov	r0, r4
 640 013c FFF7FEFF 		bl	ILI9341_Write_Data
 641              	.LVL68:
 133:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x55);
 642              		.loc 1 133 0
 643 0140 3A21     		movs	r1, #58
 644 0142 2046     		mov	r0, r4
 645 0144 FFF7FEFF 		bl	ILI9341_Write_Command
 646              	.LVL69:
 134:Src/ili9341.c **** 
 647              		.loc 1 134 0
 648 0148 5521     		movs	r1, #85
 649 014a 2046     		mov	r0, r4
 650 014c FFF7FEFF 		bl	ILI9341_Write_Data
 651              	.LVL70:
 137:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
 652              		.loc 1 137 0
 653 0150 B121     		movs	r1, #177
 654 0152 2046     		mov	r0, r4
 655 0154 FFF7FEFF 		bl	ILI9341_Write_Command
 656              	.LVL71:
 138:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x18);
 657              		.loc 1 138 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 18


 658 0158 0021     		movs	r1, #0
 659 015a 2046     		mov	r0, r4
 660 015c FFF7FEFF 		bl	ILI9341_Write_Data
 661              	.LVL72:
 139:Src/ili9341.c **** 
 662              		.loc 1 139 0
 663 0160 1821     		movs	r1, #24
 664 0162 2046     		mov	r0, r4
 665 0164 FFF7FEFF 		bl	ILI9341_Write_Data
 666              	.LVL73:
 142:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x08);
 667              		.loc 1 142 0
 668 0168 B621     		movs	r1, #182
 669 016a 2046     		mov	r0, r4
 670 016c FFF7FEFF 		bl	ILI9341_Write_Command
 671              	.LVL74:
 143:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x82);
 672              		.loc 1 143 0
 673 0170 0821     		movs	r1, #8
 674 0172 2046     		mov	r0, r4
 675 0174 FFF7FEFF 		bl	ILI9341_Write_Data
 676              	.LVL75:
 144:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x27);
 677              		.loc 1 144 0
 678 0178 8221     		movs	r1, #130
 679 017a 2046     		mov	r0, r4
 680 017c FFF7FEFF 		bl	ILI9341_Write_Data
 681              	.LVL76:
 145:Src/ili9341.c **** 
 682              		.loc 1 145 0
 683 0180 2721     		movs	r1, #39
 684 0182 2046     		mov	r0, r4
 685 0184 FFF7FEFF 		bl	ILI9341_Write_Data
 686              	.LVL77:
 148:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
 687              		.loc 1 148 0
 688 0188 F221     		movs	r1, #242
 689 018a 2046     		mov	r0, r4
 690 018c FFF7FEFF 		bl	ILI9341_Write_Command
 691              	.LVL78:
 149:Src/ili9341.c **** 
 692              		.loc 1 149 0
 693 0190 0021     		movs	r1, #0
 694 0192 2046     		mov	r0, r4
 695 0194 FFF7FEFF 		bl	ILI9341_Write_Data
 696              	.LVL79:
 152:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x01);
 697              		.loc 1 152 0
 698 0198 2621     		movs	r1, #38
 699 019a 2046     		mov	r0, r4
 700 019c FFF7FEFF 		bl	ILI9341_Write_Command
 701              	.LVL80:
 153:Src/ili9341.c **** 
 702              		.loc 1 153 0
 703 01a0 0121     		movs	r1, #1
 704 01a2 2046     		mov	r0, r4
 705 01a4 FFF7FEFF 		bl	ILI9341_Write_Data
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 19


 706              	.LVL81:
 156:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x0F);
 707              		.loc 1 156 0
 708 01a8 E021     		movs	r1, #224
 709 01aa 2046     		mov	r0, r4
 710 01ac FFF7FEFF 		bl	ILI9341_Write_Command
 711              	.LVL82:
 157:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x31);
 712              		.loc 1 157 0
 713 01b0 0F21     		movs	r1, #15
 714 01b2 2046     		mov	r0, r4
 715 01b4 FFF7FEFF 		bl	ILI9341_Write_Data
 716              	.LVL83:
 158:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x2B);
 717              		.loc 1 158 0
 718 01b8 3121     		movs	r1, #49
 719 01ba 2046     		mov	r0, r4
 720 01bc FFF7FEFF 		bl	ILI9341_Write_Data
 721              	.LVL84:
 159:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x0C);
 722              		.loc 1 159 0
 723 01c0 2B21     		movs	r1, #43
 724 01c2 2046     		mov	r0, r4
 725 01c4 FFF7FEFF 		bl	ILI9341_Write_Data
 726              	.LVL85:
 160:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x0E);
 727              		.loc 1 160 0
 728 01c8 0C21     		movs	r1, #12
 729 01ca 2046     		mov	r0, r4
 730 01cc FFF7FEFF 		bl	ILI9341_Write_Data
 731              	.LVL86:
 161:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x08);
 732              		.loc 1 161 0
 733 01d0 0E21     		movs	r1, #14
 734 01d2 2046     		mov	r0, r4
 735 01d4 FFF7FEFF 		bl	ILI9341_Write_Data
 736              	.LVL87:
 162:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x4E);
 737              		.loc 1 162 0
 738 01d8 0821     		movs	r1, #8
 739 01da 2046     		mov	r0, r4
 740 01dc FFF7FEFF 		bl	ILI9341_Write_Data
 741              	.LVL88:
 163:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0xF1);
 742              		.loc 1 163 0
 743 01e0 4E21     		movs	r1, #78
 744 01e2 2046     		mov	r0, r4
 745 01e4 FFF7FEFF 		bl	ILI9341_Write_Data
 746              	.LVL89:
 164:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x37);
 747              		.loc 1 164 0
 748 01e8 F121     		movs	r1, #241
 749 01ea 2046     		mov	r0, r4
 750 01ec FFF7FEFF 		bl	ILI9341_Write_Data
 751              	.LVL90:
 165:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x07);
 752              		.loc 1 165 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 20


 753 01f0 3721     		movs	r1, #55
 754 01f2 2046     		mov	r0, r4
 755 01f4 FFF7FEFF 		bl	ILI9341_Write_Data
 756              	.LVL91:
 166:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x10);
 757              		.loc 1 166 0
 758 01f8 0721     		movs	r1, #7
 759 01fa 2046     		mov	r0, r4
 760 01fc FFF7FEFF 		bl	ILI9341_Write_Data
 761              	.LVL92:
 167:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x03);
 762              		.loc 1 167 0
 763 0200 1021     		movs	r1, #16
 764 0202 2046     		mov	r0, r4
 765 0204 FFF7FEFF 		bl	ILI9341_Write_Data
 766              	.LVL93:
 168:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x0E);
 767              		.loc 1 168 0
 768 0208 0321     		movs	r1, #3
 769 020a 2046     		mov	r0, r4
 770 020c FFF7FEFF 		bl	ILI9341_Write_Data
 771              	.LVL94:
 169:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x09);
 772              		.loc 1 169 0
 773 0210 0E21     		movs	r1, #14
 774 0212 2046     		mov	r0, r4
 775 0214 FFF7FEFF 		bl	ILI9341_Write_Data
 776              	.LVL95:
 170:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
 777              		.loc 1 170 0
 778 0218 0921     		movs	r1, #9
 779 021a 2046     		mov	r0, r4
 780 021c FFF7FEFF 		bl	ILI9341_Write_Data
 781              	.LVL96:
 171:Src/ili9341.c **** 
 782              		.loc 1 171 0
 783 0220 0021     		movs	r1, #0
 784 0222 2046     		mov	r0, r4
 785 0224 FFF7FEFF 		bl	ILI9341_Write_Data
 786              	.LVL97:
 174:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x00);
 787              		.loc 1 174 0
 788 0228 E121     		movs	r1, #225
 789 022a 2046     		mov	r0, r4
 790 022c FFF7FEFF 		bl	ILI9341_Write_Command
 791              	.LVL98:
 175:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x0E);
 792              		.loc 1 175 0
 793 0230 0021     		movs	r1, #0
 794 0232 2046     		mov	r0, r4
 795 0234 FFF7FEFF 		bl	ILI9341_Write_Data
 796              	.LVL99:
 176:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x14);
 797              		.loc 1 176 0
 798 0238 0E21     		movs	r1, #14
 799 023a 2046     		mov	r0, r4
 800 023c FFF7FEFF 		bl	ILI9341_Write_Data
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 21


 801              	.LVL100:
 177:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x03);
 802              		.loc 1 177 0
 803 0240 1421     		movs	r1, #20
 804 0242 2046     		mov	r0, r4
 805 0244 FFF7FEFF 		bl	ILI9341_Write_Data
 806              	.LVL101:
 178:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x11);
 807              		.loc 1 178 0
 808 0248 0321     		movs	r1, #3
 809 024a 2046     		mov	r0, r4
 810 024c FFF7FEFF 		bl	ILI9341_Write_Data
 811              	.LVL102:
 179:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x07);
 812              		.loc 1 179 0
 813 0250 1121     		movs	r1, #17
 814 0252 2046     		mov	r0, r4
 815 0254 FFF7FEFF 		bl	ILI9341_Write_Data
 816              	.LVL103:
 180:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x31);
 817              		.loc 1 180 0
 818 0258 0721     		movs	r1, #7
 819 025a 2046     		mov	r0, r4
 820 025c FFF7FEFF 		bl	ILI9341_Write_Data
 821              	.LVL104:
 181:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0xC1);
 822              		.loc 1 181 0
 823 0260 3121     		movs	r1, #49
 824 0262 2046     		mov	r0, r4
 825 0264 FFF7FEFF 		bl	ILI9341_Write_Data
 826              	.LVL105:
 182:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x48);
 827              		.loc 1 182 0
 828 0268 C121     		movs	r1, #193
 829 026a 2046     		mov	r0, r4
 830 026c FFF7FEFF 		bl	ILI9341_Write_Data
 831              	.LVL106:
 183:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x08);
 832              		.loc 1 183 0
 833 0270 4821     		movs	r1, #72
 834 0272 2046     		mov	r0, r4
 835 0274 FFF7FEFF 		bl	ILI9341_Write_Data
 836              	.LVL107:
 184:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x0F);
 837              		.loc 1 184 0
 838 0278 0821     		movs	r1, #8
 839 027a 2046     		mov	r0, r4
 840 027c FFF7FEFF 		bl	ILI9341_Write_Data
 841              	.LVL108:
 185:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x0C);
 842              		.loc 1 185 0
 843 0280 0F21     		movs	r1, #15
 844 0282 2046     		mov	r0, r4
 845 0284 FFF7FEFF 		bl	ILI9341_Write_Data
 846              	.LVL109:
 186:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x31);
 847              		.loc 1 186 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 22


 848 0288 0C21     		movs	r1, #12
 849 028a 2046     		mov	r0, r4
 850 028c FFF7FEFF 		bl	ILI9341_Write_Data
 851              	.LVL110:
 187:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x36);
 852              		.loc 1 187 0
 853 0290 3121     		movs	r1, #49
 854 0292 2046     		mov	r0, r4
 855 0294 FFF7FEFF 		bl	ILI9341_Write_Data
 856              	.LVL111:
 188:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, 0x0F);
 857              		.loc 1 188 0
 858 0298 3621     		movs	r1, #54
 859 029a 2046     		mov	r0, r4
 860 029c FFF7FEFF 		bl	ILI9341_Write_Data
 861              	.LVL112:
 189:Src/ili9341.c **** 
 862              		.loc 1 189 0
 863 02a0 0F21     		movs	r1, #15
 864 02a2 2046     		mov	r0, r4
 865 02a4 FFF7FEFF 		bl	ILI9341_Write_Data
 866              	.LVL113:
 192:Src/ili9341.c **** 	HAL_Delay(120);
 867              		.loc 1 192 0
 868 02a8 1121     		movs	r1, #17
 869 02aa 2046     		mov	r0, r4
 870 02ac FFF7FEFF 		bl	ILI9341_Write_Command
 871              	.LVL114:
 193:Src/ili9341.c **** 
 872              		.loc 1 193 0
 873 02b0 7820     		movs	r0, #120
 874 02b2 FFF7FEFF 		bl	HAL_Delay
 875              	.LVL115:
 196:Src/ili9341.c **** 
 876              		.loc 1 196 0
 877 02b6 2921     		movs	r1, #41
 878 02b8 2046     		mov	r0, r4
 879 02ba FFF7FEFF 		bl	ILI9341_Write_Command
 880              	.LVL116:
 199:Src/ili9341.c **** 	ILI9341_Write_Data(hspi_handle, SCREEN_HORIZONTAL_1);
 881              		.loc 1 199 0
 882 02be 3621     		movs	r1, #54
 883 02c0 2046     		mov	r0, r4
 884 02c2 FFF7FEFF 		bl	ILI9341_Write_Command
 885              	.LVL117:
 200:Src/ili9341.c **** 
 886              		.loc 1 200 0
 887 02c6 2821     		movs	r1, #40
 888 02c8 2046     		mov	r0, r4
 889 02ca FFF7FEFF 		bl	ILI9341_Write_Data
 890              	.LVL118:
 202:Src/ili9341.c **** }
 891              		.loc 1 202 0
 892 02ce 2046     		mov	r0, r4
 893 02d0 FFF7FEFF 		bl	ILI9341_SPI_StopDraw
 894              	.LVL119:
 895              	.L43:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 23


 203:Src/ili9341.c **** 
 896              		.loc 1 203 0
 897 02d4 10BD     		pop	{r4, pc}
 898              	.LVL120:
 899              	.L44:
  70:Src/ili9341.c **** 
 900              		.loc 1 70 0
 901 02d6 0220     		movs	r0, #2
 902 02d8 FCE7     		b	.L43
 903              		.cfi_endproc
 904              	.LFE71:
 906              		.section	.text.ILI9341_Draw_Graph,"ax",%progbits
 907              		.align	1
 908              		.global	ILI9341_Draw_Graph
 909              		.syntax unified
 910              		.thumb
 911              		.thumb_func
 912              		.fpu softvfp
 914              	ILI9341_Draw_Graph:
 915              	.LFB74:
 278:Src/ili9341.c **** 
 279:Src/ili9341.c **** 
 280:Src/ili9341.c **** 
 281:Src/ili9341.c **** HAL_StatusTypeDef ILI9341_Draw_Graph(SPI_HandleTypeDef* hspi_handle, uint8_t* OldGraph, uint8_t* Ne
 282:Src/ili9341.c **** {
 916              		.loc 1 282 0
 917              		.cfi_startproc
 918              		@ args = 0, pretend = 0, frame = 0
 919              		@ frame_needed = 0, uses_anonymous_args = 0
 920              	.LVL121:
 921 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 922              	.LCFI9:
 923              		.cfi_def_cfa_offset 32
 924              		.cfi_offset 4, -32
 925              		.cfi_offset 5, -28
 926              		.cfi_offset 6, -24
 927              		.cfi_offset 7, -20
 928              		.cfi_offset 8, -16
 929              		.cfi_offset 9, -12
 930              		.cfi_offset 10, -8
 931              		.cfi_offset 14, -4
 932 0004 0446     		mov	r4, r0
 933 0006 8946     		mov	r9, r1
 934 0008 9046     		mov	r8, r2
 935 000a 1F46     		mov	r7, r3
 936              	.LVL122:
 283:Src/ili9341.c **** 	const uint32_t Timeout = 100U;
 284:Src/ili9341.c **** 	register const uint32_t tickstart_local = HAL_GetTick();
 937              		.loc 1 284 0
 938 000c FFF7FEFF 		bl	HAL_GetTick
 939              	.LVL123:
 940 0010 0546     		mov	r5, r0
 941              	.LVL124:
 942              	.LBB3:
 285:Src/ili9341.c **** 	for(uint8_t i=25; i<255;i++)
 943              		.loc 1 285 0
 944 0012 1926     		movs	r6, #25
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 24


 945              	.LVL125:
 946              	.L47:
 947              		.loc 1 285 0 is_stmt 0 discriminator 1
 948 0014 FF2E     		cmp	r6, #255
 949 0016 00F0B581 		beq	.L93
 950              	.L48:
 286:Src/ili9341.c **** 	{
 287:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 951              		.loc 1 287 0 is_stmt 1
 952 001a 2368     		ldr	r3, [r4]
 953 001c 9B68     		ldr	r3, [r3, #8]
 954 001e 13F0020F 		tst	r3, #2
 955 0022 0AD1     		bne	.L96
 288:Src/ili9341.c **** 		{
 289:Src/ili9341.c **** 			if((HAL_GetTick()-tickstart_local) >=  Timeout)
 956              		.loc 1 289 0
 957 0024 FFF7FEFF 		bl	HAL_GetTick
 958              	.LVL126:
 959 0028 401B     		subs	r0, r0, r5
 960 002a 6328     		cmp	r0, #99
 961 002c F5D9     		bls	.L48
 290:Src/ili9341.c **** 			{
 291:Src/ili9341.c **** 				return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 962              		.loc 1 291 0
 963 002e 0321     		movs	r1, #3
 964 0030 2046     		mov	r0, r4
 965 0032 FFF7FEFF 		bl	ILI9341_SPI_Error
 966              	.LVL127:
 967              	.L49:
 968              	.LBE3:
 292:Src/ili9341.c **** 			}
 293:Src/ili9341.c **** 		}
 294:Src/ili9341.c **** 		LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
 295:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2A;
 296:Src/ili9341.c **** 		
 297:Src/ili9341.c **** 		/*send 4 bytes column address data*/
 298:Src/ili9341.c **** 		/*sync problem...this pin is set low before the command byte has finished transmiting*/
 299:Src/ili9341.c **** 		/*LCD_DC_PORT->BSRR=LCD_DC_PIN; -> moved after the transmit flag has been set*/
 300:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 301:Src/ili9341.c **** 		{
 302:Src/ili9341.c **** 			if((HAL_GetTick()-tickstart_local) >=  Timeout)
 303:Src/ili9341.c **** 			{
 304:Src/ili9341.c **** 				return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 305:Src/ili9341.c **** 			}
 306:Src/ili9341.c **** 		}
 307:Src/ili9341.c **** 		/*moved here*/
 308:Src/ili9341.c **** 		LCD_DC_PORT->BSRR=LCD_DC_PIN;
 309:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 310:Src/ili9341.c **** 		/*2nd byte*/
 311:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 312:Src/ili9341.c **** 		{
 313:Src/ili9341.c **** 			if((HAL_GetTick()-tickstart_local) >=  Timeout)
 314:Src/ili9341.c **** 			{
 315:Src/ili9341.c **** 				return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 316:Src/ili9341.c **** 			}
 317:Src/ili9341.c **** 		}
 318:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)i;
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 25


 319:Src/ili9341.c **** 		/*3rd byte*/
 320:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 321:Src/ili9341.c **** 		{
 322:Src/ili9341.c **** 			if((HAL_GetTick()-tickstart_local) >=  Timeout)
 323:Src/ili9341.c **** 			{
 324:Src/ili9341.c **** 				return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 325:Src/ili9341.c **** 			}
 326:Src/ili9341.c **** 		}
 327:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 328:Src/ili9341.c **** 		/*4th byte*/
 329:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 330:Src/ili9341.c **** 		{
 331:Src/ili9341.c **** 			if((HAL_GetTick()-tickstart_local) >=  Timeout)
 332:Src/ili9341.c **** 			{
 333:Src/ili9341.c **** 				return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 334:Src/ili9341.c **** 			}
 335:Src/ili9341.c **** 		}
 336:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)i;
 337:Src/ili9341.c **** 		/*send 1 byte page address set command*/
 338:Src/ili9341.c **** 		/* Wait until TXE flag is set to send data */
 339:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 340:Src/ili9341.c **** 		{
 341:Src/ili9341.c **** 			if((HAL_GetTick()-tickstart_local) >=  Timeout)
 342:Src/ili9341.c **** 			{
 343:Src/ili9341.c **** 				return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 344:Src/ili9341.c **** 			}
 345:Src/ili9341.c **** 		}
 346:Src/ili9341.c **** 		/*Send clear old graph data page info*/
 347:Src/ili9341.c **** 		LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
 348:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
 349:Src/ili9341.c **** 		
 350:Src/ili9341.c **** 		/*send 4 bytes page address data*/
 351:Src/ili9341.c **** 		/*1st byte*/
 352:Src/ili9341.c **** 		/* Wait until TXE flag is set to send data */
 353:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 354:Src/ili9341.c **** 		{
 355:Src/ili9341.c **** 			if((HAL_GetTick()-tickstart_local) >=  Timeout)
 356:Src/ili9341.c **** 			{
 357:Src/ili9341.c **** 				return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 358:Src/ili9341.c **** 			}
 359:Src/ili9341.c **** 		}
 360:Src/ili9341.c **** 		LCD_DC_PORT->BSRR=LCD_DC_PIN;
 361:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 362:Src/ili9341.c **** 		/*2nd byte*/
 363:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 364:Src/ili9341.c **** 		{
 365:Src/ili9341.c **** 			if((HAL_GetTick()-tickstart_local) >=  Timeout)
 366:Src/ili9341.c **** 			{
 367:Src/ili9341.c **** 				return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 368:Src/ili9341.c **** 			}
 369:Src/ili9341.c **** 		}
 370:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(OldGraph[i-25]);
 371:Src/ili9341.c **** 		/*3rd byte*/
 372:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 373:Src/ili9341.c **** 		{
 374:Src/ili9341.c **** 			if((HAL_GetTick()-tickstart_local) >=  Timeout)
 375:Src/ili9341.c **** 			{
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 26


 376:Src/ili9341.c **** 				return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 377:Src/ili9341.c **** 			}
 378:Src/ili9341.c **** 		}
 379:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 380:Src/ili9341.c **** 		/*4th byte*/
 381:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 382:Src/ili9341.c **** 		{
 383:Src/ili9341.c **** 			if((HAL_GetTick()-tickstart_local) >=  Timeout)
 384:Src/ili9341.c **** 			{
 385:Src/ili9341.c **** 				return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 386:Src/ili9341.c **** 			}
 387:Src/ili9341.c **** 		}
 388:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(OldGraph[i-25]);
 389:Src/ili9341.c **** 		
 390:Src/ili9341.c **** 		/*send 1 byte memory write command*/
 391:Src/ili9341.c **** 		/* Wait until TXE flag is set to send data */
 392:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 393:Src/ili9341.c **** 		{
 394:Src/ili9341.c **** 			if((HAL_GetTick()-tickstart_local) >=  Timeout)
 395:Src/ili9341.c **** 			{
 396:Src/ili9341.c **** 				return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 397:Src/ili9341.c **** 			}
 398:Src/ili9341.c **** 		}
 399:Src/ili9341.c **** 		LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
 400:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
 401:Src/ili9341.c **** 		
 402:Src/ili9341.c **** 		/*send 6 bytes color information*/
 403:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 404:Src/ili9341.c **** 		{
 405:Src/ili9341.c **** 			if((HAL_GetTick()-tickstart_local) >=  Timeout)
 406:Src/ili9341.c **** 			{
 407:Src/ili9341.c **** 				return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 408:Src/ili9341.c **** 			}
 409:Src/ili9341.c **** 		}
 410:Src/ili9341.c **** 		LCD_DC_PORT->BSRR=LCD_DC_PIN;
 411:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(COLOR_1>>8);
 412:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 413:Src/ili9341.c **** 		{
 414:Src/ili9341.c **** 			if((HAL_GetTick()-tickstart_local) >=  Timeout)
 415:Src/ili9341.c **** 			{
 416:Src/ili9341.c **** 				return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 417:Src/ili9341.c **** 			}
 418:Src/ili9341.c **** 		}
 419:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)COLOR_1;
 420:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 421:Src/ili9341.c **** 		{
 422:Src/ili9341.c **** 			if((HAL_GetTick()-tickstart_local) >=  Timeout)
 423:Src/ili9341.c **** 			{
 424:Src/ili9341.c **** 				return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 425:Src/ili9341.c **** 			}
 426:Src/ili9341.c **** 		}
 427:Src/ili9341.c **** 
 428:Src/ili9341.c **** 		
 429:Src/ili9341.c **** 		/*Send new graph data page info*/
 430:Src/ili9341.c **** 		LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
 431:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
 432:Src/ili9341.c **** 		
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 27


 433:Src/ili9341.c **** 		/*send 4 bytes page address data*/
 434:Src/ili9341.c **** 		/*1st byte*/
 435:Src/ili9341.c **** 		/* Wait until TXE flag is set to send data */
 436:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 437:Src/ili9341.c **** 		{
 438:Src/ili9341.c **** 			if((HAL_GetTick()-tickstart_local) >=  Timeout)
 439:Src/ili9341.c **** 			{
 440:Src/ili9341.c **** 				return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 441:Src/ili9341.c **** 			}
 442:Src/ili9341.c **** 		}
 443:Src/ili9341.c **** 		LCD_DC_PORT->BSRR=LCD_DC_PIN;
 444:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 445:Src/ili9341.c **** 		/*2nd byte*/
 446:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 447:Src/ili9341.c **** 		{
 448:Src/ili9341.c **** 			if((HAL_GetTick()-tickstart_local) >=  Timeout)
 449:Src/ili9341.c **** 			{
 450:Src/ili9341.c **** 				return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 451:Src/ili9341.c **** 			}
 452:Src/ili9341.c **** 		}
 453:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(NewGraph[i-25]);
 454:Src/ili9341.c **** 		/*3rd byte*/
 455:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 456:Src/ili9341.c **** 		{
 457:Src/ili9341.c **** 			if((HAL_GetTick()-tickstart_local) >=  Timeout)
 458:Src/ili9341.c **** 			{
 459:Src/ili9341.c **** 				return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 460:Src/ili9341.c **** 			}
 461:Src/ili9341.c **** 		}
 462:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 463:Src/ili9341.c **** 		/*4th byte*/
 464:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 465:Src/ili9341.c **** 		{
 466:Src/ili9341.c **** 			if((HAL_GetTick()-tickstart_local) >=  Timeout)
 467:Src/ili9341.c **** 			{
 468:Src/ili9341.c **** 				return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 469:Src/ili9341.c **** 			}
 470:Src/ili9341.c **** 		}
 471:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(NewGraph[i-25]);
 472:Src/ili9341.c **** 		
 473:Src/ili9341.c **** 		/*send 1 byte memory write command*/
 474:Src/ili9341.c **** 		/* Wait until TXE flag is set to send data */
 475:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 476:Src/ili9341.c **** 		{
 477:Src/ili9341.c **** 			if((HAL_GetTick()-tickstart_local) >=  Timeout)
 478:Src/ili9341.c **** 			{
 479:Src/ili9341.c **** 				return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 480:Src/ili9341.c **** 			}
 481:Src/ili9341.c **** 		}
 482:Src/ili9341.c **** 		LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
 483:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
 484:Src/ili9341.c **** 		
 485:Src/ili9341.c **** 		/*send 6 bytes color information*/
 486:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 487:Src/ili9341.c **** 		{
 488:Src/ili9341.c **** 			if((HAL_GetTick()-tickstart_local) >=  Timeout)
 489:Src/ili9341.c **** 			{
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 28


 490:Src/ili9341.c **** 				return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 491:Src/ili9341.c **** 			}
 492:Src/ili9341.c **** 		}
 493:Src/ili9341.c **** 		LCD_DC_PORT->BSRR=LCD_DC_PIN;
 494:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(Color>>8);
 495:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 496:Src/ili9341.c **** 		{
 497:Src/ili9341.c **** 			if((HAL_GetTick()-tickstart_local) >=  Timeout)
 498:Src/ili9341.c **** 			{
 499:Src/ili9341.c **** 				return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 500:Src/ili9341.c **** 			}
 501:Src/ili9341.c **** 		}
 502:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)Color;
 503:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 504:Src/ili9341.c **** 		{
 505:Src/ili9341.c **** 			if((HAL_GetTick()-tickstart_local) >=  Timeout)
 506:Src/ili9341.c **** 			{
 507:Src/ili9341.c **** 				return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 508:Src/ili9341.c **** 			}
 509:Src/ili9341.c **** 		}
 510:Src/ili9341.c **** 
 511:Src/ili9341.c **** 	}
 512:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 513:Src/ili9341.c **** 	{
 514:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 515:Src/ili9341.c **** 		{
 516:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 517:Src/ili9341.c **** 		}
 518:Src/ili9341.c **** 	}
 519:Src/ili9341.c **** 	return HAL_OK;
 520:Src/ili9341.c **** }
 969              		.loc 1 520 0
 970 0036 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 971              	.LVL128:
 972              	.L96:
 973              	.LBB4:
 294:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2A;
 974              		.loc 1 294 0
 975 003a B84B     		ldr	r3, .L113
 976 003c 4FF08052 		mov	r2, #268435456
 977 0040 1A61     		str	r2, [r3, #16]
 295:Src/ili9341.c **** 		
 978              		.loc 1 295 0
 979 0042 2368     		ldr	r3, [r4]
 980 0044 2A22     		movs	r2, #42
 981 0046 1A73     		strb	r2, [r3, #12]
 982              	.L51:
 300:Src/ili9341.c **** 		{
 983              		.loc 1 300 0
 984 0048 2368     		ldr	r3, [r4]
 985 004a 9B68     		ldr	r3, [r3, #8]
 986 004c 13F0020F 		tst	r3, #2
 987 0050 09D1     		bne	.L97
 302:Src/ili9341.c **** 			{
 988              		.loc 1 302 0
 989 0052 FFF7FEFF 		bl	HAL_GetTick
 990              	.LVL129:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 29


 991 0056 401B     		subs	r0, r0, r5
 992 0058 6328     		cmp	r0, #99
 993 005a F5D9     		bls	.L51
 304:Src/ili9341.c **** 			}
 994              		.loc 1 304 0
 995 005c 0321     		movs	r1, #3
 996 005e 2046     		mov	r0, r4
 997 0060 FFF7FEFF 		bl	ILI9341_SPI_Error
 998              	.LVL130:
 999 0064 E7E7     		b	.L49
 1000              	.L97:
 308:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 1001              		.loc 1 308 0
 1002 0066 AD4B     		ldr	r3, .L113
 1003 0068 4FF48052 		mov	r2, #4096
 1004 006c 1A61     		str	r2, [r3, #16]
 309:Src/ili9341.c **** 		/*2nd byte*/
 1005              		.loc 1 309 0
 1006 006e 2368     		ldr	r3, [r4]
 1007 0070 0022     		movs	r2, #0
 1008 0072 1A73     		strb	r2, [r3, #12]
 1009              	.L53:
 311:Src/ili9341.c **** 		{
 1010              		.loc 1 311 0
 1011 0074 2368     		ldr	r3, [r4]
 1012 0076 9A68     		ldr	r2, [r3, #8]
 1013 0078 12F0020F 		tst	r2, #2
 1014 007c 09D1     		bne	.L98
 313:Src/ili9341.c **** 			{
 1015              		.loc 1 313 0
 1016 007e FFF7FEFF 		bl	HAL_GetTick
 1017              	.LVL131:
 1018 0082 401B     		subs	r0, r0, r5
 1019 0084 6328     		cmp	r0, #99
 1020 0086 F5D9     		bls	.L53
 315:Src/ili9341.c **** 			}
 1021              		.loc 1 315 0
 1022 0088 0321     		movs	r1, #3
 1023 008a 2046     		mov	r0, r4
 1024 008c FFF7FEFF 		bl	ILI9341_SPI_Error
 1025              	.LVL132:
 1026 0090 D1E7     		b	.L49
 1027              	.L98:
 318:Src/ili9341.c **** 		/*3rd byte*/
 1028              		.loc 1 318 0
 1029 0092 1E73     		strb	r6, [r3, #12]
 1030              	.L55:
 320:Src/ili9341.c **** 		{
 1031              		.loc 1 320 0
 1032 0094 2368     		ldr	r3, [r4]
 1033 0096 9A68     		ldr	r2, [r3, #8]
 1034 0098 12F0020F 		tst	r2, #2
 1035 009c 09D1     		bne	.L99
 322:Src/ili9341.c **** 			{
 1036              		.loc 1 322 0
 1037 009e FFF7FEFF 		bl	HAL_GetTick
 1038              	.LVL133:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 30


 1039 00a2 401B     		subs	r0, r0, r5
 1040 00a4 6328     		cmp	r0, #99
 1041 00a6 F5D9     		bls	.L55
 324:Src/ili9341.c **** 			}
 1042              		.loc 1 324 0
 1043 00a8 0321     		movs	r1, #3
 1044 00aa 2046     		mov	r0, r4
 1045 00ac FFF7FEFF 		bl	ILI9341_SPI_Error
 1046              	.LVL134:
 1047 00b0 C1E7     		b	.L49
 1048              	.L99:
 327:Src/ili9341.c **** 		/*4th byte*/
 1049              		.loc 1 327 0
 1050 00b2 0022     		movs	r2, #0
 1051 00b4 1A73     		strb	r2, [r3, #12]
 1052              	.L57:
 329:Src/ili9341.c **** 		{
 1053              		.loc 1 329 0
 1054 00b6 2368     		ldr	r3, [r4]
 1055 00b8 9A68     		ldr	r2, [r3, #8]
 1056 00ba 12F0020F 		tst	r2, #2
 1057 00be 09D1     		bne	.L100
 331:Src/ili9341.c **** 			{
 1058              		.loc 1 331 0
 1059 00c0 FFF7FEFF 		bl	HAL_GetTick
 1060              	.LVL135:
 1061 00c4 401B     		subs	r0, r0, r5
 1062 00c6 6328     		cmp	r0, #99
 1063 00c8 F5D9     		bls	.L57
 333:Src/ili9341.c **** 			}
 1064              		.loc 1 333 0
 1065 00ca 0321     		movs	r1, #3
 1066 00cc 2046     		mov	r0, r4
 1067 00ce FFF7FEFF 		bl	ILI9341_SPI_Error
 1068              	.LVL136:
 1069 00d2 B0E7     		b	.L49
 1070              	.L100:
 336:Src/ili9341.c **** 		/*send 1 byte page address set command*/
 1071              		.loc 1 336 0
 1072 00d4 1E73     		strb	r6, [r3, #12]
 1073              	.L59:
 339:Src/ili9341.c **** 		{
 1074              		.loc 1 339 0
 1075 00d6 2368     		ldr	r3, [r4]
 1076 00d8 9B68     		ldr	r3, [r3, #8]
 1077 00da 13F0020F 		tst	r3, #2
 1078 00de 09D1     		bne	.L101
 341:Src/ili9341.c **** 			{
 1079              		.loc 1 341 0
 1080 00e0 FFF7FEFF 		bl	HAL_GetTick
 1081              	.LVL137:
 1082 00e4 401B     		subs	r0, r0, r5
 1083 00e6 6328     		cmp	r0, #99
 1084 00e8 F5D9     		bls	.L59
 343:Src/ili9341.c **** 			}
 1085              		.loc 1 343 0
 1086 00ea 0321     		movs	r1, #3
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 31


 1087 00ec 2046     		mov	r0, r4
 1088 00ee FFF7FEFF 		bl	ILI9341_SPI_Error
 1089              	.LVL138:
 1090 00f2 A0E7     		b	.L49
 1091              	.L101:
 347:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
 1092              		.loc 1 347 0
 1093 00f4 894B     		ldr	r3, .L113
 1094 00f6 4FF08052 		mov	r2, #268435456
 1095 00fa 1A61     		str	r2, [r3, #16]
 348:Src/ili9341.c **** 		
 1096              		.loc 1 348 0
 1097 00fc 2368     		ldr	r3, [r4]
 1098 00fe 2B22     		movs	r2, #43
 1099 0100 1A73     		strb	r2, [r3, #12]
 1100              	.L61:
 353:Src/ili9341.c **** 		{
 1101              		.loc 1 353 0
 1102 0102 2368     		ldr	r3, [r4]
 1103 0104 9B68     		ldr	r3, [r3, #8]
 1104 0106 13F0020F 		tst	r3, #2
 1105 010a 09D1     		bne	.L102
 355:Src/ili9341.c **** 			{
 1106              		.loc 1 355 0
 1107 010c FFF7FEFF 		bl	HAL_GetTick
 1108              	.LVL139:
 1109 0110 401B     		subs	r0, r0, r5
 1110 0112 6328     		cmp	r0, #99
 1111 0114 F5D9     		bls	.L61
 357:Src/ili9341.c **** 			}
 1112              		.loc 1 357 0
 1113 0116 0321     		movs	r1, #3
 1114 0118 2046     		mov	r0, r4
 1115 011a FFF7FEFF 		bl	ILI9341_SPI_Error
 1116              	.LVL140:
 1117 011e 8AE7     		b	.L49
 1118              	.L102:
 360:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 1119              		.loc 1 360 0
 1120 0120 7E4B     		ldr	r3, .L113
 1121 0122 4FF48052 		mov	r2, #4096
 1122 0126 1A61     		str	r2, [r3, #16]
 361:Src/ili9341.c **** 		/*2nd byte*/
 1123              		.loc 1 361 0
 1124 0128 2368     		ldr	r3, [r4]
 1125 012a 0022     		movs	r2, #0
 1126 012c 1A73     		strb	r2, [r3, #12]
 1127              	.L63:
 363:Src/ili9341.c **** 		{
 1128              		.loc 1 363 0
 1129 012e 2368     		ldr	r3, [r4]
 1130 0130 9A68     		ldr	r2, [r3, #8]
 1131 0132 12F0020F 		tst	r2, #2
 1132 0136 09D1     		bne	.L103
 365:Src/ili9341.c **** 			{
 1133              		.loc 1 365 0
 1134 0138 FFF7FEFF 		bl	HAL_GetTick
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 32


 1135              	.LVL141:
 1136 013c 401B     		subs	r0, r0, r5
 1137 013e 6328     		cmp	r0, #99
 1138 0140 F5D9     		bls	.L63
 367:Src/ili9341.c **** 			}
 1139              		.loc 1 367 0
 1140 0142 0321     		movs	r1, #3
 1141 0144 2046     		mov	r0, r4
 1142 0146 FFF7FEFF 		bl	ILI9341_SPI_Error
 1143              	.LVL142:
 1144 014a 74E7     		b	.L49
 1145              	.L103:
 370:Src/ili9341.c **** 		/*3rd byte*/
 1146              		.loc 1 370 0
 1147 014c A6F1190A 		sub	r10, r6, #25
 1148 0150 19F80A20 		ldrb	r2, [r9, r10]	@ zero_extendqisi2
 1149 0154 1A73     		strb	r2, [r3, #12]
 1150              	.L65:
 372:Src/ili9341.c **** 		{
 1151              		.loc 1 372 0
 1152 0156 2368     		ldr	r3, [r4]
 1153 0158 9A68     		ldr	r2, [r3, #8]
 1154 015a 12F0020F 		tst	r2, #2
 1155 015e 09D1     		bne	.L104
 374:Src/ili9341.c **** 			{
 1156              		.loc 1 374 0
 1157 0160 FFF7FEFF 		bl	HAL_GetTick
 1158              	.LVL143:
 1159 0164 401B     		subs	r0, r0, r5
 1160 0166 6328     		cmp	r0, #99
 1161 0168 F5D9     		bls	.L65
 376:Src/ili9341.c **** 			}
 1162              		.loc 1 376 0
 1163 016a 0321     		movs	r1, #3
 1164 016c 2046     		mov	r0, r4
 1165 016e FFF7FEFF 		bl	ILI9341_SPI_Error
 1166              	.LVL144:
 1167 0172 60E7     		b	.L49
 1168              	.L104:
 379:Src/ili9341.c **** 		/*4th byte*/
 1169              		.loc 1 379 0
 1170 0174 0022     		movs	r2, #0
 1171 0176 1A73     		strb	r2, [r3, #12]
 1172              	.L67:
 381:Src/ili9341.c **** 		{
 1173              		.loc 1 381 0
 1174 0178 2368     		ldr	r3, [r4]
 1175 017a 9A68     		ldr	r2, [r3, #8]
 1176 017c 12F0020F 		tst	r2, #2
 1177 0180 09D1     		bne	.L105
 383:Src/ili9341.c **** 			{
 1178              		.loc 1 383 0
 1179 0182 FFF7FEFF 		bl	HAL_GetTick
 1180              	.LVL145:
 1181 0186 401B     		subs	r0, r0, r5
 1182 0188 6328     		cmp	r0, #99
 1183 018a F5D9     		bls	.L67
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 33


 385:Src/ili9341.c **** 			}
 1184              		.loc 1 385 0
 1185 018c 0321     		movs	r1, #3
 1186 018e 2046     		mov	r0, r4
 1187 0190 FFF7FEFF 		bl	ILI9341_SPI_Error
 1188              	.LVL146:
 1189 0194 4FE7     		b	.L49
 1190              	.L105:
 388:Src/ili9341.c **** 		
 1191              		.loc 1 388 0
 1192 0196 19F80A20 		ldrb	r2, [r9, r10]	@ zero_extendqisi2
 1193 019a 1A73     		strb	r2, [r3, #12]
 1194              	.L69:
 392:Src/ili9341.c **** 		{
 1195              		.loc 1 392 0
 1196 019c 2368     		ldr	r3, [r4]
 1197 019e 9B68     		ldr	r3, [r3, #8]
 1198 01a0 13F0020F 		tst	r3, #2
 1199 01a4 09D1     		bne	.L106
 394:Src/ili9341.c **** 			{
 1200              		.loc 1 394 0
 1201 01a6 FFF7FEFF 		bl	HAL_GetTick
 1202              	.LVL147:
 1203 01aa 401B     		subs	r0, r0, r5
 1204 01ac 6328     		cmp	r0, #99
 1205 01ae F5D9     		bls	.L69
 396:Src/ili9341.c **** 			}
 1206              		.loc 1 396 0
 1207 01b0 0321     		movs	r1, #3
 1208 01b2 2046     		mov	r0, r4
 1209 01b4 FFF7FEFF 		bl	ILI9341_SPI_Error
 1210              	.LVL148:
 1211 01b8 3DE7     		b	.L49
 1212              	.L106:
 399:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
 1213              		.loc 1 399 0
 1214 01ba 584B     		ldr	r3, .L113
 1215 01bc 4FF08052 		mov	r2, #268435456
 1216 01c0 1A61     		str	r2, [r3, #16]
 400:Src/ili9341.c **** 		
 1217              		.loc 1 400 0
 1218 01c2 2368     		ldr	r3, [r4]
 1219 01c4 2C22     		movs	r2, #44
 1220 01c6 1A73     		strb	r2, [r3, #12]
 403:Src/ili9341.c **** 		{
 1221              		.loc 1 403 0
 1222 01c8 04E0     		b	.L71
 1223              	.L72:
 405:Src/ili9341.c **** 			{
 1224              		.loc 1 405 0
 1225 01ca FFF7FEFF 		bl	HAL_GetTick
 1226              	.LVL149:
 1227 01ce 401B     		subs	r0, r0, r5
 1228 01d0 6328     		cmp	r0, #99
 1229 01d2 0CD8     		bhi	.L107
 1230              	.L71:
 403:Src/ili9341.c **** 		{
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 34


 1231              		.loc 1 403 0
 1232 01d4 2368     		ldr	r3, [r4]
 1233 01d6 9B68     		ldr	r3, [r3, #8]
 1234 01d8 13F0020F 		tst	r3, #2
 1235 01dc F5D0     		beq	.L72
 410:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(COLOR_1>>8);
 1236              		.loc 1 410 0
 1237 01de 4F4B     		ldr	r3, .L113
 1238 01e0 4FF48052 		mov	r2, #4096
 1239 01e4 1A61     		str	r2, [r3, #16]
 411:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 1240              		.loc 1 411 0
 1241 01e6 2368     		ldr	r3, [r4]
 1242 01e8 3822     		movs	r2, #56
 1243 01ea 1A73     		strb	r2, [r3, #12]
 412:Src/ili9341.c **** 		{
 1244              		.loc 1 412 0
 1245 01ec 09E0     		b	.L73
 1246              	.L107:
 407:Src/ili9341.c **** 			}
 1247              		.loc 1 407 0
 1248 01ee 0321     		movs	r1, #3
 1249 01f0 2046     		mov	r0, r4
 1250 01f2 FFF7FEFF 		bl	ILI9341_SPI_Error
 1251              	.LVL150:
 1252 01f6 1EE7     		b	.L49
 1253              	.L74:
 414:Src/ili9341.c **** 			{
 1254              		.loc 1 414 0
 1255 01f8 FFF7FEFF 		bl	HAL_GetTick
 1256              	.LVL151:
 1257 01fc 401B     		subs	r0, r0, r5
 1258 01fe 6328     		cmp	r0, #99
 1259 0200 07D8     		bhi	.L108
 1260              	.L73:
 412:Src/ili9341.c **** 		{
 1261              		.loc 1 412 0
 1262 0202 2368     		ldr	r3, [r4]
 1263 0204 9A68     		ldr	r2, [r3, #8]
 1264 0206 12F0020F 		tst	r2, #2
 1265 020a F5D0     		beq	.L74
 419:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 1266              		.loc 1 419 0
 1267 020c 8822     		movs	r2, #136
 1268 020e 1A73     		strb	r2, [r3, #12]
 420:Src/ili9341.c **** 		{
 1269              		.loc 1 420 0
 1270 0210 09E0     		b	.L75
 1271              	.L108:
 416:Src/ili9341.c **** 			}
 1272              		.loc 1 416 0
 1273 0212 0321     		movs	r1, #3
 1274 0214 2046     		mov	r0, r4
 1275 0216 FFF7FEFF 		bl	ILI9341_SPI_Error
 1276              	.LVL152:
 1277 021a 0CE7     		b	.L49
 1278              	.L76:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 35


 422:Src/ili9341.c **** 			{
 1279              		.loc 1 422 0
 1280 021c FFF7FEFF 		bl	HAL_GetTick
 1281              	.LVL153:
 1282 0220 401B     		subs	r0, r0, r5
 1283 0222 6328     		cmp	r0, #99
 1284 0224 0CD8     		bhi	.L109
 1285              	.L75:
 420:Src/ili9341.c **** 		{
 1286              		.loc 1 420 0
 1287 0226 2368     		ldr	r3, [r4]
 1288 0228 9B68     		ldr	r3, [r3, #8]
 1289 022a 13F0020F 		tst	r3, #2
 1290 022e F5D0     		beq	.L76
 430:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
 1291              		.loc 1 430 0
 1292 0230 3A4B     		ldr	r3, .L113
 1293 0232 4FF08052 		mov	r2, #268435456
 1294 0236 1A61     		str	r2, [r3, #16]
 431:Src/ili9341.c **** 		
 1295              		.loc 1 431 0
 1296 0238 2368     		ldr	r3, [r4]
 1297 023a 2B22     		movs	r2, #43
 1298 023c 1A73     		strb	r2, [r3, #12]
 436:Src/ili9341.c **** 		{
 1299              		.loc 1 436 0
 1300 023e 09E0     		b	.L77
 1301              	.L109:
 424:Src/ili9341.c **** 			}
 1302              		.loc 1 424 0
 1303 0240 0321     		movs	r1, #3
 1304 0242 2046     		mov	r0, r4
 1305 0244 FFF7FEFF 		bl	ILI9341_SPI_Error
 1306              	.LVL154:
 1307 0248 F5E6     		b	.L49
 1308              	.L78:
 438:Src/ili9341.c **** 			{
 1309              		.loc 1 438 0
 1310 024a FFF7FEFF 		bl	HAL_GetTick
 1311              	.LVL155:
 1312 024e 401B     		subs	r0, r0, r5
 1313 0250 6328     		cmp	r0, #99
 1314 0252 0CD8     		bhi	.L110
 1315              	.L77:
 436:Src/ili9341.c **** 		{
 1316              		.loc 1 436 0
 1317 0254 2368     		ldr	r3, [r4]
 1318 0256 9B68     		ldr	r3, [r3, #8]
 1319 0258 13F0020F 		tst	r3, #2
 1320 025c F5D0     		beq	.L78
 443:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
 1321              		.loc 1 443 0
 1322 025e 2F4B     		ldr	r3, .L113
 1323 0260 4FF48052 		mov	r2, #4096
 1324 0264 1A61     		str	r2, [r3, #16]
 444:Src/ili9341.c **** 		/*2nd byte*/
 1325              		.loc 1 444 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 36


 1326 0266 2368     		ldr	r3, [r4]
 1327 0268 0022     		movs	r2, #0
 1328 026a 1A73     		strb	r2, [r3, #12]
 446:Src/ili9341.c **** 		{
 1329              		.loc 1 446 0
 1330 026c 09E0     		b	.L79
 1331              	.L110:
 440:Src/ili9341.c **** 			}
 1332              		.loc 1 440 0
 1333 026e 0321     		movs	r1, #3
 1334 0270 2046     		mov	r0, r4
 1335 0272 FFF7FEFF 		bl	ILI9341_SPI_Error
 1336              	.LVL156:
 1337 0276 DEE6     		b	.L49
 1338              	.L80:
 448:Src/ili9341.c **** 			{
 1339              		.loc 1 448 0
 1340 0278 FFF7FEFF 		bl	HAL_GetTick
 1341              	.LVL157:
 1342 027c 401B     		subs	r0, r0, r5
 1343 027e 6328     		cmp	r0, #99
 1344 0280 3DD8     		bhi	.L111
 1345              	.L79:
 446:Src/ili9341.c **** 		{
 1346              		.loc 1 446 0
 1347 0282 2368     		ldr	r3, [r4]
 1348 0284 9A68     		ldr	r2, [r3, #8]
 1349 0286 12F0020F 		tst	r2, #2
 1350 028a F5D0     		beq	.L80
 453:Src/ili9341.c **** 		/*3rd byte*/
 1351              		.loc 1 453 0
 1352 028c 18F80A20 		ldrb	r2, [r8, r10]	@ zero_extendqisi2
 1353 0290 1A73     		strb	r2, [r3, #12]
 1354              	.L81:
 455:Src/ili9341.c **** 		{
 1355              		.loc 1 455 0
 1356 0292 2368     		ldr	r3, [r4]
 1357 0294 9A68     		ldr	r2, [r3, #8]
 1358 0296 12F0020F 		tst	r2, #2
 1359 029a 35D0     		beq	.L82
 462:Src/ili9341.c **** 		/*4th byte*/
 1360              		.loc 1 462 0
 1361 029c 0022     		movs	r2, #0
 1362 029e 1A73     		strb	r2, [r3, #12]
 1363              	.L83:
 464:Src/ili9341.c **** 		{
 1364              		.loc 1 464 0
 1365 02a0 2368     		ldr	r3, [r4]
 1366 02a2 9A68     		ldr	r2, [r3, #8]
 1367 02a4 12F0020F 		tst	r2, #2
 1368 02a8 3AD0     		beq	.L84
 471:Src/ili9341.c **** 		
 1369              		.loc 1 471 0
 1370 02aa 18F80A20 		ldrb	r2, [r8, r10]	@ zero_extendqisi2
 1371 02ae 1A73     		strb	r2, [r3, #12]
 1372              	.L85:
 475:Src/ili9341.c **** 		{
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 37


 1373              		.loc 1 475 0
 1374 02b0 2368     		ldr	r3, [r4]
 1375 02b2 9B68     		ldr	r3, [r3, #8]
 1376 02b4 13F0020F 		tst	r3, #2
 1377 02b8 3CD0     		beq	.L86
 482:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
 1378              		.loc 1 482 0
 1379 02ba 184B     		ldr	r3, .L113
 1380 02bc 4FF08052 		mov	r2, #268435456
 1381 02c0 1A61     		str	r2, [r3, #16]
 483:Src/ili9341.c **** 		
 1382              		.loc 1 483 0
 1383 02c2 2368     		ldr	r3, [r4]
 1384 02c4 2C22     		movs	r2, #44
 1385 02c6 1A73     		strb	r2, [r3, #12]
 1386              	.L87:
 486:Src/ili9341.c **** 		{
 1387              		.loc 1 486 0
 1388 02c8 2368     		ldr	r3, [r4]
 1389 02ca 9B68     		ldr	r3, [r3, #8]
 1390 02cc 13F0020F 		tst	r3, #2
 1391 02d0 3AD0     		beq	.L88
 493:Src/ili9341.c **** 		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(Color>>8);
 1392              		.loc 1 493 0
 1393 02d2 124B     		ldr	r3, .L113
 1394 02d4 4FF48052 		mov	r2, #4096
 1395 02d8 1A61     		str	r2, [r3, #16]
 494:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 1396              		.loc 1 494 0
 1397 02da 2368     		ldr	r3, [r4]
 1398 02dc 3A0A     		lsrs	r2, r7, #8
 1399 02de 1A73     		strb	r2, [r3, #12]
 1400              	.L89:
 495:Src/ili9341.c **** 		{
 1401              		.loc 1 495 0
 1402 02e0 2368     		ldr	r3, [r4]
 1403 02e2 9A68     		ldr	r2, [r3, #8]
 1404 02e4 12F0020F 		tst	r2, #2
 1405 02e8 38D0     		beq	.L90
 502:Src/ili9341.c **** 		while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 1406              		.loc 1 502 0
 1407 02ea FAB2     		uxtb	r2, r7
 1408 02ec 1A73     		strb	r2, [r3, #12]
 1409              	.L91:
 503:Src/ili9341.c **** 		{
 1410              		.loc 1 503 0
 1411 02ee 2368     		ldr	r3, [r4]
 1412 02f0 9B68     		ldr	r3, [r3, #8]
 1413 02f2 13F0020F 		tst	r3, #2
 1414 02f6 3BD0     		beq	.L92
 285:Src/ili9341.c **** 	{
 1415              		.loc 1 285 0 discriminator 2
 1416 02f8 0136     		adds	r6, r6, #1
 1417              	.LVL158:
 1418 02fa F6B2     		uxtb	r6, r6
 1419              	.LVL159:
 1420 02fc 8AE6     		b	.L47
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 38


 1421              	.L111:
 450:Src/ili9341.c **** 			}
 1422              		.loc 1 450 0
 1423 02fe 0321     		movs	r1, #3
 1424 0300 2046     		mov	r0, r4
 1425 0302 FFF7FEFF 		bl	ILI9341_SPI_Error
 1426              	.LVL160:
 1427 0306 96E6     		b	.L49
 1428              	.L82:
 457:Src/ili9341.c **** 			{
 1429              		.loc 1 457 0
 1430 0308 FFF7FEFF 		bl	HAL_GetTick
 1431              	.LVL161:
 1432 030c 401B     		subs	r0, r0, r5
 1433 030e 6328     		cmp	r0, #99
 1434 0310 BFD9     		bls	.L81
 459:Src/ili9341.c **** 			}
 1435              		.loc 1 459 0
 1436 0312 0321     		movs	r1, #3
 1437 0314 2046     		mov	r0, r4
 1438 0316 FFF7FEFF 		bl	ILI9341_SPI_Error
 1439              	.LVL162:
 1440 031a 8CE6     		b	.L49
 1441              	.L114:
 1442              		.align	2
 1443              	.L113:
 1444 031c 00080140 		.word	1073809408
 1445              	.L84:
 466:Src/ili9341.c **** 			{
 1446              		.loc 1 466 0
 1447 0320 FFF7FEFF 		bl	HAL_GetTick
 1448              	.LVL163:
 1449 0324 401B     		subs	r0, r0, r5
 1450 0326 6328     		cmp	r0, #99
 1451 0328 BAD9     		bls	.L83
 468:Src/ili9341.c **** 			}
 1452              		.loc 1 468 0
 1453 032a 0321     		movs	r1, #3
 1454 032c 2046     		mov	r0, r4
 1455 032e FFF7FEFF 		bl	ILI9341_SPI_Error
 1456              	.LVL164:
 1457 0332 80E6     		b	.L49
 1458              	.L86:
 477:Src/ili9341.c **** 			{
 1459              		.loc 1 477 0
 1460 0334 FFF7FEFF 		bl	HAL_GetTick
 1461              	.LVL165:
 1462 0338 401B     		subs	r0, r0, r5
 1463 033a 6328     		cmp	r0, #99
 1464 033c B8D9     		bls	.L85
 479:Src/ili9341.c **** 			}
 1465              		.loc 1 479 0
 1466 033e 0321     		movs	r1, #3
 1467 0340 2046     		mov	r0, r4
 1468 0342 FFF7FEFF 		bl	ILI9341_SPI_Error
 1469              	.LVL166:
 1470 0346 76E6     		b	.L49
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 39


 1471              	.L88:
 488:Src/ili9341.c **** 			{
 1472              		.loc 1 488 0
 1473 0348 FFF7FEFF 		bl	HAL_GetTick
 1474              	.LVL167:
 1475 034c 401B     		subs	r0, r0, r5
 1476 034e 6328     		cmp	r0, #99
 1477 0350 BAD9     		bls	.L87
 490:Src/ili9341.c **** 			}
 1478              		.loc 1 490 0
 1479 0352 0321     		movs	r1, #3
 1480 0354 2046     		mov	r0, r4
 1481 0356 FFF7FEFF 		bl	ILI9341_SPI_Error
 1482              	.LVL168:
 1483 035a 6CE6     		b	.L49
 1484              	.L90:
 497:Src/ili9341.c **** 			{
 1485              		.loc 1 497 0
 1486 035c FFF7FEFF 		bl	HAL_GetTick
 1487              	.LVL169:
 1488 0360 401B     		subs	r0, r0, r5
 1489 0362 6328     		cmp	r0, #99
 1490 0364 BCD9     		bls	.L89
 499:Src/ili9341.c **** 			}
 1491              		.loc 1 499 0
 1492 0366 0321     		movs	r1, #3
 1493 0368 2046     		mov	r0, r4
 1494 036a FFF7FEFF 		bl	ILI9341_SPI_Error
 1495              	.LVL170:
 1496 036e 62E6     		b	.L49
 1497              	.L92:
 505:Src/ili9341.c **** 			{
 1498              		.loc 1 505 0
 1499 0370 FFF7FEFF 		bl	HAL_GetTick
 1500              	.LVL171:
 1501 0374 401B     		subs	r0, r0, r5
 1502 0376 6328     		cmp	r0, #99
 1503 0378 B9D9     		bls	.L91
 507:Src/ili9341.c **** 			}
 1504              		.loc 1 507 0
 1505 037a 0321     		movs	r1, #3
 1506 037c 2046     		mov	r0, r4
 1507 037e FFF7FEFF 		bl	ILI9341_SPI_Error
 1508              	.LVL172:
 1509 0382 58E6     		b	.L49
 1510              	.L93:
 1511              	.LBE4:
 512:Src/ili9341.c **** 	{
 1512              		.loc 1 512 0
 1513 0384 2368     		ldr	r3, [r4]
 1514 0386 9B68     		ldr	r3, [r3, #8]
 1515 0388 13F0020F 		tst	r3, #2
 1516 038c 09D1     		bne	.L112
 514:Src/ili9341.c **** 		{
 1517              		.loc 1 514 0
 1518 038e FFF7FEFF 		bl	HAL_GetTick
 1519              	.LVL173:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 40


 1520 0392 401B     		subs	r0, r0, r5
 1521 0394 6328     		cmp	r0, #99
 1522 0396 F5D9     		bls	.L93
 516:Src/ili9341.c **** 		}
 1523              		.loc 1 516 0
 1524 0398 0321     		movs	r1, #3
 1525 039a 2046     		mov	r0, r4
 1526 039c FFF7FEFF 		bl	ILI9341_SPI_Error
 1527              	.LVL174:
 1528 03a0 49E6     		b	.L49
 1529              	.L112:
 519:Src/ili9341.c **** }
 1530              		.loc 1 519 0
 1531 03a2 0020     		movs	r0, #0
 1532 03a4 47E6     		b	.L49
 1533              		.cfi_endproc
 1534              	.LFE74:
 1536 03a6 00BF     		.section	.text.ILI9341_Draw_Square,"ax",%progbits
 1537              		.align	1
 1538              		.global	ILI9341_Draw_Square
 1539              		.syntax unified
 1540              		.thumb
 1541              		.thumb_func
 1542              		.fpu softvfp
 1544              	ILI9341_Draw_Square:
 1545              	.LFB75:
 521:Src/ili9341.c **** 
 522:Src/ili9341.c **** 
 523:Src/ili9341.c **** HAL_StatusTypeDef ILI9341_Draw_Square(	SPI_HandleTypeDef* hspi_handle, 
 524:Src/ili9341.c **** 					uint16_t posX, uint16_t posY, 
 525:Src/ili9341.c **** 					uint16_t endX, uint16_t endY, 
 526:Src/ili9341.c **** 					uint16_t Color)
 527:Src/ili9341.c **** {
 1546              		.loc 1 527 0
 1547              		.cfi_startproc
 1548              		@ args = 8, pretend = 0, frame = 8
 1549              		@ frame_needed = 0, uses_anonymous_args = 0
 1550              	.LVL175:
 1551 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1552              	.LCFI10:
 1553              		.cfi_def_cfa_offset 36
 1554              		.cfi_offset 4, -36
 1555              		.cfi_offset 5, -32
 1556              		.cfi_offset 6, -28
 1557              		.cfi_offset 7, -24
 1558              		.cfi_offset 8, -20
 1559              		.cfi_offset 9, -16
 1560              		.cfi_offset 10, -12
 1561              		.cfi_offset 11, -8
 1562              		.cfi_offset 14, -4
 1563 0004 83B0     		sub	sp, sp, #12
 1564              	.LCFI11:
 1565              		.cfi_def_cfa_offset 48
 1566 0006 0446     		mov	r4, r0
 1567 0008 0E46     		mov	r6, r1
 1568 000a 9046     		mov	r8, r2
 1569 000c 1F46     		mov	r7, r3
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 41


 1570 000e BDF83090 		ldrh	r9, [sp, #48]
 1571 0012 BDF834A0 		ldrh	r10, [sp, #52]
 528:Src/ili9341.c **** 	/*send 1 byte column address set command*/
 529:Src/ili9341.c **** 	/* Wait until TXE flag is set to send data */
 530:Src/ili9341.c **** 	register const uint32_t tickstart_local = HAL_GetTick();
 1572              		.loc 1 530 0
 1573 0016 FFF7FEFF 		bl	HAL_GetTick
 1574              	.LVL176:
 1575 001a 0546     		mov	r5, r0
 1576              	.LVL177:
 1577              	.L116:
 531:Src/ili9341.c **** 	const uint32_t Timeout = 500;
 532:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 1578              		.loc 1 532 0
 1579 001c 2368     		ldr	r3, [r4]
 1580 001e 9B68     		ldr	r3, [r3, #8]
 1581 0020 13F0020F 		tst	r3, #2
 1582 0024 0CD1     		bne	.L151
 533:Src/ili9341.c **** 	{
 534:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 1583              		.loc 1 534 0
 1584 0026 FFF7FEFF 		bl	HAL_GetTick
 1585              	.LVL178:
 1586 002a 401B     		subs	r0, r0, r5
 1587 002c B0F5FA7F 		cmp	r0, #500
 1588 0030 F4D3     		bcc	.L116
 535:Src/ili9341.c **** 		{
 536:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 1589              		.loc 1 536 0
 1590 0032 0321     		movs	r1, #3
 1591 0034 2046     		mov	r0, r4
 1592 0036 FFF7FEFF 		bl	ILI9341_SPI_Error
 1593              	.LVL179:
 1594              	.L117:
 537:Src/ili9341.c **** 		}
 538:Src/ili9341.c **** 	}
 539:Src/ili9341.c **** 	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
 540:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2A;
 541:Src/ili9341.c **** 	
 542:Src/ili9341.c **** 	/*send 4 bytes column address data*/
 543:Src/ili9341.c **** 	/*sync problem...this pin is set low before the command byte has finished transmiting*/
 544:Src/ili9341.c **** 	/*LCD_DC_PORT->BSRR=LCD_DC_PIN; -> moved after the transmit flag has been set*/
 545:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 546:Src/ili9341.c **** 	{
 547:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 548:Src/ili9341.c **** 		{
 549:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 550:Src/ili9341.c **** 		}
 551:Src/ili9341.c **** 	}
 552:Src/ili9341.c **** 	/*moved here*/
 553:Src/ili9341.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 554:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posX>>8);
 555:Src/ili9341.c **** 	/*2nd byte*/
 556:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 557:Src/ili9341.c **** 	{
 558:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 559:Src/ili9341.c **** 		{
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 42


 560:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 561:Src/ili9341.c **** 		}
 562:Src/ili9341.c **** 	}
 563:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)posX;
 564:Src/ili9341.c **** 	/*3rd byte*/
 565:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 566:Src/ili9341.c **** 	{
 567:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 568:Src/ili9341.c **** 		{
 569:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 570:Src/ili9341.c **** 		}
 571:Src/ili9341.c **** 	}
 572:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(endX>>8);
 573:Src/ili9341.c **** 	/*4th byte*/
 574:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 575:Src/ili9341.c **** 	{
 576:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 577:Src/ili9341.c **** 		{
 578:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 579:Src/ili9341.c **** 		}
 580:Src/ili9341.c **** 	}
 581:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)endX;
 582:Src/ili9341.c **** 	/*send 1 byte page address set command*/
 583:Src/ili9341.c **** 	/* Wait until TXE flag is set to send data */
 584:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 585:Src/ili9341.c **** 	{
 586:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 587:Src/ili9341.c **** 		{
 588:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 589:Src/ili9341.c **** 		}
 590:Src/ili9341.c **** 	}
 591:Src/ili9341.c **** 	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
 592:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
 593:Src/ili9341.c **** 	
 594:Src/ili9341.c **** 	/*send 4 bytes page address data*/
 595:Src/ili9341.c **** 	/*1st byte*/
 596:Src/ili9341.c **** 	/* Wait until TXE flag is set to send data */
 597:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 598:Src/ili9341.c **** 	{
 599:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 600:Src/ili9341.c **** 		{
 601:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 602:Src/ili9341.c **** 		}
 603:Src/ili9341.c **** 	}
 604:Src/ili9341.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 605:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posY>>8);
 606:Src/ili9341.c **** 	/*2nd byte*/
 607:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 608:Src/ili9341.c **** 	{
 609:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 610:Src/ili9341.c **** 		{
 611:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 612:Src/ili9341.c **** 		}
 613:Src/ili9341.c **** 	}
 614:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)posY;
 615:Src/ili9341.c **** 	/*3rd byte*/
 616:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 43


 617:Src/ili9341.c **** 	{
 618:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 619:Src/ili9341.c **** 		{
 620:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 621:Src/ili9341.c **** 		}
 622:Src/ili9341.c **** 	}
 623:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(endY>>8);
 624:Src/ili9341.c **** 	/*4th byte*/
 625:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 626:Src/ili9341.c **** 	{
 627:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 628:Src/ili9341.c **** 		{
 629:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 630:Src/ili9341.c **** 		}
 631:Src/ili9341.c **** 	}
 632:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)endY;
 633:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 634:Src/ili9341.c **** 	{
 635:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 636:Src/ili9341.c **** 		{
 637:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 638:Src/ili9341.c **** 		}
 639:Src/ili9341.c **** 	}
 640:Src/ili9341.c **** 	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
 641:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
 642:Src/ili9341.c **** 	/*send 6 bytes color information*/
 643:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 644:Src/ili9341.c **** 	{
 645:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 646:Src/ili9341.c **** 		{
 647:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 648:Src/ili9341.c **** 		}
 649:Src/ili9341.c **** 	}
 650:Src/ili9341.c **** 	LCD_DC_PORT->BSRR=LCD_DC_PIN;
 651:Src/ili9341.c **** 	for(uint16_t i=0; i <= endX - posX; i++)
 652:Src/ili9341.c **** 		for(uint16_t j=0; j <= endY - posY; j++)
 653:Src/ili9341.c **** 		{
 654:Src/ili9341.c **** 			while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 655:Src/ili9341.c **** 			{
 656:Src/ili9341.c **** 				if((HAL_GetTick()-tickstart_local) >=  Timeout)
 657:Src/ili9341.c **** 				{
 658:Src/ili9341.c **** 					return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 659:Src/ili9341.c **** 				}
 660:Src/ili9341.c **** 			}
 661:Src/ili9341.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(Color>>8);
 662:Src/ili9341.c **** 			while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 663:Src/ili9341.c **** 			{
 664:Src/ili9341.c **** 				if((HAL_GetTick()-tickstart_local) >=  Timeout)
 665:Src/ili9341.c **** 				{
 666:Src/ili9341.c **** 					return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 667:Src/ili9341.c **** 				}
 668:Src/ili9341.c **** 			}
 669:Src/ili9341.c **** 			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)Color;
 670:Src/ili9341.c **** 		}
 671:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 672:Src/ili9341.c **** 	{
 673:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 44


 674:Src/ili9341.c **** 		{
 675:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 676:Src/ili9341.c **** 		}
 677:Src/ili9341.c **** 	}
 678:Src/ili9341.c **** 	return HAL_OK;
 679:Src/ili9341.c **** }
 1595              		.loc 1 679 0
 1596 003a 03B0     		add	sp, sp, #12
 1597              	.LCFI12:
 1598              		.cfi_remember_state
 1599              		.cfi_def_cfa_offset 36
 1600              		@ sp needed
 1601 003c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1602              	.LVL180:
 1603              	.L151:
 1604              	.LCFI13:
 1605              		.cfi_restore_state
 539:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2A;
 1606              		.loc 1 539 0
 1607 0040 9A4B     		ldr	r3, .L165
 1608 0042 4FF08052 		mov	r2, #268435456
 1609 0046 1A61     		str	r2, [r3, #16]
 1610              	.LVL181:
 540:Src/ili9341.c **** 	
 1611              		.loc 1 540 0
 1612 0048 2368     		ldr	r3, [r4]
 1613 004a 2A22     		movs	r2, #42
 1614 004c 1A73     		strb	r2, [r3, #12]
 1615              	.L119:
 545:Src/ili9341.c **** 	{
 1616              		.loc 1 545 0
 1617 004e 2368     		ldr	r3, [r4]
 1618 0050 9B68     		ldr	r3, [r3, #8]
 1619 0052 13F0020F 		tst	r3, #2
 1620 0056 0AD1     		bne	.L152
 547:Src/ili9341.c **** 		{
 1621              		.loc 1 547 0
 1622 0058 FFF7FEFF 		bl	HAL_GetTick
 1623              	.LVL182:
 1624 005c 401B     		subs	r0, r0, r5
 1625 005e B0F5FA7F 		cmp	r0, #500
 1626 0062 F4D3     		bcc	.L119
 549:Src/ili9341.c **** 		}
 1627              		.loc 1 549 0
 1628 0064 0321     		movs	r1, #3
 1629 0066 2046     		mov	r0, r4
 1630 0068 FFF7FEFF 		bl	ILI9341_SPI_Error
 1631              	.LVL183:
 1632 006c E5E7     		b	.L117
 1633              	.L152:
 553:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posX>>8);
 1634              		.loc 1 553 0
 1635 006e 8F4B     		ldr	r3, .L165
 1636 0070 4FF48052 		mov	r2, #4096
 1637 0074 1A61     		str	r2, [r3, #16]
 554:Src/ili9341.c **** 	/*2nd byte*/
 1638              		.loc 1 554 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 45


 1639 0076 2368     		ldr	r3, [r4]
 1640 0078 320A     		lsrs	r2, r6, #8
 1641 007a 1A73     		strb	r2, [r3, #12]
 1642              	.L121:
 556:Src/ili9341.c **** 	{
 1643              		.loc 1 556 0
 1644 007c 2368     		ldr	r3, [r4]
 1645 007e 9A68     		ldr	r2, [r3, #8]
 1646 0080 12F0020F 		tst	r2, #2
 1647 0084 0AD1     		bne	.L153
 558:Src/ili9341.c **** 		{
 1648              		.loc 1 558 0
 1649 0086 FFF7FEFF 		bl	HAL_GetTick
 1650              	.LVL184:
 1651 008a 401B     		subs	r0, r0, r5
 1652 008c B0F5FA7F 		cmp	r0, #500
 1653 0090 F4D3     		bcc	.L121
 560:Src/ili9341.c **** 		}
 1654              		.loc 1 560 0
 1655 0092 0321     		movs	r1, #3
 1656 0094 2046     		mov	r0, r4
 1657 0096 FFF7FEFF 		bl	ILI9341_SPI_Error
 1658              	.LVL185:
 1659 009a CEE7     		b	.L117
 1660              	.L153:
 563:Src/ili9341.c **** 	/*3rd byte*/
 1661              		.loc 1 563 0
 1662 009c F2B2     		uxtb	r2, r6
 1663 009e 1A73     		strb	r2, [r3, #12]
 1664              	.L123:
 565:Src/ili9341.c **** 	{
 1665              		.loc 1 565 0
 1666 00a0 2368     		ldr	r3, [r4]
 1667 00a2 9A68     		ldr	r2, [r3, #8]
 1668 00a4 12F0020F 		tst	r2, #2
 1669 00a8 0AD1     		bne	.L154
 567:Src/ili9341.c **** 		{
 1670              		.loc 1 567 0
 1671 00aa FFF7FEFF 		bl	HAL_GetTick
 1672              	.LVL186:
 1673 00ae 401B     		subs	r0, r0, r5
 1674 00b0 B0F5FA7F 		cmp	r0, #500
 1675 00b4 F4D3     		bcc	.L123
 569:Src/ili9341.c **** 		}
 1676              		.loc 1 569 0
 1677 00b6 0321     		movs	r1, #3
 1678 00b8 2046     		mov	r0, r4
 1679 00ba FFF7FEFF 		bl	ILI9341_SPI_Error
 1680              	.LVL187:
 1681 00be BCE7     		b	.L117
 1682              	.L154:
 572:Src/ili9341.c **** 	/*4th byte*/
 1683              		.loc 1 572 0
 1684 00c0 3A0A     		lsrs	r2, r7, #8
 1685 00c2 1A73     		strb	r2, [r3, #12]
 1686              	.L125:
 574:Src/ili9341.c **** 	{
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 46


 1687              		.loc 1 574 0
 1688 00c4 2368     		ldr	r3, [r4]
 1689 00c6 9A68     		ldr	r2, [r3, #8]
 1690 00c8 12F0020F 		tst	r2, #2
 1691 00cc 0AD1     		bne	.L155
 576:Src/ili9341.c **** 		{
 1692              		.loc 1 576 0
 1693 00ce FFF7FEFF 		bl	HAL_GetTick
 1694              	.LVL188:
 1695 00d2 401B     		subs	r0, r0, r5
 1696 00d4 B0F5FA7F 		cmp	r0, #500
 1697 00d8 F4D3     		bcc	.L125
 578:Src/ili9341.c **** 		}
 1698              		.loc 1 578 0
 1699 00da 0321     		movs	r1, #3
 1700 00dc 2046     		mov	r0, r4
 1701 00de FFF7FEFF 		bl	ILI9341_SPI_Error
 1702              	.LVL189:
 1703 00e2 AAE7     		b	.L117
 1704              	.L155:
 581:Src/ili9341.c **** 	/*send 1 byte page address set command*/
 1705              		.loc 1 581 0
 1706 00e4 FAB2     		uxtb	r2, r7
 1707 00e6 1A73     		strb	r2, [r3, #12]
 1708              	.L127:
 584:Src/ili9341.c **** 	{
 1709              		.loc 1 584 0
 1710 00e8 2368     		ldr	r3, [r4]
 1711 00ea 9B68     		ldr	r3, [r3, #8]
 1712 00ec 13F0020F 		tst	r3, #2
 1713 00f0 0AD1     		bne	.L156
 586:Src/ili9341.c **** 		{
 1714              		.loc 1 586 0
 1715 00f2 FFF7FEFF 		bl	HAL_GetTick
 1716              	.LVL190:
 1717 00f6 401B     		subs	r0, r0, r5
 1718 00f8 B0F5FA7F 		cmp	r0, #500
 1719 00fc F4D3     		bcc	.L127
 588:Src/ili9341.c **** 		}
 1720              		.loc 1 588 0
 1721 00fe 0321     		movs	r1, #3
 1722 0100 2046     		mov	r0, r4
 1723 0102 FFF7FEFF 		bl	ILI9341_SPI_Error
 1724              	.LVL191:
 1725 0106 98E7     		b	.L117
 1726              	.L156:
 591:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
 1727              		.loc 1 591 0
 1728 0108 684B     		ldr	r3, .L165
 1729 010a 4FF08052 		mov	r2, #268435456
 1730 010e 1A61     		str	r2, [r3, #16]
 592:Src/ili9341.c **** 	
 1731              		.loc 1 592 0
 1732 0110 2368     		ldr	r3, [r4]
 1733 0112 2B22     		movs	r2, #43
 1734 0114 1A73     		strb	r2, [r3, #12]
 1735              	.L129:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 47


 597:Src/ili9341.c **** 	{
 1736              		.loc 1 597 0
 1737 0116 2368     		ldr	r3, [r4]
 1738 0118 9B68     		ldr	r3, [r3, #8]
 1739 011a 13F0020F 		tst	r3, #2
 1740 011e 0AD1     		bne	.L157
 599:Src/ili9341.c **** 		{
 1741              		.loc 1 599 0
 1742 0120 FFF7FEFF 		bl	HAL_GetTick
 1743              	.LVL192:
 1744 0124 401B     		subs	r0, r0, r5
 1745 0126 B0F5FA7F 		cmp	r0, #500
 1746 012a F4D3     		bcc	.L129
 601:Src/ili9341.c **** 		}
 1747              		.loc 1 601 0
 1748 012c 0321     		movs	r1, #3
 1749 012e 2046     		mov	r0, r4
 1750 0130 FFF7FEFF 		bl	ILI9341_SPI_Error
 1751              	.LVL193:
 1752 0134 81E7     		b	.L117
 1753              	.L157:
 604:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posY>>8);
 1754              		.loc 1 604 0
 1755 0136 5D4B     		ldr	r3, .L165
 1756 0138 4FF48052 		mov	r2, #4096
 1757 013c 1A61     		str	r2, [r3, #16]
 605:Src/ili9341.c **** 	/*2nd byte*/
 1758              		.loc 1 605 0
 1759 013e 2368     		ldr	r3, [r4]
 1760 0140 4FEA1822 		lsr	r2, r8, #8
 1761 0144 1A73     		strb	r2, [r3, #12]
 1762              	.L131:
 607:Src/ili9341.c **** 	{
 1763              		.loc 1 607 0
 1764 0146 2368     		ldr	r3, [r4]
 1765 0148 9A68     		ldr	r2, [r3, #8]
 1766 014a 12F0020F 		tst	r2, #2
 1767 014e 0AD1     		bne	.L158
 609:Src/ili9341.c **** 		{
 1768              		.loc 1 609 0
 1769 0150 FFF7FEFF 		bl	HAL_GetTick
 1770              	.LVL194:
 1771 0154 401B     		subs	r0, r0, r5
 1772 0156 B0F5FA7F 		cmp	r0, #500
 1773 015a F4D3     		bcc	.L131
 611:Src/ili9341.c **** 		}
 1774              		.loc 1 611 0
 1775 015c 0321     		movs	r1, #3
 1776 015e 2046     		mov	r0, r4
 1777 0160 FFF7FEFF 		bl	ILI9341_SPI_Error
 1778              	.LVL195:
 1779 0164 69E7     		b	.L117
 1780              	.L158:
 614:Src/ili9341.c **** 	/*3rd byte*/
 1781              		.loc 1 614 0
 1782 0166 5FFA88F2 		uxtb	r2, r8
 1783 016a 1A73     		strb	r2, [r3, #12]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 48


 1784              	.L133:
 616:Src/ili9341.c **** 	{
 1785              		.loc 1 616 0
 1786 016c 2368     		ldr	r3, [r4]
 1787 016e 9A68     		ldr	r2, [r3, #8]
 1788 0170 12F0020F 		tst	r2, #2
 1789 0174 0AD1     		bne	.L159
 618:Src/ili9341.c **** 		{
 1790              		.loc 1 618 0
 1791 0176 FFF7FEFF 		bl	HAL_GetTick
 1792              	.LVL196:
 1793 017a 401B     		subs	r0, r0, r5
 1794 017c B0F5FA7F 		cmp	r0, #500
 1795 0180 F4D3     		bcc	.L133
 620:Src/ili9341.c **** 		}
 1796              		.loc 1 620 0
 1797 0182 0321     		movs	r1, #3
 1798 0184 2046     		mov	r0, r4
 1799 0186 FFF7FEFF 		bl	ILI9341_SPI_Error
 1800              	.LVL197:
 1801 018a 56E7     		b	.L117
 1802              	.L159:
 623:Src/ili9341.c **** 	/*4th byte*/
 1803              		.loc 1 623 0
 1804 018c 4FEA1922 		lsr	r2, r9, #8
 1805 0190 1A73     		strb	r2, [r3, #12]
 1806              	.L135:
 625:Src/ili9341.c **** 	{
 1807              		.loc 1 625 0
 1808 0192 2368     		ldr	r3, [r4]
 1809 0194 9A68     		ldr	r2, [r3, #8]
 1810 0196 12F0020F 		tst	r2, #2
 1811 019a 0AD1     		bne	.L160
 627:Src/ili9341.c **** 		{
 1812              		.loc 1 627 0
 1813 019c FFF7FEFF 		bl	HAL_GetTick
 1814              	.LVL198:
 1815 01a0 401B     		subs	r0, r0, r5
 1816 01a2 B0F5FA7F 		cmp	r0, #500
 1817 01a6 F4D3     		bcc	.L135
 629:Src/ili9341.c **** 		}
 1818              		.loc 1 629 0
 1819 01a8 0321     		movs	r1, #3
 1820 01aa 2046     		mov	r0, r4
 1821 01ac FFF7FEFF 		bl	ILI9341_SPI_Error
 1822              	.LVL199:
 1823 01b0 43E7     		b	.L117
 1824              	.L160:
 632:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 1825              		.loc 1 632 0
 1826 01b2 5FFA89F2 		uxtb	r2, r9
 1827 01b6 1A73     		strb	r2, [r3, #12]
 1828              	.L137:
 633:Src/ili9341.c **** 	{
 1829              		.loc 1 633 0
 1830 01b8 2368     		ldr	r3, [r4]
 1831 01ba 9B68     		ldr	r3, [r3, #8]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 49


 1832 01bc 13F0020F 		tst	r3, #2
 1833 01c0 0AD1     		bne	.L161
 635:Src/ili9341.c **** 		{
 1834              		.loc 1 635 0
 1835 01c2 FFF7FEFF 		bl	HAL_GetTick
 1836              	.LVL200:
 1837 01c6 401B     		subs	r0, r0, r5
 1838 01c8 B0F5FA7F 		cmp	r0, #500
 1839 01cc F4D3     		bcc	.L137
 637:Src/ili9341.c **** 		}
 1840              		.loc 1 637 0
 1841 01ce 0321     		movs	r1, #3
 1842 01d0 2046     		mov	r0, r4
 1843 01d2 FFF7FEFF 		bl	ILI9341_SPI_Error
 1844              	.LVL201:
 1845 01d6 30E7     		b	.L117
 1846              	.L161:
 640:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
 1847              		.loc 1 640 0
 1848 01d8 344B     		ldr	r3, .L165
 1849 01da 4FF08052 		mov	r2, #268435456
 1850 01de 1A61     		str	r2, [r3, #16]
 641:Src/ili9341.c **** 	/*send 6 bytes color information*/
 1851              		.loc 1 641 0
 1852 01e0 2368     		ldr	r3, [r4]
 1853 01e2 2C22     		movs	r2, #44
 1854 01e4 1A73     		strb	r2, [r3, #12]
 643:Src/ili9341.c **** 	{
 1855              		.loc 1 643 0
 1856 01e6 05E0     		b	.L139
 1857              	.L140:
 645:Src/ili9341.c **** 		{
 1858              		.loc 1 645 0
 1859 01e8 FFF7FEFF 		bl	HAL_GetTick
 1860              	.LVL202:
 1861 01ec 401B     		subs	r0, r0, r5
 1862 01ee B0F5FA7F 		cmp	r0, #500
 1863 01f2 19D2     		bcs	.L162
 1864              	.L139:
 643:Src/ili9341.c **** 	{
 1865              		.loc 1 643 0
 1866 01f4 2368     		ldr	r3, [r4]
 1867 01f6 9B68     		ldr	r3, [r3, #8]
 1868 01f8 13F0020F 		tst	r3, #2
 1869 01fc F4D0     		beq	.L140
 650:Src/ili9341.c **** 	for(uint16_t i=0; i <= endX - posX; i++)
 1870              		.loc 1 650 0
 1871 01fe 2B4B     		ldr	r3, .L165
 1872 0200 4FF48052 		mov	r2, #4096
 1873 0204 1A61     		str	r2, [r3, #16]
 1874              	.LVL203:
 1875              	.LBB5:
 651:Src/ili9341.c **** 		for(uint16_t j=0; j <= endY - posY; j++)
 1876              		.loc 1 651 0
 1877 0206 0023     		movs	r3, #0
 1878 0208 0193     		str	r3, [sp, #4]
 1879              	.LVL204:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 50


 1880              	.L141:
 651:Src/ili9341.c **** 		for(uint16_t j=0; j <= endY - posY; j++)
 1881              		.loc 1 651 0 is_stmt 0 discriminator 1
 1882 020a BB1B     		subs	r3, r7, r6
 1883 020c 019A     		ldr	r2, [sp, #4]
 1884 020e 9A42     		cmp	r2, r3
 1885 0210 45DC     		bgt	.L147
 1886              	.LBB6:
 652:Src/ili9341.c **** 		{
 1887              		.loc 1 652 0 is_stmt 1
 1888 0212 4FF0000B 		mov	fp, #0
 1889              	.L146:
 1890              	.LVL205:
 652:Src/ili9341.c **** 		{
 1891              		.loc 1 652 0 is_stmt 0 discriminator 1
 1892 0216 A9EB0803 		sub	r3, r9, r8
 1893 021a 9B45     		cmp	fp, r3
 1894 021c 0FDD     		ble	.L142
 1895              	.LBE6:
 651:Src/ili9341.c **** 		for(uint16_t j=0; j <= endY - posY; j++)
 1896              		.loc 1 651 0 is_stmt 1 discriminator 2
 1897 021e 019B     		ldr	r3, [sp, #4]
 1898 0220 0133     		adds	r3, r3, #1
 1899 0222 9BB2     		uxth	r3, r3
 1900 0224 0193     		str	r3, [sp, #4]
 1901              	.LVL206:
 1902 0226 F0E7     		b	.L141
 1903              	.LVL207:
 1904              	.L162:
 1905              	.LBE5:
 647:Src/ili9341.c **** 		}
 1906              		.loc 1 647 0
 1907 0228 0321     		movs	r1, #3
 1908 022a 2046     		mov	r0, r4
 1909 022c FFF7FEFF 		bl	ILI9341_SPI_Error
 1910              	.LVL208:
 1911 0230 03E7     		b	.L117
 1912              	.LVL209:
 1913              	.L143:
 1914              	.LBB8:
 1915              	.LBB7:
 656:Src/ili9341.c **** 				{
 1916              		.loc 1 656 0
 1917 0232 FFF7FEFF 		bl	HAL_GetTick
 1918              	.LVL210:
 1919 0236 401B     		subs	r0, r0, r5
 1920 0238 B0F5FA7F 		cmp	r0, #500
 1921 023c 17D2     		bcs	.L163
 1922              	.L142:
 654:Src/ili9341.c **** 			{
 1923              		.loc 1 654 0
 1924 023e 2368     		ldr	r3, [r4]
 1925 0240 9A68     		ldr	r2, [r3, #8]
 1926 0242 12F0020F 		tst	r2, #2
 1927 0246 F4D0     		beq	.L143
 661:Src/ili9341.c **** 			while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 1928              		.loc 1 661 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 51


 1929 0248 4FEA1A22 		lsr	r2, r10, #8
 1930 024c 1A73     		strb	r2, [r3, #12]
 1931              	.L144:
 662:Src/ili9341.c **** 			{
 1932              		.loc 1 662 0
 1933 024e 2368     		ldr	r3, [r4]
 1934 0250 9A68     		ldr	r2, [r3, #8]
 1935 0252 12F0020F 		tst	r2, #2
 1936 0256 0FD1     		bne	.L164
 664:Src/ili9341.c **** 				{
 1937              		.loc 1 664 0
 1938 0258 FFF7FEFF 		bl	HAL_GetTick
 1939              	.LVL211:
 1940 025c 401B     		subs	r0, r0, r5
 1941 025e B0F5FA7F 		cmp	r0, #500
 1942 0262 F4D3     		bcc	.L144
 666:Src/ili9341.c **** 				}
 1943              		.loc 1 666 0
 1944 0264 0321     		movs	r1, #3
 1945 0266 2046     		mov	r0, r4
 1946 0268 FFF7FEFF 		bl	ILI9341_SPI_Error
 1947              	.LVL212:
 1948 026c E5E6     		b	.L117
 1949              	.L163:
 658:Src/ili9341.c **** 				}
 1950              		.loc 1 658 0
 1951 026e 0321     		movs	r1, #3
 1952 0270 2046     		mov	r0, r4
 1953 0272 FFF7FEFF 		bl	ILI9341_SPI_Error
 1954              	.LVL213:
 1955 0276 E0E6     		b	.L117
 1956              	.L164:
 669:Src/ili9341.c **** 		}
 1957              		.loc 1 669 0 discriminator 2
 1958 0278 5FFA8AF2 		uxtb	r2, r10
 1959 027c 1A73     		strb	r2, [r3, #12]
 652:Src/ili9341.c **** 		{
 1960              		.loc 1 652 0 discriminator 2
 1961 027e 0BF1010B 		add	fp, fp, #1
 1962              	.LVL214:
 1963 0282 1FFA8BFB 		uxth	fp, fp
 1964              	.LVL215:
 1965 0286 C6E7     		b	.L146
 1966              	.LVL216:
 1967              	.L148:
 1968              	.LBE7:
 1969              	.LBE8:
 673:Src/ili9341.c **** 		{
 1970              		.loc 1 673 0
 1971 0288 FFF7FEFF 		bl	HAL_GetTick
 1972              	.LVL217:
 1973 028c 401B     		subs	r0, r0, r5
 1974 028e B0F5FA7F 		cmp	r0, #500
 1975 0292 04D3     		bcc	.L147
 675:Src/ili9341.c **** 		}
 1976              		.loc 1 675 0
 1977 0294 0321     		movs	r1, #3
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 52


 1978 0296 2046     		mov	r0, r4
 1979 0298 FFF7FEFF 		bl	ILI9341_SPI_Error
 1980              	.LVL218:
 1981 029c CDE6     		b	.L117
 1982              	.L147:
 671:Src/ili9341.c **** 	{
 1983              		.loc 1 671 0
 1984 029e 2368     		ldr	r3, [r4]
 1985 02a0 9B68     		ldr	r3, [r3, #8]
 1986 02a2 13F0020F 		tst	r3, #2
 1987 02a6 EFD0     		beq	.L148
 678:Src/ili9341.c **** }
 1988              		.loc 1 678 0
 1989 02a8 0020     		movs	r0, #0
 1990 02aa C6E6     		b	.L117
 1991              	.L166:
 1992              		.align	2
 1993              	.L165:
 1994 02ac 00080140 		.word	1073809408
 1995              		.cfi_endproc
 1996              	.LFE75:
 1998              		.section	.text.ILI9341_Draw_Pixel,"ax",%progbits
 1999              		.align	1
 2000              		.global	ILI9341_Draw_Pixel
 2001              		.syntax unified
 2002              		.thumb
 2003              		.thumb_func
 2004              		.fpu softvfp
 2006              	ILI9341_Draw_Pixel:
 2007              	.LFB76:
 680:Src/ili9341.c **** 
 681:Src/ili9341.c **** ILI9341_Draw_Pixel(SPI_HandleTypeDef* hspi_handle, uint16_t posX, uint16_t posY, uint16_t Color)
 682:Src/ili9341.c **** {
 2008              		.loc 1 682 0
 2009              		.cfi_startproc
 2010              		@ args = 0, pretend = 0, frame = 0
 2011              		@ frame_needed = 0, uses_anonymous_args = 0
 2012              	.LVL219:
 2013 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 2014              	.LCFI14:
 2015              		.cfi_def_cfa_offset 32
 2016              		.cfi_offset 3, -32
 2017              		.cfi_offset 4, -28
 2018              		.cfi_offset 5, -24
 2019              		.cfi_offset 6, -20
 2020              		.cfi_offset 7, -16
 2021              		.cfi_offset 8, -12
 2022              		.cfi_offset 9, -8
 2023              		.cfi_offset 14, -4
 2024 0004 0446     		mov	r4, r0
 2025 0006 0E46     		mov	r6, r1
 2026 0008 1746     		mov	r7, r2
 2027 000a 9846     		mov	r8, r3
 683:Src/ili9341.c **** 	register const uint32_t tickstart_local = HAL_GetTick();
 2028              		.loc 1 683 0
 2029 000c FFF7FEFF 		bl	HAL_GetTick
 2030              	.LVL220:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 53


 2031 0010 0546     		mov	r5, r0
 2032              	.LVL221:
 2033              	.L168:
 684:Src/ili9341.c **** 	const uint32_t Timeout = 500;
 685:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 2034              		.loc 1 685 0
 2035 0012 2368     		ldr	r3, [r4]
 2036 0014 9B68     		ldr	r3, [r3, #8]
 2037 0016 13F0020F 		tst	r3, #2
 2038 001a 0BD1     		bne	.L198
 686:Src/ili9341.c **** 	{
 687:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 2039              		.loc 1 687 0
 2040 001c FFF7FEFF 		bl	HAL_GetTick
 2041              	.LVL222:
 2042 0020 401B     		subs	r0, r0, r5
 2043 0022 B0F5FA7F 		cmp	r0, #500
 2044 0026 F4D3     		bcc	.L168
 688:Src/ili9341.c **** 		{
 689:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 2045              		.loc 1 689 0
 2046 0028 0321     		movs	r1, #3
 2047 002a 2046     		mov	r0, r4
 2048 002c FFF7FEFF 		bl	ILI9341_SPI_Error
 2049              	.LVL223:
 2050              	.L167:
 690:Src/ili9341.c **** 		}
 691:Src/ili9341.c **** 	}
 692:Src/ili9341.c **** 	LCD_DC_PORT->BSRR = (uint32_t)LCD_DC_PIN << 16U;
 693:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2A;
 694:Src/ili9341.c **** 	
 695:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 696:Src/ili9341.c **** 	{
 697:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 698:Src/ili9341.c **** 		{
 699:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 700:Src/ili9341.c **** 		}
 701:Src/ili9341.c **** 	}
 702:Src/ili9341.c **** 	/*moved here*/
 703:Src/ili9341.c **** 	LCD_DC_PORT->BSRR = LCD_DC_PIN;
 704:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posX>>8);
 705:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 706:Src/ili9341.c **** 	{
 707:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 708:Src/ili9341.c **** 		{
 709:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 710:Src/ili9341.c **** 		}
 711:Src/ili9341.c **** 	}
 712:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posX);
 713:Src/ili9341.c **** 					while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 714:Src/ili9341.c **** 	{
 715:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 716:Src/ili9341.c **** 		{
 717:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 718:Src/ili9341.c **** 		}
 719:Src/ili9341.c **** 	}
 720:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)((posX)>>8);
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 54


 721:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 722:Src/ili9341.c **** 	{
 723:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 724:Src/ili9341.c **** 		{
 725:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 726:Src/ili9341.c **** 		}
 727:Src/ili9341.c **** 	}
 728:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posX);
 729:Src/ili9341.c **** 	
 730:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 731:Src/ili9341.c **** 	{
 732:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 733:Src/ili9341.c **** 		{
 734:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 735:Src/ili9341.c **** 		}
 736:Src/ili9341.c **** 	}
 737:Src/ili9341.c **** 	LCD_DC_PORT->BSRR = (uint32_t)LCD_DC_PIN << 16U;
 738:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
 739:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 740:Src/ili9341.c **** 	{
 741:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 742:Src/ili9341.c **** 		{
 743:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 744:Src/ili9341.c **** 		}
 745:Src/ili9341.c **** 	}
 746:Src/ili9341.c **** 	/*moved here*/
 747:Src/ili9341.c **** 	LCD_DC_PORT->BSRR = LCD_DC_PIN;
 748:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)((posY)>>8);
 749:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 750:Src/ili9341.c **** 	{
 751:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 752:Src/ili9341.c **** 		{
 753:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 754:Src/ili9341.c **** 		}
 755:Src/ili9341.c **** 	}
 756:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posY);
 757:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 758:Src/ili9341.c **** 	{
 759:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 760:Src/ili9341.c **** 		{
 761:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 762:Src/ili9341.c **** 		}
 763:Src/ili9341.c **** 	}
 764:Src/ili9341.c **** 					*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)((posY)>>8);
 765:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 766:Src/ili9341.c **** 	{
 767:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 768:Src/ili9341.c **** 		{
 769:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 770:Src/ili9341.c **** 		}
 771:Src/ili9341.c **** 	}
 772:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posY);
 773:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 774:Src/ili9341.c **** 	{
 775:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 776:Src/ili9341.c **** 		{
 777:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 55


 778:Src/ili9341.c **** 		}
 779:Src/ili9341.c **** 	}
 780:Src/ili9341.c **** 	LCD_DC_PORT->BSRR = (uint32_t)LCD_DC_PIN << 16U;
 781:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
 782:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 783:Src/ili9341.c **** 	{
 784:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 785:Src/ili9341.c **** 		{
 786:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 787:Src/ili9341.c **** 		}
 788:Src/ili9341.c **** 	}
 789:Src/ili9341.c **** 	/*moved here*/
 790:Src/ili9341.c **** 	LCD_DC_PORT->BSRR = LCD_DC_PIN;
 791:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(Color>>8);
 792:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 793:Src/ili9341.c **** 	{
 794:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 795:Src/ili9341.c **** 		{
 796:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 797:Src/ili9341.c **** 		}
 798:Src/ili9341.c **** 	}
 799:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(Color);
 800:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 801:Src/ili9341.c **** 	{
 802:Src/ili9341.c **** 		if((HAL_GetTick()-tickstart_local) >=  Timeout)
 803:Src/ili9341.c **** 		{
 804:Src/ili9341.c **** 			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
 805:Src/ili9341.c **** 		}
 806:Src/ili9341.c **** 	}
 807:Src/ili9341.c **** 	return HAL_OK;
 808:Src/ili9341.c **** }
 2051              		.loc 1 808 0
 2052 0030 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 2053              	.LVL224:
 2054              	.L198:
 692:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2A;
 2055              		.loc 1 692 0
 2056 0034 874B     		ldr	r3, .L212
 2057 0036 4FF08052 		mov	r2, #268435456
 2058 003a 1A61     		str	r2, [r3, #16]
 693:Src/ili9341.c **** 	
 2059              		.loc 1 693 0
 2060 003c 2368     		ldr	r3, [r4]
 2061 003e 2A22     		movs	r2, #42
 2062 0040 1A73     		strb	r2, [r3, #12]
 2063              	.L171:
 695:Src/ili9341.c **** 	{
 2064              		.loc 1 695 0
 2065 0042 2368     		ldr	r3, [r4]
 2066 0044 9B68     		ldr	r3, [r3, #8]
 2067 0046 13F0020F 		tst	r3, #2
 2068 004a 0AD1     		bne	.L199
 697:Src/ili9341.c **** 		{
 2069              		.loc 1 697 0
 2070 004c FFF7FEFF 		bl	HAL_GetTick
 2071              	.LVL225:
 2072 0050 401B     		subs	r0, r0, r5
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 56


 2073 0052 B0F5FA7F 		cmp	r0, #500
 2074 0056 F4D3     		bcc	.L171
 699:Src/ili9341.c **** 		}
 2075              		.loc 1 699 0
 2076 0058 0321     		movs	r1, #3
 2077 005a 2046     		mov	r0, r4
 2078 005c FFF7FEFF 		bl	ILI9341_SPI_Error
 2079              	.LVL226:
 2080 0060 E6E7     		b	.L167
 2081              	.L199:
 703:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posX>>8);
 2082              		.loc 1 703 0
 2083 0062 7C4B     		ldr	r3, .L212
 2084 0064 4FF48052 		mov	r2, #4096
 2085 0068 1A61     		str	r2, [r3, #16]
 704:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 2086              		.loc 1 704 0
 2087 006a 2368     		ldr	r3, [r4]
 2088 006c 4FEA1629 		lsr	r9, r6, #8
 2089 0070 83F80C90 		strb	r9, [r3, #12]
 2090              	.L173:
 705:Src/ili9341.c **** 	{
 2091              		.loc 1 705 0
 2092 0074 2368     		ldr	r3, [r4]
 2093 0076 9A68     		ldr	r2, [r3, #8]
 2094 0078 12F0020F 		tst	r2, #2
 2095 007c 0AD1     		bne	.L200
 707:Src/ili9341.c **** 		{
 2096              		.loc 1 707 0
 2097 007e FFF7FEFF 		bl	HAL_GetTick
 2098              	.LVL227:
 2099 0082 401B     		subs	r0, r0, r5
 2100 0084 B0F5FA7F 		cmp	r0, #500
 2101 0088 F4D3     		bcc	.L173
 709:Src/ili9341.c **** 		}
 2102              		.loc 1 709 0
 2103 008a 0321     		movs	r1, #3
 2104 008c 2046     		mov	r0, r4
 2105 008e FFF7FEFF 		bl	ILI9341_SPI_Error
 2106              	.LVL228:
 2107 0092 CDE7     		b	.L167
 2108              	.L200:
 712:Src/ili9341.c **** 					while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 2109              		.loc 1 712 0
 2110 0094 F6B2     		uxtb	r6, r6
 2111 0096 1E73     		strb	r6, [r3, #12]
 2112              	.L175:
 713:Src/ili9341.c **** 	{
 2113              		.loc 1 713 0
 2114 0098 2368     		ldr	r3, [r4]
 2115 009a 9A68     		ldr	r2, [r3, #8]
 2116 009c 12F0020F 		tst	r2, #2
 2117 00a0 0AD1     		bne	.L201
 715:Src/ili9341.c **** 		{
 2118              		.loc 1 715 0
 2119 00a2 FFF7FEFF 		bl	HAL_GetTick
 2120              	.LVL229:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 57


 2121 00a6 401B     		subs	r0, r0, r5
 2122 00a8 B0F5FA7F 		cmp	r0, #500
 2123 00ac F4D3     		bcc	.L175
 717:Src/ili9341.c **** 		}
 2124              		.loc 1 717 0
 2125 00ae 0321     		movs	r1, #3
 2126 00b0 2046     		mov	r0, r4
 2127 00b2 FFF7FEFF 		bl	ILI9341_SPI_Error
 2128              	.LVL230:
 2129 00b6 BBE7     		b	.L167
 2130              	.L201:
 720:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 2131              		.loc 1 720 0
 2132 00b8 83F80C90 		strb	r9, [r3, #12]
 2133              	.L177:
 721:Src/ili9341.c **** 	{
 2134              		.loc 1 721 0
 2135 00bc 2368     		ldr	r3, [r4]
 2136 00be 9A68     		ldr	r2, [r3, #8]
 2137 00c0 12F0020F 		tst	r2, #2
 2138 00c4 0AD1     		bne	.L202
 723:Src/ili9341.c **** 		{
 2139              		.loc 1 723 0
 2140 00c6 FFF7FEFF 		bl	HAL_GetTick
 2141              	.LVL231:
 2142 00ca 401B     		subs	r0, r0, r5
 2143 00cc B0F5FA7F 		cmp	r0, #500
 2144 00d0 F4D3     		bcc	.L177
 725:Src/ili9341.c **** 		}
 2145              		.loc 1 725 0
 2146 00d2 0321     		movs	r1, #3
 2147 00d4 2046     		mov	r0, r4
 2148 00d6 FFF7FEFF 		bl	ILI9341_SPI_Error
 2149              	.LVL232:
 2150 00da A9E7     		b	.L167
 2151              	.L202:
 728:Src/ili9341.c **** 	
 2152              		.loc 1 728 0
 2153 00dc 1E73     		strb	r6, [r3, #12]
 2154              	.L179:
 730:Src/ili9341.c **** 	{
 2155              		.loc 1 730 0
 2156 00de 2368     		ldr	r3, [r4]
 2157 00e0 9B68     		ldr	r3, [r3, #8]
 2158 00e2 13F0020F 		tst	r3, #2
 2159 00e6 0AD1     		bne	.L203
 732:Src/ili9341.c **** 		{
 2160              		.loc 1 732 0
 2161 00e8 FFF7FEFF 		bl	HAL_GetTick
 2162              	.LVL233:
 2163 00ec 401B     		subs	r0, r0, r5
 2164 00ee B0F5FA7F 		cmp	r0, #500
 2165 00f2 F4D3     		bcc	.L179
 734:Src/ili9341.c **** 		}
 2166              		.loc 1 734 0
 2167 00f4 0321     		movs	r1, #3
 2168 00f6 2046     		mov	r0, r4
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 58


 2169 00f8 FFF7FEFF 		bl	ILI9341_SPI_Error
 2170              	.LVL234:
 2171 00fc 98E7     		b	.L167
 2172              	.L203:
 737:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
 2173              		.loc 1 737 0
 2174 00fe 554B     		ldr	r3, .L212
 2175 0100 4FF08052 		mov	r2, #268435456
 2176 0104 1A61     		str	r2, [r3, #16]
 738:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 2177              		.loc 1 738 0
 2178 0106 2368     		ldr	r3, [r4]
 2179 0108 2B22     		movs	r2, #43
 2180 010a 1A73     		strb	r2, [r3, #12]
 2181              	.L181:
 739:Src/ili9341.c **** 	{
 2182              		.loc 1 739 0
 2183 010c 2368     		ldr	r3, [r4]
 2184 010e 9B68     		ldr	r3, [r3, #8]
 2185 0110 13F0020F 		tst	r3, #2
 2186 0114 0AD1     		bne	.L204
 741:Src/ili9341.c **** 		{
 2187              		.loc 1 741 0
 2188 0116 FFF7FEFF 		bl	HAL_GetTick
 2189              	.LVL235:
 2190 011a 401B     		subs	r0, r0, r5
 2191 011c B0F5FA7F 		cmp	r0, #500
 2192 0120 F4D3     		bcc	.L181
 743:Src/ili9341.c **** 		}
 2193              		.loc 1 743 0
 2194 0122 0321     		movs	r1, #3
 2195 0124 2046     		mov	r0, r4
 2196 0126 FFF7FEFF 		bl	ILI9341_SPI_Error
 2197              	.LVL236:
 2198 012a 81E7     		b	.L167
 2199              	.L204:
 747:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)((posY)>>8);
 2200              		.loc 1 747 0
 2201 012c 494B     		ldr	r3, .L212
 2202 012e 4FF48052 		mov	r2, #4096
 2203 0132 1A61     		str	r2, [r3, #16]
 748:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 2204              		.loc 1 748 0
 2205 0134 2368     		ldr	r3, [r4]
 2206 0136 3E0A     		lsrs	r6, r7, #8
 2207 0138 1E73     		strb	r6, [r3, #12]
 2208              	.L183:
 749:Src/ili9341.c **** 	{
 2209              		.loc 1 749 0
 2210 013a 2368     		ldr	r3, [r4]
 2211 013c 9A68     		ldr	r2, [r3, #8]
 2212 013e 12F0020F 		tst	r2, #2
 2213 0142 0AD1     		bne	.L205
 751:Src/ili9341.c **** 		{
 2214              		.loc 1 751 0
 2215 0144 FFF7FEFF 		bl	HAL_GetTick
 2216              	.LVL237:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 59


 2217 0148 401B     		subs	r0, r0, r5
 2218 014a B0F5FA7F 		cmp	r0, #500
 2219 014e F4D3     		bcc	.L183
 753:Src/ili9341.c **** 		}
 2220              		.loc 1 753 0
 2221 0150 0321     		movs	r1, #3
 2222 0152 2046     		mov	r0, r4
 2223 0154 FFF7FEFF 		bl	ILI9341_SPI_Error
 2224              	.LVL238:
 2225 0158 6AE7     		b	.L167
 2226              	.L205:
 756:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 2227              		.loc 1 756 0
 2228 015a FFB2     		uxtb	r7, r7
 2229 015c 1F73     		strb	r7, [r3, #12]
 2230              	.L185:
 757:Src/ili9341.c **** 	{
 2231              		.loc 1 757 0
 2232 015e 2368     		ldr	r3, [r4]
 2233 0160 9A68     		ldr	r2, [r3, #8]
 2234 0162 12F0020F 		tst	r2, #2
 2235 0166 0AD1     		bne	.L206
 759:Src/ili9341.c **** 		{
 2236              		.loc 1 759 0
 2237 0168 FFF7FEFF 		bl	HAL_GetTick
 2238              	.LVL239:
 2239 016c 401B     		subs	r0, r0, r5
 2240 016e B0F5FA7F 		cmp	r0, #500
 2241 0172 F4D3     		bcc	.L185
 761:Src/ili9341.c **** 		}
 2242              		.loc 1 761 0
 2243 0174 0321     		movs	r1, #3
 2244 0176 2046     		mov	r0, r4
 2245 0178 FFF7FEFF 		bl	ILI9341_SPI_Error
 2246              	.LVL240:
 2247 017c 58E7     		b	.L167
 2248              	.L206:
 764:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 2249              		.loc 1 764 0
 2250 017e 1E73     		strb	r6, [r3, #12]
 2251              	.L187:
 765:Src/ili9341.c **** 	{
 2252              		.loc 1 765 0
 2253 0180 2368     		ldr	r3, [r4]
 2254 0182 9A68     		ldr	r2, [r3, #8]
 2255 0184 12F0020F 		tst	r2, #2
 2256 0188 0AD1     		bne	.L207
 767:Src/ili9341.c **** 		{
 2257              		.loc 1 767 0
 2258 018a FFF7FEFF 		bl	HAL_GetTick
 2259              	.LVL241:
 2260 018e 401B     		subs	r0, r0, r5
 2261 0190 B0F5FA7F 		cmp	r0, #500
 2262 0194 F4D3     		bcc	.L187
 769:Src/ili9341.c **** 		}
 2263              		.loc 1 769 0
 2264 0196 0321     		movs	r1, #3
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 60


 2265 0198 2046     		mov	r0, r4
 2266 019a FFF7FEFF 		bl	ILI9341_SPI_Error
 2267              	.LVL242:
 2268 019e 47E7     		b	.L167
 2269              	.L207:
 772:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 2270              		.loc 1 772 0
 2271 01a0 1F73     		strb	r7, [r3, #12]
 2272              	.L189:
 773:Src/ili9341.c **** 	{
 2273              		.loc 1 773 0
 2274 01a2 2368     		ldr	r3, [r4]
 2275 01a4 9B68     		ldr	r3, [r3, #8]
 2276 01a6 13F0020F 		tst	r3, #2
 2277 01aa 0AD1     		bne	.L208
 775:Src/ili9341.c **** 		{
 2278              		.loc 1 775 0
 2279 01ac FFF7FEFF 		bl	HAL_GetTick
 2280              	.LVL243:
 2281 01b0 401B     		subs	r0, r0, r5
 2282 01b2 B0F5FA7F 		cmp	r0, #500
 2283 01b6 F4D3     		bcc	.L189
 777:Src/ili9341.c **** 		}
 2284              		.loc 1 777 0
 2285 01b8 0321     		movs	r1, #3
 2286 01ba 2046     		mov	r0, r4
 2287 01bc FFF7FEFF 		bl	ILI9341_SPI_Error
 2288              	.LVL244:
 2289 01c0 36E7     		b	.L167
 2290              	.L208:
 780:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
 2291              		.loc 1 780 0
 2292 01c2 244B     		ldr	r3, .L212
 2293 01c4 4FF08052 		mov	r2, #268435456
 2294 01c8 1A61     		str	r2, [r3, #16]
 781:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 2295              		.loc 1 781 0
 2296 01ca 2368     		ldr	r3, [r4]
 2297 01cc 2C22     		movs	r2, #44
 2298 01ce 1A73     		strb	r2, [r3, #12]
 782:Src/ili9341.c **** 	{
 2299              		.loc 1 782 0
 2300 01d0 05E0     		b	.L191
 2301              	.L192:
 784:Src/ili9341.c **** 		{
 2302              		.loc 1 784 0
 2303 01d2 FFF7FEFF 		bl	HAL_GetTick
 2304              	.LVL245:
 2305 01d6 401B     		subs	r0, r0, r5
 2306 01d8 B0F5FA7F 		cmp	r0, #500
 2307 01dc 0DD2     		bcs	.L209
 2308              	.L191:
 782:Src/ili9341.c **** 	{
 2309              		.loc 1 782 0
 2310 01de 2368     		ldr	r3, [r4]
 2311 01e0 9B68     		ldr	r3, [r3, #8]
 2312 01e2 13F0020F 		tst	r3, #2
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 61


 2313 01e6 F4D0     		beq	.L192
 790:Src/ili9341.c **** 	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(Color>>8);
 2314              		.loc 1 790 0
 2315 01e8 1A4B     		ldr	r3, .L212
 2316 01ea 4FF48052 		mov	r2, #4096
 2317 01ee 1A61     		str	r2, [r3, #16]
 791:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 2318              		.loc 1 791 0
 2319 01f0 2368     		ldr	r3, [r4]
 2320 01f2 4FEA1822 		lsr	r2, r8, #8
 2321 01f6 1A73     		strb	r2, [r3, #12]
 792:Src/ili9341.c **** 	{
 2322              		.loc 1 792 0
 2323 01f8 0AE0     		b	.L193
 2324              	.L209:
 786:Src/ili9341.c **** 		}
 2325              		.loc 1 786 0
 2326 01fa 0321     		movs	r1, #3
 2327 01fc 2046     		mov	r0, r4
 2328 01fe FFF7FEFF 		bl	ILI9341_SPI_Error
 2329              	.LVL246:
 2330 0202 15E7     		b	.L167
 2331              	.L194:
 794:Src/ili9341.c **** 		{
 2332              		.loc 1 794 0
 2333 0204 FFF7FEFF 		bl	HAL_GetTick
 2334              	.LVL247:
 2335 0208 401B     		subs	r0, r0, r5
 2336 020a B0F5FA7F 		cmp	r0, #500
 2337 020e 09D2     		bcs	.L210
 2338              	.L193:
 792:Src/ili9341.c **** 	{
 2339              		.loc 1 792 0
 2340 0210 2368     		ldr	r3, [r4]
 2341 0212 9A68     		ldr	r2, [r3, #8]
 2342 0214 12F0020F 		tst	r2, #2
 2343 0218 F4D0     		beq	.L194
 799:Src/ili9341.c **** 	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
 2344              		.loc 1 799 0
 2345 021a 5FFA88F8 		uxtb	r8, r8
 2346 021e 83F80C80 		strb	r8, [r3, #12]
 800:Src/ili9341.c **** 	{
 2347              		.loc 1 800 0
 2348 0222 0AE0     		b	.L195
 2349              	.L210:
 796:Src/ili9341.c **** 		}
 2350              		.loc 1 796 0
 2351 0224 0321     		movs	r1, #3
 2352 0226 2046     		mov	r0, r4
 2353 0228 FFF7FEFF 		bl	ILI9341_SPI_Error
 2354              	.LVL248:
 2355 022c 00E7     		b	.L167
 2356              	.L196:
 802:Src/ili9341.c **** 		{
 2357              		.loc 1 802 0
 2358 022e FFF7FEFF 		bl	HAL_GetTick
 2359              	.LVL249:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 62


 2360 0232 401B     		subs	r0, r0, r5
 2361 0234 B0F5FA7F 		cmp	r0, #500
 2362 0238 06D2     		bcs	.L211
 2363              	.L195:
 800:Src/ili9341.c **** 	{
 2364              		.loc 1 800 0
 2365 023a 2368     		ldr	r3, [r4]
 2366 023c 9B68     		ldr	r3, [r3, #8]
 2367 023e 13F0020F 		tst	r3, #2
 2368 0242 F4D0     		beq	.L196
 807:Src/ili9341.c **** }
 2369              		.loc 1 807 0
 2370 0244 0020     		movs	r0, #0
 2371 0246 F3E6     		b	.L167
 2372              	.L211:
 804:Src/ili9341.c **** 		}
 2373              		.loc 1 804 0
 2374 0248 0321     		movs	r1, #3
 2375 024a 2046     		mov	r0, r4
 2376 024c FFF7FEFF 		bl	ILI9341_SPI_Error
 2377              	.LVL250:
 2378 0250 EEE6     		b	.L167
 2379              	.L213:
 2380 0252 00BF     		.align	2
 2381              	.L212:
 2382 0254 00080140 		.word	1073809408
 2383              		.cfi_endproc
 2384              	.LFE76:
 2386              		.section	.text.ILI9341_Draw_Char,"ax",%progbits
 2387              		.align	1
 2388              		.global	ILI9341_Draw_Char
 2389              		.syntax unified
 2390              		.thumb
 2391              		.thumb_func
 2392              		.fpu softvfp
 2394              	ILI9341_Draw_Char:
 2395              	.LFB77:
 809:Src/ili9341.c **** 
 810:Src/ili9341.c **** 
 811:Src/ili9341.c **** #include "font.h"
 812:Src/ili9341.c **** HAL_StatusTypeDef ILI9341_Draw_Char(SPI_HandleTypeDef* hspi_handle, char Character, char oldCharact
 813:Src/ili9341.c **** {
 2396              		.loc 1 813 0
 2397              		.cfi_startproc
 2398              		@ args = 12, pretend = 0, frame = 24
 2399              		@ frame_needed = 0, uses_anonymous_args = 0
 2400              	.LVL251:
 2401 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2402              	.LCFI15:
 2403              		.cfi_def_cfa_offset 36
 2404              		.cfi_offset 4, -36
 2405              		.cfi_offset 5, -32
 2406              		.cfi_offset 6, -28
 2407              		.cfi_offset 7, -24
 2408              		.cfi_offset 8, -20
 2409              		.cfi_offset 9, -16
 2410              		.cfi_offset 10, -12
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 63


 2411              		.cfi_offset 11, -8
 2412              		.cfi_offset 14, -4
 2413 0004 89B0     		sub	sp, sp, #36
 2414              	.LCFI16:
 2415              		.cfi_def_cfa_offset 72
 2416 0006 0390     		str	r0, [sp, #12]
 2417 0008 9946     		mov	r9, r3
 2418 000a BDF848A0 		ldrh	r10, [sp, #72]
 2419 000e BDF84CB0 		ldrh	fp, [sp, #76]
 2420 0012 9DF85080 		ldrb	r8, [sp, #80]	@ zero_extendqisi2
 2421              	.LVL252:
 814:Src/ili9341.c **** 	uint8_t 	function_char, function_old_char;
 815:Src/ili9341.c **** 	uint8_t 	i,j;
 816:Src/ili9341.c **** 	
 817:Src/ili9341.c **** 	function_char = Character;
 818:Src/ili9341.c **** 	function_old_char = oldCharacter;
 819:Src/ili9341.c **** 	
 820:Src/ili9341.c **** 	if (function_char < ' ') {
 2422              		.loc 1 820 0
 2423 0016 1F29     		cmp	r1, #31
 2424 0018 07D9     		bls	.L228
 821:Src/ili9341.c **** 		function_char = 0;
 822:Src/ili9341.c **** 	} else {
 823:Src/ili9341.c **** 		function_char -= 32;
 2425              		.loc 1 823 0
 2426 001a 2039     		subs	r1, r1, #32
 2427              	.LVL253:
 2428 001c CCB2     		uxtb	r4, r1
 2429              	.LVL254:
 2430              	.L215:
 824:Src/ili9341.c **** 	}
 825:Src/ili9341.c **** 	
 826:Src/ili9341.c **** 	if (function_old_char < ' ') {
 2431              		.loc 1 826 0
 2432 001e 1F2A     		cmp	r2, #31
 2433 0020 05D9     		bls	.L229
 827:Src/ili9341.c **** 		function_old_char = 0;
 828:Src/ili9341.c **** 	} else {
 829:Src/ili9341.c **** 		function_old_char -= 32;
 2434              		.loc 1 829 0
 2435 0022 203A     		subs	r2, r2, #32
 2436              	.LVL255:
 2437 0024 D0B2     		uxtb	r0, r2
 2438              	.LVL256:
 2439              	.L216:
 2440              	.LBB9:
 830:Src/ili9341.c **** 	}
 831:Src/ili9341.c **** 	
 832:Src/ili9341.c **** 	char temp[CHAR_WIDTH];
 833:Src/ili9341.c **** 	char temp_old[CHAR_WIDTH];
 834:Src/ili9341.c **** 	char concurrent_pixels;
 835:Src/ili9341.c **** 	
 836:Src/ili9341.c **** 	for(uint8_t k = 0; k<CHAR_WIDTH; k++)
 2441              		.loc 1 836 0
 2442 0026 0021     		movs	r1, #0
 2443 0028 0AE0     		b	.L217
 2444              	.LVL257:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 64


 2445              	.L228:
 2446              	.LBE9:
 821:Src/ili9341.c **** 	} else {
 2447              		.loc 1 821 0
 2448 002a 0024     		movs	r4, #0
 2449 002c F7E7     		b	.L215
 2450              	.LVL258:
 2451              	.L229:
 827:Src/ili9341.c **** 		function_old_char = 0;
 2452              		.loc 1 827 0
 2453 002e 0020     		movs	r0, #0
 2454              	.LVL259:
 2455 0030 F9E7     		b	.L216
 2456              	.LVL260:
 2457              	.L218:
 2458              	.LBB10:
 837:Src/ili9341.c **** 	{
 838:Src/ili9341.c **** 		temp[k] = font[function_char][k];
 839:Src/ili9341.c **** 		temp_old[k] = font[function_old_char][k];
 840:Src/ili9341.c **** 		concurrent_pixels = temp[k] & temp_old[k];
 841:Src/ili9341.c **** 		temp[k] = temp[k] & (~concurrent_pixels);
 842:Src/ili9341.c **** 		if(function_old_char != 0)
 843:Src/ili9341.c **** 			temp_old[k] = temp_old[k] & (~concurrent_pixels);
 844:Src/ili9341.c **** 		else
 845:Src/ili9341.c **** 			temp_old[k] = 0xFF & (~concurrent_pixels);
 2459              		.loc 1 845 0
 2460 0032 F643     		mvns	r6, r6
 2461              	.LVL261:
 2462 0034 08AB     		add	r3, sp, #32
 2463 0036 0B44     		add	r3, r3, r1
 2464 0038 03F8106C 		strb	r6, [r3, #-16]
 2465              	.LVL262:
 2466              	.L219:
 836:Src/ili9341.c **** 	{
 2467              		.loc 1 836 0 discriminator 2
 2468 003c 0131     		adds	r1, r1, #1
 2469              	.LVL263:
 2470 003e C9B2     		uxtb	r1, r1
 2471              	.LVL264:
 2472              	.L217:
 836:Src/ili9341.c **** 	{
 2473              		.loc 1 836 0 is_stmt 0 discriminator 1
 2474 0040 0529     		cmp	r1, #5
 2475 0042 1DD8     		bhi	.L232
 838:Src/ili9341.c **** 		temp_old[k] = font[function_old_char][k];
 2476              		.loc 1 838 0 is_stmt 1
 2477 0044 464A     		ldr	r2, .L237
 2478 0046 04EB4405 		add	r5, r4, r4, lsl #1
 2479 004a 6B00     		lsls	r3, r5, #1
 2480 004c 1344     		add	r3, r3, r2
 2481 004e 5B5C     		ldrb	r3, [r3, r1]	@ zero_extendqisi2
 839:Src/ili9341.c **** 		concurrent_pixels = temp[k] & temp_old[k];
 2482              		.loc 1 839 0
 2483 0050 00EB4006 		add	r6, r0, r0, lsl #1
 2484 0054 7500     		lsls	r5, r6, #1
 2485 0056 2A44     		add	r2, r2, r5
 2486 0058 555C     		ldrb	r5, [r2, r1]	@ zero_extendqisi2
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 65


 2487 005a 08AA     		add	r2, sp, #32
 2488 005c 5718     		adds	r7, r2, r1
 2489 005e 07F8105C 		strb	r5, [r7, #-16]
 840:Src/ili9341.c **** 		temp[k] = temp[k] & (~concurrent_pixels);
 2490              		.loc 1 840 0
 2491 0062 03EA0506 		and	r6, r3, r5
 2492              	.LVL265:
 841:Src/ili9341.c **** 		if(function_old_char != 0)
 2493              		.loc 1 841 0
 2494 0066 5BB2     		sxtb	r3, r3
 2495 0068 F243     		mvns	r2, r6
 2496 006a 52B2     		sxtb	r2, r2
 2497 006c 1340     		ands	r3, r3, r2
 2498 006e 07F8083C 		strb	r3, [r7, #-8]
 842:Src/ili9341.c **** 			temp_old[k] = temp_old[k] & (~concurrent_pixels);
 2499              		.loc 1 842 0
 2500 0072 0028     		cmp	r0, #0
 2501 0074 DDD0     		beq	.L218
 843:Src/ili9341.c **** 		else
 2502              		.loc 1 843 0
 2503 0076 6DB2     		sxtb	r5, r5
 2504 0078 2A40     		ands	r2, r2, r5
 2505 007a 07F8102C 		strb	r2, [r7, #-16]
 2506 007e DDE7     		b	.L219
 2507              	.LVL266:
 2508              	.L232:
 2509              	.LBE10:
 846:Src/ili9341.c **** 	}
 847:Src/ili9341.c **** 	
 848:Src/ili9341.c **** 	for (j=0; j<CHAR_WIDTH; j++) {
 2510              		.loc 1 848 0
 2511 0080 0027     		movs	r7, #0
 2512 0082 63E0     		b	.L221
 2513              	.LVL267:
 2514              	.L234:
 849:Src/ili9341.c **** 		for (i=0; i<CHAR_HEIGHT; i++) {
 850:Src/ili9341.c **** 			if (temp_old[j] & (1<<i)) 
 851:Src/ili9341.c **** 			{
 852:Src/ili9341.c **** 				if(Size == 1)
 853:Src/ili9341.c **** 				{
 854:Src/ili9341.c **** 					ILI9341_Draw_Pixel(hspi_handle, posX+j, posY+i, COLOR_1);
 2515              		.loc 1 854 0
 2516 0084 0AEB0402 		add	r2, r10, r4
 2517 0088 09EB0701 		add	r1, r9, r7
 2518 008c 43F68803 		movw	r3, #14472
 2519 0090 92B2     		uxth	r2, r2
 2520 0092 89B2     		uxth	r1, r1
 2521 0094 0398     		ldr	r0, [sp, #12]
 2522 0096 FFF7FEFF 		bl	ILI9341_Draw_Pixel
 2523              	.LVL268:
 2524 009a 32E0     		b	.L222
 2525              	.L235:
 855:Src/ili9341.c **** 				}
 856:Src/ili9341.c **** 				else
 857:Src/ili9341.c **** 				{
 858:Src/ili9341.c **** 					ILI9341_Draw_Square(hspi_handle, posX+(j*Size), posY+(i*Size), posX+(j*Size) + Size-1, posY+(i
 859:Src/ili9341.c **** 				}
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 66


 860:Src/ili9341.c **** 			}
 861:Src/ili9341.c **** 			if (temp[j] & (1<<i)) 
 862:Src/ili9341.c **** 			{
 863:Src/ili9341.c **** 				if(Size == 1)
 864:Src/ili9341.c **** 				{
 865:Src/ili9341.c **** 					ILI9341_Draw_Pixel(hspi_handle, posX+j, posY+i, Color);
 2526              		.loc 1 865 0
 2527 009c 0AEB0402 		add	r2, r10, r4
 2528 00a0 09EB0701 		add	r1, r9, r7
 2529 00a4 2B46     		mov	r3, r5
 2530 00a6 92B2     		uxth	r2, r2
 2531 00a8 89B2     		uxth	r1, r1
 2532 00aa 0398     		ldr	r0, [sp, #12]
 2533 00ac FFF7FEFF 		bl	ILI9341_Draw_Pixel
 2534              	.LVL269:
 2535              	.L224:
 849:Src/ili9341.c **** 		for (i=0; i<CHAR_HEIGHT; i++) {
 2536              		.loc 1 849 0 discriminator 2
 2537 00b0 0134     		adds	r4, r4, #1
 2538              	.LVL270:
 2539 00b2 E4B2     		uxtb	r4, r4
 2540              	.LVL271:
 2541              	.L227:
 849:Src/ili9341.c **** 		for (i=0; i<CHAR_HEIGHT; i++) {
 2542              		.loc 1 849 0 is_stmt 0 discriminator 1
 2543 00b4 072C     		cmp	r4, #7
 2544 00b6 46D8     		bhi	.L233
 850:Src/ili9341.c **** 			{
 2545              		.loc 1 850 0 is_stmt 1
 2546 00b8 3E46     		mov	r6, r7
 2547 00ba 08AB     		add	r3, sp, #32
 2548 00bc 3B44     		add	r3, r3, r7
 2549 00be 13F8103C 		ldrb	r3, [r3, #-16]	@ zero_extendqisi2
 2550 00c2 A346     		mov	fp, r4
 2551 00c4 2341     		asrs	r3, r3, r4
 2552 00c6 13F0010F 		tst	r3, #1
 2553 00ca 1AD0     		beq	.L222
 852:Src/ili9341.c **** 				{
 2554              		.loc 1 852 0
 2555 00cc B8F1010F 		cmp	r8, #1
 2556 00d0 D8D0     		beq	.L234
 858:Src/ili9341.c **** 				}
 2557              		.loc 1 858 0
 2558 00d2 1FFA88F0 		uxth	r0, r8
 2559 00d6 07FB0091 		mla	r1, r7, r0, r9
 2560 00da 89B2     		uxth	r1, r1
 2561 00dc 04FB00A2 		mla	r2, r4, r0, r10
 2562 00e0 92B2     		uxth	r2, r2
 2563 00e2 4318     		adds	r3, r0, r1
 2564 00e4 9BB2     		uxth	r3, r3
 2565 00e6 1044     		add	r0, r0, r2
 2566 00e8 80B2     		uxth	r0, r0
 2567 00ea 013B     		subs	r3, r3, #1
 2568 00ec 43F6880C 		movw	ip, #14472
 2569 00f0 CDF804C0 		str	ip, [sp, #4]
 2570 00f4 0138     		subs	r0, r0, #1
 2571 00f6 80B2     		uxth	r0, r0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 67


 2572 00f8 0090     		str	r0, [sp]
 2573 00fa 9BB2     		uxth	r3, r3
 2574 00fc 0398     		ldr	r0, [sp, #12]
 2575 00fe FFF7FEFF 		bl	ILI9341_Draw_Square
 2576              	.LVL272:
 2577              	.L222:
 861:Src/ili9341.c **** 			{
 2578              		.loc 1 861 0
 2579 0102 08AB     		add	r3, sp, #32
 2580 0104 1E44     		add	r6, r6, r3
 2581 0106 16F8083C 		ldrb	r3, [r6, #-8]	@ zero_extendqisi2
 2582 010a 43FA0BFB 		asr	fp, r3, fp
 2583 010e 1BF0010F 		tst	fp, #1
 2584 0112 CDD0     		beq	.L224
 863:Src/ili9341.c **** 				{
 2585              		.loc 1 863 0
 2586 0114 B8F1010F 		cmp	r8, #1
 2587 0118 C0D0     		beq	.L235
 866:Src/ili9341.c **** 				}
 867:Src/ili9341.c **** 				else
 868:Src/ili9341.c **** 				{
 869:Src/ili9341.c **** 					ILI9341_Draw_Square(hspi_handle, posX+(j*Size), posY+(i*Size), posX+(j*Size) + Size-1, posY+(i
 2588              		.loc 1 869 0
 2589 011a 1FFA88F0 		uxth	r0, r8
 2590 011e 07FB0091 		mla	r1, r7, r0, r9
 2591 0122 89B2     		uxth	r1, r1
 2592 0124 04FB00A2 		mla	r2, r4, r0, r10
 2593 0128 92B2     		uxth	r2, r2
 2594 012a 4318     		adds	r3, r0, r1
 2595 012c 9BB2     		uxth	r3, r3
 2596 012e 1044     		add	r0, r0, r2
 2597 0130 80B2     		uxth	r0, r0
 2598 0132 013B     		subs	r3, r3, #1
 2599 0134 0195     		str	r5, [sp, #4]
 2600 0136 0138     		subs	r0, r0, #1
 2601 0138 80B2     		uxth	r0, r0
 2602 013a 0090     		str	r0, [sp]
 2603 013c 9BB2     		uxth	r3, r3
 2604 013e 0398     		ldr	r0, [sp, #12]
 2605 0140 FFF7FEFF 		bl	ILI9341_Draw_Square
 2606              	.LVL273:
 2607 0144 B4E7     		b	.L224
 2608              	.L233:
 2609 0146 AB46     		mov	fp, r5
 848:Src/ili9341.c **** 		for (i=0; i<CHAR_HEIGHT; i++) {
 2610              		.loc 1 848 0 discriminator 2
 2611 0148 0137     		adds	r7, r7, #1
 2612              	.LVL274:
 2613 014a FFB2     		uxtb	r7, r7
 2614              	.LVL275:
 2615              	.L221:
 848:Src/ili9341.c **** 		for (i=0; i<CHAR_HEIGHT; i++) {
 2616              		.loc 1 848 0 is_stmt 0 discriminator 1
 2617 014c 052F     		cmp	r7, #5
 2618 014e 02D8     		bhi	.L236
 849:Src/ili9341.c **** 			if (temp_old[j] & (1<<i)) 
 2619              		.loc 1 849 0 is_stmt 1
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 68


 2620 0150 0024     		movs	r4, #0
 2621 0152 5D46     		mov	r5, fp
 2622 0154 AEE7     		b	.L227
 2623              	.L236:
 870:Src/ili9341.c **** 				}
 871:Src/ili9341.c **** 			}
 872:Src/ili9341.c **** 		}
 873:Src/ili9341.c **** 	}
 874:Src/ili9341.c **** 	return HAL_OK;
 875:Src/ili9341.c **** }
 2624              		.loc 1 875 0
 2625 0156 0020     		movs	r0, #0
 2626 0158 09B0     		add	sp, sp, #36
 2627              	.LCFI17:
 2628              		.cfi_def_cfa_offset 36
 2629              		@ sp needed
 2630 015a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2631              	.LVL276:
 2632              	.L238:
 2633 015e 00BF     		.align	2
 2634              	.L237:
 2635 0160 00000000 		.word	.LANCHOR0
 2636              		.cfi_endproc
 2637              	.LFE77:
 2639              		.section	.text.ILI9341_Draw_Main_Interface,"ax",%progbits
 2640              		.align	1
 2641              		.global	ILI9341_Draw_Main_Interface
 2642              		.syntax unified
 2643              		.thumb
 2644              		.thumb_func
 2645              		.fpu softvfp
 2647              	ILI9341_Draw_Main_Interface:
 2648              	.LFB78:
 876:Src/ili9341.c **** 
 877:Src/ili9341.c **** 
 878:Src/ili9341.c **** 
 879:Src/ili9341.c **** HAL_StatusTypeDef ILI9341_Draw_Main_Interface(SPI_HandleTypeDef* hspi_handle)
 880:Src/ili9341.c **** {
 2649              		.loc 1 880 0
 2650              		.cfi_startproc
 2651              		@ args = 0, pretend = 0, frame = 0
 2652              		@ frame_needed = 0, uses_anonymous_args = 0
 2653              	.LVL277:
 2654 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2655              	.LCFI18:
 2656              		.cfi_def_cfa_offset 20
 2657              		.cfi_offset 4, -20
 2658              		.cfi_offset 5, -16
 2659              		.cfi_offset 6, -12
 2660              		.cfi_offset 7, -8
 2661              		.cfi_offset 14, -4
 2662 0002 83B0     		sub	sp, sp, #12
 2663              	.LCFI19:
 2664              		.cfi_def_cfa_offset 32
 2665 0004 0546     		mov	r5, r0
 881:Src/ili9341.c **** 	ILI9341_Draw_Square(hspi_handle,   0,   0, 320, 120, COLOR_1);
 2666              		.loc 1 881 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 69


 2667 0006 43F68806 		movw	r6, #14472
 2668 000a 0196     		str	r6, [sp, #4]
 2669 000c 7824     		movs	r4, #120
 2670 000e 0094     		str	r4, [sp]
 2671 0010 4FF4A073 		mov	r3, #320
 2672 0014 0022     		movs	r2, #0
 2673 0016 1146     		mov	r1, r2
 2674 0018 FFF7FEFF 		bl	ILI9341_Draw_Square
 2675              	.LVL278:
 882:Src/ili9341.c **** 	ILI9341_Draw_Square(hspi_handle,   0, 120, 320, 240, COLOR_1);
 2676              		.loc 1 882 0
 2677 001c 0196     		str	r6, [sp, #4]
 2678 001e F026     		movs	r6, #240
 2679 0020 0096     		str	r6, [sp]
 2680 0022 4FF4A073 		mov	r3, #320
 2681 0026 2246     		mov	r2, r4
 2682 0028 0021     		movs	r1, #0
 2683 002a 2846     		mov	r0, r5
 2684 002c FFF7FEFF 		bl	ILI9341_Draw_Square
 2685              	.LVL279:
 883:Src/ili9341.c **** 	
 884:Src/ili9341.c **** 	ILI9341_Draw_Square(hspi_handle, 256,   0, 259, 240, COLOR_2);
 2686              		.loc 1 884 0
 2687 0030 43F6C324 		movw	r4, #15043
 2688 0034 0194     		str	r4, [sp, #4]
 2689 0036 0096     		str	r6, [sp]
 2690 0038 40F20313 		movw	r3, #259
 2691 003c 0022     		movs	r2, #0
 2692 003e 4FF48071 		mov	r1, #256
 2693 0042 2846     		mov	r0, r5
 2694 0044 FFF7FEFF 		bl	ILI9341_Draw_Square
 2695              	.LVL280:
 885:Src/ili9341.c **** 	ILI9341_Draw_Square(hspi_handle,   0, 200, 320, 204, COLOR_2);
 2696              		.loc 1 885 0
 2697 0048 0194     		str	r4, [sp, #4]
 2698 004a CC27     		movs	r7, #204
 2699 004c 0097     		str	r7, [sp]
 2700 004e 4FF4A073 		mov	r3, #320
 2701 0052 C822     		movs	r2, #200
 2702 0054 0021     		movs	r1, #0
 2703 0056 2846     		mov	r0, r5
 2704 0058 FFF7FEFF 		bl	ILI9341_Draw_Square
 2705              	.LVL281:
 886:Src/ili9341.c **** 	ILI9341_Draw_Square(hspi_handle, 260,  96, 320, 101, COLOR_2);
 2706              		.loc 1 886 0
 2707 005c 0194     		str	r4, [sp, #4]
 2708 005e 6523     		movs	r3, #101
 2709 0060 0093     		str	r3, [sp]
 2710 0062 4FF4A073 		mov	r3, #320
 2711 0066 6022     		movs	r2, #96
 2712 0068 4FF48271 		mov	r1, #260
 2713 006c 2846     		mov	r0, r5
 2714 006e FFF7FEFF 		bl	ILI9341_Draw_Square
 2715              	.LVL282:
 887:Src/ili9341.c **** 	ILI9341_Draw_Square(hspi_handle,  86, 204,  89, 240, COLOR_2);
 2716              		.loc 1 887 0
 2717 0072 0194     		str	r4, [sp, #4]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 70


 2718 0074 0096     		str	r6, [sp]
 2719 0076 5923     		movs	r3, #89
 2720 0078 3A46     		mov	r2, r7
 2721 007a 5621     		movs	r1, #86
 2722 007c 2846     		mov	r0, r5
 2723 007e FFF7FEFF 		bl	ILI9341_Draw_Square
 2724              	.LVL283:
 888:Src/ili9341.c **** 	ILI9341_Draw_Square(hspi_handle, 171, 204, 174, 240, COLOR_2);
 2725              		.loc 1 888 0
 2726 0082 0194     		str	r4, [sp, #4]
 2727 0084 0096     		str	r6, [sp]
 2728 0086 AE23     		movs	r3, #174
 2729 0088 3A46     		mov	r2, r7
 2730 008a AB21     		movs	r1, #171
 2731 008c 2846     		mov	r0, r5
 2732 008e FFF7FEFF 		bl	ILI9341_Draw_Square
 2733              	.LVL284:
 889:Src/ili9341.c **** 	
 890:Src/ili9341.c **** 	/*Amplitude Indicators*/
 891:Src/ili9341.c **** 	ILI9341_Draw_Square(hspi_handle,  25 , 95, 255, 96, COLOR_3);
 2734              		.loc 1 891 0
 2735 0092 46F2E324 		movw	r4, #25315
 2736 0096 0194     		str	r4, [sp, #4]
 2737 0098 6023     		movs	r3, #96
 2738 009a 0093     		str	r3, [sp]
 2739 009c FF23     		movs	r3, #255
 2740 009e 5F22     		movs	r2, #95
 2741 00a0 1921     		movs	r1, #25
 2742 00a2 2846     		mov	r0, r5
 2743 00a4 FFF7FEFF 		bl	ILI9341_Draw_Square
 2744              	.LVL285:
 892:Src/ili9341.c **** 	ILI9341_Draw_Square(hspi_handle,  25 ,  5, 255,  6, COLOR_3);
 2745              		.loc 1 892 0
 2746 00a8 0194     		str	r4, [sp, #4]
 2747 00aa 0623     		movs	r3, #6
 2748 00ac 0093     		str	r3, [sp]
 2749 00ae FF23     		movs	r3, #255
 2750 00b0 0522     		movs	r2, #5
 2751 00b2 1921     		movs	r1, #25
 2752 00b4 2846     		mov	r0, r5
 2753 00b6 FFF7FEFF 		bl	ILI9341_Draw_Square
 2754              	.LVL286:
 893:Src/ili9341.c **** 	ILI9341_Draw_Square(hspi_handle,  25 ,185, 255,186, COLOR_3);
 2755              		.loc 1 893 0
 2756 00ba 0194     		str	r4, [sp, #4]
 2757 00bc BA23     		movs	r3, #186
 2758 00be 0093     		str	r3, [sp]
 2759 00c0 FF23     		movs	r3, #255
 2760 00c2 B922     		movs	r2, #185
 2761 00c4 1921     		movs	r1, #25
 2762 00c6 2846     		mov	r0, r5
 2763 00c8 FFF7FEFF 		bl	ILI9341_Draw_Square
 2764              	.LVL287:
 894:Src/ili9341.c **** 
 895:Src/ili9341.c **** 	ILI9341_Draw_Square(hspi_handle,  15,  94,  24,  97, COLOR_3);
 2765              		.loc 1 895 0
 2766 00cc 0194     		str	r4, [sp, #4]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 71


 2767 00ce 6123     		movs	r3, #97
 2768 00d0 0093     		str	r3, [sp]
 2769 00d2 1823     		movs	r3, #24
 2770 00d4 5E22     		movs	r2, #94
 2771 00d6 0F21     		movs	r1, #15
 2772 00d8 2846     		mov	r0, r5
 2773 00da FFF7FEFF 		bl	ILI9341_Draw_Square
 2774              	.LVL288:
 896:Src/ili9341.c **** 	ILI9341_Draw_Square(hspi_handle,  15,   4,  24,   7, COLOR_3);
 2775              		.loc 1 896 0
 2776 00de 0194     		str	r4, [sp, #4]
 2777 00e0 0723     		movs	r3, #7
 2778 00e2 0093     		str	r3, [sp]
 2779 00e4 1823     		movs	r3, #24
 2780 00e6 0422     		movs	r2, #4
 2781 00e8 0F21     		movs	r1, #15
 2782 00ea 2846     		mov	r0, r5
 2783 00ec FFF7FEFF 		bl	ILI9341_Draw_Square
 2784              	.LVL289:
 897:Src/ili9341.c **** 	ILI9341_Draw_Square(hspi_handle,  15, 184,  24, 187, COLOR_3);
 2785              		.loc 1 897 0
 2786 00f0 0194     		str	r4, [sp, #4]
 2787 00f2 BB23     		movs	r3, #187
 2788 00f4 0093     		str	r3, [sp]
 2789 00f6 1823     		movs	r3, #24
 2790 00f8 B822     		movs	r2, #184
 2791 00fa 0F21     		movs	r1, #15
 2792 00fc 2846     		mov	r0, r5
 2793 00fe FFF7FEFF 		bl	ILI9341_Draw_Square
 2794              	.LVL290:
 898:Src/ili9341.c **** 	ILI9341_Draw_Square(hspi_handle,  15,  49,  23,  51, COLOR_3);
 2795              		.loc 1 898 0
 2796 0102 0194     		str	r4, [sp, #4]
 2797 0104 3323     		movs	r3, #51
 2798 0106 0093     		str	r3, [sp]
 2799 0108 1723     		movs	r3, #23
 2800 010a 3122     		movs	r2, #49
 2801 010c 0F21     		movs	r1, #15
 2802 010e 2846     		mov	r0, r5
 2803 0110 FFF7FEFF 		bl	ILI9341_Draw_Square
 2804              	.LVL291:
 899:Src/ili9341.c **** 	ILI9341_Draw_Square(hspi_handle,  15, 139,  23, 141, COLOR_3);
 2805              		.loc 1 899 0
 2806 0114 0194     		str	r4, [sp, #4]
 2807 0116 8D23     		movs	r3, #141
 2808 0118 0093     		str	r3, [sp]
 2809 011a 1723     		movs	r3, #23
 2810 011c 8B22     		movs	r2, #139
 2811 011e 0F21     		movs	r1, #15
 2812 0120 2846     		mov	r0, r5
 2813 0122 FFF7FEFF 		bl	ILI9341_Draw_Square
 2814              	.LVL292:
 2815              	.LBB11:
 900:Src/ili9341.c **** 	
 901:Src/ili9341.c **** 	for(int i=5 ; i<186 ; i+=9)
 2816              		.loc 1 901 0
 2817 0126 0524     		movs	r4, #5
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 72


 2818 0128 0CE0     		b	.L240
 2819              	.LVL293:
 2820              	.L241:
 902:Src/ili9341.c **** 	{
 903:Src/ili9341.c **** 		ILI9341_Draw_Square(hspi_handle,  15 ,i,  20,i+1, COLOR_3);
 2821              		.loc 1 903 0 discriminator 3
 2822 012a A2B2     		uxth	r2, r4
 2823 012c 46F2E323 		movw	r3, #25315
 2824 0130 0193     		str	r3, [sp, #4]
 2825 0132 531C     		adds	r3, r2, #1
 2826 0134 9BB2     		uxth	r3, r3
 2827 0136 0093     		str	r3, [sp]
 2828 0138 1423     		movs	r3, #20
 2829 013a 0F21     		movs	r1, #15
 2830 013c 2846     		mov	r0, r5
 2831 013e FFF7FEFF 		bl	ILI9341_Draw_Square
 2832              	.LVL294:
 901:Src/ili9341.c **** 	{
 2833              		.loc 1 901 0 discriminator 3
 2834 0142 0934     		adds	r4, r4, #9
 2835              	.LVL295:
 2836              	.L240:
 901:Src/ili9341.c **** 	{
 2837              		.loc 1 901 0 is_stmt 0 discriminator 1
 2838 0144 B92C     		cmp	r4, #185
 2839 0146 F0DD     		ble	.L241
 2840              	.LBE11:
 904:Src/ili9341.c **** 	}
 905:Src/ili9341.c **** 	
 906:Src/ili9341.c **** 	/*Timebase indicators*/
 907:Src/ili9341.c **** 	ILI9341_Draw_Square(hspi_handle,  24 , 187,  25, 197, COLOR_3);
 2841              		.loc 1 907 0 is_stmt 1
 2842 0148 46F2E326 		movw	r6, #25315
 2843 014c 0196     		str	r6, [sp, #4]
 2844 014e C524     		movs	r4, #197
 2845              	.LVL296:
 2846 0150 0094     		str	r4, [sp]
 2847 0152 1923     		movs	r3, #25
 2848 0154 BB22     		movs	r2, #187
 2849 0156 1821     		movs	r1, #24
 2850 0158 2846     		mov	r0, r5
 2851 015a FFF7FEFF 		bl	ILI9341_Draw_Square
 2852              	.LVL297:
 908:Src/ili9341.c **** 	ILI9341_Draw_Square(hspi_handle, 140 , 187, 141, 197, COLOR_3);
 2853              		.loc 1 908 0
 2854 015e 0196     		str	r6, [sp, #4]
 2855 0160 0094     		str	r4, [sp]
 2856 0162 8D23     		movs	r3, #141
 2857 0164 BB22     		movs	r2, #187
 2858 0166 8C21     		movs	r1, #140
 2859 0168 2846     		mov	r0, r5
 2860 016a FFF7FEFF 		bl	ILI9341_Draw_Square
 2861              	.LVL298:
 909:Src/ili9341.c **** 	ILI9341_Draw_Square(hspi_handle, 254 , 187, 255, 197, COLOR_3);
 2862              		.loc 1 909 0
 2863 016e 0196     		str	r6, [sp, #4]
 2864 0170 0094     		str	r4, [sp]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 73


 2865 0172 FF23     		movs	r3, #255
 2866 0174 BB22     		movs	r2, #187
 2867 0176 FE21     		movs	r1, #254
 2868 0178 2846     		mov	r0, r5
 2869 017a FFF7FEFF 		bl	ILI9341_Draw_Square
 2870              	.LVL299:
 2871              	.LBB12:
 910:Src/ili9341.c **** 	for(int i=24;i<255;i+=29)
 2872              		.loc 1 910 0
 2873 017e 1824     		movs	r4, #24
 2874 0180 0CE0     		b	.L242
 2875              	.LVL300:
 2876              	.L243:
 911:Src/ili9341.c **** 	{
 912:Src/ili9341.c **** 		ILI9341_Draw_Square(hspi_handle, i, 187, i+1, 192,COLOR_3);
 2877              		.loc 1 912 0 discriminator 3
 2878 0182 A1B2     		uxth	r1, r4
 2879 0184 4B1C     		adds	r3, r1, #1
 2880 0186 46F2E322 		movw	r2, #25315
 2881 018a 0192     		str	r2, [sp, #4]
 2882 018c C022     		movs	r2, #192
 2883 018e 0092     		str	r2, [sp]
 2884 0190 9BB2     		uxth	r3, r3
 2885 0192 BB22     		movs	r2, #187
 2886 0194 2846     		mov	r0, r5
 2887 0196 FFF7FEFF 		bl	ILI9341_Draw_Square
 2888              	.LVL301:
 910:Src/ili9341.c **** 	for(int i=24;i<255;i+=29)
 2889              		.loc 1 910 0 discriminator 3
 2890 019a 1D34     		adds	r4, r4, #29
 2891              	.LVL302:
 2892              	.L242:
 910:Src/ili9341.c **** 	for(int i=24;i<255;i+=29)
 2893              		.loc 1 910 0 is_stmt 0 discriminator 1
 2894 019c FE2C     		cmp	r4, #254
 2895 019e F0DD     		ble	.L243
 2896              	.LBE12:
 913:Src/ili9341.c **** 	}
 914:Src/ili9341.c **** 	
 915:Src/ili9341.c **** }...
 2897              		.loc 1 915 0 is_stmt 1
 2898 01a0 03B0     		add	sp, sp, #12
 2899              	.LCFI20:
 2900              		.cfi_def_cfa_offset 20
 2901              		@ sp needed
 2902 01a2 F0BD     		pop	{r4, r5, r6, r7, pc}
 2903              		.cfi_endproc
 2904              	.LFE78:
 2906              		.comm	LCD_WIDTH,4,4
 2907              		.comm	LCD_HEIGHT,4,4
 2908              		.section	.rodata.font,"a",%progbits
 2909              		.align	2
 2910              		.set	.LANCHOR0,. + 0
 2913              	font:
 2914 0000 00       		.byte	0
 2915 0001 00       		.byte	0
 2916 0002 00       		.byte	0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 74


 2917 0003 00       		.byte	0
 2918 0004 00       		.byte	0
 2919 0005 00       		.byte	0
 2920 0006 5C       		.byte	92
 2921 0007 00       		.byte	0
 2922 0008 00       		.byte	0
 2923 0009 00       		.byte	0
 2924 000a 00       		.byte	0
 2925 000b 00       		.byte	0
 2926 000c 06       		.byte	6
 2927 000d 00       		.byte	0
 2928 000e 06       		.byte	6
 2929 000f 00       		.byte	0
 2930 0010 00       		.byte	0
 2931 0011 00       		.byte	0
 2932 0012 28       		.byte	40
 2933 0013 7C       		.byte	124
 2934 0014 28       		.byte	40
 2935 0015 7C       		.byte	124
 2936 0016 28       		.byte	40
 2937 0017 00       		.byte	0
 2938 0018 5C       		.byte	92
 2939 0019 54       		.byte	84
 2940 001a FE       		.byte	-2
 2941 001b 54       		.byte	84
 2942 001c 74       		.byte	116
 2943 001d 00       		.byte	0
 2944 001e 44       		.byte	68
 2945 001f 20       		.byte	32
 2946 0020 10       		.byte	16
 2947 0021 08       		.byte	8
 2948 0022 44       		.byte	68
 2949 0023 00       		.byte	0
 2950 0024 28       		.byte	40
 2951 0025 54       		.byte	84
 2952 0026 54       		.byte	84
 2953 0027 20       		.byte	32
 2954 0028 50       		.byte	80
 2955 0029 00       		.byte	0
 2956 002a 06       		.byte	6
 2957 002b 00       		.byte	0
 2958 002c 00       		.byte	0
 2959 002d 00       		.byte	0
 2960 002e 00       		.byte	0
 2961 002f 00       		.byte	0
 2962 0030 38       		.byte	56
 2963 0031 44       		.byte	68
 2964 0032 00       		.byte	0
 2965 0033 00       		.byte	0
 2966 0034 00       		.byte	0
 2967 0035 00       		.byte	0
 2968 0036 44       		.byte	68
 2969 0037 38       		.byte	56
 2970 0038 00       		.byte	0
 2971 0039 00       		.byte	0
 2972 003a 00       		.byte	0
 2973 003b 00       		.byte	0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 75


 2974 003c 02       		.byte	2
 2975 003d 07       		.byte	7
 2976 003e 02       		.byte	2
 2977 003f 00       		.byte	0
 2978 0040 00       		.byte	0
 2979 0041 00       		.byte	0
 2980 0042 10       		.byte	16
 2981 0043 10       		.byte	16
 2982 0044 7C       		.byte	124
 2983 0045 10       		.byte	16
 2984 0046 10       		.byte	16
 2985 0047 00       		.byte	0
 2986 0048 C0       		.byte	-64
 2987 0049 00       		.byte	0
 2988 004a 00       		.byte	0
 2989 004b 00       		.byte	0
 2990 004c 00       		.byte	0
 2991 004d 00       		.byte	0
 2992 004e 10       		.byte	16
 2993 004f 10       		.byte	16
 2994 0050 10       		.byte	16
 2995 0051 10       		.byte	16
 2996 0052 10       		.byte	16
 2997 0053 00       		.byte	0
 2998 0054 40       		.byte	64
 2999 0055 00       		.byte	0
 3000 0056 00       		.byte	0
 3001 0057 00       		.byte	0
 3002 0058 00       		.byte	0
 3003 0059 00       		.byte	0
 3004 005a 60       		.byte	96
 3005 005b 10       		.byte	16
 3006 005c 0C       		.byte	12
 3007 005d 00       		.byte	0
 3008 005e 00       		.byte	0
 3009 005f 00       		.byte	0
 3010 0060 7C       		.byte	124
 3011 0061 64       		.byte	100
 3012 0062 54       		.byte	84
 3013 0063 4C       		.byte	76
 3014 0064 7C       		.byte	124
 3015 0065 00       		.byte	0
 3016 0066 48       		.byte	72
 3017 0067 7C       		.byte	124
 3018 0068 40       		.byte	64
 3019 0069 00       		.byte	0
 3020 006a 00       		.byte	0
 3021 006b 00       		.byte	0
 3022 006c 64       		.byte	100
 3023 006d 54       		.byte	84
 3024 006e 54       		.byte	84
 3025 006f 54       		.byte	84
 3026 0070 48       		.byte	72
 3027 0071 00       		.byte	0
 3028 0072 44       		.byte	68
 3029 0073 54       		.byte	84
 3030 0074 54       		.byte	84
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 76


 3031 0075 54       		.byte	84
 3032 0076 6C       		.byte	108
 3033 0077 00       		.byte	0
 3034 0078 3C       		.byte	60
 3035 0079 20       		.byte	32
 3036 007a 70       		.byte	112
 3037 007b 20       		.byte	32
 3038 007c 20       		.byte	32
 3039 007d 00       		.byte	0
 3040 007e 5C       		.byte	92
 3041 007f 54       		.byte	84
 3042 0080 54       		.byte	84
 3043 0081 54       		.byte	84
 3044 0082 24       		.byte	36
 3045 0083 00       		.byte	0
 3046 0084 7C       		.byte	124
 3047 0085 54       		.byte	84
 3048 0086 54       		.byte	84
 3049 0087 54       		.byte	84
 3050 0088 74       		.byte	116
 3051 0089 00       		.byte	0
 3052 008a 04       		.byte	4
 3053 008b 04       		.byte	4
 3054 008c 64       		.byte	100
 3055 008d 14       		.byte	20
 3056 008e 0C       		.byte	12
 3057 008f 00       		.byte	0
 3058 0090 7C       		.byte	124
 3059 0091 54       		.byte	84
 3060 0092 54       		.byte	84
 3061 0093 54       		.byte	84
 3062 0094 7C       		.byte	124
 3063 0095 00       		.byte	0
 3064 0096 5C       		.byte	92
 3065 0097 54       		.byte	84
 3066 0098 54       		.byte	84
 3067 0099 54       		.byte	84
 3068 009a 7C       		.byte	124
 3069 009b 00       		.byte	0
 3070 009c 44       		.byte	68
 3071 009d 00       		.byte	0
 3072 009e 00       		.byte	0
 3073 009f 00       		.byte	0
 3074 00a0 00       		.byte	0
 3075 00a1 00       		.byte	0
 3076 00a2 C4       		.byte	-60
 3077 00a3 00       		.byte	0
 3078 00a4 00       		.byte	0
 3079 00a5 00       		.byte	0
 3080 00a6 00       		.byte	0
 3081 00a7 00       		.byte	0
 3082 00a8 10       		.byte	16
 3083 00a9 28       		.byte	40
 3084 00aa 44       		.byte	68
 3085 00ab 00       		.byte	0
 3086 00ac 00       		.byte	0
 3087 00ad 00       		.byte	0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 77


 3088 00ae 28       		.byte	40
 3089 00af 28       		.byte	40
 3090 00b0 28       		.byte	40
 3091 00b1 28       		.byte	40
 3092 00b2 28       		.byte	40
 3093 00b3 00       		.byte	0
 3094 00b4 44       		.byte	68
 3095 00b5 28       		.byte	40
 3096 00b6 10       		.byte	16
 3097 00b7 00       		.byte	0
 3098 00b8 00       		.byte	0
 3099 00b9 00       		.byte	0
 3100 00ba 08       		.byte	8
 3101 00bb 04       		.byte	4
 3102 00bc 54       		.byte	84
 3103 00bd 08       		.byte	8
 3104 00be 00       		.byte	0
 3105 00bf 00       		.byte	0
 3106 00c0 7C       		.byte	124
 3107 00c1 44       		.byte	68
 3108 00c2 54       		.byte	84
 3109 00c3 54       		.byte	84
 3110 00c4 5C       		.byte	92
 3111 00c5 00       		.byte	0
 3112 00c6 7C       		.byte	124
 3113 00c7 24       		.byte	36
 3114 00c8 24       		.byte	36
 3115 00c9 24       		.byte	36
 3116 00ca 7C       		.byte	124
 3117 00cb 00       		.byte	0
 3118 00cc 7C       		.byte	124
 3119 00cd 54       		.byte	84
 3120 00ce 54       		.byte	84
 3121 00cf 54       		.byte	84
 3122 00d0 6C       		.byte	108
 3123 00d1 00       		.byte	0
 3124 00d2 7C       		.byte	124
 3125 00d3 44       		.byte	68
 3126 00d4 44       		.byte	68
 3127 00d5 44       		.byte	68
 3128 00d6 44       		.byte	68
 3129 00d7 00       		.byte	0
 3130 00d8 7C       		.byte	124
 3131 00d9 44       		.byte	68
 3132 00da 44       		.byte	68
 3133 00db 44       		.byte	68
 3134 00dc 38       		.byte	56
 3135 00dd 00       		.byte	0
 3136 00de 7C       		.byte	124
 3137 00df 54       		.byte	84
 3138 00e0 54       		.byte	84
 3139 00e1 54       		.byte	84
 3140 00e2 44       		.byte	68
 3141 00e3 00       		.byte	0
 3142 00e4 7C       		.byte	124
 3143 00e5 14       		.byte	20
 3144 00e6 14       		.byte	20
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 78


 3145 00e7 14       		.byte	20
 3146 00e8 04       		.byte	4
 3147 00e9 00       		.byte	0
 3148 00ea 7C       		.byte	124
 3149 00eb 44       		.byte	68
 3150 00ec 44       		.byte	68
 3151 00ed 54       		.byte	84
 3152 00ee 74       		.byte	116
 3153 00ef 00       		.byte	0
 3154 00f0 7C       		.byte	124
 3155 00f1 10       		.byte	16
 3156 00f2 10       		.byte	16
 3157 00f3 10       		.byte	16
 3158 00f4 7C       		.byte	124
 3159 00f5 00       		.byte	0
 3160 00f6 44       		.byte	68
 3161 00f7 44       		.byte	68
 3162 00f8 7C       		.byte	124
 3163 00f9 44       		.byte	68
 3164 00fa 44       		.byte	68
 3165 00fb 00       		.byte	0
 3166 00fc 60       		.byte	96
 3167 00fd 40       		.byte	64
 3168 00fe 40       		.byte	64
 3169 00ff 44       		.byte	68
 3170 0100 7C       		.byte	124
 3171 0101 00       		.byte	0
 3172 0102 7C       		.byte	124
 3173 0103 10       		.byte	16
 3174 0104 10       		.byte	16
 3175 0105 28       		.byte	40
 3176 0106 44       		.byte	68
 3177 0107 00       		.byte	0
 3178 0108 7C       		.byte	124
 3179 0109 40       		.byte	64
 3180 010a 40       		.byte	64
 3181 010b 40       		.byte	64
 3182 010c 40       		.byte	64
 3183 010d 00       		.byte	0
 3184 010e 7C       		.byte	124
 3185 010f 08       		.byte	8
 3186 0110 10       		.byte	16
 3187 0111 08       		.byte	8
 3188 0112 7C       		.byte	124
 3189 0113 00       		.byte	0
 3190 0114 7C       		.byte	124
 3191 0115 08       		.byte	8
 3192 0116 10       		.byte	16
 3193 0117 20       		.byte	32
 3194 0118 7C       		.byte	124
 3195 0119 00       		.byte	0
 3196 011a 38       		.byte	56
 3197 011b 44       		.byte	68
 3198 011c 44       		.byte	68
 3199 011d 44       		.byte	68
 3200 011e 38       		.byte	56
 3201 011f 00       		.byte	0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 79


 3202 0120 7C       		.byte	124
 3203 0121 14       		.byte	20
 3204 0122 14       		.byte	20
 3205 0123 14       		.byte	20
 3206 0124 08       		.byte	8
 3207 0125 00       		.byte	0
 3208 0126 3C       		.byte	60
 3209 0127 24       		.byte	36
 3210 0128 64       		.byte	100
 3211 0129 24       		.byte	36
 3212 012a 3C       		.byte	60
 3213 012b 00       		.byte	0
 3214 012c 7C       		.byte	124
 3215 012d 14       		.byte	20
 3216 012e 14       		.byte	20
 3217 012f 14       		.byte	20
 3218 0130 68       		.byte	104
 3219 0131 00       		.byte	0
 3220 0132 5C       		.byte	92
 3221 0133 54       		.byte	84
 3222 0134 54       		.byte	84
 3223 0135 54       		.byte	84
 3224 0136 74       		.byte	116
 3225 0137 00       		.byte	0
 3226 0138 04       		.byte	4
 3227 0139 04       		.byte	4
 3228 013a 7C       		.byte	124
 3229 013b 04       		.byte	4
 3230 013c 04       		.byte	4
 3231 013d 00       		.byte	0
 3232 013e 7C       		.byte	124
 3233 013f 40       		.byte	64
 3234 0140 40       		.byte	64
 3235 0141 40       		.byte	64
 3236 0142 7C       		.byte	124
 3237 0143 00       		.byte	0
 3238 0144 0C       		.byte	12
 3239 0145 30       		.byte	48
 3240 0146 40       		.byte	64
 3241 0147 30       		.byte	48
 3242 0148 0C       		.byte	12
 3243 0149 00       		.byte	0
 3244 014a 3C       		.byte	60
 3245 014b 40       		.byte	64
 3246 014c 30       		.byte	48
 3247 014d 40       		.byte	64
 3248 014e 3C       		.byte	60
 3249 014f 00       		.byte	0
 3250 0150 44       		.byte	68
 3251 0151 28       		.byte	40
 3252 0152 10       		.byte	16
 3253 0153 28       		.byte	40
 3254 0154 44       		.byte	68
 3255 0155 00       		.byte	0
 3256 0156 0C       		.byte	12
 3257 0157 10       		.byte	16
 3258 0158 60       		.byte	96
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 80


 3259 0159 10       		.byte	16
 3260 015a 0C       		.byte	12
 3261 015b 00       		.byte	0
 3262 015c 44       		.byte	68
 3263 015d 64       		.byte	100
 3264 015e 54       		.byte	84
 3265 015f 4C       		.byte	76
 3266 0160 44       		.byte	68
 3267 0161 00       		.byte	0
 3268 0162 7C       		.byte	124
 3269 0163 44       		.byte	68
 3270 0164 00       		.byte	0
 3271 0165 00       		.byte	0
 3272 0166 00       		.byte	0
 3273 0167 00       		.byte	0
 3274 0168 0C       		.byte	12
 3275 0169 10       		.byte	16
 3276 016a 60       		.byte	96
 3277 016b 00       		.byte	0
 3278 016c 00       		.byte	0
 3279 016d 00       		.byte	0
 3280 016e 44       		.byte	68
 3281 016f 7C       		.byte	124
 3282 0170 00       		.byte	0
 3283 0171 00       		.byte	0
 3284 0172 00       		.byte	0
 3285 0173 00       		.byte	0
 3286 0174 00       		.byte	0
 3287 0175 01       		.byte	1
 3288 0176 00       		.byte	0
 3289 0177 01       		.byte	1
 3290 0178 00       		.byte	0
 3291 0179 00       		.byte	0
 3292 017a 40       		.byte	64
 3293 017b 40       		.byte	64
 3294 017c 40       		.byte	64
 3295 017d 40       		.byte	64
 3296 017e 40       		.byte	64
 3297 017f 40       		.byte	64
 3298 0180 00       		.byte	0
 3299 0181 01       		.byte	1
 3300 0182 00       		.byte	0
 3301 0183 00       		.byte	0
 3302 0184 00       		.byte	0
 3303 0185 00       		.byte	0
 3304 0186 7C       		.byte	124
 3305 0187 24       		.byte	36
 3306 0188 24       		.byte	36
 3307 0189 24       		.byte	36
 3308 018a 7C       		.byte	124
 3309 018b 00       		.byte	0
 3310 018c 7C       		.byte	124
 3311 018d 54       		.byte	84
 3312 018e 54       		.byte	84
 3313 018f 54       		.byte	84
 3314 0190 6C       		.byte	108
 3315 0191 00       		.byte	0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 81


 3316 0192 7C       		.byte	124
 3317 0193 44       		.byte	68
 3318 0194 44       		.byte	68
 3319 0195 44       		.byte	68
 3320 0196 44       		.byte	68
 3321 0197 00       		.byte	0
 3322 0198 7C       		.byte	124
 3323 0199 44       		.byte	68
 3324 019a 44       		.byte	68
 3325 019b 44       		.byte	68
 3326 019c 38       		.byte	56
 3327 019d 00       		.byte	0
 3328 019e 7C       		.byte	124
 3329 019f 54       		.byte	84
 3330 01a0 54       		.byte	84
 3331 01a1 54       		.byte	84
 3332 01a2 44       		.byte	68
 3333 01a3 00       		.byte	0
 3334 01a4 7C       		.byte	124
 3335 01a5 14       		.byte	20
 3336 01a6 14       		.byte	20
 3337 01a7 14       		.byte	20
 3338 01a8 04       		.byte	4
 3339 01a9 00       		.byte	0
 3340 01aa 7C       		.byte	124
 3341 01ab 44       		.byte	68
 3342 01ac 44       		.byte	68
 3343 01ad 54       		.byte	84
 3344 01ae 74       		.byte	116
 3345 01af 00       		.byte	0
 3346 01b0 7C       		.byte	124
 3347 01b1 10       		.byte	16
 3348 01b2 10       		.byte	16
 3349 01b3 10       		.byte	16
 3350 01b4 7C       		.byte	124
 3351 01b5 00       		.byte	0
 3352 01b6 44       		.byte	68
 3353 01b7 44       		.byte	68
 3354 01b8 7C       		.byte	124
 3355 01b9 44       		.byte	68
 3356 01ba 44       		.byte	68
 3357 01bb 00       		.byte	0
 3358 01bc 60       		.byte	96
 3359 01bd 40       		.byte	64
 3360 01be 40       		.byte	64
 3361 01bf 44       		.byte	68
 3362 01c0 7C       		.byte	124
 3363 01c1 00       		.byte	0
 3364 01c2 7C       		.byte	124
 3365 01c3 10       		.byte	16
 3366 01c4 10       		.byte	16
 3367 01c5 28       		.byte	40
 3368 01c6 44       		.byte	68
 3369 01c7 00       		.byte	0
 3370 01c8 7C       		.byte	124
 3371 01c9 40       		.byte	64
 3372 01ca 40       		.byte	64
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 82


 3373 01cb 40       		.byte	64
 3374 01cc 40       		.byte	64
 3375 01cd 00       		.byte	0
 3376 01ce 7C       		.byte	124
 3377 01cf 08       		.byte	8
 3378 01d0 10       		.byte	16
 3379 01d1 08       		.byte	8
 3380 01d2 7C       		.byte	124
 3381 01d3 00       		.byte	0
 3382 01d4 7C       		.byte	124
 3383 01d5 08       		.byte	8
 3384 01d6 10       		.byte	16
 3385 01d7 20       		.byte	32
 3386 01d8 7C       		.byte	124
 3387 01d9 00       		.byte	0
 3388 01da 38       		.byte	56
 3389 01db 44       		.byte	68
 3390 01dc 44       		.byte	68
 3391 01dd 44       		.byte	68
 3392 01de 38       		.byte	56
 3393 01df 00       		.byte	0
 3394 01e0 7C       		.byte	124
 3395 01e1 14       		.byte	20
 3396 01e2 14       		.byte	20
 3397 01e3 14       		.byte	20
 3398 01e4 08       		.byte	8
 3399 01e5 00       		.byte	0
 3400 01e6 3C       		.byte	60
 3401 01e7 24       		.byte	36
 3402 01e8 64       		.byte	100
 3403 01e9 24       		.byte	36
 3404 01ea 3C       		.byte	60
 3405 01eb 00       		.byte	0
 3406 01ec 7C       		.byte	124
 3407 01ed 14       		.byte	20
 3408 01ee 14       		.byte	20
 3409 01ef 14       		.byte	20
 3410 01f0 68       		.byte	104
 3411 01f1 00       		.byte	0
 3412 01f2 5C       		.byte	92
 3413 01f3 54       		.byte	84
 3414 01f4 54       		.byte	84
 3415 01f5 54       		.byte	84
 3416 01f6 74       		.byte	116
 3417 01f7 00       		.byte	0
 3418 01f8 04       		.byte	4
 3419 01f9 04       		.byte	4
 3420 01fa 7C       		.byte	124
 3421 01fb 04       		.byte	4
 3422 01fc 04       		.byte	4
 3423 01fd 00       		.byte	0
 3424 01fe 7C       		.byte	124
 3425 01ff 40       		.byte	64
 3426 0200 40       		.byte	64
 3427 0201 40       		.byte	64
 3428 0202 7C       		.byte	124
 3429 0203 00       		.byte	0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 83


 3430 0204 0C       		.byte	12
 3431 0205 30       		.byte	48
 3432 0206 40       		.byte	64
 3433 0207 30       		.byte	48
 3434 0208 0C       		.byte	12
 3435 0209 00       		.byte	0
 3436 020a 3C       		.byte	60
 3437 020b 40       		.byte	64
 3438 020c 30       		.byte	48
 3439 020d 40       		.byte	64
 3440 020e 3C       		.byte	60
 3441 020f 00       		.byte	0
 3442 0210 44       		.byte	68
 3443 0211 28       		.byte	40
 3444 0212 10       		.byte	16
 3445 0213 28       		.byte	40
 3446 0214 44       		.byte	68
 3447 0215 00       		.byte	0
 3448 0216 0C       		.byte	12
 3449 0217 10       		.byte	16
 3450 0218 60       		.byte	96
 3451 0219 10       		.byte	16
 3452 021a 0C       		.byte	12
 3453 021b 00       		.byte	0
 3454 021c 44       		.byte	68
 3455 021d 64       		.byte	100
 3456 021e 54       		.byte	84
 3457 021f 4C       		.byte	76
 3458 0220 44       		.byte	68
 3459 0221 00       		.byte	0
 3460 0222 10       		.byte	16
 3461 0223 7C       		.byte	124
 3462 0224 44       		.byte	68
 3463 0225 00       		.byte	0
 3464 0226 00       		.byte	0
 3465 0227 00       		.byte	0
 3466 0228 6C       		.byte	108
 3467 0229 00       		.byte	0
 3468 022a 00       		.byte	0
 3469 022b 00       		.byte	0
 3470 022c 00       		.byte	0
 3471 022d 00       		.byte	0
 3472 022e 44       		.byte	68
 3473 022f 7C       		.byte	124
 3474 0230 10       		.byte	16
 3475 0231 00       		.byte	0
 3476 0232 00       		.byte	0
 3477 0233 00       		.byte	0
 3478 0234 02       		.byte	2
 3479 0235 01       		.byte	1
 3480 0236 02       		.byte	2
 3481 0237 01       		.byte	1
 3482 0238 00       		.byte	0
 3483 0239 00       		.byte	0
 3484 023a FF       		.byte	-1
 3485 023b FF       		.byte	-1
 3486 023c FF       		.byte	-1
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 84


 3487 023d FF       		.byte	-1
 3488 023e FF       		.byte	-1
 3489 023f FF       		.byte	-1
 3490              		.text
 3491              	.Letext0:
 3492              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 3493              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 3494              		.file 4 "Drivers/CMSIS/Include/core_cm3.h"
 3495              		.file 5 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/system_stm32f1xx.h"
 3496              		.file 6 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
 3497              		.file 7 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 3498              		.file 8 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 3499              		.file 9 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\lib\\gcc\\arm-none-eab
 3500              		.file 10 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\includ
 3501              		.file 11 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"
 3502              		.file 12 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma.h"
 3503              		.file 13 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_spi.h"
 3504              		.file 14 "Inc/font.h"
 3505              		.file 15 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s 			page 85


DEFINED SYMBOLS
                            *ABS*:00000000 ili9341.c
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:16     .text.ILI9341_SPI_Error:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:22     .text.ILI9341_SPI_Error:00000000 ILI9341_SPI_Error
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:50     .text.ILI9341_Write_Command:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:57     .text.ILI9341_Write_Command:00000000 ILI9341_Write_Command
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:118    .text.ILI9341_Write_Command:00000044 $d
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:123    .text.ILI9341_Write_Data:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:130    .text.ILI9341_Write_Data:00000000 ILI9341_Write_Data
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:183    .text.ILI9341_Enable:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:190    .text.ILI9341_Enable:00000000 ILI9341_Enable
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:206    .text.ILI9341_Enable:0000000c $d
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:211    .text.ILI9341_Reset:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:218    .text.ILI9341_Reset:00000000 ILI9341_Reset
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:245    .text.ILI9341_Reset:0000001c $d
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:250    .text.ILI9341_SPI_BeginDraw:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:257    .text.ILI9341_SPI_BeginDraw:00000000 ILI9341_SPI_BeginDraw
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:350    .text.ILI9341_SPI_BeginDraw:00000070 $d
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:355    .text.ILI9341_SPI_StopDraw:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:362    .text.ILI9341_SPI_StopDraw:00000000 ILI9341_SPI_StopDraw
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:421    .text.ILI9341_SPI_StopDraw:00000038 $d
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:426    .text.ILI9341_Init:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:433    .text.ILI9341_Init:00000000 ILI9341_Init
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:907    .text.ILI9341_Draw_Graph:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:914    .text.ILI9341_Draw_Graph:00000000 ILI9341_Draw_Graph
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:1444   .text.ILI9341_Draw_Graph:0000031c $d
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:1447   .text.ILI9341_Draw_Graph:00000320 $t
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:1537   .text.ILI9341_Draw_Square:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:1544   .text.ILI9341_Draw_Square:00000000 ILI9341_Draw_Square
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:1994   .text.ILI9341_Draw_Square:000002ac $d
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:1999   .text.ILI9341_Draw_Pixel:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:2006   .text.ILI9341_Draw_Pixel:00000000 ILI9341_Draw_Pixel
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:2382   .text.ILI9341_Draw_Pixel:00000254 $d
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:2387   .text.ILI9341_Draw_Char:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:2394   .text.ILI9341_Draw_Char:00000000 ILI9341_Draw_Char
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:2635   .text.ILI9341_Draw_Char:00000160 $d
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:2640   .text.ILI9341_Draw_Main_Interface:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:2647   .text.ILI9341_Draw_Main_Interface:00000000 ILI9341_Draw_Main_Interface
                            *COM*:00000004 LCD_WIDTH
                            *COM*:00000004 LCD_HEIGHT
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:2909   .rodata.font:00000000 $d
C:\Users\crist\AppData\Local\Temp\ccdpKzCp.s:2913   .rodata.font:00000000 font

UNDEFINED SYMBOLS
HAL_GetTick
HAL_Delay
