ARM GAS  C:\Users\crist\AppData\Local\Temp\ccLSEmOF.s 			page 1


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
  11              		.file	"xpt2046.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.xpt2046_enable_irq,"ax",%progbits
  16              		.align	1
  17              		.global	xpt2046_enable_irq
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu softvfp
  23              	xpt2046_enable_irq:
  24              	.LFB66:
  25              		.file 1 "Src/xpt2046.c"
   1:Src/xpt2046.c **** #include "main.h"
   2:Src/xpt2046.c **** #include "stm32f1xx_hal.h"
   3:Src/xpt2046.c **** #include "xpt2046.h"
   4:Src/xpt2046.c **** 
   5:Src/xpt2046.c **** #define XPT2046_CFG_START   0b10000000
   6:Src/xpt2046.c **** 
   7:Src/xpt2046.c **** #define XPT2046_CFG_MUX(v)  ((v&0b111) << (4))
   8:Src/xpt2046.c **** 
   9:Src/xpt2046.c **** #define XPT2046_CFG_8BIT    0b00001000
  10:Src/xpt2046.c **** #define XPT2046_CFG_12BIT   (0)
  11:Src/xpt2046.c **** 
  12:Src/xpt2046.c **** #define XPT2046_CFG_SER     0b00000100
  13:Src/xpt2046.c **** #define XPT2046_CFG_DFR     (0)
  14:Src/xpt2046.c **** 
  15:Src/xpt2046.c **** #define XPT2046_CFG_PWR(v)  ((v&0b11))
  16:Src/xpt2046.c **** 
  17:Src/xpt2046.c **** #define XPT2046_MUX_Y       0b101
  18:Src/xpt2046.c **** #define XPT2046_MUX_X       0b001
  19:Src/xpt2046.c **** 
  20:Src/xpt2046.c **** #define XPT2046_MUX_Z1      0b011
  21:Src/xpt2046.c **** #define XPT2046_MUX_Z2      0b100
  22:Src/xpt2046.c **** extern SPI_HandleTypeDef hspi2;
  23:Src/xpt2046.c **** 
  24:Src/xpt2046.c **** 
  25:Src/xpt2046.c **** void xpt2046_enable_irq()
  26:Src/xpt2046.c **** {
  26              		.loc 1 26 0
  27              		.cfi_startproc
  28              		@ args = 0, pretend = 0, frame = 8
  29              		@ frame_needed = 0, uses_anonymous_args = 0
  30 0000 10B5     		push	{r4, lr}
  31              	.LCFI0:
  32              		.cfi_def_cfa_offset 8
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccLSEmOF.s 			page 2


  33              		.cfi_offset 4, -8
  34              		.cfi_offset 14, -4
  35 0002 82B0     		sub	sp, sp, #8
  36              	.LCFI1:
  37              		.cfi_def_cfa_offset 16
  27:Src/xpt2046.c **** 	const uint8_t buf[4] = { (XPT2046_CFG_START | XPT2046_CFG_12BIT | XPT2046_CFG_DFR | XPT2046_CFG_MU
  38              		.loc 1 27 0
  39 0004 D023     		movs	r3, #208
  40 0006 8DF80430 		strb	r3, [sp, #4]
  41 000a 0023     		movs	r3, #0
  42 000c 8DF80530 		strb	r3, [sp, #5]
  43 0010 8DF80630 		strb	r3, [sp, #6]
  44 0014 8DF80730 		strb	r3, [sp, #7]
  28:Src/xpt2046.c **** 	TOUCH_CS_PORT->BSRR=(uint32_t)TOUCH_CS_PIN << 16U;
  45              		.loc 1 28 0
  46 0018 074C     		ldr	r4, .L3
  47 001a 4FF40023 		mov	r3, #524288
  48 001e 2361     		str	r3, [r4, #16]
  29:Src/xpt2046.c **** 	HAL_SPI_Transmit(HSPI_INSTANCE, (uint8_t*)&buf[0], 4, 10);
  49              		.loc 1 29 0
  50 0020 0A23     		movs	r3, #10
  51 0022 0422     		movs	r2, #4
  52 0024 0DEB0201 		add	r1, sp, r2
  53 0028 0448     		ldr	r0, .L3+4
  54 002a FFF7FEFF 		bl	HAL_SPI_Transmit
  55              	.LVL0:
  30:Src/xpt2046.c **** 	TOUCH_CS_PORT->BSRR=TOUCH_CS_PIN;
  56              		.loc 1 30 0
  57 002e 0823     		movs	r3, #8
  58 0030 2361     		str	r3, [r4, #16]
  31:Src/xpt2046.c **** }
  59              		.loc 1 31 0
  60 0032 02B0     		add	sp, sp, #8
  61              	.LCFI2:
  62              		.cfi_def_cfa_offset 8
  63              		@ sp needed
  64 0034 10BD     		pop	{r4, pc}
  65              	.L4:
  66 0036 00BF     		.align	2
  67              	.L3:
  68 0038 000C0140 		.word	1073810432
  69 003c 00000000 		.word	hspi2
  70              		.cfi_endproc
  71              	.LFE66:
  73              		.text
  74              	.Letext0:
  75              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
  76              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
  77              		.file 4 "Drivers/CMSIS/Include/core_cm3.h"
  78              		.file 5 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/system_stm32f1xx.h"
  79              		.file 6 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
  80              		.file 7 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
  81              		.file 8 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
  82              		.file 9 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\lib\\gcc\\arm-none-eab
  83              		.file 10 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\includ
  84              		.file 11 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"
  85              		.file 12 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma.h"
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccLSEmOF.s 			page 3


  86              		.file 13 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_spi.h"
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccLSEmOF.s 			page 4


DEFINED SYMBOLS
                            *ABS*:00000000 xpt2046.c
C:\Users\crist\AppData\Local\Temp\ccLSEmOF.s:16     .text.xpt2046_enable_irq:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccLSEmOF.s:23     .text.xpt2046_enable_irq:00000000 xpt2046_enable_irq
C:\Users\crist\AppData\Local\Temp\ccLSEmOF.s:68     .text.xpt2046_enable_irq:00000038 $d

UNDEFINED SYMBOLS
HAL_SPI_Transmit
hspi2
