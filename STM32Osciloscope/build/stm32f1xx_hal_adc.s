ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 1


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
  11              		.file	"stm32f1xx_hal_adc.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.HAL_ADC_MspInit,"ax",%progbits
  16              		.align	1
  17              		.weak	HAL_ADC_MspInit
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu softvfp
  23              	HAL_ADC_MspInit:
  24              	.LFB68:
  25              		.file 1 "Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c"
   1:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
   2:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   ******************************************************************************
   3:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @file    stm32f1xx_hal_adc.c
   4:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @author  MCD Application Team
   5:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief   This file provides firmware functions to manage the following 
   6:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *          functionalities of the Analog to Digital Convertor (ADC)
   7:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *          peripheral:
   8:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *           + Initialization and de-initialization functions
   9:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *             ++ Initialization and Configuration of ADC
  10:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *           + Operation functions
  11:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *             ++ Start, stop, get result of conversions of regular
  12:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *                group, using 3 possible modes: polling, interruption or DMA.
  13:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *           + Control functions
  14:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *             ++ Channels configuration on regular group
  15:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *             ++ Channels configuration on injected group
  16:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *             ++ Analog Watchdog configuration
  17:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *           + State functions
  18:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *             ++ ADC state machine management
  19:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *             ++ Interrupts and flags management
  20:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *          Other functions (extended functions) are available in file 
  21:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *          "stm32f1xx_hal_adc_ex.c".
  22:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *
  23:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   @verbatim
  24:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   ==============================================================================
  25:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                      ##### ADC peripheral features #####
  26:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   ==============================================================================
  27:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   [..]
  28:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   (+) 12-bit resolution
  29:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
  30:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   (+) Interrupt generation at the end of regular conversion, end of injected
  31:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       conversion, and in case of analog watchdog or overrun events.
  32:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
  33:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   (+) Single and continuous conversion modes.
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 2


  34:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
  35:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   (+) Scan mode for conversion of several channels sequentially.
  36:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
  37:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   (+) Data alignment with in-built data coherency.
  38:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
  39:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   (+) Programmable sampling time (channel wise)
  40:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
  41:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   (+) ADC conversion of regular group and injected group.
  42:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
  43:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   (+) External trigger (timer or EXTI) 
  44:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       for both regular and injected groups.
  45:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
  46:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   (+) DMA request generation for transfer of conversions data of regular group.
  47:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
  48:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   (+) Multimode Dual mode (available on devices with 2 ADCs or more).
  49:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
  50:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   (+) Configurable DMA data storage in Multimode Dual mode (available on devices
  51:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       with 2 DCs or more).
  52:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
  53:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   (+) Configurable delay between conversions in Dual interleaved mode (available 
  54:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       on devices with 2 DCs or more).
  55:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
  56:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   (+) ADC calibration
  57:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
  58:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   (+) ADC supply requirements: 2.4 V to 3.6 V at full speed and down to 1.8 V at 
  59:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       slower speed.
  60:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
  61:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   (+) ADC input range: from Vref- (connected to Vssa) to Vref+ (connected to 
  62:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       Vdda or to an external voltage reference).
  63:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
  64:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
  65:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                      ##### How to use this driver #####
  66:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   ==============================================================================
  67:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     [..]
  68:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
  69:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****      *** Configuration of top level parameters related to ADC ***
  70:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****      ============================================================
  71:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****      [..]
  72:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
  73:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     (#) Enable the ADC interface
  74:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (++) As prerequisite, ADC clock must be configured at RCC top level.
  75:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****            Caution: On STM32F1, ADC clock frequency max is 14MHz (refer
  76:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                     to device datasheet).
  77:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                     Therefore, ADC clock prescaler must be configured in 
  78:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                     function of ADC clock source frequency to remain below
  79:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                     this maximum frequency.
  80:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         (++) One clock setting is mandatory:
  81:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****              ADC clock (core clock, also possibly conversion clock).
  82:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****              (+++) Example:
  83:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                    Into HAL_ADC_MspInit() (recommended code location) or with
  84:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                    other device clock parameters configuration:
  85:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                (+++) RCC_PeriphCLKInitTypeDef  PeriphClkInit;
  86:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                (+++) __ADC1_CLK_ENABLE();
  87:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                (+++) PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_ADC;
  88:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                (+++) PeriphClkInit.AdcClockSelection = RCC_ADCPCLK2_DIV2;
  89:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                (+++) HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit);
  90:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 3


  91:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     (#) ADC pins configuration
  92:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****          (++) Enable the clock for the ADC GPIOs
  93:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****               using macro __HAL_RCC_GPIOx_CLK_ENABLE()
  94:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****          (++) Configure these ADC pins in analog mode
  95:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****               using function HAL_GPIO_Init()
  96:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
  97:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     (#) Optionally, in case of usage of ADC with interruptions:
  98:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****          (++) Configure the NVIC for ADC
  99:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****               using function HAL_NVIC_EnableIRQ(ADCx_IRQn)
 100:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****          (++) Insert the ADC interruption handler function HAL_ADC_IRQHandler() 
 101:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****               into the function of corresponding ADC interruption vector 
 102:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****               ADCx_IRQHandler().
 103:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 104:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     (#) Optionally, in case of usage of DMA:
 105:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****          (++) Configure the DMA (DMA channel, mode normal or circular, ...)
 106:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****               using function HAL_DMA_Init().
 107:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****          (++) Configure the NVIC for DMA
 108:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****               using function HAL_NVIC_EnableIRQ(DMAx_Channelx_IRQn)
 109:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****          (++) Insert the ADC interruption handler function HAL_ADC_IRQHandler() 
 110:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****               into the function of corresponding DMA interruption vector 
 111:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****               DMAx_Channelx_IRQHandler().
 112:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 113:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****      *** Configuration of ADC, groups regular/injected, channels parameters ***
 114:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****      ==========================================================================
 115:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****      [..]
 116:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 117:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     (#) Configure the ADC parameters (resolution, data alignment, ...)
 118:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         and regular group parameters (conversion trigger, sequencer, ...)
 119:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         using function HAL_ADC_Init().
 120:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 121:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     (#) Configure the channels for regular group parameters (channel number, 
 122:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         channel rank into sequencer, ..., into regular group)
 123:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         using function HAL_ADC_ConfigChannel().
 124:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 125:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     (#) Optionally, configure the injected group parameters (conversion trigger, 
 126:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         sequencer, ..., of injected group)
 127:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         and the channels for injected group parameters (channel number, 
 128:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         channel rank into sequencer, ..., into injected group)
 129:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         using function HAL_ADCEx_InjectedConfigChannel().
 130:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 131:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     (#) Optionally, configure the analog watchdog parameters (channels
 132:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         monitored, thresholds, ...)
 133:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         using function HAL_ADC_AnalogWDGConfig().
 134:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 135:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     (#) Optionally, for devices with several ADC instances: configure the 
 136:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         multimode parameters
 137:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         using function HAL_ADCEx_MultiModeConfigChannel().
 138:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 139:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****      *** Execution of ADC conversions ***
 140:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****      ====================================
 141:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****      [..]
 142:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 143:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     (#) Optionally, perform an automatic ADC calibration to improve the
 144:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         conversion accuracy
 145:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         using function HAL_ADCEx_Calibration_Start().
 146:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 147:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     (#) ADC driver can be used among three modes: polling, interruption,
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 4


 148:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         transfer by DMA.
 149:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 150:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         (++) ADC conversion by polling:
 151:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           (+++) Activate the ADC peripheral and start conversions
 152:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 using function HAL_ADC_Start()
 153:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           (+++) Wait for ADC conversion completion 
 154:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 using function HAL_ADC_PollForConversion()
 155:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 (or for injected group: HAL_ADCEx_InjectedPollForConversion() )
 156:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           (+++) Retrieve conversion results 
 157:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 using function HAL_ADC_GetValue()
 158:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 (or for injected group: HAL_ADCEx_InjectedGetValue() )
 159:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           (+++) Stop conversion and disable the ADC peripheral 
 160:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 using function HAL_ADC_Stop()
 161:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 162:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         (++) ADC conversion by interruption: 
 163:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           (+++) Activate the ADC peripheral and start conversions
 164:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 using function HAL_ADC_Start_IT()
 165:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           (+++) Wait for ADC conversion completion by call of function
 166:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 HAL_ADC_ConvCpltCallback()
 167:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 (this function must be implemented in user program)
 168:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 (or for injected group: HAL_ADCEx_InjectedConvCpltCallback() )
 169:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           (+++) Retrieve conversion results 
 170:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 using function HAL_ADC_GetValue()
 171:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 (or for injected group: HAL_ADCEx_InjectedGetValue() )
 172:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           (+++) Stop conversion and disable the ADC peripheral 
 173:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 using function HAL_ADC_Stop_IT()
 174:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 175:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         (++) ADC conversion with transfer by DMA:
 176:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           (+++) Activate the ADC peripheral and start conversions
 177:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 using function HAL_ADC_Start_DMA()
 178:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           (+++) Wait for ADC conversion completion by call of function
 179:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 HAL_ADC_ConvCpltCallback() or HAL_ADC_ConvHalfCpltCallback()
 180:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 (these functions must be implemented in user program)
 181:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           (+++) Conversion results are automatically transferred by DMA into
 182:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 destination variable address.
 183:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           (+++) Stop conversion and disable the ADC peripheral 
 184:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 using function HAL_ADC_Stop_DMA()
 185:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 186:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         (++) For devices with several ADCs: ADC multimode conversion 
 187:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****              with transfer by DMA:
 188:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           (+++) Activate the ADC peripheral (slave) and start conversions
 189:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 using function HAL_ADC_Start()
 190:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           (+++) Activate the ADC peripheral (master) and start conversions
 191:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 using function HAL_ADCEx_MultiModeStart_DMA()
 192:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           (+++) Wait for ADC conversion completion by call of function
 193:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 HAL_ADC_ConvCpltCallback() or HAL_ADC_ConvHalfCpltCallback()
 194:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 (these functions must be implemented in user program)
 195:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           (+++) Conversion results are automatically transferred by DMA into
 196:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 destination variable address.
 197:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           (+++) Stop conversion and disable the ADC peripheral (master)
 198:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 using function HAL_ADCEx_MultiModeStop_DMA()
 199:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           (+++) Stop conversion and disable the ADC peripheral (slave)
 200:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 using function HAL_ADC_Stop_IT()
 201:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 202:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****      [..]
 203:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 204:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     (@) Callback functions must be implemented in user program:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 5


 205:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (+@) HAL_ADC_ErrorCallback()
 206:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (+@) HAL_ADC_LevelOutOfWindowCallback() (callback of analog watchdog)
 207:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (+@) HAL_ADC_ConvCpltCallback()
 208:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (+@) HAL_ADC_ConvHalfCpltCallback
 209:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (+@) HAL_ADCEx_InjectedConvCpltCallback()
 210:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 211:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****      *** Deinitialization of ADC ***
 212:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****      ============================================================
 213:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****      [..]
 214:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 215:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     (#) Disable the ADC interface
 216:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (++) ADC clock can be hard reset and disabled at RCC top level.
 217:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         (++) Hard reset of ADC peripherals
 218:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****              using macro __ADCx_FORCE_RESET(), __ADCx_RELEASE_RESET().
 219:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         (++) ADC clock disable
 220:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****              using the equivalent macro/functions as configuration step.
 221:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****              (+++) Example:
 222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                    Into HAL_ADC_MspDeInit() (recommended code location) or with
 223:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                    other device clock parameters configuration:
 224:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                (+++) PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_ADC
 225:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                (+++) PeriphClkInit.AdcClockSelection = RCC_ADCPLLCLK2_OFF
 226:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                (+++) HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit)
 227:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 228:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     (#) ADC pins configuration
 229:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****          (++) Disable the clock for the ADC GPIOs
 230:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****               using macro __HAL_RCC_GPIOx_CLK_DISABLE()
 231:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 232:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     (#) Optionally, in case of usage of ADC with interruptions:
 233:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****          (++) Disable the NVIC for ADC
 234:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****               using function HAL_NVIC_EnableIRQ(ADCx_IRQn)
 235:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 236:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     (#) Optionally, in case of usage of DMA:
 237:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****          (++) Deinitialize the DMA
 238:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****               using function HAL_DMA_Init().
 239:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****          (++) Disable the NVIC for DMA
 240:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****               using function HAL_NVIC_EnableIRQ(DMAx_Channelx_IRQn)
 241:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 242:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     [..]
 243:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     @endverbatim
 245:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   ******************************************************************************
 246:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @attention
 247:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *
 248:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
 249:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *
 250:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * Redistribution and use in source and binary forms, with or without modification,
 251:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * are permitted provided that the following conditions are met:
 252:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *   1. Redistributions of source code must retain the above copyright notice,
 253:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *      this list of conditions and the following disclaimer.
 254:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
 255:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *      this list of conditions and the following disclaimer in the documentation
 256:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *      and/or other materials provided with the distribution.
 257:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
 258:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *      may be used to endorse or promote products derived from this software
 259:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *      without specific prior written permission.
 260:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *
 261:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 6


 262:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 263:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 264:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 265:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 266:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 267:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 268:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 269:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 270:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 271:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *
 272:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   ******************************************************************************  
 273:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
 274:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 275:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /* Includes ------------------------------------------------------------------*/
 276:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** #include "stm32f1xx_hal.h"
 277:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 278:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /** @addtogroup STM32F1xx_HAL_Driver
 279:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @{
 280:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
 281:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 282:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /** @defgroup ADC ADC
 283:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief ADC HAL module driver
 284:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @{
 285:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
 286:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 287:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** #ifdef HAL_ADC_MODULE_ENABLED
 288:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 289:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /* Private typedef -----------------------------------------------------------*/
 290:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /* Private define ------------------------------------------------------------*/
 291:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /** @defgroup ADC_Private_Constants ADC Private Constants
 292:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @{
 293:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
 294:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 295:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Timeout values for ADC enable and disable settling time.                 */
 296:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Values defined to be higher than worst cases: low clocks freq,           */
 297:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* maximum prescaler.                                                       */
 298:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Ex of profile low frequency : Clock source at 0.1 MHz, ADC clock         */
 299:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* prescaler 4, sampling time 12.5 ADC clock cycles, resolution 12 bits.    */
 300:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Unit: ms                                                                 */
 301:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   #define ADC_ENABLE_TIMEOUT              2U
 302:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   #define ADC_DISABLE_TIMEOUT             2U
 303:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 304:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Delay for ADC stabilization time.                                        */
 305:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Maximum delay is 1us (refer to device datasheet, parameter tSTAB).       */
 306:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Unit: us                                                                 */
 307:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   #define ADC_STAB_DELAY_US               1U
 308:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 309:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Delay for temperature sensor stabilization time.                         */
 310:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Maximum delay is 10us (refer to device datasheet, parameter tSTART).     */
 311:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Unit: us                                                                 */
 312:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   #define ADC_TEMPSENSOR_DELAY_US         10U
 313:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 314:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
 315:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @}
 316:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
 317:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 318:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /* Private macro -------------------------------------------------------------*/
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 7


 319:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /* Private variables ---------------------------------------------------------*/
 320:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /* Private function prototypes -----------------------------------------------*/
 321:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /** @defgroup ADC_Private_Functions ADC Private Functions
 322:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @{
 323:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
 324:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
 325:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @}
 326:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
 327:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 328:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /* Exported functions --------------------------------------------------------*/
 329:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 330:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /** @defgroup ADC_Exported_Functions ADC Exported Functions
 331:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @{
 332:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
 333:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 334:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /** @defgroup ADC_Exported_Functions_Group1 Initialization/de-initialization functions 
 335:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief    Initialization and Configuration functions
 336:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *
 337:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** @verbatim    
 338:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****  ===============================================================================
 339:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****               ##### Initialization and de-initialization functions #####
 340:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****  ===============================================================================
 341:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     [..]  This section provides functions allowing to:
 342:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (+) Initialize and configure the ADC. 
 343:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (+) De-initialize the ADC.
 344:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 345:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** @endverbatim
 346:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @{
 347:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
 348:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 349:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
 350:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  Initializes the ADC peripheral and regular group according to  
 351:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         parameters specified in structure "ADC_InitTypeDef".
 352:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @note   As prerequisite, ADC clock must be configured at RCC top level
 353:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         (clock source APB2).
 354:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         See commented example code below that can be copied and uncommented 
 355:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         into HAL_ADC_MspInit().
 356:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @note   Possibility to update parameters on the fly:
 357:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         This function initializes the ADC MSP (HAL_ADC_MspInit()) only when
 358:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         coming from ADC state reset. Following calls to this function can
 359:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         be used to reconfigure some parameters of ADC_InitTypeDef  
 360:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         structure on the fly, without modifying MSP configuration. If ADC  
 361:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         MSP has to be modified again, HAL_ADC_DeInit() must be called
 362:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         before HAL_ADC_Init().
 363:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         The setting of these parameters is conditioned to ADC state.
 364:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         For parameters constraints, see comments of structure 
 365:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         "ADC_InitTypeDef".
 366:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @note   This function configures the ADC within 2 scopes: scope of entire 
 367:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         ADC and scope of regular group. For parameters details, see comments 
 368:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         of structure "ADC_InitTypeDef".
 369:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hadc: ADC handle
 370:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval HAL status
 371:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
 372:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** HAL_StatusTypeDef HAL_ADC_Init(ADC_HandleTypeDef* hadc)
 373:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
 374:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 375:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   uint32_t tmp_cr1 = 0U;
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 8


 376:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   uint32_t tmp_cr2 = 0U;
 377:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   uint32_t tmp_sqr1 = 0U;
 378:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 379:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Check ADC handle */
 380:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if(hadc == NULL)
 381:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 382:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     return HAL_ERROR;
 383:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
 384:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 385:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Check the parameters */
 386:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
 387:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_ADC_DATA_ALIGN(hadc->Init.DataAlign));
 388:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_ADC_SCAN_MODE(hadc->Init.ScanConvMode));
 389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_FUNCTIONAL_STATE(hadc->Init.ContinuousConvMode));
 390:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_ADC_EXTTRIG(hadc->Init.ExternalTrigConv));
 391:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 392:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if(hadc->Init.ScanConvMode != ADC_SCAN_DISABLE)
 393:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 394:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     assert_param(IS_ADC_REGULAR_NB_CONV(hadc->Init.NbrOfConversion));
 395:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     assert_param(IS_FUNCTIONAL_STATE(hadc->Init.DiscontinuousConvMode));
 396:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     if(hadc->Init.DiscontinuousConvMode != DISABLE)
 397:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 398:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       assert_param(IS_ADC_REGULAR_DISCONT_NUMBER(hadc->Init.NbrOfDiscConversion));
 399:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 400:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
 401:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 402:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* As prerequisite, into HAL_ADC_MspInit(), ADC clock must be configured    */
 403:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* at RCC top level.                                                        */
 404:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Refer to header of this file for more details on clock enabling          */
 405:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* procedure.                                                               */
 406:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 407:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Actions performed only if ADC is coming from state reset:                */
 408:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* - Initialization of ADC MSP                                              */
 409:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if (hadc->State == HAL_ADC_STATE_RESET)
 410:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 411:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Initialize ADC error code */
 412:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     ADC_CLEAR_ERRORCODE(hadc);
 413:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 414:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Allocate lock resource and initialize it */
 415:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     hadc->Lock = HAL_UNLOCKED;
 416:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 417:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Init the low level hardware */
 418:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     HAL_ADC_MspInit(hadc);
 419:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
 420:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 421:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Stop potential conversion on going, on regular and injected groups */
 422:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Disable ADC peripheral */
 423:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Note: In case of ADC already enabled, precaution to not launch an        */
 424:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /*       unwanted conversion while modifying register CR2 by writing 1 to   */
 425:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /*       bit ADON.                                                          */
 426:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   tmp_hal_status = ADC_ConversionStop_Disable(hadc);
 427:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 428:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 429:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Configuration of ADC parameters if previous preliminary actions are      */ 
 430:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* correctly completed.                                                     */
 431:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_ERROR_INTERNAL) &&
 432:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (tmp_hal_status == HAL_OK)                                  )
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 9


 433:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 434:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Set ADC state */
 435:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     ADC_STATE_CLR_SET(hadc->State,
 436:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                       HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 437:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                       HAL_ADC_STATE_BUSY_INTERNAL);
 438:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 439:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Set ADC parameters */
 440:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 441:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Configuration of ADC:                                                  */
 442:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*  - data alignment                                                      */
 443:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*  - external trigger to start conversion                                */
 444:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*  - external trigger polarity (always set to 1, because needed for all  */
 445:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*    triggers: external trigger of SW start)                             */
 446:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*  - continuous conversion mode                                          */
 447:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Note: External trigger polarity (ADC_CR2_EXTTRIG) is set into          */
 448:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*       HAL_ADC_Start_xxx functions because if set in this function,     */
 449:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*       a conversion on injected group would start a conversion also on  */
 450:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*       regular group after ADC enabling.                                */
 451:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     tmp_cr2 |= (hadc->Init.DataAlign                               |
 452:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 ADC_CFGR_EXTSEL(hadc, hadc->Init.ExternalTrigConv) |
 453:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 ADC_CR2_CONTINUOUS(hadc->Init.ContinuousConvMode)   );
 454:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 455:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Configuration of ADC:                                                  */
 456:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*  - scan mode                                                           */
 457:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*  - discontinuous mode disable/enable                                   */
 458:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*  - discontinuous mode number of conversions                            */
 459:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     tmp_cr1 |= (ADC_CR1_SCAN_SET(hadc->Init.ScanConvMode));
 460:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 461:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Enable discontinuous mode only if continuous mode is disabled */
 462:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Note: If parameter "Init.ScanConvMode" is set to disable, parameter    */
 463:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*       discontinuous is set anyway, but will have no effect on ADC HW.  */
 464:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     if (hadc->Init.DiscontinuousConvMode == ENABLE)
 465:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 466:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       if (hadc->Init.ContinuousConvMode == DISABLE)
 467:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
 468:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         /* Enable the selected ADC regular discontinuous mode */
 469:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         /* Set the number of channels to be converted in discontinuous mode */
 470:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         SET_BIT(tmp_cr1, ADC_CR1_DISCEN                                            |
 471:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                          ADC_CR1_DISCONTINUOUS_NUM(hadc->Init.NbrOfDiscConversion)  );
 472:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
 473:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       else
 474:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
 475:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         /* ADC regular group settings continuous and sequencer discontinuous*/
 476:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         /* cannot be enabled simultaneously.                                */
 477:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         
 478:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         /* Update ADC state machine to error */
 479:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_CONFIG);
 480:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         
 481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         /* Set ADC error code to ADC IP internal error */
 482:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         SET_BIT(hadc->ErrorCode, HAL_ADC_ERROR_INTERNAL);
 483:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
 484:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 485:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 486:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Update ADC configuration register CR1 with previous settings */
 487:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       MODIFY_REG(hadc->Instance->CR1,
 488:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                  ADC_CR1_SCAN    |
 489:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                  ADC_CR1_DISCEN  |
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 10


 490:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                  ADC_CR1_DISCNUM    ,
 491:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                  tmp_cr1             );
 492:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 493:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Update ADC configuration register CR2 with previous settings */
 494:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       MODIFY_REG(hadc->Instance->CR2,
 495:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                  ADC_CR2_ALIGN   |
 496:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                  ADC_CR2_EXTSEL  |
 497:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                  ADC_CR2_EXTTRIG |
 498:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                  ADC_CR2_CONT       ,
 499:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                  tmp_cr2             );
 500:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 501:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Configuration of regular group sequencer:                              */
 502:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* - if scan mode is disabled, regular channels sequence length is set to */
 503:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*   0x00: 1 channel converted (channel on regular rank 1)                */
 504:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*   Parameter "NbrOfConversion" is discarded.                            */
 505:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*   Note: Scan mode is present by hardware on this device and, if        */
 506:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*   disabled, discards automatically nb of conversions. Anyway, nb of    */
 507:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*   conversions is forced to 0x00 for alignment over all STM32 devices.  */
 508:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* - if scan mode is enabled, regular channels sequence length is set to  */
 509:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*   parameter "NbrOfConversion"                                          */
 510:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     if (ADC_CR1_SCAN_SET(hadc->Init.ScanConvMode) == ADC_SCAN_ENABLE)
 511:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 512:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       tmp_sqr1 = ADC_SQR1_L_SHIFT(hadc->Init.NbrOfConversion);
 513:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 514:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
 515:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     MODIFY_REG(hadc->Instance->SQR1,
 516:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                ADC_SQR1_L          ,
 517:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                tmp_sqr1             );
 518:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 519:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Check back that ADC registers have effectively been configured to      */
 520:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* ensure of no potential problem of ADC core IP clocking.                */
 521:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Check through register CR2 (excluding bits set in other functions:     */
 522:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* execution control bits (ADON, JSWSTART, SWSTART), regular group bits   */
 523:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* (DMA), injected group bits (JEXTTRIG and JEXTSEL), channel internal    */
 524:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* measurement path bit (TSVREFE).                                        */
 525:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     if (READ_BIT(hadc->Instance->CR2, ~(ADC_CR2_ADON | ADC_CR2_DMA |
 526:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                         ADC_CR2_SWSTART | ADC_CR2_JSWSTART |
 527:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                         ADC_CR2_JEXTTRIG | ADC_CR2_JEXTSEL |
 528:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                         ADC_CR2_TSVREFE                     ))
 529:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****          == tmp_cr2)
 530:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 531:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Set ADC error code to none */
 532:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       ADC_CLEAR_ERRORCODE(hadc);
 533:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
 534:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Set the ADC state */
 535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       ADC_STATE_CLR_SET(hadc->State,
 536:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                         HAL_ADC_STATE_BUSY_INTERNAL,
 537:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                         HAL_ADC_STATE_READY);
 538:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 539:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     else
 540:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 541:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Update ADC state machine to error */
 542:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       ADC_STATE_CLR_SET(hadc->State,
 543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                         HAL_ADC_STATE_BUSY_INTERNAL,
 544:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                         HAL_ADC_STATE_ERROR_INTERNAL);
 545:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
 546:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Set ADC error code to ADC IP internal error */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 11


 547:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       SET_BIT(hadc->ErrorCode, HAL_ADC_ERROR_INTERNAL);
 548:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
 549:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       tmp_hal_status = HAL_ERROR;
 550:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 551:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 552:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
 553:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   else
 554:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 555:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Update ADC state machine to error */
 556:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_INTERNAL);
 557:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         
 558:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     tmp_hal_status = HAL_ERROR;
 559:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
 560:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 561:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Return function status */
 562:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   return tmp_hal_status;
 563:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
 564:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 565:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
 566:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  Deinitialize the ADC peripheral registers to their default reset
 567:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         values, with deinitialization of the ADC MSP.
 568:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         If needed, the example code can be copied and uncommented into
 569:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         function HAL_ADC_MspDeInit().
 570:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hadc: ADC handle
 571:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval HAL status
 572:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
 573:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** HAL_StatusTypeDef HAL_ADC_DeInit(ADC_HandleTypeDef* hadc)
 574:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
 575:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 576:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 577:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Check ADC handle */
 578:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if(hadc == NULL)
 579:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 580:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****      return HAL_ERROR;
 581:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
 582:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 583:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Check the parameters */
 584:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
 585:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 586:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Set ADC state */
 587:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   SET_BIT(hadc->State, HAL_ADC_STATE_BUSY_INTERNAL);
 588:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 589:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Stop potential conversion on going, on regular and injected groups */
 590:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Disable ADC peripheral */
 591:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   tmp_hal_status = ADC_ConversionStop_Disable(hadc);
 592:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 593:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 594:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Configuration of ADC parameters if previous preliminary actions are      */ 
 595:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* correctly completed.                                                     */
 596:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if (tmp_hal_status == HAL_OK)
 597:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 598:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* ========== Reset ADC registers ========== */
 599:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 600:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 601:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 602:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 603:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Reset register SR */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 12


 604:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     __HAL_ADC_CLEAR_FLAG(hadc, (ADC_FLAG_AWD | ADC_FLAG_JEOC | ADC_FLAG_EOC |
 605:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                 ADC_FLAG_JSTRT | ADC_FLAG_STRT));
 606:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                          
 607:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Reset register CR1 */
 608:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     CLEAR_BIT(hadc->Instance->CR1, (ADC_CR1_AWDEN   | ADC_CR1_JAWDEN | ADC_CR1_DISCNUM | 
 609:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                     ADC_CR1_JDISCEN | ADC_CR1_DISCEN | ADC_CR1_JAUTO   | 
 610:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                     ADC_CR1_AWDSGL  | ADC_CR1_SCAN   | ADC_CR1_JEOCIE  |   
 611:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                     ADC_CR1_AWDIE   | ADC_CR1_EOCIE  | ADC_CR1_AWDCH    ));
 612:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 613:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Reset register CR2 */
 614:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     CLEAR_BIT(hadc->Instance->CR2, (ADC_CR2_TSVREFE | ADC_CR2_SWSTART | ADC_CR2_JSWSTART | 
 615:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                     ADC_CR2_EXTTRIG | ADC_CR2_EXTSEL  | ADC_CR2_JEXTTRIG |  
 616:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                     ADC_CR2_JEXTSEL | ADC_CR2_ALIGN   | ADC_CR2_DMA      |        
 617:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                     ADC_CR2_RSTCAL  | ADC_CR2_CAL     | ADC_CR2_CONT     |         
 618:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                     ADC_CR2_ADON                                          ));
 619:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 620:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Reset register SMPR1 */
 621:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     CLEAR_BIT(hadc->Instance->SMPR1, (ADC_SMPR1_SMP17 | ADC_SMPR1_SMP16 | ADC_SMPR1_SMP15 | 
 622:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                       ADC_SMPR1_SMP14 | ADC_SMPR1_SMP13 | ADC_SMPR1_SMP12 | 
 623:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                       ADC_SMPR1_SMP11 | ADC_SMPR1_SMP10                    ));
 624:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 625:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Reset register SMPR2 */
 626:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     CLEAR_BIT(hadc->Instance->SMPR2, (ADC_SMPR2_SMP9 | ADC_SMPR2_SMP8 | ADC_SMPR2_SMP7 | 
 627:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                       ADC_SMPR2_SMP6 | ADC_SMPR2_SMP5 | ADC_SMPR2_SMP4 | 
 628:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                       ADC_SMPR2_SMP3 | ADC_SMPR2_SMP2 | ADC_SMPR2_SMP1 | 
 629:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                       ADC_SMPR2_SMP0                                    ));
 630:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 631:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Reset register JOFR1 */
 632:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     CLEAR_BIT(hadc->Instance->JOFR1, ADC_JOFR1_JOFFSET1);
 633:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Reset register JOFR2 */
 634:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     CLEAR_BIT(hadc->Instance->JOFR2, ADC_JOFR2_JOFFSET2);
 635:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Reset register JOFR3 */
 636:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     CLEAR_BIT(hadc->Instance->JOFR3, ADC_JOFR3_JOFFSET3);
 637:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Reset register JOFR4 */
 638:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     CLEAR_BIT(hadc->Instance->JOFR4, ADC_JOFR4_JOFFSET4);
 639:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 640:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Reset register HTR */
 641:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     CLEAR_BIT(hadc->Instance->HTR, ADC_HTR_HT);
 642:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Reset register LTR */
 643:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     CLEAR_BIT(hadc->Instance->LTR, ADC_LTR_LT);
 644:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 645:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Reset register SQR1 */
 646:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     CLEAR_BIT(hadc->Instance->SQR1, ADC_SQR1_L    |
 647:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                     ADC_SQR1_SQ16 | ADC_SQR1_SQ15 | 
 648:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                     ADC_SQR1_SQ14 | ADC_SQR1_SQ13  );
 649:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 650:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Reset register SQR1 */
 651:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     CLEAR_BIT(hadc->Instance->SQR1, ADC_SQR1_L    |
 652:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                     ADC_SQR1_SQ16 | ADC_SQR1_SQ15 | 
 653:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                     ADC_SQR1_SQ14 | ADC_SQR1_SQ13  );
 654:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 655:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Reset register SQR2 */
 656:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     CLEAR_BIT(hadc->Instance->SQR2, ADC_SQR2_SQ12 | ADC_SQR2_SQ11 | ADC_SQR2_SQ10 | 
 657:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                     ADC_SQR2_SQ9  | ADC_SQR2_SQ8  | ADC_SQR2_SQ7   );
 658:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 659:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Reset register SQR3 */
 660:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     CLEAR_BIT(hadc->Instance->SQR3, ADC_SQR3_SQ6 | ADC_SQR3_SQ5 | ADC_SQR3_SQ4 | 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 13


 661:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                     ADC_SQR3_SQ3 | ADC_SQR3_SQ2 | ADC_SQR3_SQ1  );
 662:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 663:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Reset register JSQR */
 664:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     CLEAR_BIT(hadc->Instance->JSQR, ADC_JSQR_JL |
 665:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                     ADC_JSQR_JSQ4 | ADC_JSQR_JSQ3 | 
 666:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                     ADC_JSQR_JSQ2 | ADC_JSQR_JSQ1  );
 667:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 668:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Reset register JSQR */
 669:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     CLEAR_BIT(hadc->Instance->JSQR, ADC_JSQR_JL |
 670:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                     ADC_JSQR_JSQ4 | ADC_JSQR_JSQ3 | 
 671:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                     ADC_JSQR_JSQ2 | ADC_JSQR_JSQ1  );
 672:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 673:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Reset register DR */
 674:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* bits in access mode read only, no direct reset applicable*/
 675:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 676:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Reset registers JDR1, JDR2, JDR3, JDR4 */
 677:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* bits in access mode read only, no direct reset applicable*/
 678:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 679:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* ========== Hard reset ADC peripheral ========== */
 680:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Performs a global reset of the entire ADC peripheral: ADC state is     */
 681:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* forced to a similar state after device power-on.                       */
 682:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* If needed, copy-paste and uncomment the following reset code into      */
 683:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* function "void HAL_ADC_MspInit(ADC_HandleTypeDef* hadc)":              */
 684:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*                                                                        */
 685:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*  __HAL_RCC_ADC1_FORCE_RESET()                                          */
 686:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*  __HAL_RCC_ADC1_RELEASE_RESET()                                        */
 687:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 688:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* DeInit the low level hardware */
 689:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     HAL_ADC_MspDeInit(hadc);
 690:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 691:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Set ADC error code to none */
 692:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     ADC_CLEAR_ERRORCODE(hadc);
 693:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 694:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Set ADC state */
 695:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     hadc->State = HAL_ADC_STATE_RESET; 
 696:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 697:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
 698:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 699:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Process unlocked */
 700:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   __HAL_UNLOCK(hadc);
 701:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 702:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Return function status */
 703:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   return tmp_hal_status;
 704:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
 705:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 706:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
 707:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  Initializes the ADC MSP.
 708:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hadc: ADC handle
 709:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval None
 710:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
 711:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** __weak void HAL_ADC_MspInit(ADC_HandleTypeDef* hadc)
 712:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
  26              		.loc 1 712 0
  27              		.cfi_startproc
  28              		@ args = 0, pretend = 0, frame = 0
  29              		@ frame_needed = 0, uses_anonymous_args = 0
  30              		@ link register save eliminated.
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 14


  31              	.LVL0:
 713:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Prevent unused argument(s) compilation warning */
 714:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   UNUSED(hadc);
 715:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* NOTE : This function should not be modified. When the callback is needed,
 716:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****             function HAL_ADC_MspInit must be implemented in the user file.
 717:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****    */ 
 718:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
  32              		.loc 1 718 0
  33 0000 7047     		bx	lr
  34              		.cfi_endproc
  35              	.LFE68:
  37              		.section	.text.HAL_ADC_MspDeInit,"ax",%progbits
  38              		.align	1
  39              		.weak	HAL_ADC_MspDeInit
  40              		.syntax unified
  41              		.thumb
  42              		.thumb_func
  43              		.fpu softvfp
  45              	HAL_ADC_MspDeInit:
  46              	.LFB69:
 719:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 720:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
 721:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  DeInitializes the ADC MSP.
 722:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hadc: ADC handle
 723:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval None
 724:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
 725:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** __weak void HAL_ADC_MspDeInit(ADC_HandleTypeDef* hadc)
 726:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
  47              		.loc 1 726 0
  48              		.cfi_startproc
  49              		@ args = 0, pretend = 0, frame = 0
  50              		@ frame_needed = 0, uses_anonymous_args = 0
  51              		@ link register save eliminated.
  52              	.LVL1:
 727:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Prevent unused argument(s) compilation warning */
 728:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   UNUSED(hadc);
 729:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* NOTE : This function should not be modified. When the callback is needed,
 730:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****             function HAL_ADC_MspDeInit must be implemented in the user file.
 731:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****    */ 
 732:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
  53              		.loc 1 732 0
  54 0000 7047     		bx	lr
  55              		.cfi_endproc
  56              	.LFE69:
  58              		.section	.text.HAL_ADC_PollForConversion,"ax",%progbits
  59              		.align	1
  60              		.global	HAL_ADC_PollForConversion
  61              		.syntax unified
  62              		.thumb
  63              		.thumb_func
  64              		.fpu softvfp
  66              	HAL_ADC_PollForConversion:
  67              	.LFB72:
 733:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 734:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
 735:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @}
 736:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 15


 737:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 738:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /** @defgroup ADC_Exported_Functions_Group2 IO operation functions
 739:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****  *  @brief    Input and Output operation functions
 740:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****  *
 741:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** @verbatim   
 742:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****  ===============================================================================
 743:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                       ##### IO operation functions #####
 744:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****  ===============================================================================
 745:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     [..]  This section provides functions allowing to:
 746:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (+) Start conversion of regular group.
 747:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (+) Stop conversion of regular group.
 748:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (+) Poll for conversion complete on regular group.
 749:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (+) Poll for conversion event.
 750:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (+) Get result of regular channel conversion.
 751:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (+) Start conversion of regular group and enable interruptions.
 752:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (+) Stop conversion of regular group and disable interruptions.
 753:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (+) Handle ADC interrupt request
 754:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (+) Start conversion of regular group and enable DMA transfer.
 755:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (+) Stop conversion of regular group and disable ADC DMA transfer.
 756:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** @endverbatim
 757:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @{
 758:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
 759:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 760:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
 761:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  Enables ADC, starts conversion of regular group.
 762:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         Interruptions enabled in this function: None.
 763:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hadc: ADC handle
 764:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval HAL status
 765:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
 766:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** HAL_StatusTypeDef HAL_ADC_Start(ADC_HandleTypeDef* hadc)
 767:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
 768:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 769:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 770:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Check the parameters */
 771:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
 772:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 773:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Process locked */
 774:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   __HAL_LOCK(hadc);
 775:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****    
 776:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Enable the ADC peripheral */
 777:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   tmp_hal_status = ADC_Enable(hadc);
 778:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 779:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Start conversion if ADC is effectively enabled */
 780:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if (tmp_hal_status == HAL_OK)
 781:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 782:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Set ADC state                                                          */
 783:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* - Clear state bitfield related to regular group conversion results     */
 784:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* - Set state bitfield related to regular operation                      */
 785:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     ADC_STATE_CLR_SET(hadc->State,
 786:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                       HAL_ADC_STATE_READY | HAL_ADC_STATE_REG_EOC,
 787:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                       HAL_ADC_STATE_REG_BUSY);
 788:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 789:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Set group injected state (from auto-injection) and multimode state     */
 790:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* for all cases of multimode: independent mode, multimode ADC master     */
 791:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* or multimode ADC slave (for devices with several ADCs):                */
 792:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     if (ADC_NONMULTIMODE_OR_MULTIMODEMASTER(hadc))
 793:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 16


 794:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Set ADC state (ADC independent or master) */
 795:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       CLEAR_BIT(hadc->State, HAL_ADC_STATE_MULTIMODE_SLAVE);
 796:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
 797:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* If conversions on group regular are also triggering group injected,  */
 798:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* update ADC state.                                                    */
 799:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       if (READ_BIT(hadc->Instance->CR1, ADC_CR1_JAUTO) != RESET)
 800:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
 801:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         ADC_STATE_CLR_SET(hadc->State, HAL_ADC_STATE_INJ_EOC, HAL_ADC_STATE_INJ_BUSY);  
 802:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
 803:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 804:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     else
 805:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 806:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Set ADC state (ADC slave) */
 807:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       SET_BIT(hadc->State, HAL_ADC_STATE_MULTIMODE_SLAVE);
 808:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
 809:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* If conversions on group regular are also triggering group injected,  */
 810:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* update ADC state.                                                    */
 811:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       if (ADC_MULTIMODE_AUTO_INJECTED(hadc))
 812:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
 813:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         ADC_STATE_CLR_SET(hadc->State, HAL_ADC_STATE_INJ_EOC, HAL_ADC_STATE_INJ_BUSY);
 814:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
 815:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 816:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 817:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* State machine update: Check if an injected conversion is ongoing */
 818:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     if (HAL_IS_BIT_SET(hadc->State, HAL_ADC_STATE_INJ_BUSY))
 819:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 820:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Reset ADC error code fields related to conversions on group regular */
 821:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       CLEAR_BIT(hadc->ErrorCode, (HAL_ADC_ERROR_OVR | HAL_ADC_ERROR_DMA));         
 822:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 823:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     else
 824:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 825:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Reset ADC all error code fields */
 826:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       ADC_CLEAR_ERRORCODE(hadc);
 827:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 828:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 829:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Process unlocked */
 830:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Unlock before starting ADC conversions: in case of potential           */
 831:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* interruption, to let the process to ADC IRQ Handler.                   */
 832:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     __HAL_UNLOCK(hadc);
 833:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 834:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Clear regular group conversion flag */
 835:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* (To ensure of no unknown state from potential previous ADC operations) */
 836:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_EOC);
 837:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 838:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Enable conversion of regular group.                                    */
 839:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* If software start has been selected, conversion starts immediately.    */
 840:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* If external trigger has been selected, conversion will start at next   */
 841:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* trigger event.                                                         */
 842:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Case of multimode enabled:                                             */ 
 843:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*  - if ADC is slave, ADC is enabled only (conversion is not started).   */
 844:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*  - if ADC is master, ADC is enabled and conversion is started.         */
 845:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* If ADC is master, ADC is enabled and conversion is started.            */
 846:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Note: Alternate trigger for single conversion could be to force an     */
 847:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*       additional set of bit ADON "hadc->Instance->CR2 |= ADC_CR2_ADON;"*/
 848:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     if (ADC_IS_SOFTWARE_START_REGULAR(hadc)      &&
 849:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         ADC_NONMULTIMODE_OR_MULTIMODEMASTER(hadc)  )
 850:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 17


 851:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Start ADC conversion on regular group with SW start */
 852:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       SET_BIT(hadc->Instance->CR2, (ADC_CR2_SWSTART | ADC_CR2_EXTTRIG));
 853:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 854:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     else
 855:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 856:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Start ADC conversion on regular group with external trigger */
 857:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       SET_BIT(hadc->Instance->CR2, ADC_CR2_EXTTRIG);
 858:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 859:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
 860:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   else
 861:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 862:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Process unlocked */
 863:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     __HAL_UNLOCK(hadc);
 864:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
 865:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 866:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Return function status */
 867:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   return tmp_hal_status;
 868:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
 869:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 870:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
 871:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  Stop ADC conversion of regular group (and injected channels in 
 872:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         case of auto_injection mode), disable ADC peripheral.
 873:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @note:  ADC peripheral disable is forcing stop of potential 
 874:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         conversion on injected group. If injected group is under use, it
 875:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         should be preliminarily stopped using HAL_ADCEx_InjectedStop function.
 876:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hadc: ADC handle
 877:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval HAL status.
 878:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
 879:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** HAL_StatusTypeDef HAL_ADC_Stop(ADC_HandleTypeDef* hadc)
 880:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
 881:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 882:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 883:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Check the parameters */
 884:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
 885:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****      
 886:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Process locked */
 887:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   __HAL_LOCK(hadc);
 888:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 889:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Stop potential conversion on going, on regular and injected groups */
 890:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Disable ADC peripheral */
 891:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   tmp_hal_status = ADC_ConversionStop_Disable(hadc);
 892:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 893:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Check if ADC is effectively disabled */
 894:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if (tmp_hal_status == HAL_OK)
 895:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 896:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Set ADC state */
 897:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     ADC_STATE_CLR_SET(hadc->State,
 898:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                       HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 899:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                       HAL_ADC_STATE_READY);
 900:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
 901:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 902:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Process unlocked */
 903:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   __HAL_UNLOCK(hadc);
 904:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 905:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Return function status */
 906:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   return tmp_hal_status;
 907:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 18


 908:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 909:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
 910:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  Wait for regular group conversion to be completed.
 911:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @note   This function cannot be used in a particular setup: ADC configured 
 912:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         in DMA mode.
 913:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         In this case, DMA resets the flag EOC and polling cannot be
 914:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         performed on each conversion.
 915:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @note   On STM32F1 devices, limitation in case of sequencer enabled
 916:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         (several ranks selected): polling cannot be done on each 
 917:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         conversion inside the sequence. In this case, polling is replaced by
 918:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         wait for maximum conversion time.
 919:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hadc: ADC handle
 920:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  Timeout: Timeout value in millisecond.
 921:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval HAL status
 922:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
 923:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** HAL_StatusTypeDef HAL_ADC_PollForConversion(ADC_HandleTypeDef* hadc, uint32_t Timeout)
 924:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
  68              		.loc 1 924 0
  69              		.cfi_startproc
  70              		@ args = 0, pretend = 0, frame = 8
  71              		@ frame_needed = 0, uses_anonymous_args = 0
  72              	.LVL2:
  73 0000 F0B5     		push	{r4, r5, r6, r7, lr}
  74              	.LCFI0:
  75              		.cfi_def_cfa_offset 20
  76              		.cfi_offset 4, -20
  77              		.cfi_offset 5, -16
  78              		.cfi_offset 6, -12
  79              		.cfi_offset 7, -8
  80              		.cfi_offset 14, -4
  81 0002 83B0     		sub	sp, sp, #12
  82              	.LCFI1:
  83              		.cfi_def_cfa_offset 32
  84 0004 0546     		mov	r5, r0
  85 0006 0C46     		mov	r4, r1
  86              	.LVL3:
 925:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   uint32_t tickstart = 0U;
 926:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 927:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Variables for polling in case of scan mode enabled and polling for each  */
 928:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* conversion.                                                              */
 929:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   __IO uint32_t Conversion_Timeout_CPU_cycles = 0U;
  87              		.loc 1 929 0
  88 0008 0023     		movs	r3, #0
  89 000a 0193     		str	r3, [sp, #4]
  90              	.LVL4:
 930:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   uint32_t Conversion_Timeout_CPU_cycles_max = 0U;
 931:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****  
 932:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Check the parameters */
 933:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
 934:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 935:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Get tick count */
 936:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   tickstart = HAL_GetTick();
  91              		.loc 1 936 0
  92 000c FFF7FEFF 		bl	HAL_GetTick
  93              	.LVL5:
 937:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 938:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Verification that ADC configuration is compliant with polling for        */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 19


 939:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* each conversion:                                                         */
 940:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Particular case is ADC configured in DMA mode                            */
 941:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if (HAL_IS_BIT_SET(hadc->Instance->CR2, ADC_CR2_DMA))
  94              		.loc 1 941 0
  95 0010 2B68     		ldr	r3, [r5]
  96 0012 9A68     		ldr	r2, [r3, #8]
  97 0014 12F4807F 		tst	r2, #256
  98 0018 23D1     		bne	.L28
  99 001a 0646     		mov	r6, r0
 942:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 943:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Update ADC state machine to error */
 944:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_CONFIG);
 945:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 946:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Process unlocked */
 947:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     __HAL_UNLOCK(hadc);
 948:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 949:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     return HAL_ERROR;
 950:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
 951:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 952:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Polling for end of conversion: differentiation if single/sequence        */
 953:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* conversion.                                                              */
 954:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /*  - If single conversion for regular group (Scan mode disabled or enabled */
 955:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /*    with NbrOfConversion =1), flag EOC is used to determine the           */
 956:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /*    conversion completion.                                                */
 957:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /*  - If sequence conversion for regular group (scan mode enabled and       */
 958:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /*    NbrOfConversion >=2), flag EOC is set only at the end of the          */
 959:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /*    sequence.                                                             */
 960:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /*    To poll for each conversion, the maximum conversion time is computed  */
 961:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /*    from ADC conversion time (selected sampling time + conversion time of */
 962:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /*    12.5 ADC clock cycles) and APB2/ADC clock prescalers (depending on    */
 963:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /*    settings, conversion time range can be from 28 to 32256 CPU cycles).  */
 964:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /*    As flag EOC is not set after each conversion, no timeout status can   */
 965:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /*    be set.                                                               */
 966:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if (HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_SCAN) &&
 100              		.loc 1 966 0
 101 001c 5A68     		ldr	r2, [r3, #4]
 102 001e 12F4807F 		tst	r2, #256
 103 0022 03D1     		bne	.L6
 967:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       HAL_IS_BIT_CLR(hadc->Instance->SQR1, ADC_SQR1_L)    )
 104              		.loc 1 967 0 discriminator 1
 105 0024 DB6A     		ldr	r3, [r3, #44]
 966:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       HAL_IS_BIT_CLR(hadc->Instance->SQR1, ADC_SQR1_L)    )
 106              		.loc 1 966 0 discriminator 1
 107 0026 13F4700F 		tst	r3, #15728640
 108 002a 24D0     		beq	.L8
 109              	.L6:
 968:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 969:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Wait until End of Conversion flag is raised */
 970:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     while(HAL_IS_BIT_CLR(hadc->Instance->SR, ADC_FLAG_EOC))
 971:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 972:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Check if timeout is disabled (set to infinite wait) */
 973:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       if(Timeout != HAL_MAX_DELAY)
 974:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
 975:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         if((Timeout == 0U) || ((HAL_GetTick() - tickstart ) > Timeout))
 976:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         {
 977:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           /* Update ADC state machine to timeout */
 978:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           SET_BIT(hadc->State, HAL_ADC_STATE_TIMEOUT);
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 20


 979:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           
 980:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           /* Process unlocked */
 981:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           __HAL_UNLOCK(hadc);
 982:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           
 983:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           return HAL_TIMEOUT;
 984:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         }
 985:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
 986:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 987:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
 988:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   else
 989:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 990:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Replace polling by wait for maximum conversion time */
 991:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*  - Computation of CPU clock cycles corresponding to ADC clock cycles   */
 992:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*    and ADC maximum conversion cycles on all channels.                  */
 993:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*  - Wait for the expected ADC clock cycles delay                        */
 994:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     Conversion_Timeout_CPU_cycles_max = ((SystemCoreClock
 995:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                           / HAL_RCCEx_GetPeriphCLKFreq(RCC_PERIPHCLK_ADC))
 110              		.loc 1 995 0
 111 002c 4B4B     		ldr	r3, .L30
 112 002e 1F68     		ldr	r7, [r3]
 113 0030 0220     		movs	r0, #2
 114              	.LVL6:
 115 0032 FFF7FEFF 		bl	HAL_RCCEx_GetPeriphCLKFreq
 116              	.LVL7:
 117 0036 B7FBF0F0 		udiv	r0, r7, r0
 996:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                          * ADC_CONVCYCLES_MAX_RANGE(hadc)                 );
 118              		.loc 1 996 0
 119 003a 2B68     		ldr	r3, [r5]
 120 003c 1969     		ldr	r1, [r3, #16]
 121 003e 484A     		ldr	r2, .L30+4
 122 0040 1142     		tst	r1, r2
 123 0042 2FD1     		bne	.L12
 124              		.loc 1 996 0 is_stmt 0 discriminator 1
 125 0044 D968     		ldr	r1, [r3, #12]
 126 0046 02F15C42 		add	r2, r2, #-603979776
 127 004a 1142     		tst	r1, r2
 128 004c 2AD1     		bne	.L12
 129              		.loc 1 996 0 discriminator 3
 130 004e 1969     		ldr	r1, [r3, #16]
 131 0050 444A     		ldr	r2, .L30+8
 132 0052 1142     		tst	r1, r2
 133 0054 39D1     		bne	.L19
 134              		.loc 1 996 0 discriminator 5
 135 0056 DA68     		ldr	r2, [r3, #12]
 136 0058 434B     		ldr	r3, .L30+12
 137 005a 1A42     		tst	r2, r3
 138 005c 37D0     		beq	.L20
 139              		.loc 1 996 0
 140 005e 2927     		movs	r7, #41
 141 0060 3AE0     		b	.L13
 142              	.LVL8:
 143              	.L28:
 944:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 144              		.loc 1 944 0 is_stmt 1
 145 0062 AB6A     		ldr	r3, [r5, #40]
 146 0064 43F02003 		orr	r3, r3, #32
 147 0068 AB62     		str	r3, [r5, #40]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 21


 947:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 148              		.loc 1 947 0
 149 006a 0023     		movs	r3, #0
 150 006c 85F82430 		strb	r3, [r5, #36]
 949:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
 151              		.loc 1 949 0
 152 0070 0120     		movs	r0, #1
 153              	.LVL9:
 154              	.L5:
 997:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 998:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     while(Conversion_Timeout_CPU_cycles < Conversion_Timeout_CPU_cycles_max)
 999:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
1000:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Check if timeout is disabled (set to infinite wait) */
1001:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       if(Timeout != HAL_MAX_DELAY)
1002:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
1003:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         if((Timeout == 0U) || ((HAL_GetTick() - tickstart) > Timeout))
1004:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         {
1005:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           /* Update ADC state machine to timeout */
1006:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           SET_BIT(hadc->State, HAL_ADC_STATE_TIMEOUT);
1007:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           
1008:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           /* Process unlocked */
1009:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           __HAL_UNLOCK(hadc);
1010:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           
1011:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           return HAL_TIMEOUT;
1012:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         }
1013:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
1014:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       Conversion_Timeout_CPU_cycles ++;
1015:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
1016:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
1017:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1018:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Clear regular group conversion flag */
1019:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_STRT | ADC_FLAG_EOC);
1020:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1021:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Update ADC state machine */
1022:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   SET_BIT(hadc->State, HAL_ADC_STATE_REG_EOC);
1023:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1024:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Determine whether any further conversion upcoming on group regular       */
1025:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* by external trigger, continuous mode or scan sequence on going.          */
1026:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Note: On STM32F1 devices, in case of sequencer enabled                   */
1027:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /*       (several ranks selected), end of conversion flag is raised         */
1028:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /*       at the end of the sequence.                                        */
1029:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if(ADC_IS_SOFTWARE_START_REGULAR(hadc)        && 
1030:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****      (hadc->Init.ContinuousConvMode == DISABLE)   )
1031:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {   
1032:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Set ADC state */
1033:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     CLEAR_BIT(hadc->State, HAL_ADC_STATE_REG_BUSY);   
1034:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1035:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_INJ_BUSY))
1036:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     { 
1037:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       SET_BIT(hadc->State, HAL_ADC_STATE_READY);
1038:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
1039:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
1040:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1041:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Return ADC state */
1042:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   return HAL_OK;
1043:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
 155              		.loc 1 1043 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 22


 156 0072 03B0     		add	sp, sp, #12
 157              	.LCFI2:
 158              		.cfi_remember_state
 159              		.cfi_def_cfa_offset 20
 160              		@ sp needed
 161 0074 F0BD     		pop	{r4, r5, r6, r7, pc}
 162              	.LVL10:
 163              	.L8:
 164              	.LCFI3:
 165              		.cfi_restore_state
 970:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 166              		.loc 1 970 0
 167 0076 2B68     		ldr	r3, [r5]
 168 0078 1B68     		ldr	r3, [r3]
 169 007a 13F0020F 		tst	r3, #2
 170 007e 48D1     		bne	.L11
 973:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
 171              		.loc 1 973 0
 172 0080 B4F1FF3F 		cmp	r4, #-1
 173 0084 F7D0     		beq	.L8
 975:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         {
 174              		.loc 1 975 0
 175 0086 24B1     		cbz	r4, .L9
 975:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         {
 176              		.loc 1 975 0 is_stmt 0 discriminator 1
 177 0088 FFF7FEFF 		bl	HAL_GetTick
 178              	.LVL11:
 179 008c 801B     		subs	r0, r0, r6
 180 008e A042     		cmp	r0, r4
 181 0090 F1D9     		bls	.L8
 182              	.L9:
 978:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           
 183              		.loc 1 978 0 is_stmt 1
 184 0092 AB6A     		ldr	r3, [r5, #40]
 185 0094 43F00403 		orr	r3, r3, #4
 186 0098 AB62     		str	r3, [r5, #40]
 981:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           
 187              		.loc 1 981 0
 188 009a 0023     		movs	r3, #0
 189 009c 85F82430 		strb	r3, [r5, #36]
 983:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         }
 190              		.loc 1 983 0
 191 00a0 0320     		movs	r0, #3
 192 00a2 E6E7     		b	.L5
 193              	.L12:
 996:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 194              		.loc 1 996 0 discriminator 4
 195 00a4 1969     		ldr	r1, [r3, #16]
 196 00a6 2F4A     		ldr	r2, .L30+8
 197 00a8 1142     		tst	r1, r2
 198 00aa 04D1     		bne	.L14
 996:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 199              		.loc 1 996 0 is_stmt 0 discriminator 11
 200 00ac D968     		ldr	r1, [r3, #12]
 201 00ae 02F16E42 		add	r2, r2, #-301989888
 202 00b2 1142     		tst	r1, r2
 203 00b4 0DD0     		beq	.L21
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 23


 204              	.L14:
 996:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 205              		.loc 1 996 0 discriminator 14
 206 00b6 1969     		ldr	r1, [r3, #16]
 207 00b8 2C4A     		ldr	r2, .L30+16
 208 00ba 0A40     		ands	r2, r2, r1
 209 00bc 5AB9     		cbnz	r2, .L22
 996:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 210              		.loc 1 996 0 discriminator 15
 211 00be DA68     		ldr	r2, [r3, #12]
 212 00c0 2A4B     		ldr	r3, .L30+16
 213 00c2 1340     		ands	r3, r3, r2
 214 00c4 5BB1     		cbz	r3, .L23
 996:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 215              		.loc 1 996 0
 216 00c6 FC27     		movs	r7, #252
 217 00c8 06E0     		b	.L13
 218              	.L19:
 219 00ca 2927     		movs	r7, #41
 220 00cc 04E0     		b	.L13
 221              	.L20:
 222 00ce 1427     		movs	r7, #20
 223 00d0 02E0     		b	.L13
 224              	.L21:
 225 00d2 5427     		movs	r7, #84
 226 00d4 00E0     		b	.L13
 227              	.L22:
 228 00d6 FC27     		movs	r7, #252
 229              	.L13:
 994:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                           / HAL_RCCEx_GetPeriphCLKFreq(RCC_PERIPHCLK_ADC))
 230              		.loc 1 994 0 is_stmt 1
 231 00d8 07FB00F7 		mul	r7, r7, r0
 232              	.LVL12:
 998:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 233              		.loc 1 998 0
 234 00dc 04E0     		b	.L15
 235              	.LVL13:
 236              	.L23:
 996:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 237              		.loc 1 996 0
 238 00de 5427     		movs	r7, #84
 239 00e0 FAE7     		b	.L13
 240              	.LVL14:
 241              	.L16:
1014:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 242              		.loc 1 1014 0
 243 00e2 019B     		ldr	r3, [sp, #4]
 244 00e4 0133     		adds	r3, r3, #1
 245 00e6 0193     		str	r3, [sp, #4]
 246              	.L15:
 998:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 247              		.loc 1 998 0
 248 00e8 019B     		ldr	r3, [sp, #4]
 249 00ea BB42     		cmp	r3, r7
 250 00ec 11D2     		bcs	.L11
1001:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
 251              		.loc 1 1001 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 24


 252 00ee B4F1FF3F 		cmp	r4, #-1
 253 00f2 F6D0     		beq	.L16
1003:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         {
 254              		.loc 1 1003 0
 255 00f4 24B1     		cbz	r4, .L17
1003:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         {
 256              		.loc 1 1003 0 is_stmt 0 discriminator 1
 257 00f6 FFF7FEFF 		bl	HAL_GetTick
 258              	.LVL15:
 259 00fa 801B     		subs	r0, r0, r6
 260 00fc A042     		cmp	r0, r4
 261 00fe F0D9     		bls	.L16
 262              	.L17:
1006:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           
 263              		.loc 1 1006 0 is_stmt 1
 264 0100 AB6A     		ldr	r3, [r5, #40]
 265 0102 43F00403 		orr	r3, r3, #4
 266 0106 AB62     		str	r3, [r5, #40]
1009:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           
 267              		.loc 1 1009 0
 268 0108 0023     		movs	r3, #0
 269 010a 85F82430 		strb	r3, [r5, #36]
1011:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         }
 270              		.loc 1 1011 0
 271 010e 0320     		movs	r0, #3
 272 0110 AFE7     		b	.L5
 273              	.LVL16:
 274              	.L11:
1019:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 275              		.loc 1 1019 0
 276 0112 2B68     		ldr	r3, [r5]
 277 0114 6FF01202 		mvn	r2, #18
 278 0118 1A60     		str	r2, [r3]
1022:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 279              		.loc 1 1022 0
 280 011a AB6A     		ldr	r3, [r5, #40]
 281 011c 43F40073 		orr	r3, r3, #512
 282 0120 AB62     		str	r3, [r5, #40]
1029:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****      (hadc->Init.ContinuousConvMode == DISABLE)   )
 283              		.loc 1 1029 0
 284 0122 2B68     		ldr	r3, [r5]
 285 0124 9B68     		ldr	r3, [r3, #8]
 286 0126 03F46023 		and	r3, r3, #917504
 287 012a B3F5602F 		cmp	r3, #917504
 288 012e 01D0     		beq	.L29
1042:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
 289              		.loc 1 1042 0
 290 0130 0020     		movs	r0, #0
 291 0132 9EE7     		b	.L5
 292              	.L29:
1030:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {   
 293              		.loc 1 1030 0 discriminator 1
 294 0134 EB68     		ldr	r3, [r5, #12]
1029:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****      (hadc->Init.ContinuousConvMode == DISABLE)   )
 295              		.loc 1 1029 0 discriminator 1
 296 0136 6BB9     		cbnz	r3, .L25
1033:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 25


 297              		.loc 1 1033 0
 298 0138 AB6A     		ldr	r3, [r5, #40]
 299 013a 23F48073 		bic	r3, r3, #256
 300 013e AB62     		str	r3, [r5, #40]
1035:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     { 
 301              		.loc 1 1035 0
 302 0140 AB6A     		ldr	r3, [r5, #40]
 303 0142 13F4805F 		tst	r3, #4096
 304 0146 07D1     		bne	.L26
1037:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 305              		.loc 1 1037 0
 306 0148 AB6A     		ldr	r3, [r5, #40]
 307 014a 43F00103 		orr	r3, r3, #1
 308 014e AB62     		str	r3, [r5, #40]
1042:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
 309              		.loc 1 1042 0
 310 0150 0020     		movs	r0, #0
 311 0152 8EE7     		b	.L5
 312              	.L25:
 313 0154 0020     		movs	r0, #0
 314 0156 8CE7     		b	.L5
 315              	.L26:
 316 0158 0020     		movs	r0, #0
 317 015a 8AE7     		b	.L5
 318              	.L31:
 319              		.align	2
 320              	.L30:
 321 015c 00000000 		.word	SystemCoreClock
 322 0160 24499224 		.word	613566756
 323 0164 92244912 		.word	306783378
 324 0168 92244900 		.word	4793490
 325 016c 49922400 		.word	2396745
 326              		.cfi_endproc
 327              	.LFE72:
 329              		.section	.text.HAL_ADC_PollForEvent,"ax",%progbits
 330              		.align	1
 331              		.global	HAL_ADC_PollForEvent
 332              		.syntax unified
 333              		.thumb
 334              		.thumb_func
 335              		.fpu softvfp
 337              	HAL_ADC_PollForEvent:
 338              	.LFB73:
1044:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1045:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
1046:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  Poll for conversion event.
1047:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hadc: ADC handle
1048:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  EventType: the ADC event type.
1049:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *          This parameter can be one of the following values:
1050:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *            @arg ADC_AWD_EVENT: ADC Analog watchdog event.
1051:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  Timeout: Timeout value in millisecond.
1052:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval HAL status
1053:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1054:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** HAL_StatusTypeDef HAL_ADC_PollForEvent(ADC_HandleTypeDef* hadc, uint32_t EventType, uint32_t Timeou
1055:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
 339              		.loc 1 1055 0
 340              		.cfi_startproc
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 26


 341              		@ args = 0, pretend = 0, frame = 0
 342              		@ frame_needed = 0, uses_anonymous_args = 0
 343              	.LVL17:
 344 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 345              	.LCFI4:
 346              		.cfi_def_cfa_offset 24
 347              		.cfi_offset 3, -24
 348              		.cfi_offset 4, -20
 349              		.cfi_offset 5, -16
 350              		.cfi_offset 6, -12
 351              		.cfi_offset 7, -8
 352              		.cfi_offset 14, -4
 353 0002 0446     		mov	r4, r0
 354 0004 0E46     		mov	r6, r1
 355 0006 1546     		mov	r5, r2
 356              	.LVL18:
1056:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   uint32_t tickstart = 0U; 
1057:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1058:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Check the parameters */
1059:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
1060:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_ADC_EVENT_TYPE(EventType));
1061:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1062:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Get tick count */
1063:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   tickstart = HAL_GetTick();
 357              		.loc 1 1063 0
 358 0008 FFF7FEFF 		bl	HAL_GetTick
 359              	.LVL19:
 360 000c 0746     		mov	r7, r0
 361              	.LVL20:
 362              	.L34:
1064:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1065:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Check selected event flag */
1066:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   while(__HAL_ADC_GET_FLAG(hadc, EventType) == RESET)
 363              		.loc 1 1066 0
 364 000e 2368     		ldr	r3, [r4]
 365 0010 1A68     		ldr	r2, [r3]
 366 0012 36EA0202 		bics	r2, r6, r2
 367 0016 11D0     		beq	.L39
1067:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
1068:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Check if timeout is disabled (set to infinite wait) */
1069:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     if(Timeout != HAL_MAX_DELAY)
 368              		.loc 1 1069 0
 369 0018 B5F1FF3F 		cmp	r5, #-1
 370 001c F7D0     		beq	.L34
1070:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
1071:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       if((Timeout == 0U) || ((HAL_GetTick() - tickstart ) > Timeout))
 371              		.loc 1 1071 0
 372 001e 25B1     		cbz	r5, .L35
 373              		.loc 1 1071 0 is_stmt 0 discriminator 1
 374 0020 FFF7FEFF 		bl	HAL_GetTick
 375              	.LVL21:
 376 0024 C01B     		subs	r0, r0, r7
 377 0026 A842     		cmp	r0, r5
 378 0028 F1D9     		bls	.L34
 379              	.L35:
1072:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
1073:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         /* Update ADC state machine to timeout */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 27


1074:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         SET_BIT(hadc->State, HAL_ADC_STATE_TIMEOUT);
 380              		.loc 1 1074 0 is_stmt 1
 381 002a A36A     		ldr	r3, [r4, #40]
 382 002c 43F00403 		orr	r3, r3, #4
 383 0030 A362     		str	r3, [r4, #40]
1075:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         
1076:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         /* Process unlocked */
1077:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         __HAL_UNLOCK(hadc);
 384              		.loc 1 1077 0
 385 0032 0023     		movs	r3, #0
 386 0034 84F82430 		strb	r3, [r4, #36]
1078:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         
1079:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         return HAL_TIMEOUT;
 387              		.loc 1 1079 0
 388 0038 0320     		movs	r0, #3
 389 003a 07E0     		b	.L36
 390              	.L39:
1080:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
1081:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
1082:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
1083:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1084:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Analog watchdog (level out of window) event */
1085:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Set ADC state */
1086:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   SET_BIT(hadc->State, HAL_ADC_STATE_AWD1);
 391              		.loc 1 1086 0
 392 003c A26A     		ldr	r2, [r4, #40]
 393 003e 42F48032 		orr	r2, r2, #65536
 394 0042 A262     		str	r2, [r4, #40]
1087:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
1088:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Clear ADC analog watchdog flag */
1089:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_AWD);
 395              		.loc 1 1089 0
 396 0044 6FF00102 		mvn	r2, #1
 397 0048 1A60     		str	r2, [r3]
1090:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1091:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Return ADC state */
1092:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   return HAL_OK;
 398              		.loc 1 1092 0
 399 004a 0020     		movs	r0, #0
 400              	.L36:
1093:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
 401              		.loc 1 1093 0
 402 004c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 403              		.cfi_endproc
 404              	.LFE73:
 406              		.section	.text.HAL_ADC_GetValue,"ax",%progbits
 407              		.align	1
 408              		.global	HAL_ADC_GetValue
 409              		.syntax unified
 410              		.thumb
 411              		.thumb_func
 412              		.fpu softvfp
 414              	HAL_ADC_GetValue:
 415              	.LFB78:
1094:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1095:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
1096:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  Enables ADC, starts conversion of regular group with interruption.
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 28


1097:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         Interruptions enabled in this function:
1098:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *          - EOC (end of conversion of regular group)
1099:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         Each of these interruptions has its dedicated callback function.
1100:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hadc: ADC handle
1101:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval HAL status
1102:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1103:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** HAL_StatusTypeDef HAL_ADC_Start_IT(ADC_HandleTypeDef* hadc)
1104:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
1105:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
1106:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1107:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Check the parameters */
1108:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
1109:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1110:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Process locked */
1111:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   __HAL_LOCK(hadc);
1112:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
1113:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Enable the ADC peripheral */
1114:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   tmp_hal_status = ADC_Enable(hadc);
1115:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1116:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Start conversion if ADC is effectively enabled */
1117:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if (tmp_hal_status == HAL_OK)
1118:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
1119:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Set ADC state                                                          */
1120:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* - Clear state bitfield related to regular group conversion results     */
1121:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* - Set state bitfield related to regular operation                      */
1122:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     ADC_STATE_CLR_SET(hadc->State,
1123:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                       HAL_ADC_STATE_READY | HAL_ADC_STATE_REG_EOC | HAL_ADC_STATE_REG_OVR | HAL_ADC
1124:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                       HAL_ADC_STATE_REG_BUSY);
1125:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
1126:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Set group injected state (from auto-injection) and multimode state     */
1127:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* for all cases of multimode: independent mode, multimode ADC master     */
1128:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* or multimode ADC slave (for devices with several ADCs):                */
1129:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     if (ADC_NONMULTIMODE_OR_MULTIMODEMASTER(hadc))
1130:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
1131:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Set ADC state (ADC independent or master) */
1132:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       CLEAR_BIT(hadc->State, HAL_ADC_STATE_MULTIMODE_SLAVE);
1133:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
1134:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* If conversions on group regular are also triggering group injected,  */
1135:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* update ADC state.                                                    */
1136:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       if (READ_BIT(hadc->Instance->CR1, ADC_CR1_JAUTO) != RESET)
1137:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
1138:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         ADC_STATE_CLR_SET(hadc->State, HAL_ADC_STATE_INJ_EOC, HAL_ADC_STATE_INJ_BUSY);  
1139:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
1140:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
1141:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     else
1142:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
1143:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Set ADC state (ADC slave) */
1144:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       SET_BIT(hadc->State, HAL_ADC_STATE_MULTIMODE_SLAVE);
1145:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
1146:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* If conversions on group regular are also triggering group injected,  */
1147:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* update ADC state.                                                    */
1148:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       if (ADC_MULTIMODE_AUTO_INJECTED(hadc))
1149:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
1150:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         ADC_STATE_CLR_SET(hadc->State, HAL_ADC_STATE_INJ_EOC, HAL_ADC_STATE_INJ_BUSY);
1151:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
1152:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
1153:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 29


1154:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* State machine update: Check if an injected conversion is ongoing */
1155:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     if (HAL_IS_BIT_SET(hadc->State, HAL_ADC_STATE_INJ_BUSY))
1156:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
1157:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Reset ADC error code fields related to conversions on group regular */
1158:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       CLEAR_BIT(hadc->ErrorCode, (HAL_ADC_ERROR_OVR | HAL_ADC_ERROR_DMA));         
1159:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
1160:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     else
1161:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
1162:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Reset ADC all error code fields */
1163:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       ADC_CLEAR_ERRORCODE(hadc);
1164:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
1165:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
1166:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Process unlocked */
1167:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Unlock before starting ADC conversions: in case of potential           */
1168:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* interruption, to let the process to ADC IRQ Handler.                   */
1169:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     __HAL_UNLOCK(hadc);
1170:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
1171:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Clear regular group conversion flag and overrun flag */
1172:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* (To ensure of no unknown state from potential previous ADC operations) */
1173:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_EOC);
1174:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
1175:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Enable end of conversion interrupt for regular group */
1176:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     __HAL_ADC_ENABLE_IT(hadc, ADC_IT_EOC);
1177:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
1178:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Enable conversion of regular group.                                    */
1179:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* If software start has been selected, conversion starts immediately.    */
1180:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* If external trigger has been selected, conversion will start at next   */
1181:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* trigger event.                                                         */
1182:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Case of multimode enabled:                                             */ 
1183:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*  - if ADC is slave, ADC is enabled only (conversion is not started).   */
1184:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*  - if ADC is master, ADC is enabled and conversion is started.         */
1185:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     if (ADC_IS_SOFTWARE_START_REGULAR(hadc)      &&
1186:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         ADC_NONMULTIMODE_OR_MULTIMODEMASTER(hadc)  )
1187:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
1188:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Start ADC conversion on regular group with SW start */
1189:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       SET_BIT(hadc->Instance->CR2, (ADC_CR2_SWSTART | ADC_CR2_EXTTRIG));
1190:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
1191:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     else
1192:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
1193:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Start ADC conversion on regular group with external trigger */
1194:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       SET_BIT(hadc->Instance->CR2, ADC_CR2_EXTTRIG);
1195:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
1196:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
1197:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   else
1198:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
1199:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Process unlocked */
1200:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     __HAL_UNLOCK(hadc);
1201:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
1202:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1203:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Return function status */
1204:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   return tmp_hal_status;
1205:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
1206:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1207:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
1208:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  Stop ADC conversion of regular group (and injected group in 
1209:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         case of auto_injection mode), disable interrution of 
1210:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         end-of-conversion, disable ADC peripheral.
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 30


1211:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hadc: ADC handle
1212:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval None
1213:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1214:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** HAL_StatusTypeDef HAL_ADC_Stop_IT(ADC_HandleTypeDef* hadc)
1215:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
1216:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
1217:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1218:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Check the parameters */
1219:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
1220:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****      
1221:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Process locked */
1222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   __HAL_LOCK(hadc);
1223:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1224:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Stop potential conversion on going, on regular and injected groups */
1225:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Disable ADC peripheral */
1226:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   tmp_hal_status = ADC_ConversionStop_Disable(hadc);
1227:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1228:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Check if ADC is effectively disabled */
1229:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if (tmp_hal_status == HAL_OK)
1230:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
1231:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Disable ADC end of conversion interrupt for regular group */
1232:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     __HAL_ADC_DISABLE_IT(hadc, ADC_IT_EOC);
1233:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
1234:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Set ADC state */
1235:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     ADC_STATE_CLR_SET(hadc->State,
1236:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                       HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
1237:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                       HAL_ADC_STATE_READY);
1238:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
1239:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1240:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Process unlocked */
1241:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   __HAL_UNLOCK(hadc);
1242:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1243:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Return function status */
1244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   return tmp_hal_status;
1245:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
1246:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1247:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
1248:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  Enables ADC, starts conversion of regular group and transfers result
1249:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         through DMA.
1250:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         Interruptions enabled in this function:
1251:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *          - DMA transfer complete
1252:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *          - DMA half transfer
1253:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         Each of these interruptions has its dedicated callback function.
1254:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @note   For devices with several ADCs: This function is for single-ADC mode 
1255:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         only. For multimode, use the dedicated MultimodeStart function.
1256:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @note   On STM32F1 devices, only ADC1 and ADC3 (ADC availability depending
1257:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         on devices) have DMA capability.
1258:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         ADC2 converted data can be transferred in dual ADC mode using DMA
1259:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         of ADC1 (ADC master in multimode).
1260:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         In case of using ADC1 with DMA on a device featuring 2 ADC
1261:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         instances: ADC1 conversion register DR contains ADC1 conversion 
1262:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         result (ADC1 register DR bits 0 to 11) and, additionally, ADC2 last
1263:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         conversion result (ADC1 register DR bits 16 to 27). Therefore, to
1264:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         have DMA transferring the conversion results of ADC1 only, DMA must
1265:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         be configured to transfer size: half word.
1266:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hadc: ADC handle
1267:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  pData: The destination Buffer address.
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 31


1268:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  Length: The length of data to be transferred from ADC peripheral to memory.
1269:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval None
1270:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1271:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** HAL_StatusTypeDef HAL_ADC_Start_DMA(ADC_HandleTypeDef* hadc, uint32_t* pData, uint32_t Length)
1272:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
1273:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
1274:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1275:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Check the parameters */
1276:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_ADC_DMA_CAPABILITY_INSTANCE(hadc->Instance));
1277:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
1278:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Verification if multimode is disabled (for devices with several ADC)     */
1279:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* If multimode is enabled, dedicated function multimode conversion         */
1280:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* start DMA must be used.                                                  */
1281:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if(ADC_MULTIMODE_IS_ENABLE(hadc) == RESET)
1282:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
1283:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Process locked */
1284:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     __HAL_LOCK(hadc);
1285:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
1286:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Enable the ADC peripheral */
1287:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     tmp_hal_status = ADC_Enable(hadc);
1288:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
1289:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Start conversion if ADC is effectively enabled */
1290:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     if (tmp_hal_status == HAL_OK)
1291:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
1292:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Set ADC state                                                        */
1293:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* - Clear state bitfield related to regular group conversion results   */
1294:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* - Set state bitfield related to regular operation                    */
1295:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       ADC_STATE_CLR_SET(hadc->State,
1296:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                         HAL_ADC_STATE_READY | HAL_ADC_STATE_REG_EOC | HAL_ADC_STATE_REG_OVR | HAL_A
1297:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                         HAL_ADC_STATE_REG_BUSY);
1298:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
1299:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Set group injected state (from auto-injection) and multimode state     */
1300:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* for all cases of multimode: independent mode, multimode ADC master     */
1301:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* or multimode ADC slave (for devices with several ADCs):                */
1302:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     if (ADC_NONMULTIMODE_OR_MULTIMODEMASTER(hadc))
1303:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
1304:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Set ADC state (ADC independent or master) */
1305:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       CLEAR_BIT(hadc->State, HAL_ADC_STATE_MULTIMODE_SLAVE);
1306:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
1307:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* If conversions on group regular are also triggering group injected,  */
1308:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* update ADC state.                                                    */
1309:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       if (READ_BIT(hadc->Instance->CR1, ADC_CR1_JAUTO) != RESET)
1310:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
1311:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         ADC_STATE_CLR_SET(hadc->State, HAL_ADC_STATE_INJ_EOC, HAL_ADC_STATE_INJ_BUSY);  
1312:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
1313:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
1314:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     else
1315:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
1316:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Set ADC state (ADC slave) */
1317:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       SET_BIT(hadc->State, HAL_ADC_STATE_MULTIMODE_SLAVE);
1318:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
1319:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* If conversions on group regular are also triggering group injected,  */
1320:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* update ADC state.                                                    */
1321:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       if (ADC_MULTIMODE_AUTO_INJECTED(hadc))
1322:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
1323:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         ADC_STATE_CLR_SET(hadc->State, HAL_ADC_STATE_INJ_EOC, HAL_ADC_STATE_INJ_BUSY);
1324:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 32


1325:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
1326:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
1327:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* State machine update: Check if an injected conversion is ongoing */
1328:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       if (HAL_IS_BIT_SET(hadc->State, HAL_ADC_STATE_INJ_BUSY))
1329:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
1330:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         /* Reset ADC error code fields related to conversions on group regular */
1331:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         CLEAR_BIT(hadc->ErrorCode, (HAL_ADC_ERROR_OVR | HAL_ADC_ERROR_DMA));         
1332:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
1333:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       else
1334:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
1335:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         /* Reset ADC all error code fields */
1336:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         ADC_CLEAR_ERRORCODE(hadc);
1337:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
1338:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
1339:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Process unlocked */
1340:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Unlock before starting ADC conversions: in case of potential         */
1341:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* interruption, to let the process to ADC IRQ Handler.                 */
1342:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       __HAL_UNLOCK(hadc);
1343:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
1344:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Set the DMA transfer complete callback */
1345:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       hadc->DMA_Handle->XferCpltCallback = ADC_DMAConvCplt;
1346:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1347:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Set the DMA half transfer complete callback */
1348:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       hadc->DMA_Handle->XferHalfCpltCallback = ADC_DMAHalfConvCplt;
1349:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
1350:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Set the DMA error callback */
1351:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       hadc->DMA_Handle->XferErrorCallback = ADC_DMAError;
1352:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1353:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
1354:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Manage ADC and DMA start: ADC overrun interruption, DMA start, ADC   */
1355:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* start (in case of SW start):                                         */
1356:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
1357:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Clear regular group conversion flag and overrun flag */
1358:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* (To ensure of no unknown state from potential previous ADC           */
1359:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* operations)                                                          */
1360:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_EOC);
1361:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
1362:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Enable ADC DMA mode */
1363:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       SET_BIT(hadc->Instance->CR2, ADC_CR2_DMA);
1364:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
1365:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Start the DMA channel */
1366:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       HAL_DMA_Start_IT(hadc->DMA_Handle, (uint32_t)&hadc->Instance->DR, (uint32_t)pData, Length);
1367:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
1368:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Enable conversion of regular group.                                  */
1369:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* If software start has been selected, conversion starts immediately.  */
1370:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* If external trigger has been selected, conversion will start at next */
1371:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* trigger event.                                                       */
1372:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       if (ADC_IS_SOFTWARE_START_REGULAR(hadc))
1373:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
1374:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         /* Start ADC conversion on regular group with SW start */
1375:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         SET_BIT(hadc->Instance->CR2, (ADC_CR2_SWSTART | ADC_CR2_EXTTRIG));
1376:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
1377:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       else
1378:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
1379:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         /* Start ADC conversion on regular group with external trigger */
1380:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         SET_BIT(hadc->Instance->CR2, ADC_CR2_EXTTRIG);
1381:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 33


1382:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
1383:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     else
1384:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
1385:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Process unlocked */
1386:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       __HAL_UNLOCK(hadc);
1387:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
1388:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
1389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   else
1390:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
1391:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     tmp_hal_status = HAL_ERROR;
1392:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
1393:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1394:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Return function status */
1395:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   return tmp_hal_status;
1396:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
1397:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1398:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
1399:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  Stop ADC conversion of regular group (and injected group in 
1400:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         case of auto_injection mode), disable ADC DMA transfer, disable 
1401:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         ADC peripheral.
1402:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @note:  ADC peripheral disable is forcing stop of potential 
1403:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         conversion on injected group. If injected group is under use, it
1404:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         should be preliminarily stopped using HAL_ADCEx_InjectedStop function.
1405:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @note   For devices with several ADCs: This function is for single-ADC mode 
1406:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         only. For multimode, use the dedicated MultimodeStop function.
1407:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @note   On STM32F1 devices, only ADC1 and ADC3 (ADC availability depending
1408:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         on devices) have DMA capability.
1409:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hadc: ADC handle
1410:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval HAL status.
1411:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1412:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** HAL_StatusTypeDef HAL_ADC_Stop_DMA(ADC_HandleTypeDef* hadc)
1413:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
1414:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
1415:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1416:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Check the parameters */
1417:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_ADC_DMA_CAPABILITY_INSTANCE(hadc->Instance));
1418:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****      
1419:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Process locked */
1420:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   __HAL_LOCK(hadc);
1421:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1422:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Stop potential conversion on going, on regular and injected groups */
1423:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Disable ADC peripheral */
1424:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   tmp_hal_status = ADC_ConversionStop_Disable(hadc);
1425:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1426:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Check if ADC is effectively disabled */
1427:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if (tmp_hal_status == HAL_OK)
1428:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
1429:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Disable ADC DMA mode */
1430:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     CLEAR_BIT(hadc->Instance->CR2, ADC_CR2_DMA);
1431:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
1432:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Disable the DMA channel (in case of DMA in circular mode or stop while */
1433:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* DMA transfer is on going)                                              */
1434:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     tmp_hal_status = HAL_DMA_Abort(hadc->DMA_Handle);
1435:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
1436:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Check if DMA channel effectively disabled */
1437:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     if (tmp_hal_status == HAL_OK)
1438:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 34


1439:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Set ADC state */
1440:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       ADC_STATE_CLR_SET(hadc->State,
1441:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                         HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
1442:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                         HAL_ADC_STATE_READY);
1443:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
1444:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     else
1445:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
1446:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Update ADC state machine to error */
1447:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_DMA);
1448:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
1449:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
1450:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
1451:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Process unlocked */
1452:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   __HAL_UNLOCK(hadc);
1453:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
1454:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Return function status */
1455:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   return tmp_hal_status;
1456:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
1457:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1458:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
1459:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  Get ADC regular group conversion result.
1460:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @note   Reading register DR automatically clears ADC flag EOC
1461:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         (ADC group regular end of unitary conversion).
1462:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @note   This function does not clear ADC flag EOS 
1463:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         (ADC group regular end of sequence conversion).
1464:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         Occurrence of flag EOS rising:
1465:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *          - If sequencer is composed of 1 rank, flag EOS is equivalent
1466:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *            to flag EOC.
1467:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *          - If sequencer is composed of several ranks, during the scan
1468:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *            sequence flag EOC only is raised, at the end of the scan sequence
1469:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *            both flags EOC and EOS are raised.
1470:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         To clear this flag, either use function: 
1471:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         in programming model IT: @ref HAL_ADC_IRQHandler(), in programming
1472:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         model polling: @ref HAL_ADC_PollForConversion() 
1473:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         or @ref __HAL_ADC_CLEAR_FLAG(&hadc, ADC_FLAG_EOS).
1474:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hadc: ADC handle
1475:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval ADC group regular conversion data
1476:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1477:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** uint32_t HAL_ADC_GetValue(ADC_HandleTypeDef* hadc)
1478:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
 416              		.loc 1 1478 0
 417              		.cfi_startproc
 418              		@ args = 0, pretend = 0, frame = 0
 419              		@ frame_needed = 0, uses_anonymous_args = 0
 420              		@ link register save eliminated.
 421              	.LVL22:
1479:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Check the parameters */
1480:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
1481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1482:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Note: EOC flag is not cleared here by software because automatically     */
1483:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /*       cleared by hardware when reading register DR.                      */
1484:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1485:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Return ADC converted value */ 
1486:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   return hadc->Instance->DR;
 422              		.loc 1 1486 0
 423 0000 0368     		ldr	r3, [r0]
 424 0002 D86C     		ldr	r0, [r3, #76]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 35


 425              	.LVL23:
1487:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
 426              		.loc 1 1487 0
 427 0004 7047     		bx	lr
 428              		.cfi_endproc
 429              	.LFE78:
 431              		.section	.text.HAL_ADC_ConvCpltCallback,"ax",%progbits
 432              		.align	1
 433              		.weak	HAL_ADC_ConvCpltCallback
 434              		.syntax unified
 435              		.thumb
 436              		.thumb_func
 437              		.fpu softvfp
 439              	HAL_ADC_ConvCpltCallback:
 440              	.LFB80:
1488:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1489:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
1490:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  Handles ADC interrupt request  
1491:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hadc: ADC handle
1492:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval None
1493:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1494:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** void HAL_ADC_IRQHandler(ADC_HandleTypeDef* hadc)
1495:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
1496:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Check the parameters */
1497:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
1498:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_FUNCTIONAL_STATE(hadc->Init.ContinuousConvMode));
1499:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_ADC_REGULAR_NB_CONV(hadc->Init.NbrOfConversion));
1500:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1501:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1502:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* ========== Check End of Conversion flag for regular group ========== */
1503:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if(__HAL_ADC_GET_IT_SOURCE(hadc, ADC_IT_EOC))
1504:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
1505:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     if(__HAL_ADC_GET_FLAG(hadc, ADC_FLAG_EOC) )
1506:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
1507:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Update state machine on conversion status if not in error state */
1508:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_ERROR_INTERNAL))
1509:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
1510:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         /* Set ADC state */
1511:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         SET_BIT(hadc->State, HAL_ADC_STATE_REG_EOC); 
1512:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
1513:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
1514:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Determine whether any further conversion upcoming on group regular   */
1515:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* by external trigger, continuous mode or scan sequence on going.      */
1516:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Note: On STM32F1 devices, in case of sequencer enabled               */
1517:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /*       (several ranks selected), end of conversion flag is raised     */
1518:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /*       at the end of the sequence.                                    */
1519:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       if(ADC_IS_SOFTWARE_START_REGULAR(hadc)        && 
1520:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****          (hadc->Init.ContinuousConvMode == DISABLE)   )
1521:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
1522:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         /* Disable ADC end of conversion interrupt on group regular */
1523:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         __HAL_ADC_DISABLE_IT(hadc, ADC_IT_EOC);
1524:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         
1525:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         /* Set ADC state */
1526:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         CLEAR_BIT(hadc->State, HAL_ADC_STATE_REG_BUSY);   
1527:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         
1528:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_INJ_BUSY))
1529:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         {
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 36


1530:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           SET_BIT(hadc->State, HAL_ADC_STATE_READY);
1531:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         }
1532:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
1533:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1534:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Conversion complete callback */
1535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       HAL_ADC_ConvCpltCallback(hadc);
1536:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
1537:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Clear regular group conversion flag */
1538:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_STRT | ADC_FLAG_EOC);
1539:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
1540:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
1541:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1542:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* ========== Check End of Conversion flag for injected group ========== */
1543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if(__HAL_ADC_GET_IT_SOURCE(hadc, ADC_IT_JEOC))
1544:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
1545:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     if(__HAL_ADC_GET_FLAG(hadc, ADC_FLAG_JEOC))
1546:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
1547:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Update state machine on conversion status if not in error state */
1548:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_ERROR_INTERNAL))
1549:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
1550:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         /* Set ADC state */
1551:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         SET_BIT(hadc->State, HAL_ADC_STATE_INJ_EOC);
1552:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
1553:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1554:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Determine whether any further conversion upcoming on group injected  */
1555:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* by external trigger, scan sequence on going or by automatic injected */
1556:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* conversion from group regular (same conditions as group regular      */
1557:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* interruption disabling above).                                       */
1558:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Note: On STM32F1 devices, in case of sequencer enabled               */
1559:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /*       (several ranks selected), end of conversion flag is raised     */
1560:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /*       at the end of the sequence.                                    */
1561:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       if(ADC_IS_SOFTWARE_START_INJECTED(hadc)                     || 
1562:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****          (HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO) &&     
1563:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****          (ADC_IS_SOFTWARE_START_REGULAR(hadc)        &&
1564:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           (hadc->Init.ContinuousConvMode == DISABLE)   )        )   )
1565:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
1566:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         /* Disable ADC end of conversion interrupt on group injected */
1567:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         __HAL_ADC_DISABLE_IT(hadc, ADC_IT_JEOC);
1568:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         
1569:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         /* Set ADC state */
1570:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         CLEAR_BIT(hadc->State, HAL_ADC_STATE_INJ_BUSY);   
1571:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1572:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_REG_BUSY))
1573:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         { 
1574:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           SET_BIT(hadc->State, HAL_ADC_STATE_READY);
1575:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         }
1576:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
1577:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1578:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Conversion complete callback */ 
1579:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       HAL_ADCEx_InjectedConvCpltCallback(hadc);
1580:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
1581:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Clear injected group conversion flag */
1582:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       __HAL_ADC_CLEAR_FLAG(hadc, (ADC_FLAG_JSTRT | ADC_FLAG_JEOC));
1583:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
1584:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
1585:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****    
1586:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* ========== Check Analog watchdog flags ========== */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 37


1587:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if(__HAL_ADC_GET_IT_SOURCE(hadc, ADC_IT_AWD))
1588:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
1589:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     if(__HAL_ADC_GET_FLAG(hadc, ADC_FLAG_AWD))
1590:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
1591:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Set ADC state */
1592:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       SET_BIT(hadc->State, HAL_ADC_STATE_AWD1);
1593:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
1594:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Level out of window callback */ 
1595:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       HAL_ADC_LevelOutOfWindowCallback(hadc);
1596:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
1597:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Clear the ADC analog watchdog flag */
1598:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_AWD);
1599:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
1600:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
1601:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1602:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
1603:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1604:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
1605:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  Conversion complete callback in non blocking mode 
1606:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hadc: ADC handle
1607:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval None
1608:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1609:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** __weak void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc)
1610:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
 441              		.loc 1 1610 0
 442              		.cfi_startproc
 443              		@ args = 0, pretend = 0, frame = 0
 444              		@ frame_needed = 0, uses_anonymous_args = 0
 445              		@ link register save eliminated.
 446              	.LVL24:
1611:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Prevent unused argument(s) compilation warning */
1612:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   UNUSED(hadc);
1613:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* NOTE : This function should not be modified. When the callback is needed,
1614:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****             function HAL_ADC_ConvCpltCallback must be implemented in the user file.
1615:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****    */
1616:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
 447              		.loc 1 1616 0
 448 0000 7047     		bx	lr
 449              		.cfi_endproc
 450              	.LFE80:
 452              		.section	.text.ADC_DMAConvCplt,"ax",%progbits
 453              		.align	1
 454              		.global	ADC_DMAConvCplt
 455              		.syntax unified
 456              		.thumb
 457              		.thumb_func
 458              		.fpu softvfp
 460              	ADC_DMAConvCplt:
 461              	.LFB90:
1617:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1618:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
1619:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  Conversion DMA half-transfer callback in non blocking mode 
1620:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hadc: ADC handle
1621:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval None
1622:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1623:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** __weak void HAL_ADC_ConvHalfCpltCallback(ADC_HandleTypeDef* hadc)
1624:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 38


1625:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Prevent unused argument(s) compilation warning */
1626:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   UNUSED(hadc);
1627:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* NOTE : This function should not be modified. When the callback is needed,
1628:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****             function HAL_ADC_ConvHalfCpltCallback must be implemented in the user file.
1629:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1630:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
1631:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1632:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
1633:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  Analog watchdog callback in non blocking mode. 
1634:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hadc: ADC handle
1635:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval None
1636:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1637:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** __weak void HAL_ADC_LevelOutOfWindowCallback(ADC_HandleTypeDef* hadc)
1638:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
1639:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Prevent unused argument(s) compilation warning */
1640:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   UNUSED(hadc);
1641:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* NOTE : This function should not be modified. When the callback is needed,
1642:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****             function HAL_ADC_LevelOutOfWindowCallback must be implemented in the user file.
1643:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1644:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
1645:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1646:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
1647:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  ADC error callback in non blocking mode
1648:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *        (ADC conversion with interruption or transfer by DMA)
1649:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hadc: ADC handle
1650:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval None
1651:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1652:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** __weak void HAL_ADC_ErrorCallback(ADC_HandleTypeDef *hadc)
1653:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
1654:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Prevent unused argument(s) compilation warning */
1655:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   UNUSED(hadc);
1656:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* NOTE : This function should not be modified. When the callback is needed,
1657:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****             function HAL_ADC_ErrorCallback must be implemented in the user file.
1658:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1659:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
1660:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1661:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1662:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
1663:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @}
1664:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1665:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1666:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /** @defgroup ADC_Exported_Functions_Group3 Peripheral Control functions
1667:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****  *  @brief    Peripheral Control functions
1668:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****  *
1669:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** @verbatim   
1670:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****  ===============================================================================
1671:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****              ##### Peripheral Control functions #####
1672:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****  ===============================================================================  
1673:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     [..]  This section provides functions allowing to:
1674:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (+) Configure channels on regular group
1675:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (+) Configure the analog watchdog
1676:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
1677:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** @endverbatim
1678:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @{
1679:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1680:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1681:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 39


1682:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  Configures the the selected channel to be linked to the regular
1683:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         group.
1684:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @note   In case of usage of internal measurement channels:
1685:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         Vbat/VrefInt/TempSensor.
1686:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         These internal paths can be be disabled using function 
1687:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         HAL_ADC_DeInit().
1688:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @note   Possibility to update parameters on the fly:
1689:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         This function initializes channel into regular group, following  
1690:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         calls to this function can be used to reconfigure some parameters 
1691:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         of structure "ADC_ChannelConfTypeDef" on the fly, without reseting 
1692:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         the ADC.
1693:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         The setting of these parameters is conditioned to ADC state.
1694:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         For parameters constraints, see comments of structure 
1695:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         "ADC_ChannelConfTypeDef".
1696:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hadc: ADC handle
1697:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  sConfig: Structure of ADC channel for regular group.
1698:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval HAL status
1699:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1700:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** HAL_StatusTypeDef HAL_ADC_ConfigChannel(ADC_HandleTypeDef* hadc, ADC_ChannelConfTypeDef* sConfig)
1701:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** { 
1702:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
1703:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   __IO uint32_t wait_loop_index = 0U;
1704:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1705:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Check the parameters */
1706:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
1707:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_ADC_CHANNEL(sConfig->Channel));
1708:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_ADC_REGULAR_RANK(sConfig->Rank));
1709:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_ADC_SAMPLE_TIME(sConfig->SamplingTime));
1710:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1711:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Process locked */
1712:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   __HAL_LOCK(hadc);
1713:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1714:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1715:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Regular sequence configuration */
1716:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* For Rank 1 to 6 */
1717:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if (sConfig->Rank < 7U)
1718:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
1719:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     MODIFY_REG(hadc->Instance->SQR3                        ,
1720:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                ADC_SQR3_RK(ADC_SQR3_SQ1, sConfig->Rank)    ,
1721:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                ADC_SQR3_RK(sConfig->Channel, sConfig->Rank) );
1722:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
1723:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* For Rank 7 to 12 */
1724:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   else if (sConfig->Rank < 13U)
1725:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
1726:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     MODIFY_REG(hadc->Instance->SQR2                        ,
1727:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                ADC_SQR2_RK(ADC_SQR2_SQ7, sConfig->Rank)    ,
1728:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                ADC_SQR2_RK(sConfig->Channel, sConfig->Rank) );
1729:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
1730:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* For Rank 13 to 16 */
1731:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   else
1732:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
1733:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     MODIFY_REG(hadc->Instance->SQR1                        ,
1734:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                ADC_SQR1_RK(ADC_SQR1_SQ13, sConfig->Rank)   ,
1735:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                ADC_SQR1_RK(sConfig->Channel, sConfig->Rank) );
1736:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
1737:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1738:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 40


1739:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Channel sampling time configuration */
1740:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* For channels 10 to 17 */
1741:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if (sConfig->Channel >= ADC_CHANNEL_10)
1742:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
1743:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     MODIFY_REG(hadc->Instance->SMPR1                             ,
1744:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                ADC_SMPR1(ADC_SMPR1_SMP10, sConfig->Channel)      ,
1745:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                ADC_SMPR1(sConfig->SamplingTime, sConfig->Channel) );
1746:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
1747:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   else /* For channels 0 to 9 */
1748:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
1749:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     MODIFY_REG(hadc->Instance->SMPR2                             ,
1750:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                ADC_SMPR2(ADC_SMPR2_SMP0, sConfig->Channel)       ,
1751:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                ADC_SMPR2(sConfig->SamplingTime, sConfig->Channel) );
1752:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
1753:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1754:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* If ADC1 Channel_16 or Channel_17 is selected, enable Temperature sensor  */
1755:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* and VREFINT measurement path.                                            */
1756:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if ((sConfig->Channel == ADC_CHANNEL_TEMPSENSOR) ||
1757:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (sConfig->Channel == ADC_CHANNEL_VREFINT)      )
1758:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
1759:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* For STM32F1 devices with several ADC: Only ADC1 can access internal    */
1760:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* measurement channels (VrefInt/TempSensor). If these channels are       */
1761:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* intended to be set on other ADC instances, an error is reported.       */
1762:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     if (hadc->Instance == ADC1)
1763:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
1764:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       if (READ_BIT(hadc->Instance->CR2, ADC_CR2_TSVREFE) == RESET)
1765:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
1766:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         SET_BIT(hadc->Instance->CR2, ADC_CR2_TSVREFE);
1767:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         
1768:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         if ((sConfig->Channel == ADC_CHANNEL_TEMPSENSOR))
1769:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         {
1770:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           /* Delay for temperature sensor stabilization time */
1771:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           /* Compute number of CPU cycles to wait for */
1772:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           wait_loop_index = (ADC_TEMPSENSOR_DELAY_US * (SystemCoreClock / 1000000U));
1773:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           while(wait_loop_index != 0U)
1774:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           {
1775:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****             wait_loop_index--;
1776:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           }
1777:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         }
1778:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
1779:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
1780:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     else
1781:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
1782:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Update ADC state machine to error */
1783:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_CONFIG);
1784:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
1785:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       tmp_hal_status = HAL_ERROR;
1786:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
1787:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
1788:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1789:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Process unlocked */
1790:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   __HAL_UNLOCK(hadc);
1791:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1792:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Return function status */
1793:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   return tmp_hal_status;
1794:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
1795:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 41


1796:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
1797:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  Configures the analog watchdog.
1798:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @note   Analog watchdog thresholds can be modified while ADC conversion
1799:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         is on going.
1800:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         In this case, some constraints must be taken into account:
1801:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         the programmed threshold values are effective from the next
1802:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         ADC EOC (end of unitary conversion).
1803:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         Considering that registers write delay may happen due to
1804:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         bus activity, this might cause an uncertainty on the
1805:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         effective timing of the new programmed threshold values.
1806:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hadc: ADC handle
1807:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  AnalogWDGConfig: Structure of ADC analog watchdog configuration
1808:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval HAL status
1809:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1810:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** HAL_StatusTypeDef HAL_ADC_AnalogWDGConfig(ADC_HandleTypeDef* hadc, ADC_AnalogWDGConfTypeDef* Analog
1811:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
1812:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Check the parameters */
1813:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
1814:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_ADC_ANALOG_WATCHDOG_MODE(AnalogWDGConfig->WatchdogMode));
1815:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_FUNCTIONAL_STATE(AnalogWDGConfig->ITMode));
1816:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_ADC_RANGE(AnalogWDGConfig->HighThreshold));
1817:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   assert_param(IS_ADC_RANGE(AnalogWDGConfig->LowThreshold));
1818:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1819:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if((AnalogWDGConfig->WatchdogMode == ADC_ANALOGWATCHDOG_SINGLE_REG)     ||
1820:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****      (AnalogWDGConfig->WatchdogMode == ADC_ANALOGWATCHDOG_SINGLE_INJEC)   ||
1821:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****      (AnalogWDGConfig->WatchdogMode == ADC_ANALOGWATCHDOG_SINGLE_REGINJEC)  )
1822:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
1823:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     assert_param(IS_ADC_CHANNEL(AnalogWDGConfig->Channel));
1824:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
1825:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1826:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Process locked */
1827:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   __HAL_LOCK(hadc);
1828:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1829:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Analog watchdog configuration */
1830:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1831:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Configure ADC Analog watchdog interrupt */
1832:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if(AnalogWDGConfig->ITMode == ENABLE)
1833:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
1834:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Enable the ADC Analog watchdog interrupt */
1835:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     __HAL_ADC_ENABLE_IT(hadc, ADC_IT_AWD);
1836:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
1837:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   else
1838:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
1839:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Disable the ADC Analog watchdog interrupt */
1840:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     __HAL_ADC_DISABLE_IT(hadc, ADC_IT_AWD);
1841:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
1842:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1843:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Configuration of analog watchdog:                                        */
1844:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /*  - Set the analog watchdog enable mode: regular and/or injected groups,  */
1845:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /*    one or all channels.                                                  */
1846:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /*  - Set the Analog watchdog channel (is not used if watchdog              */
1847:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /*    mode "all channels": ADC_CFGR_AWD1SGL=0).                             */
1848:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   MODIFY_REG(hadc->Instance->CR1            ,
1849:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****              ADC_CR1_AWDSGL |
1850:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****              ADC_CR1_JAWDEN |
1851:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****              ADC_CR1_AWDEN  |
1852:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****              ADC_CR1_AWDCH                  ,
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 42


1853:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****              AnalogWDGConfig->WatchdogMode |
1854:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****              AnalogWDGConfig->Channel        );
1855:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1856:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Set the high threshold */
1857:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   WRITE_REG(hadc->Instance->HTR, AnalogWDGConfig->HighThreshold);
1858:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1859:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Set the low threshold */
1860:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   WRITE_REG(hadc->Instance->LTR, AnalogWDGConfig->LowThreshold);
1861:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1862:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Process unlocked */
1863:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   __HAL_UNLOCK(hadc);
1864:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1865:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Return function status */
1866:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   return HAL_OK;
1867:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
1868:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1869:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1870:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
1871:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @}
1872:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1873:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1874:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1875:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /** @defgroup ADC_Exported_Functions_Group4 Peripheral State functions
1876:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****  *  @brief    Peripheral State functions
1877:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****  *
1878:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** @verbatim
1879:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****  ===============================================================================
1880:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****             ##### Peripheral State and Errors functions #####
1881:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****  ===============================================================================  
1882:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     [..]
1883:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     This subsection provides functions to get in run-time the status of the  
1884:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     peripheral.
1885:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (+) Check the ADC state
1886:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (+) Check the ADC error code
1887:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1888:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** @endverbatim
1889:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @{
1890:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1891:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1892:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
1893:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  return the ADC state
1894:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hadc: ADC handle
1895:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval HAL state
1896:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1897:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** uint32_t HAL_ADC_GetState(ADC_HandleTypeDef* hadc)
1898:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
1899:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Return ADC state */
1900:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   return hadc->State;
1901:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
1902:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1903:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
1904:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  Return the ADC error code
1905:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hadc: ADC handle
1906:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval ADC Error Code
1907:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1908:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** uint32_t HAL_ADC_GetError(ADC_HandleTypeDef *hadc)
1909:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 43


1910:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   return hadc->ErrorCode;
1911:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
1912:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1913:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
1914:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @}
1915:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1916:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1917:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
1918:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @}
1919:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1920:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1921:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /** @defgroup ADC_Private_Functions ADC Private Functions
1922:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @{
1923:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1924:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1925:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
1926:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  Enable the selected ADC.
1927:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @note   Prerequisite condition to use this function: ADC must be disabled
1928:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         and voltage regulator must be enabled (done into HAL_ADC_Init()).
1929:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hadc: ADC handle
1930:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval HAL status.
1931:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1932:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** HAL_StatusTypeDef ADC_Enable(ADC_HandleTypeDef* hadc)
1933:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
1934:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   uint32_t tickstart = 0U;
1935:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   __IO uint32_t wait_loop_index = 0U;
1936:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1937:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* ADC enable and wait for ADC ready (in case of ADC is disabled or         */
1938:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* enabling phase not yet completed: flag ADC ready not yet set).           */
1939:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Timeout implemented to not be stuck if ADC cannot be enabled (possible   */
1940:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* causes: ADC clock not running, ...).                                     */
1941:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if (ADC_IS_ENABLE(hadc) == RESET)
1942:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
1943:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Enable the Peripheral */
1944:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     __HAL_ADC_ENABLE(hadc);
1945:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
1946:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Delay for ADC stabilization time */
1947:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Compute number of CPU cycles to wait for */
1948:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     wait_loop_index = (ADC_STAB_DELAY_US * (SystemCoreClock / 1000000U));
1949:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     while(wait_loop_index != 0U)
1950:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
1951:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       wait_loop_index--;
1952:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
1953:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
1954:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Get tick count */
1955:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     tickstart = HAL_GetTick();
1956:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1957:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Wait for ADC effectively enabled */
1958:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     while(ADC_IS_ENABLE(hadc) == RESET)
1959:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
1960:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       if((HAL_GetTick() - tickstart) > ADC_ENABLE_TIMEOUT)
1961:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
1962:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         /* Update ADC state machine to error */
1963:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_INTERNAL);
1964:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
1965:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         /* Set ADC error code to ADC IP internal error */
1966:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         SET_BIT(hadc->ErrorCode, HAL_ADC_ERROR_INTERNAL);
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 44


1967:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         
1968:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         /* Process unlocked */
1969:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         __HAL_UNLOCK(hadc);
1970:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
1971:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         return HAL_ERROR;
1972:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
1973:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
1974:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
1975:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****    
1976:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Return HAL status */
1977:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   return HAL_OK;
1978:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
1979:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
1980:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
1981:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  Stop ADC conversion and disable the selected ADC
1982:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @note   Prerequisite condition to use this function: ADC conversions must be
1983:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   *         stopped to disable the ADC.
1984:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hadc: ADC handle
1985:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval HAL status.
1986:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
1987:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** HAL_StatusTypeDef ADC_ConversionStop_Disable(ADC_HandleTypeDef* hadc)
1988:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
1989:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   uint32_t tickstart = 0U;
1990:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
1991:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Verification if ADC is not already disabled */
1992:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if (ADC_IS_ENABLE(hadc) != RESET)
1993:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
1994:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Disable the ADC peripheral */
1995:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     __HAL_ADC_DISABLE(hadc);
1996:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****      
1997:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Get tick count */
1998:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     tickstart = HAL_GetTick();
1999:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
2000:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Wait for ADC effectively disabled */
2001:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     while(ADC_IS_ENABLE(hadc) != RESET)
2002:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
2003:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       if((HAL_GetTick() - tickstart) > ADC_DISABLE_TIMEOUT)
2004:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
2005:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         /* Update ADC state machine to error */
2006:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_INTERNAL);
2007:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         
2008:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         /* Set ADC error code to ADC IP internal error */
2009:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         SET_BIT(hadc->ErrorCode, HAL_ADC_ERROR_INTERNAL);
2010:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         
2011:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         return HAL_ERROR;
2012:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
2013:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
2014:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
2015:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
2016:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Return HAL status */
2017:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   return HAL_OK;
2018:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
2019:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
2020:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
2021:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  DMA transfer complete callback. 
2022:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hdma: pointer to DMA handle.
2023:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval None
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 45


2024:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
2025:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** void ADC_DMAConvCplt(DMA_HandleTypeDef *hdma)
2026:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
 462              		.loc 1 2026 0
 463              		.cfi_startproc
 464              		@ args = 0, pretend = 0, frame = 0
 465              		@ frame_needed = 0, uses_anonymous_args = 0
 466              	.LVL25:
 467 0000 08B5     		push	{r3, lr}
 468              	.LCFI5:
 469              		.cfi_def_cfa_offset 8
 470              		.cfi_offset 3, -8
 471              		.cfi_offset 14, -4
2027:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Retrieve ADC handle corresponding to current DMA handle */
2028:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   ADC_HandleTypeDef* hadc = ( ADC_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
 472              		.loc 1 2028 0
 473 0002 436A     		ldr	r3, [r0, #36]
 474              	.LVL26:
2029:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****  
2030:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Update state machine on conversion status if not in error state */
2031:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_ERROR_INTERNAL | HAL_ADC_STATE_ERROR_DMA))
 475              		.loc 1 2031 0
 476 0004 9A6A     		ldr	r2, [r3, #40]
 477 0006 12F0500F 		tst	r2, #80
 478 000a 03D0     		beq	.L47
2032:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
2033:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Update ADC state machine */
2034:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     SET_BIT(hadc->State, HAL_ADC_STATE_REG_EOC);
2035:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
2036:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Determine whether any further conversion upcoming on group regular     */
2037:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* by external trigger, continuous mode or scan sequence on going.        */
2038:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Note: On STM32F1 devices, in case of sequencer enabled                 */
2039:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*       (several ranks selected), end of conversion flag is raised       */
2040:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /*       at the end of the sequence.                                      */
2041:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     if(ADC_IS_SOFTWARE_START_REGULAR(hadc)        && 
2042:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****        (hadc->Init.ContinuousConvMode == DISABLE)   )
2043:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
2044:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       /* Set ADC state */
2045:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       CLEAR_BIT(hadc->State, HAL_ADC_STATE_REG_BUSY);   
2046:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
2047:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_INJ_BUSY))
2048:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
2049:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         SET_BIT(hadc->State, HAL_ADC_STATE_READY);
2050:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
2051:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
2052:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
2053:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Conversion complete callback */
2054:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     HAL_ADC_ConvCpltCallback(hadc); 
2055:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
2056:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   else
2057:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
2058:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Call DMA error callback */
2059:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     hadc->DMA_Handle->XferErrorCallback(hdma);
 479              		.loc 1 2059 0
 480 000c 1B6A     		ldr	r3, [r3, #32]
 481              	.LVL27:
 482 000e 1B6B     		ldr	r3, [r3, #48]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 46


 483 0010 9847     		blx	r3
 484              	.LVL28:
 485              	.L42:
2060:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
2061:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
 486              		.loc 1 2061 0
 487 0012 08BD     		pop	{r3, pc}
 488              	.LVL29:
 489              	.L47:
2034:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 490              		.loc 1 2034 0
 491 0014 9A6A     		ldr	r2, [r3, #40]
 492 0016 42F40072 		orr	r2, r2, #512
 493 001a 9A62     		str	r2, [r3, #40]
2041:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****        (hadc->Init.ContinuousConvMode == DISABLE)   )
 494              		.loc 1 2041 0
 495 001c 1A68     		ldr	r2, [r3]
 496 001e 9268     		ldr	r2, [r2, #8]
 497 0020 02F46022 		and	r2, r2, #917504
 498 0024 B2F5602F 		cmp	r2, #917504
 499 0028 03D0     		beq	.L48
 500              	.L44:
2054:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
 501              		.loc 1 2054 0
 502 002a 1846     		mov	r0, r3
 503              	.LVL30:
 504 002c FFF7FEFF 		bl	HAL_ADC_ConvCpltCallback
 505              	.LVL31:
 506 0030 EFE7     		b	.L42
 507              	.LVL32:
 508              	.L48:
2042:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 509              		.loc 1 2042 0 discriminator 1
 510 0032 DA68     		ldr	r2, [r3, #12]
2041:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****        (hadc->Init.ContinuousConvMode == DISABLE)   )
 511              		.loc 1 2041 0 discriminator 1
 512 0034 002A     		cmp	r2, #0
 513 0036 F8D1     		bne	.L44
2045:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
 514              		.loc 1 2045 0
 515 0038 9A6A     		ldr	r2, [r3, #40]
 516 003a 22F48072 		bic	r2, r2, #256
 517 003e 9A62     		str	r2, [r3, #40]
2047:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
 518              		.loc 1 2047 0
 519 0040 9A6A     		ldr	r2, [r3, #40]
 520 0042 12F4805F 		tst	r2, #4096
 521 0046 F0D1     		bne	.L44
2049:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
 522              		.loc 1 2049 0
 523 0048 9A6A     		ldr	r2, [r3, #40]
 524 004a 42F00102 		orr	r2, r2, #1
 525 004e 9A62     		str	r2, [r3, #40]
 526 0050 EBE7     		b	.L44
 527              		.cfi_endproc
 528              	.LFE90:
 530              		.section	.text.HAL_ADC_ConvHalfCpltCallback,"ax",%progbits
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 47


 531              		.align	1
 532              		.weak	HAL_ADC_ConvHalfCpltCallback
 533              		.syntax unified
 534              		.thumb
 535              		.thumb_func
 536              		.fpu softvfp
 538              	HAL_ADC_ConvHalfCpltCallback:
 539              	.LFB81:
1624:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Prevent unused argument(s) compilation warning */
 540              		.loc 1 1624 0
 541              		.cfi_startproc
 542              		@ args = 0, pretend = 0, frame = 0
 543              		@ frame_needed = 0, uses_anonymous_args = 0
 544              		@ link register save eliminated.
 545              	.LVL33:
1630:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 546              		.loc 1 1630 0
 547 0000 7047     		bx	lr
 548              		.cfi_endproc
 549              	.LFE81:
 551              		.section	.text.ADC_DMAHalfConvCplt,"ax",%progbits
 552              		.align	1
 553              		.global	ADC_DMAHalfConvCplt
 554              		.syntax unified
 555              		.thumb
 556              		.thumb_func
 557              		.fpu softvfp
 559              	ADC_DMAHalfConvCplt:
 560              	.LFB91:
2062:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
2063:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
2064:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  DMA half transfer complete callback. 
2065:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hdma: pointer to DMA handle.
2066:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval None
2067:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
2068:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** void ADC_DMAHalfConvCplt(DMA_HandleTypeDef *hdma)   
2069:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
 561              		.loc 1 2069 0
 562              		.cfi_startproc
 563              		@ args = 0, pretend = 0, frame = 0
 564              		@ frame_needed = 0, uses_anonymous_args = 0
 565              	.LVL34:
 566 0000 08B5     		push	{r3, lr}
 567              	.LCFI6:
 568              		.cfi_def_cfa_offset 8
 569              		.cfi_offset 3, -8
 570              		.cfi_offset 14, -4
 571              	.LVL35:
2070:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Retrieve ADC handle corresponding to current DMA handle */
2071:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   ADC_HandleTypeDef* hadc = ( ADC_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
2072:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
2073:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Half conversion callback */
2074:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_ADC_ConvHalfCpltCallback(hadc); 
 572              		.loc 1 2074 0
 573 0002 406A     		ldr	r0, [r0, #36]
 574              	.LVL36:
 575 0004 FFF7FEFF 		bl	HAL_ADC_ConvHalfCpltCallback
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 48


 576              	.LVL37:
2075:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
 577              		.loc 1 2075 0
 578 0008 08BD     		pop	{r3, pc}
 579              		.cfi_endproc
 580              	.LFE91:
 582              		.section	.text.HAL_ADC_LevelOutOfWindowCallback,"ax",%progbits
 583              		.align	1
 584              		.weak	HAL_ADC_LevelOutOfWindowCallback
 585              		.syntax unified
 586              		.thumb
 587              		.thumb_func
 588              		.fpu softvfp
 590              	HAL_ADC_LevelOutOfWindowCallback:
 591              	.LFB82:
1638:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Prevent unused argument(s) compilation warning */
 592              		.loc 1 1638 0
 593              		.cfi_startproc
 594              		@ args = 0, pretend = 0, frame = 0
 595              		@ frame_needed = 0, uses_anonymous_args = 0
 596              		@ link register save eliminated.
 597              	.LVL38:
1644:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 598              		.loc 1 1644 0
 599 0000 7047     		bx	lr
 600              		.cfi_endproc
 601              	.LFE82:
 603              		.section	.text.HAL_ADC_IRQHandler,"ax",%progbits
 604              		.align	1
 605              		.global	HAL_ADC_IRQHandler
 606              		.syntax unified
 607              		.thumb
 608              		.thumb_func
 609              		.fpu softvfp
 611              	HAL_ADC_IRQHandler:
 612              	.LFB79:
1495:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Check the parameters */
 613              		.loc 1 1495 0
 614              		.cfi_startproc
 615              		@ args = 0, pretend = 0, frame = 0
 616              		@ frame_needed = 0, uses_anonymous_args = 0
 617              	.LVL39:
 618 0000 10B5     		push	{r4, lr}
 619              	.LCFI7:
 620              		.cfi_def_cfa_offset 8
 621              		.cfi_offset 4, -8
 622              		.cfi_offset 14, -4
 623 0002 0446     		mov	r4, r0
1503:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 624              		.loc 1 1503 0
 625 0004 0368     		ldr	r3, [r0]
 626 0006 5A68     		ldr	r2, [r3, #4]
 627 0008 12F0200F 		tst	r2, #32
 628 000c 18D0     		beq	.L54
1505:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 629              		.loc 1 1505 0
 630 000e 1A68     		ldr	r2, [r3]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 49


 631 0010 12F0020F 		tst	r2, #2
 632 0014 14D0     		beq	.L54
1508:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
 633              		.loc 1 1508 0
 634 0016 826A     		ldr	r2, [r0, #40]
 635 0018 12F0100F 		tst	r2, #16
 636 001c 03D1     		bne	.L55
1511:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
 637              		.loc 1 1511 0
 638 001e 826A     		ldr	r2, [r0, #40]
 639 0020 42F40072 		orr	r2, r2, #512
 640 0024 8262     		str	r2, [r0, #40]
 641              	.L55:
1519:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****          (hadc->Init.ContinuousConvMode == DISABLE)   )
 642              		.loc 1 1519 0
 643 0026 9A68     		ldr	r2, [r3, #8]
 644 0028 02F46022 		and	r2, r2, #917504
 645 002c B2F5602F 		cmp	r2, #917504
 646 0030 38D0     		beq	.L63
 647              	.L56:
1535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
 648              		.loc 1 1535 0
 649 0032 2046     		mov	r0, r4
 650              	.LVL40:
 651 0034 FFF7FEFF 		bl	HAL_ADC_ConvCpltCallback
 652              	.LVL41:
1538:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 653              		.loc 1 1538 0
 654 0038 2368     		ldr	r3, [r4]
 655 003a 6FF01202 		mvn	r2, #18
 656 003e 1A60     		str	r2, [r3]
 657              	.L54:
1543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 658              		.loc 1 1543 0
 659 0040 2368     		ldr	r3, [r4]
 660 0042 5A68     		ldr	r2, [r3, #4]
 661 0044 12F0800F 		tst	r2, #128
 662 0048 22D0     		beq	.L57
1545:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 663              		.loc 1 1545 0
 664 004a 1A68     		ldr	r2, [r3]
 665 004c 12F0040F 		tst	r2, #4
 666 0050 1ED0     		beq	.L57
1548:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
 667              		.loc 1 1548 0
 668 0052 A26A     		ldr	r2, [r4, #40]
 669 0054 12F0100F 		tst	r2, #16
 670 0058 03D1     		bne	.L58
1551:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
 671              		.loc 1 1551 0
 672 005a A26A     		ldr	r2, [r4, #40]
 673 005c 42F40052 		orr	r2, r2, #8192
 674 0060 A262     		str	r2, [r4, #40]
 675              	.L58:
1561:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****          (HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO) &&     
 676              		.loc 1 1561 0
 677 0062 9A68     		ldr	r2, [r3, #8]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 50


 678 0064 02F4E042 		and	r2, r2, #28672
 679 0068 B2F5E04F 		cmp	r2, #28672
 680 006c 31D0     		beq	.L59
1562:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****          (ADC_IS_SOFTWARE_START_REGULAR(hadc)        &&
 681              		.loc 1 1562 0 discriminator 1
 682 006e 5A68     		ldr	r2, [r3, #4]
1561:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****          (HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO) &&     
 683              		.loc 1 1561 0 discriminator 1
 684 0070 12F4806F 		tst	r2, #1024
 685 0074 05D1     		bne	.L60
1563:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           (hadc->Init.ContinuousConvMode == DISABLE)   )        )   )
 686              		.loc 1 1563 0
 687 0076 9A68     		ldr	r2, [r3, #8]
 688 0078 02F46022 		and	r2, r2, #917504
1562:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****          (ADC_IS_SOFTWARE_START_REGULAR(hadc)        &&
 689              		.loc 1 1562 0
 690 007c B2F5602F 		cmp	r2, #917504
 691 0080 24D0     		beq	.L64
 692              	.L60:
1579:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
 693              		.loc 1 1579 0
 694 0082 2046     		mov	r0, r4
 695 0084 FFF7FEFF 		bl	HAL_ADCEx_InjectedConvCpltCallback
 696              	.LVL42:
1582:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 697              		.loc 1 1582 0
 698 0088 2368     		ldr	r3, [r4]
 699 008a 6FF00C02 		mvn	r2, #12
 700 008e 1A60     		str	r2, [r3]
 701              	.L57:
1587:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 702              		.loc 1 1587 0
 703 0090 2368     		ldr	r3, [r4]
 704 0092 5A68     		ldr	r2, [r3, #4]
 705 0094 12F0400F 		tst	r2, #64
 706 0098 03D0     		beq	.L53
1589:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 707              		.loc 1 1589 0
 708 009a 1B68     		ldr	r3, [r3]
 709 009c 13F0010F 		tst	r3, #1
 710 00a0 28D1     		bne	.L65
 711              	.L53:
1602:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 712              		.loc 1 1602 0
 713 00a2 10BD     		pop	{r4, pc}
 714              	.LVL43:
 715              	.L63:
1520:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
 716              		.loc 1 1520 0 discriminator 1
 717 00a4 E268     		ldr	r2, [r4, #12]
1519:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****          (hadc->Init.ContinuousConvMode == DISABLE)   )
 718              		.loc 1 1519 0 discriminator 1
 719 00a6 002A     		cmp	r2, #0
 720 00a8 C3D1     		bne	.L56
1523:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         
 721              		.loc 1 1523 0
 722 00aa 5A68     		ldr	r2, [r3, #4]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 51


 723 00ac 22F02002 		bic	r2, r2, #32
 724 00b0 5A60     		str	r2, [r3, #4]
1526:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         
 725              		.loc 1 1526 0
 726 00b2 A36A     		ldr	r3, [r4, #40]
 727 00b4 23F48073 		bic	r3, r3, #256
 728 00b8 A362     		str	r3, [r4, #40]
1528:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         {
 729              		.loc 1 1528 0
 730 00ba A36A     		ldr	r3, [r4, #40]
 731 00bc 13F4805F 		tst	r3, #4096
 732 00c0 B7D1     		bne	.L56
1530:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         }
 733              		.loc 1 1530 0
 734 00c2 A36A     		ldr	r3, [r4, #40]
 735 00c4 43F00103 		orr	r3, r3, #1
 736 00c8 A362     		str	r3, [r4, #40]
 737 00ca B2E7     		b	.L56
 738              	.LVL44:
 739              	.L64:
1564:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
 740              		.loc 1 1564 0
 741 00cc E268     		ldr	r2, [r4, #12]
1563:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           (hadc->Init.ContinuousConvMode == DISABLE)   )        )   )
 742              		.loc 1 1563 0
 743 00ce 002A     		cmp	r2, #0
 744 00d0 D7D1     		bne	.L60
 745              	.L59:
1567:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         
 746              		.loc 1 1567 0
 747 00d2 5A68     		ldr	r2, [r3, #4]
 748 00d4 22F08002 		bic	r2, r2, #128
 749 00d8 5A60     		str	r2, [r3, #4]
1570:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 750              		.loc 1 1570 0
 751 00da A36A     		ldr	r3, [r4, #40]
 752 00dc 23F48053 		bic	r3, r3, #4096
 753 00e0 A362     		str	r3, [r4, #40]
1572:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         { 
 754              		.loc 1 1572 0
 755 00e2 A36A     		ldr	r3, [r4, #40]
 756 00e4 13F4807F 		tst	r3, #256
 757 00e8 CBD1     		bne	.L60
1574:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         }
 758              		.loc 1 1574 0
 759 00ea A36A     		ldr	r3, [r4, #40]
 760 00ec 43F00103 		orr	r3, r3, #1
 761 00f0 A362     		str	r3, [r4, #40]
 762 00f2 C6E7     		b	.L60
 763              	.L65:
1592:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
 764              		.loc 1 1592 0
 765 00f4 A36A     		ldr	r3, [r4, #40]
 766 00f6 43F48033 		orr	r3, r3, #65536
 767 00fa A362     		str	r3, [r4, #40]
1595:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
 768              		.loc 1 1595 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 52


 769 00fc 2046     		mov	r0, r4
 770 00fe FFF7FEFF 		bl	HAL_ADC_LevelOutOfWindowCallback
 771              	.LVL45:
1598:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 772              		.loc 1 1598 0
 773 0102 2368     		ldr	r3, [r4]
 774 0104 6FF00102 		mvn	r2, #1
 775 0108 1A60     		str	r2, [r3]
1602:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 776              		.loc 1 1602 0
 777 010a CAE7     		b	.L53
 778              		.cfi_endproc
 779              	.LFE79:
 781              		.section	.text.HAL_ADC_ErrorCallback,"ax",%progbits
 782              		.align	1
 783              		.weak	HAL_ADC_ErrorCallback
 784              		.syntax unified
 785              		.thumb
 786              		.thumb_func
 787              		.fpu softvfp
 789              	HAL_ADC_ErrorCallback:
 790              	.LFB83:
1653:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Prevent unused argument(s) compilation warning */
 791              		.loc 1 1653 0
 792              		.cfi_startproc
 793              		@ args = 0, pretend = 0, frame = 0
 794              		@ frame_needed = 0, uses_anonymous_args = 0
 795              		@ link register save eliminated.
 796              	.LVL46:
1659:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 797              		.loc 1 1659 0
 798 0000 7047     		bx	lr
 799              		.cfi_endproc
 800              	.LFE83:
 802              		.section	.text.ADC_DMAError,"ax",%progbits
 803              		.align	1
 804              		.global	ADC_DMAError
 805              		.syntax unified
 806              		.thumb
 807              		.thumb_func
 808              		.fpu softvfp
 810              	ADC_DMAError:
 811              	.LFB92:
2076:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
2077:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** /**
2078:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @brief  DMA error callback 
2079:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @param  hdma: pointer to DMA handle.
2080:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   * @retval None
2081:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   */
2082:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** void ADC_DMAError(DMA_HandleTypeDef *hdma)   
2083:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** {
 812              		.loc 1 2083 0
 813              		.cfi_startproc
 814              		@ args = 0, pretend = 0, frame = 0
 815              		@ frame_needed = 0, uses_anonymous_args = 0
 816              	.LVL47:
 817 0000 08B5     		push	{r3, lr}
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 53


 818              	.LCFI8:
 819              		.cfi_def_cfa_offset 8
 820              		.cfi_offset 3, -8
 821              		.cfi_offset 14, -4
2084:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Retrieve ADC handle corresponding to current DMA handle */
2085:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   ADC_HandleTypeDef* hadc = ( ADC_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
 822              		.loc 1 2085 0
 823 0002 406A     		ldr	r0, [r0, #36]
 824              	.LVL48:
2086:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
2087:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Set ADC state */
2088:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_DMA);
 825              		.loc 1 2088 0
 826 0004 836A     		ldr	r3, [r0, #40]
 827 0006 43F04003 		orr	r3, r3, #64
 828 000a 8362     		str	r3, [r0, #40]
2089:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
2090:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Set ADC error code to DMA error */
2091:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   SET_BIT(hadc->ErrorCode, HAL_ADC_ERROR_DMA);
 829              		.loc 1 2091 0
 830 000c C36A     		ldr	r3, [r0, #44]
 831 000e 43F00403 		orr	r3, r3, #4
 832 0012 C362     		str	r3, [r0, #44]
2092:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
2093:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Error callback */
2094:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_ADC_ErrorCallback(hadc); 
 833              		.loc 1 2094 0
 834 0014 FFF7FEFF 		bl	HAL_ADC_ErrorCallback
 835              	.LVL49:
2095:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
 836              		.loc 1 2095 0
 837 0018 08BD     		pop	{r3, pc}
 838              		.cfi_endproc
 839              	.LFE92:
 841              		.section	.text.HAL_ADC_ConfigChannel,"ax",%progbits
 842              		.align	1
 843              		.global	HAL_ADC_ConfigChannel
 844              		.syntax unified
 845              		.thumb
 846              		.thumb_func
 847              		.fpu softvfp
 849              	HAL_ADC_ConfigChannel:
 850              	.LFB84:
1701:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 851              		.loc 1 1701 0
 852              		.cfi_startproc
 853              		@ args = 0, pretend = 0, frame = 8
 854              		@ frame_needed = 0, uses_anonymous_args = 0
 855              		@ link register save eliminated.
 856              	.LVL50:
 857 0000 30B4     		push	{r4, r5}
 858              	.LCFI9:
 859              		.cfi_def_cfa_offset 8
 860              		.cfi_offset 4, -8
 861              		.cfi_offset 5, -4
 862 0002 82B0     		sub	sp, sp, #8
 863              	.LCFI10:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 54


 864              		.cfi_def_cfa_offset 16
 865              	.LVL51:
1703:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 866              		.loc 1 1703 0
 867 0004 0023     		movs	r3, #0
 868 0006 0193     		str	r3, [sp, #4]
1712:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 869              		.loc 1 1712 0
 870 0008 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 871 000c 012B     		cmp	r3, #1
 872 000e 00F08B80 		beq	.L80
 873 0012 0246     		mov	r2, r0
1712:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 874              		.loc 1 1712 0 is_stmt 0 discriminator 2
 875 0014 0123     		movs	r3, #1
 876 0016 80F82430 		strb	r3, [r0, #36]
1717:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 877              		.loc 1 1717 0 is_stmt 1 discriminator 2
 878 001a 4B68     		ldr	r3, [r1, #4]
 879 001c 062B     		cmp	r3, #6
 880 001e 29D8     		bhi	.L71
1719:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                ADC_SQR3_RK(ADC_SQR3_SQ1, sConfig->Rank)    ,
 881              		.loc 1 1719 0
 882 0020 0568     		ldr	r5, [r0]
 883 0022 686B     		ldr	r0, [r5, #52]
 884              	.LVL52:
 885 0024 03EB8303 		add	r3, r3, r3, lsl #2
 886 0028 053B     		subs	r3, r3, #5
 887 002a 1F24     		movs	r4, #31
 888 002c 9C40     		lsls	r4, r4, r3
 889 002e 20EA0400 		bic	r0, r0, r4
 890 0032 0C68     		ldr	r4, [r1]
 891 0034 04FA03F3 		lsl	r3, r4, r3
 892 0038 0343     		orrs	r3, r3, r0
 893 003a 6B63     		str	r3, [r5, #52]
 894              	.L72:
1741:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 895              		.loc 1 1741 0
 896 003c 0B68     		ldr	r3, [r1]
 897 003e 092B     		cmp	r3, #9
 898 0040 38D9     		bls	.L74
1743:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                ADC_SMPR1(ADC_SMPR1_SMP10, sConfig->Channel)      ,
 899              		.loc 1 1743 0
 900 0042 1568     		ldr	r5, [r2]
 901 0044 E868     		ldr	r0, [r5, #12]
 902 0046 03EB4303 		add	r3, r3, r3, lsl #1
 903 004a 1E3B     		subs	r3, r3, #30
 904 004c 0724     		movs	r4, #7
 905 004e 9C40     		lsls	r4, r4, r3
 906 0050 20EA0400 		bic	r0, r0, r4
 907 0054 8C68     		ldr	r4, [r1, #8]
 908 0056 04FA03F3 		lsl	r3, r4, r3
 909 005a 0343     		orrs	r3, r3, r0
 910 005c EB60     		str	r3, [r5, #12]
 911              	.L75:
1756:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (sConfig->Channel == ADC_CHANNEL_VREFINT)      )
 912              		.loc 1 1756 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 55


 913 005e 0B68     		ldr	r3, [r1]
 914 0060 103B     		subs	r3, r3, #16
 915 0062 012B     		cmp	r3, #1
 916 0064 34D9     		bls	.L85
1702:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   __IO uint32_t wait_loop_index = 0U;
 917              		.loc 1 1702 0
 918 0066 0020     		movs	r0, #0
 919              	.LVL53:
 920              	.L76:
1790:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 921              		.loc 1 1790 0
 922 0068 0023     		movs	r3, #0
 923 006a 82F82430 		strb	r3, [r2, #36]
 924              	.LVL54:
 925              	.L70:
1794:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 926              		.loc 1 1794 0
 927 006e 02B0     		add	sp, sp, #8
 928              	.LCFI11:
 929              		.cfi_remember_state
 930              		.cfi_def_cfa_offset 8
 931              		@ sp needed
 932 0070 30BC     		pop	{r4, r5}
 933              	.LCFI12:
 934              		.cfi_restore 5
 935              		.cfi_restore 4
 936              		.cfi_def_cfa_offset 0
 937 0072 7047     		bx	lr
 938              	.LVL55:
 939              	.L71:
 940              	.LCFI13:
 941              		.cfi_restore_state
1724:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 942              		.loc 1 1724 0
 943 0074 0C2B     		cmp	r3, #12
 944 0076 0ED8     		bhi	.L73
1726:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                ADC_SQR2_RK(ADC_SQR2_SQ7, sConfig->Rank)    ,
 945              		.loc 1 1726 0
 946 0078 0568     		ldr	r5, [r0]
 947 007a 286B     		ldr	r0, [r5, #48]
 948              	.LVL56:
 949 007c 03EB8303 		add	r3, r3, r3, lsl #2
 950 0080 233B     		subs	r3, r3, #35
 951 0082 1F24     		movs	r4, #31
 952 0084 9C40     		lsls	r4, r4, r3
 953 0086 20EA0400 		bic	r0, r0, r4
 954 008a 0C68     		ldr	r4, [r1]
 955 008c 04FA03F3 		lsl	r3, r4, r3
 956 0090 0343     		orrs	r3, r3, r0
 957 0092 2B63     		str	r3, [r5, #48]
 958 0094 D2E7     		b	.L72
 959              	.LVL57:
 960              	.L73:
1733:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                ADC_SQR1_RK(ADC_SQR1_SQ13, sConfig->Rank)   ,
 961              		.loc 1 1733 0
 962 0096 0568     		ldr	r5, [r0]
 963 0098 E86A     		ldr	r0, [r5, #44]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 56


 964              	.LVL58:
 965 009a 03EB8303 		add	r3, r3, r3, lsl #2
 966 009e 413B     		subs	r3, r3, #65
 967 00a0 1F24     		movs	r4, #31
 968 00a2 9C40     		lsls	r4, r4, r3
 969 00a4 20EA0400 		bic	r0, r0, r4
 970 00a8 0C68     		ldr	r4, [r1]
 971 00aa 04FA03F3 		lsl	r3, r4, r3
 972 00ae 0343     		orrs	r3, r3, r0
 973 00b0 EB62     		str	r3, [r5, #44]
 974 00b2 C3E7     		b	.L72
 975              	.L74:
1749:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                ADC_SMPR2(ADC_SMPR2_SMP0, sConfig->Channel)       ,
 976              		.loc 1 1749 0
 977 00b4 1568     		ldr	r5, [r2]
 978 00b6 2869     		ldr	r0, [r5, #16]
 979 00b8 03EB4303 		add	r3, r3, r3, lsl #1
 980 00bc 0724     		movs	r4, #7
 981 00be 9C40     		lsls	r4, r4, r3
 982 00c0 20EA0400 		bic	r0, r0, r4
 983 00c4 8C68     		ldr	r4, [r1, #8]
 984 00c6 04FA03F3 		lsl	r3, r4, r3
 985 00ca 0343     		orrs	r3, r3, r0
 986 00cc 2B61     		str	r3, [r5, #16]
 987 00ce C6E7     		b	.L75
 988              	.L85:
1762:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 989              		.loc 1 1762 0
 990 00d0 1368     		ldr	r3, [r2]
 991 00d2 1648     		ldr	r0, .L88
 992 00d4 8342     		cmp	r3, r0
 993 00d6 05D0     		beq	.L86
1783:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
 994              		.loc 1 1783 0
 995 00d8 936A     		ldr	r3, [r2, #40]
 996 00da 43F02003 		orr	r3, r3, #32
 997 00de 9362     		str	r3, [r2, #40]
 998              	.LVL59:
1785:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 999              		.loc 1 1785 0
 1000 00e0 0120     		movs	r0, #1
 1001 00e2 C1E7     		b	.L76
 1002              	.LVL60:
 1003              	.L86:
1764:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
 1004              		.loc 1 1764 0
 1005 00e4 9868     		ldr	r0, [r3, #8]
 1006 00e6 10F4000F 		tst	r0, #8388608
 1007 00ea 1BD1     		bne	.L82
1766:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         
 1008              		.loc 1 1766 0
 1009 00ec 9868     		ldr	r0, [r3, #8]
 1010 00ee 40F40000 		orr	r0, r0, #8388608
 1011 00f2 9860     		str	r0, [r3, #8]
1768:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         {
 1012              		.loc 1 1768 0
 1013 00f4 0B68     		ldr	r3, [r1]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 57


 1014 00f6 102B     		cmp	r3, #16
 1015 00f8 01D0     		beq	.L87
1702:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   __IO uint32_t wait_loop_index = 0U;
 1016              		.loc 1 1702 0
 1017 00fa 0020     		movs	r0, #0
 1018 00fc B4E7     		b	.L76
 1019              	.L87:
1772:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           while(wait_loop_index != 0U)
 1020              		.loc 1 1772 0
 1021 00fe 0C4B     		ldr	r3, .L88+4
 1022 0100 1B68     		ldr	r3, [r3]
 1023 0102 0C49     		ldr	r1, .L88+8
 1024              	.LVL61:
 1025 0104 A1FB0313 		umull	r1, r3, r1, r3
 1026 0108 9B0C     		lsrs	r3, r3, #18
 1027 010a 03EB8303 		add	r3, r3, r3, lsl #2
 1028 010e 5900     		lsls	r1, r3, #1
 1029 0110 0191     		str	r1, [sp, #4]
1773:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           {
 1030              		.loc 1 1773 0
 1031 0112 02E0     		b	.L78
 1032              	.L79:
1775:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           }
 1033              		.loc 1 1775 0
 1034 0114 019B     		ldr	r3, [sp, #4]
 1035 0116 013B     		subs	r3, r3, #1
 1036 0118 0193     		str	r3, [sp, #4]
 1037              	.L78:
1773:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****           {
 1038              		.loc 1 1773 0
 1039 011a 019B     		ldr	r3, [sp, #4]
 1040 011c 002B     		cmp	r3, #0
 1041 011e F9D1     		bne	.L79
1702:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   __IO uint32_t wait_loop_index = 0U;
 1042              		.loc 1 1702 0
 1043 0120 0020     		movs	r0, #0
 1044 0122 A1E7     		b	.L76
 1045              	.LVL62:
 1046              	.L82:
 1047 0124 0020     		movs	r0, #0
 1048 0126 9FE7     		b	.L76
 1049              	.LVL63:
 1050              	.L80:
1712:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 1051              		.loc 1 1712 0
 1052 0128 0220     		movs	r0, #2
 1053              	.LVL64:
 1054 012a A0E7     		b	.L70
 1055              	.L89:
 1056              		.align	2
 1057              	.L88:
 1058 012c 00240140 		.word	1073816576
 1059 0130 00000000 		.word	SystemCoreClock
 1060 0134 83DE1B43 		.word	1125899907
 1061              		.cfi_endproc
 1062              	.LFE84:
 1064              		.section	.text.HAL_ADC_AnalogWDGConfig,"ax",%progbits
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 58


 1065              		.align	1
 1066              		.global	HAL_ADC_AnalogWDGConfig
 1067              		.syntax unified
 1068              		.thumb
 1069              		.thumb_func
 1070              		.fpu softvfp
 1072              	HAL_ADC_AnalogWDGConfig:
 1073              	.LFB85:
1811:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Check the parameters */
 1074              		.loc 1 1811 0
 1075              		.cfi_startproc
 1076              		@ args = 0, pretend = 0, frame = 0
 1077              		@ frame_needed = 0, uses_anonymous_args = 0
 1078              		@ link register save eliminated.
 1079              	.LVL65:
1827:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 1080              		.loc 1 1827 0
 1081 0000 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 1082 0004 012B     		cmp	r3, #1
 1083 0006 26D0     		beq	.L94
1811:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Check the parameters */
 1084              		.loc 1 1811 0 discriminator 2
 1085 0008 30B4     		push	{r4, r5}
 1086              	.LCFI14:
 1087              		.cfi_def_cfa_offset 8
 1088              		.cfi_offset 4, -8
 1089              		.cfi_offset 5, -4
1827:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 1090              		.loc 1 1827 0 discriminator 2
 1091 000a 0123     		movs	r3, #1
 1092 000c 80F82430 		strb	r3, [r0, #36]
1832:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 1093              		.loc 1 1832 0 discriminator 2
 1094 0010 8B68     		ldr	r3, [r1, #8]
 1095 0012 012B     		cmp	r3, #1
 1096 0014 19D0     		beq	.L99
1840:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
 1097              		.loc 1 1840 0
 1098 0016 0268     		ldr	r2, [r0]
 1099 0018 5368     		ldr	r3, [r2, #4]
 1100 001a 23F04003 		bic	r3, r3, #64
 1101 001e 5360     		str	r3, [r2, #4]
 1102              	.L93:
1848:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****              ADC_CR1_AWDSGL |
 1103              		.loc 1 1848 0
 1104 0020 0468     		ldr	r4, [r0]
 1105 0022 6268     		ldr	r2, [r4, #4]
 1106 0024 0D4B     		ldr	r3, .L100
 1107 0026 1340     		ands	r3, r3, r2
 1108 0028 0A68     		ldr	r2, [r1]
 1109 002a 4D68     		ldr	r5, [r1, #4]
 1110 002c 2A43     		orrs	r2, r2, r5
 1111 002e 1343     		orrs	r3, r3, r2
 1112 0030 6360     		str	r3, [r4, #4]
1857:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 1113              		.loc 1 1857 0
 1114 0032 0368     		ldr	r3, [r0]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 59


 1115 0034 CA68     		ldr	r2, [r1, #12]
 1116 0036 5A62     		str	r2, [r3, #36]
1860:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 1117              		.loc 1 1860 0
 1118 0038 0368     		ldr	r3, [r0]
 1119 003a 0A69     		ldr	r2, [r1, #16]
 1120 003c 9A62     		str	r2, [r3, #40]
1863:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 1121              		.loc 1 1863 0
 1122 003e 0023     		movs	r3, #0
 1123 0040 80F82430 		strb	r3, [r0, #36]
1866:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
 1124              		.loc 1 1866 0
 1125 0044 1846     		mov	r0, r3
 1126              	.LVL66:
1867:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 1127              		.loc 1 1867 0
 1128 0046 30BC     		pop	{r4, r5}
 1129              	.LCFI15:
 1130              		.cfi_remember_state
 1131              		.cfi_restore 5
 1132              		.cfi_restore 4
 1133              		.cfi_def_cfa_offset 0
 1134 0048 7047     		bx	lr
 1135              	.LVL67:
 1136              	.L99:
 1137              	.LCFI16:
 1138              		.cfi_restore_state
1835:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
 1139              		.loc 1 1835 0
 1140 004a 0268     		ldr	r2, [r0]
 1141 004c 5368     		ldr	r3, [r2, #4]
 1142 004e 43F04003 		orr	r3, r3, #64
 1143 0052 5360     		str	r3, [r2, #4]
 1144 0054 E4E7     		b	.L93
 1145              	.L94:
 1146              	.LCFI17:
 1147              		.cfi_def_cfa_offset 0
 1148              		.cfi_restore 4
 1149              		.cfi_restore 5
1827:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 1150              		.loc 1 1827 0
 1151 0056 0220     		movs	r0, #2
 1152              	.LVL68:
1867:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 1153              		.loc 1 1867 0
 1154 0058 7047     		bx	lr
 1155              	.L101:
 1156 005a 00BF     		.align	2
 1157              	.L100:
 1158 005c E0FD3FFF 		.word	-12583456
 1159              		.cfi_endproc
 1160              	.LFE85:
 1162              		.section	.text.HAL_ADC_GetState,"ax",%progbits
 1163              		.align	1
 1164              		.global	HAL_ADC_GetState
 1165              		.syntax unified
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 60


 1166              		.thumb
 1167              		.thumb_func
 1168              		.fpu softvfp
 1170              	HAL_ADC_GetState:
 1171              	.LFB86:
1898:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   /* Return ADC state */
 1172              		.loc 1 1898 0
 1173              		.cfi_startproc
 1174              		@ args = 0, pretend = 0, frame = 0
 1175              		@ frame_needed = 0, uses_anonymous_args = 0
 1176              		@ link register save eliminated.
 1177              	.LVL69:
1900:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
 1178              		.loc 1 1900 0
 1179 0000 806A     		ldr	r0, [r0, #40]
 1180              	.LVL70:
1901:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 1181              		.loc 1 1901 0
 1182 0002 7047     		bx	lr
 1183              		.cfi_endproc
 1184              	.LFE86:
 1186              		.section	.text.HAL_ADC_GetError,"ax",%progbits
 1187              		.align	1
 1188              		.global	HAL_ADC_GetError
 1189              		.syntax unified
 1190              		.thumb
 1191              		.thumb_func
 1192              		.fpu softvfp
 1194              	HAL_ADC_GetError:
 1195              	.LFB87:
1909:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   return hadc->ErrorCode;
 1196              		.loc 1 1909 0
 1197              		.cfi_startproc
 1198              		@ args = 0, pretend = 0, frame = 0
 1199              		@ frame_needed = 0, uses_anonymous_args = 0
 1200              		@ link register save eliminated.
 1201              	.LVL71:
1910:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
 1202              		.loc 1 1910 0
 1203 0000 C06A     		ldr	r0, [r0, #44]
 1204              	.LVL72:
1911:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 1205              		.loc 1 1911 0
 1206 0002 7047     		bx	lr
 1207              		.cfi_endproc
 1208              	.LFE87:
 1210              		.section	.text.ADC_Enable,"ax",%progbits
 1211              		.align	1
 1212              		.global	ADC_Enable
 1213              		.syntax unified
 1214              		.thumb
 1215              		.thumb_func
 1216              		.fpu softvfp
 1218              	ADC_Enable:
 1219              	.LFB88:
1933:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   uint32_t tickstart = 0U;
 1220              		.loc 1 1933 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 61


 1221              		.cfi_startproc
 1222              		@ args = 0, pretend = 0, frame = 8
 1223              		@ frame_needed = 0, uses_anonymous_args = 0
 1224              	.LVL73:
 1225 0000 30B5     		push	{r4, r5, lr}
 1226              	.LCFI18:
 1227              		.cfi_def_cfa_offset 12
 1228              		.cfi_offset 4, -12
 1229              		.cfi_offset 5, -8
 1230              		.cfi_offset 14, -4
 1231 0002 83B0     		sub	sp, sp, #12
 1232              	.LCFI19:
 1233              		.cfi_def_cfa_offset 24
 1234              	.LVL74:
1935:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 1235              		.loc 1 1935 0
 1236 0004 0023     		movs	r3, #0
 1237 0006 0193     		str	r3, [sp, #4]
1941:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 1238              		.loc 1 1941 0
 1239 0008 0368     		ldr	r3, [r0]
 1240 000a 9A68     		ldr	r2, [r3, #8]
 1241 000c 12F0010F 		tst	r2, #1
 1242 0010 2ED1     		bne	.L110
1944:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 1243              		.loc 1 1944 0
 1244 0012 9A68     		ldr	r2, [r3, #8]
 1245 0014 42F00102 		orr	r2, r2, #1
 1246 0018 9A60     		str	r2, [r3, #8]
1948:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     while(wait_loop_index != 0U)
 1247              		.loc 1 1948 0
 1248 001a 174B     		ldr	r3, .L113
 1249 001c 1B68     		ldr	r3, [r3]
 1250 001e 174A     		ldr	r2, .L113+4
 1251 0020 A2FB0323 		umull	r2, r3, r2, r3
 1252 0024 9B0C     		lsrs	r3, r3, #18
 1253 0026 0193     		str	r3, [sp, #4]
1949:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 1254              		.loc 1 1949 0
 1255 0028 02E0     		b	.L106
 1256              	.L107:
1951:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 1257              		.loc 1 1951 0
 1258 002a 019B     		ldr	r3, [sp, #4]
 1259 002c 013B     		subs	r3, r3, #1
 1260 002e 0193     		str	r3, [sp, #4]
 1261              	.L106:
1949:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 1262              		.loc 1 1949 0
 1263 0030 019B     		ldr	r3, [sp, #4]
 1264 0032 002B     		cmp	r3, #0
 1265 0034 F9D1     		bne	.L107
 1266 0036 0446     		mov	r4, r0
1955:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 1267              		.loc 1 1955 0
 1268 0038 FFF7FEFF 		bl	HAL_GetTick
 1269              	.LVL75:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 62


 1270 003c 0546     		mov	r5, r0
 1271              	.LVL76:
 1272              	.L108:
1958:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 1273              		.loc 1 1958 0
 1274 003e 2368     		ldr	r3, [r4]
 1275 0040 9B68     		ldr	r3, [r3, #8]
 1276 0042 13F0010F 		tst	r3, #1
 1277 0046 11D1     		bne	.L112
1960:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
 1278              		.loc 1 1960 0
 1279 0048 FFF7FEFF 		bl	HAL_GetTick
 1280              	.LVL77:
 1281 004c 401B     		subs	r0, r0, r5
 1282 004e 0228     		cmp	r0, #2
 1283 0050 F5D9     		bls	.L108
1963:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
 1284              		.loc 1 1963 0
 1285 0052 A36A     		ldr	r3, [r4, #40]
 1286 0054 43F01003 		orr	r3, r3, #16
 1287 0058 A362     		str	r3, [r4, #40]
1966:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         
 1288              		.loc 1 1966 0
 1289 005a E36A     		ldr	r3, [r4, #44]
 1290 005c 43F00103 		orr	r3, r3, #1
 1291 0060 E362     		str	r3, [r4, #44]
1969:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
 1292              		.loc 1 1969 0
 1293 0062 0023     		movs	r3, #0
 1294 0064 84F82430 		strb	r3, [r4, #36]
1971:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
 1295              		.loc 1 1971 0
 1296 0068 0120     		movs	r0, #1
 1297 006a 02E0     		b	.L105
 1298              	.L112:
1977:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
 1299              		.loc 1 1977 0
 1300 006c 0020     		movs	r0, #0
 1301 006e 00E0     		b	.L105
 1302              	.LVL78:
 1303              	.L110:
 1304 0070 0020     		movs	r0, #0
 1305              	.LVL79:
 1306              	.L105:
1978:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 1307              		.loc 1 1978 0
 1308 0072 03B0     		add	sp, sp, #12
 1309              	.LCFI20:
 1310              		.cfi_def_cfa_offset 12
 1311              		@ sp needed
 1312 0074 30BD     		pop	{r4, r5, pc}
 1313              	.L114:
 1314 0076 00BF     		.align	2
 1315              	.L113:
 1316 0078 00000000 		.word	SystemCoreClock
 1317 007c 83DE1B43 		.word	1125899907
 1318              		.cfi_endproc
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 63


 1319              	.LFE88:
 1321              		.section	.text.HAL_ADC_Start,"ax",%progbits
 1322              		.align	1
 1323              		.global	HAL_ADC_Start
 1324              		.syntax unified
 1325              		.thumb
 1326              		.thumb_func
 1327              		.fpu softvfp
 1329              	HAL_ADC_Start:
 1330              	.LFB70:
 767:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 1331              		.loc 1 767 0
 1332              		.cfi_startproc
 1333              		@ args = 0, pretend = 0, frame = 0
 1334              		@ frame_needed = 0, uses_anonymous_args = 0
 1335              	.LVL80:
 774:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****    
 1336              		.loc 1 774 0
 1337 0000 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 1338 0004 012B     		cmp	r3, #1
 1339 0006 6AD0     		beq	.L125
 767:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 1340              		.loc 1 767 0 discriminator 2
 1341 0008 10B5     		push	{r4, lr}
 1342              	.LCFI21:
 1343              		.cfi_def_cfa_offset 8
 1344              		.cfi_offset 4, -8
 1345              		.cfi_offset 14, -4
 1346 000a 0446     		mov	r4, r0
 774:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****    
 1347              		.loc 1 774 0 discriminator 2
 1348 000c 0123     		movs	r3, #1
 1349 000e 80F82430 		strb	r3, [r0, #36]
 777:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 1350              		.loc 1 777 0 discriminator 2
 1351 0012 FFF7FEFF 		bl	ADC_Enable
 1352              	.LVL81:
 780:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 1353              		.loc 1 780 0 discriminator 2
 1354 0016 0246     		mov	r2, r0
 1355 0018 0028     		cmp	r0, #0
 1356 001a 5BD1     		bne	.L117
 785:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                       HAL_ADC_STATE_READY | HAL_ADC_STATE_REG_EOC,
 1357              		.loc 1 785 0
 1358 001c A36A     		ldr	r3, [r4, #40]
 1359 001e 23F44073 		bic	r3, r3, #768
 1360 0022 23F00103 		bic	r3, r3, #1
 1361 0026 43F48073 		orr	r3, r3, #256
 1362 002a A362     		str	r3, [r4, #40]
 792:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 1363              		.loc 1 792 0
 1364 002c 2368     		ldr	r3, [r4]
 1365 002e 2D49     		ldr	r1, .L133
 1366 0030 8B42     		cmp	r3, r1
 1367 0032 27D0     		beq	.L130
 1368              	.L118:
 795:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 64


 1369              		.loc 1 795 0
 1370 0034 A16A     		ldr	r1, [r4, #40]
 1371 0036 21F48011 		bic	r1, r1, #1048576
 1372 003a A162     		str	r1, [r4, #40]
 799:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
 1373              		.loc 1 799 0
 1374 003c 5968     		ldr	r1, [r3, #4]
 1375 003e 11F4806F 		tst	r1, #1024
 1376 0042 05D0     		beq	.L120
 801:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
 1377              		.loc 1 801 0
 1378 0044 A16A     		ldr	r1, [r4, #40]
 1379 0046 21F44051 		bic	r1, r1, #12288
 1380 004a 41F48051 		orr	r1, r1, #4096
 1381 004e A162     		str	r1, [r4, #40]
 1382              	.L120:
 818:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 1383              		.loc 1 818 0
 1384 0050 A16A     		ldr	r1, [r4, #40]
 1385 0052 11F4805F 		tst	r1, #4096
 1386 0056 2BD0     		beq	.L121
 821:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 1387              		.loc 1 821 0
 1388 0058 E16A     		ldr	r1, [r4, #44]
 1389 005a 21F00601 		bic	r1, r1, #6
 1390 005e E162     		str	r1, [r4, #44]
 1391              	.L122:
 832:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 1392              		.loc 1 832 0
 1393 0060 0021     		movs	r1, #0
 1394 0062 84F82410 		strb	r1, [r4, #36]
 836:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 1395              		.loc 1 836 0
 1396 0066 6FF00201 		mvn	r1, #2
 1397 006a 1960     		str	r1, [r3]
 848:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         ADC_NONMULTIMODE_OR_MULTIMODEMASTER(hadc)  )
 1398              		.loc 1 848 0
 1399 006c 2368     		ldr	r3, [r4]
 1400 006e 9968     		ldr	r1, [r3, #8]
 1401 0070 01F46021 		and	r1, r1, #917504
 1402 0074 B1F5602F 		cmp	r1, #917504
 1403 0078 1DD0     		beq	.L131
 1404              	.L123:
 857:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 1405              		.loc 1 857 0
 1406 007a 9968     		ldr	r1, [r3, #8]
 1407 007c 41F48011 		orr	r1, r1, #1048576
 1408 0080 9960     		str	r1, [r3, #8]
 1409 0082 2AE0     		b	.L116
 1410              	.L130:
 792:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 1411              		.loc 1 792 0 discriminator 1
 1412 0084 A1F58061 		sub	r1, r1, #1024
 1413 0088 4968     		ldr	r1, [r1, #4]
 1414 008a 11F4702F 		tst	r1, #983040
 1415 008e D1D0     		beq	.L118
 807:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 65


 1416              		.loc 1 807 0
 1417 0090 A16A     		ldr	r1, [r4, #40]
 1418 0092 41F48011 		orr	r1, r1, #1048576
 1419 0096 A162     		str	r1, [r4, #40]
 811:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
 1420              		.loc 1 811 0
 1421 0098 1349     		ldr	r1, .L133+4
 1422 009a 4968     		ldr	r1, [r1, #4]
 1423 009c 11F4806F 		tst	r1, #1024
 1424 00a0 D6D0     		beq	.L120
 813:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
 1425              		.loc 1 813 0
 1426 00a2 A16A     		ldr	r1, [r4, #40]
 1427 00a4 21F44051 		bic	r1, r1, #12288
 1428 00a8 41F48051 		orr	r1, r1, #4096
 1429 00ac A162     		str	r1, [r4, #40]
 1430 00ae CFE7     		b	.L120
 1431              	.L121:
 826:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 1432              		.loc 1 826 0
 1433 00b0 0021     		movs	r1, #0
 1434 00b2 E162     		str	r1, [r4, #44]
 1435 00b4 D4E7     		b	.L122
 1436              	.L131:
 848:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         ADC_NONMULTIMODE_OR_MULTIMODEMASTER(hadc)  )
 1437              		.loc 1 848 0 discriminator 1
 1438 00b6 0B49     		ldr	r1, .L133
 1439 00b8 8B42     		cmp	r3, r1
 1440 00ba 04D0     		beq	.L132
 1441              	.L124:
 852:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 1442              		.loc 1 852 0
 1443 00bc 9968     		ldr	r1, [r3, #8]
 1444 00be 41F4A001 		orr	r1, r1, #5242880
 1445 00c2 9960     		str	r1, [r3, #8]
 1446 00c4 09E0     		b	.L116
 1447              	.L132:
 849:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 1448              		.loc 1 849 0 discriminator 2
 1449 00c6 A1F58061 		sub	r1, r1, #1024
 1450 00ca 4968     		ldr	r1, [r1, #4]
 848:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         ADC_NONMULTIMODE_OR_MULTIMODEMASTER(hadc)  )
 1451              		.loc 1 848 0 discriminator 2
 1452 00cc 11F4702F 		tst	r1, #983040
 1453 00d0 D3D1     		bne	.L123
 1454 00d2 F3E7     		b	.L124
 1455              	.L117:
 863:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
 1456              		.loc 1 863 0
 1457 00d4 0023     		movs	r3, #0
 1458 00d6 84F82430 		strb	r3, [r4, #36]
 1459              	.L116:
 868:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 1460              		.loc 1 868 0
 1461 00da 1046     		mov	r0, r2
 1462              	.LVL82:
 1463 00dc 10BD     		pop	{r4, pc}
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 66


 1464              	.LVL83:
 1465              	.L125:
 1466              	.LCFI22:
 1467              		.cfi_def_cfa_offset 0
 1468              		.cfi_restore 4
 1469              		.cfi_restore 14
 774:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****    
 1470              		.loc 1 774 0
 1471 00de 0222     		movs	r2, #2
 868:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 1472              		.loc 1 868 0
 1473 00e0 1046     		mov	r0, r2
 1474              	.LVL84:
 1475 00e2 7047     		bx	lr
 1476              	.L134:
 1477              		.align	2
 1478              	.L133:
 1479 00e4 00280140 		.word	1073817600
 1480 00e8 00240140 		.word	1073816576
 1481              		.cfi_endproc
 1482              	.LFE70:
 1484              		.section	.text.HAL_ADC_Start_IT,"ax",%progbits
 1485              		.align	1
 1486              		.global	HAL_ADC_Start_IT
 1487              		.syntax unified
 1488              		.thumb
 1489              		.thumb_func
 1490              		.fpu softvfp
 1492              	HAL_ADC_Start_IT:
 1493              	.LFB74:
1104:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 1494              		.loc 1 1104 0
 1495              		.cfi_startproc
 1496              		@ args = 0, pretend = 0, frame = 0
 1497              		@ frame_needed = 0, uses_anonymous_args = 0
 1498              	.LVL85:
1111:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 1499              		.loc 1 1111 0
 1500 0000 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 1501 0004 012B     		cmp	r3, #1
 1502 0006 6FD0     		beq	.L145
1104:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 1503              		.loc 1 1104 0 discriminator 2
 1504 0008 10B5     		push	{r4, lr}
 1505              	.LCFI23:
 1506              		.cfi_def_cfa_offset 8
 1507              		.cfi_offset 4, -8
 1508              		.cfi_offset 14, -4
 1509 000a 0446     		mov	r4, r0
1111:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 1510              		.loc 1 1111 0 discriminator 2
 1511 000c 0123     		movs	r3, #1
 1512 000e 80F82430 		strb	r3, [r0, #36]
1114:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 1513              		.loc 1 1114 0 discriminator 2
 1514 0012 FFF7FEFF 		bl	ADC_Enable
 1515              	.LVL86:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 67


1117:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 1516              		.loc 1 1117 0 discriminator 2
 1517 0016 0246     		mov	r2, r0
 1518 0018 0028     		cmp	r0, #0
 1519 001a 60D1     		bne	.L137
1122:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                       HAL_ADC_STATE_READY | HAL_ADC_STATE_REG_EOC | HAL_ADC_STATE_REG_OVR | HAL_ADC
 1520              		.loc 1 1122 0
 1521 001c A36A     		ldr	r3, [r4, #40]
 1522 001e 23F47063 		bic	r3, r3, #3840
 1523 0022 23F00103 		bic	r3, r3, #1
 1524 0026 43F48073 		orr	r3, r3, #256
 1525 002a A362     		str	r3, [r4, #40]
1129:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 1526              		.loc 1 1129 0
 1527 002c 2368     		ldr	r3, [r4]
 1528 002e 3049     		ldr	r1, .L153
 1529 0030 8B42     		cmp	r3, r1
 1530 0032 2CD0     		beq	.L150
 1531              	.L138:
1132:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
 1532              		.loc 1 1132 0
 1533 0034 A16A     		ldr	r1, [r4, #40]
 1534 0036 21F48011 		bic	r1, r1, #1048576
 1535 003a A162     		str	r1, [r4, #40]
1136:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
 1536              		.loc 1 1136 0
 1537 003c 5968     		ldr	r1, [r3, #4]
 1538 003e 11F4806F 		tst	r1, #1024
 1539 0042 05D0     		beq	.L140
1138:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
 1540              		.loc 1 1138 0
 1541 0044 A16A     		ldr	r1, [r4, #40]
 1542 0046 21F44051 		bic	r1, r1, #12288
 1543 004a 41F48051 		orr	r1, r1, #4096
 1544 004e A162     		str	r1, [r4, #40]
 1545              	.L140:
1155:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 1546              		.loc 1 1155 0
 1547 0050 A16A     		ldr	r1, [r4, #40]
 1548 0052 11F4805F 		tst	r1, #4096
 1549 0056 30D0     		beq	.L141
1158:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 1550              		.loc 1 1158 0
 1551 0058 E16A     		ldr	r1, [r4, #44]
 1552 005a 21F00601 		bic	r1, r1, #6
 1553 005e E162     		str	r1, [r4, #44]
 1554              	.L142:
1169:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 1555              		.loc 1 1169 0
 1556 0060 0021     		movs	r1, #0
 1557 0062 84F82410 		strb	r1, [r4, #36]
1173:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 1558              		.loc 1 1173 0
 1559 0066 6FF00201 		mvn	r1, #2
 1560 006a 1960     		str	r1, [r3]
1176:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 1561              		.loc 1 1176 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 68


 1562 006c 2168     		ldr	r1, [r4]
 1563 006e 4B68     		ldr	r3, [r1, #4]
 1564 0070 43F02003 		orr	r3, r3, #32
 1565 0074 4B60     		str	r3, [r1, #4]
1185:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         ADC_NONMULTIMODE_OR_MULTIMODEMASTER(hadc)  )
 1566              		.loc 1 1185 0
 1567 0076 2368     		ldr	r3, [r4]
 1568 0078 9968     		ldr	r1, [r3, #8]
 1569 007a 01F46021 		and	r1, r1, #917504
 1570 007e B1F5602F 		cmp	r1, #917504
 1571 0082 1DD0     		beq	.L151
 1572              	.L143:
1194:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 1573              		.loc 1 1194 0
 1574 0084 9968     		ldr	r1, [r3, #8]
 1575 0086 41F48011 		orr	r1, r1, #1048576
 1576 008a 9960     		str	r1, [r3, #8]
 1577 008c 2AE0     		b	.L136
 1578              	.L150:
1129:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 1579              		.loc 1 1129 0 discriminator 1
 1580 008e A1F58061 		sub	r1, r1, #1024
 1581 0092 4968     		ldr	r1, [r1, #4]
 1582 0094 11F4702F 		tst	r1, #983040
 1583 0098 CCD0     		beq	.L138
1144:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
 1584              		.loc 1 1144 0
 1585 009a A16A     		ldr	r1, [r4, #40]
 1586 009c 41F48011 		orr	r1, r1, #1048576
 1587 00a0 A162     		str	r1, [r4, #40]
1148:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
 1588              		.loc 1 1148 0
 1589 00a2 1449     		ldr	r1, .L153+4
 1590 00a4 4968     		ldr	r1, [r1, #4]
 1591 00a6 11F4806F 		tst	r1, #1024
 1592 00aa D1D0     		beq	.L140
1150:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
 1593              		.loc 1 1150 0
 1594 00ac A16A     		ldr	r1, [r4, #40]
 1595 00ae 21F44051 		bic	r1, r1, #12288
 1596 00b2 41F48051 		orr	r1, r1, #4096
 1597 00b6 A162     		str	r1, [r4, #40]
 1598 00b8 CAE7     		b	.L140
 1599              	.L141:
1163:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 1600              		.loc 1 1163 0
 1601 00ba 0021     		movs	r1, #0
 1602 00bc E162     		str	r1, [r4, #44]
 1603 00be CFE7     		b	.L142
 1604              	.L151:
1185:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         ADC_NONMULTIMODE_OR_MULTIMODEMASTER(hadc)  )
 1605              		.loc 1 1185 0 discriminator 1
 1606 00c0 0B49     		ldr	r1, .L153
 1607 00c2 8B42     		cmp	r3, r1
 1608 00c4 04D0     		beq	.L152
 1609              	.L144:
1189:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 69


 1610              		.loc 1 1189 0
 1611 00c6 9968     		ldr	r1, [r3, #8]
 1612 00c8 41F4A001 		orr	r1, r1, #5242880
 1613 00cc 9960     		str	r1, [r3, #8]
 1614 00ce 09E0     		b	.L136
 1615              	.L152:
1186:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 1616              		.loc 1 1186 0 discriminator 2
 1617 00d0 A1F58061 		sub	r1, r1, #1024
 1618 00d4 4968     		ldr	r1, [r1, #4]
1185:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         ADC_NONMULTIMODE_OR_MULTIMODEMASTER(hadc)  )
 1619              		.loc 1 1185 0 discriminator 2
 1620 00d6 11F4702F 		tst	r1, #983040
 1621 00da D3D1     		bne	.L143
 1622 00dc F3E7     		b	.L144
 1623              	.L137:
1200:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
 1624              		.loc 1 1200 0
 1625 00de 0023     		movs	r3, #0
 1626 00e0 84F82430 		strb	r3, [r4, #36]
 1627              	.L136:
1205:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 1628              		.loc 1 1205 0
 1629 00e4 1046     		mov	r0, r2
 1630              	.LVL87:
 1631 00e6 10BD     		pop	{r4, pc}
 1632              	.LVL88:
 1633              	.L145:
 1634              	.LCFI24:
 1635              		.cfi_def_cfa_offset 0
 1636              		.cfi_restore 4
 1637              		.cfi_restore 14
1111:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 1638              		.loc 1 1111 0
 1639 00e8 0222     		movs	r2, #2
1205:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 1640              		.loc 1 1205 0
 1641 00ea 1046     		mov	r0, r2
 1642              	.LVL89:
 1643 00ec 7047     		bx	lr
 1644              	.L154:
 1645 00ee 00BF     		.align	2
 1646              	.L153:
 1647 00f0 00280140 		.word	1073817600
 1648 00f4 00240140 		.word	1073816576
 1649              		.cfi_endproc
 1650              	.LFE74:
 1652              		.section	.text.HAL_ADC_Start_DMA,"ax",%progbits
 1653              		.align	1
 1654              		.global	HAL_ADC_Start_DMA
 1655              		.syntax unified
 1656              		.thumb
 1657              		.thumb_func
 1658              		.fpu softvfp
 1660              	HAL_ADC_Start_DMA:
 1661              	.LFB76:
1272:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 70


 1662              		.loc 1 1272 0
 1663              		.cfi_startproc
 1664              		@ args = 0, pretend = 0, frame = 0
 1665              		@ frame_needed = 0, uses_anonymous_args = 0
 1666              	.LVL90:
 1667 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1668              	.LCFI25:
 1669              		.cfi_def_cfa_offset 24
 1670              		.cfi_offset 3, -24
 1671              		.cfi_offset 4, -20
 1672              		.cfi_offset 5, -16
 1673              		.cfi_offset 6, -12
 1674              		.cfi_offset 7, -8
 1675              		.cfi_offset 14, -4
 1676              	.LVL91:
1281:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 1677              		.loc 1 1281 0
 1678 0002 0468     		ldr	r4, [r0]
 1679 0004 454D     		ldr	r5, .L171
 1680 0006 AC42     		cmp	r4, r5
 1681 0008 5BD0     		beq	.L156
1281:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 1682              		.loc 1 1281 0 is_stmt 0 discriminator 1
 1683 000a 454B     		ldr	r3, .L171+4
 1684 000c 9C42     		cmp	r4, r3
 1685 000e 58D0     		beq	.L156
 1686              	.L157:
1284:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 1687              		.loc 1 1284 0 is_stmt 1
 1688 0010 90F82440 		ldrb	r4, [r0, #36]	@ zero_extendqisi2
 1689 0014 012C     		cmp	r4, #1
 1690 0016 7ED0     		beq	.L167
 1691 0018 1646     		mov	r6, r2
 1692 001a 0D46     		mov	r5, r1
 1693 001c 0446     		mov	r4, r0
1284:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 1694              		.loc 1 1284 0 is_stmt 0 discriminator 2
 1695 001e 0123     		movs	r3, #1
 1696 0020 80F82430 		strb	r3, [r0, #36]
1287:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 1697              		.loc 1 1287 0 is_stmt 1 discriminator 2
 1698 0024 FFF7FEFF 		bl	ADC_Enable
 1699              	.LVL92:
1290:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 1700              		.loc 1 1290 0 discriminator 2
 1701 0028 0746     		mov	r7, r0
 1702 002a 0028     		cmp	r0, #0
 1703 002c 6ED1     		bne	.L159
1295:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                         HAL_ADC_STATE_READY | HAL_ADC_STATE_REG_EOC | HAL_ADC_STATE_REG_OVR | HAL_A
 1704              		.loc 1 1295 0
 1705 002e A36A     		ldr	r3, [r4, #40]
 1706 0030 23F47063 		bic	r3, r3, #3840
 1707 0034 23F00103 		bic	r3, r3, #1
 1708 0038 43F48073 		orr	r3, r3, #256
 1709 003c A362     		str	r3, [r4, #40]
1302:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 1710              		.loc 1 1302 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 71


 1711 003e 2268     		ldr	r2, [r4]
 1712 0040 374B     		ldr	r3, .L171+4
 1713 0042 9A42     		cmp	r2, r3
 1714 0044 44D0     		beq	.L169
 1715              	.L160:
1305:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
 1716              		.loc 1 1305 0
 1717 0046 A36A     		ldr	r3, [r4, #40]
 1718 0048 23F48013 		bic	r3, r3, #1048576
 1719 004c A362     		str	r3, [r4, #40]
1309:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
 1720              		.loc 1 1309 0
 1721 004e 5368     		ldr	r3, [r2, #4]
 1722 0050 13F4806F 		tst	r3, #1024
 1723 0054 05D0     		beq	.L162
1311:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
 1724              		.loc 1 1311 0
 1725 0056 A36A     		ldr	r3, [r4, #40]
 1726 0058 23F44053 		bic	r3, r3, #12288
 1727 005c 43F48053 		orr	r3, r3, #4096
 1728 0060 A362     		str	r3, [r4, #40]
 1729              	.L162:
1328:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
 1730              		.loc 1 1328 0
 1731 0062 A36A     		ldr	r3, [r4, #40]
 1732 0064 13F4805F 		tst	r3, #4096
 1733 0068 48D0     		beq	.L163
1331:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
 1734              		.loc 1 1331 0
 1735 006a E36A     		ldr	r3, [r4, #44]
 1736 006c 23F00603 		bic	r3, r3, #6
 1737 0070 E362     		str	r3, [r4, #44]
 1738              	.L164:
1342:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
 1739              		.loc 1 1342 0
 1740 0072 0023     		movs	r3, #0
 1741 0074 84F82430 		strb	r3, [r4, #36]
1345:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 1742              		.loc 1 1345 0
 1743 0078 236A     		ldr	r3, [r4, #32]
 1744 007a 2A4A     		ldr	r2, .L171+8
 1745 007c 9A62     		str	r2, [r3, #40]
1348:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
 1746              		.loc 1 1348 0
 1747 007e 236A     		ldr	r3, [r4, #32]
 1748 0080 294A     		ldr	r2, .L171+12
 1749 0082 DA62     		str	r2, [r3, #44]
1351:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 1750              		.loc 1 1351 0
 1751 0084 236A     		ldr	r3, [r4, #32]
 1752 0086 294A     		ldr	r2, .L171+16
 1753 0088 1A63     		str	r2, [r3, #48]
1360:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
 1754              		.loc 1 1360 0
 1755 008a 2368     		ldr	r3, [r4]
 1756 008c 6FF00202 		mvn	r2, #2
 1757 0090 1A60     		str	r2, [r3]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 72


1363:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
 1758              		.loc 1 1363 0
 1759 0092 2268     		ldr	r2, [r4]
 1760 0094 9368     		ldr	r3, [r2, #8]
 1761 0096 43F48073 		orr	r3, r3, #256
 1762 009a 9360     		str	r3, [r2, #8]
1366:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
 1763              		.loc 1 1366 0
 1764 009c 2168     		ldr	r1, [r4]
 1765 009e 3346     		mov	r3, r6
 1766 00a0 2A46     		mov	r2, r5
 1767 00a2 4C31     		adds	r1, r1, #76
 1768 00a4 206A     		ldr	r0, [r4, #32]
 1769              	.LVL93:
 1770 00a6 FFF7FEFF 		bl	HAL_DMA_Start_IT
 1771              	.LVL94:
1372:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
 1772              		.loc 1 1372 0
 1773 00aa 2268     		ldr	r2, [r4]
 1774 00ac 9368     		ldr	r3, [r2, #8]
 1775 00ae 03F46023 		and	r3, r3, #917504
 1776 00b2 B3F5602F 		cmp	r3, #917504
 1777 00b6 24D0     		beq	.L170
1380:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
 1778              		.loc 1 1380 0
 1779 00b8 9368     		ldr	r3, [r2, #8]
 1780 00ba 43F48013 		orr	r3, r3, #1048576
 1781 00be 9360     		str	r3, [r2, #8]
 1782 00c0 27E0     		b	.L158
 1783              	.LVL95:
 1784              	.L156:
1281:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 1785              		.loc 1 1281 0 discriminator 3
 1786 00c2 164B     		ldr	r3, .L171
 1787 00c4 5B68     		ldr	r3, [r3, #4]
 1788 00c6 13F4702F 		tst	r3, #983040
 1789 00ca A1D0     		beq	.L157
1391:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
 1790              		.loc 1 1391 0
 1791 00cc 0127     		movs	r7, #1
 1792 00ce 20E0     		b	.L158
 1793              	.LVL96:
 1794              	.L169:
1302:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 1795              		.loc 1 1302 0 discriminator 1
 1796 00d0 A3F58063 		sub	r3, r3, #1024
 1797 00d4 5B68     		ldr	r3, [r3, #4]
 1798 00d6 13F4702F 		tst	r3, #983040
 1799 00da B4D0     		beq	.L160
1317:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
 1800              		.loc 1 1317 0
 1801 00dc A36A     		ldr	r3, [r4, #40]
 1802 00de 43F48013 		orr	r3, r3, #1048576
 1803 00e2 A362     		str	r3, [r4, #40]
1321:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
 1804              		.loc 1 1321 0
 1805 00e4 0D4B     		ldr	r3, .L171
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 73


 1806 00e6 5B68     		ldr	r3, [r3, #4]
 1807 00e8 13F4806F 		tst	r3, #1024
 1808 00ec B9D0     		beq	.L162
1323:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
 1809              		.loc 1 1323 0
 1810 00ee A36A     		ldr	r3, [r4, #40]
 1811 00f0 23F44053 		bic	r3, r3, #12288
 1812 00f4 43F48053 		orr	r3, r3, #4096
 1813 00f8 A362     		str	r3, [r4, #40]
 1814 00fa B2E7     		b	.L162
 1815              	.L163:
1336:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
 1816              		.loc 1 1336 0
 1817 00fc 0023     		movs	r3, #0
 1818 00fe E362     		str	r3, [r4, #44]
 1819 0100 B7E7     		b	.L164
 1820              	.LVL97:
 1821              	.L170:
1375:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
 1822              		.loc 1 1375 0
 1823 0102 9368     		ldr	r3, [r2, #8]
 1824 0104 43F4A003 		orr	r3, r3, #5242880
 1825 0108 9360     		str	r3, [r2, #8]
 1826 010a 02E0     		b	.L158
 1827              	.LVL98:
 1828              	.L159:
1386:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 1829              		.loc 1 1386 0
 1830 010c 0023     		movs	r3, #0
 1831 010e 84F82430 		strb	r3, [r4, #36]
 1832              	.LVL99:
 1833              	.L158:
1396:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 1834              		.loc 1 1396 0
 1835 0112 3846     		mov	r0, r7
 1836 0114 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1837              	.LVL100:
 1838              	.L167:
1284:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 1839              		.loc 1 1284 0
 1840 0116 0227     		movs	r7, #2
 1841 0118 FBE7     		b	.L158
 1842              	.L172:
 1843 011a 00BF     		.align	2
 1844              	.L171:
 1845 011c 00240140 		.word	1073816576
 1846 0120 00280140 		.word	1073817600
 1847 0124 00000000 		.word	ADC_DMAConvCplt
 1848 0128 00000000 		.word	ADC_DMAHalfConvCplt
 1849 012c 00000000 		.word	ADC_DMAError
 1850              		.cfi_endproc
 1851              	.LFE76:
 1853              		.section	.text.ADC_ConversionStop_Disable,"ax",%progbits
 1854              		.align	1
 1855              		.global	ADC_ConversionStop_Disable
 1856              		.syntax unified
 1857              		.thumb
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 74


 1858              		.thumb_func
 1859              		.fpu softvfp
 1861              	ADC_ConversionStop_Disable:
 1862              	.LFB89:
1988:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   uint32_t tickstart = 0U;
 1863              		.loc 1 1988 0
 1864              		.cfi_startproc
 1865              		@ args = 0, pretend = 0, frame = 0
 1866              		@ frame_needed = 0, uses_anonymous_args = 0
 1867              	.LVL101:
 1868 0000 38B5     		push	{r3, r4, r5, lr}
 1869              	.LCFI26:
 1870              		.cfi_def_cfa_offset 16
 1871              		.cfi_offset 3, -16
 1872              		.cfi_offset 4, -12
 1873              		.cfi_offset 5, -8
 1874              		.cfi_offset 14, -4
 1875              	.LVL102:
1992:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 1876              		.loc 1 1992 0
 1877 0002 0368     		ldr	r3, [r0]
 1878 0004 9A68     		ldr	r2, [r3, #8]
 1879 0006 12F0010F 		tst	r2, #1
 1880 000a 01D1     		bne	.L179
2017:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
 1881              		.loc 1 2017 0
 1882 000c 0020     		movs	r0, #0
 1883              	.LVL103:
 1884              	.L174:
2018:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 1885              		.loc 1 2018 0
 1886 000e 38BD     		pop	{r3, r4, r5, pc}
 1887              	.LVL104:
 1888              	.L179:
 1889 0010 0446     		mov	r4, r0
1995:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****      
 1890              		.loc 1 1995 0
 1891 0012 9A68     		ldr	r2, [r3, #8]
 1892 0014 22F00102 		bic	r2, r2, #1
 1893 0018 9A60     		str	r2, [r3, #8]
1998:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 1894              		.loc 1 1998 0
 1895 001a FFF7FEFF 		bl	HAL_GetTick
 1896              	.LVL105:
 1897 001e 0546     		mov	r5, r0
 1898              	.LVL106:
 1899              	.L175:
2001:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 1900              		.loc 1 2001 0
 1901 0020 2368     		ldr	r3, [r4]
 1902 0022 9B68     		ldr	r3, [r3, #8]
 1903 0024 13F0010F 		tst	r3, #1
 1904 0028 0ED0     		beq	.L180
2003:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
 1905              		.loc 1 2003 0
 1906 002a FFF7FEFF 		bl	HAL_GetTick
 1907              	.LVL107:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 75


 1908 002e 401B     		subs	r0, r0, r5
 1909 0030 0228     		cmp	r0, #2
 1910 0032 F5D9     		bls	.L175
2006:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         
 1911              		.loc 1 2006 0
 1912 0034 A36A     		ldr	r3, [r4, #40]
 1913 0036 43F01003 		orr	r3, r3, #16
 1914 003a A362     		str	r3, [r4, #40]
2009:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         
 1915              		.loc 1 2009 0
 1916 003c E36A     		ldr	r3, [r4, #44]
 1917 003e 43F00103 		orr	r3, r3, #1
 1918 0042 E362     		str	r3, [r4, #44]
2011:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
 1919              		.loc 1 2011 0
 1920 0044 0120     		movs	r0, #1
 1921 0046 E2E7     		b	.L174
 1922              	.L180:
2017:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** }
 1923              		.loc 1 2017 0
 1924 0048 0020     		movs	r0, #0
 1925 004a E0E7     		b	.L174
 1926              		.cfi_endproc
 1927              	.LFE89:
 1929              		.section	.text.HAL_ADC_Init,"ax",%progbits
 1930              		.align	1
 1931              		.global	HAL_ADC_Init
 1932              		.syntax unified
 1933              		.thumb
 1934              		.thumb_func
 1935              		.fpu softvfp
 1937              	HAL_ADC_Init:
 1938              	.LFB66:
 373:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 1939              		.loc 1 373 0
 1940              		.cfi_startproc
 1941              		@ args = 0, pretend = 0, frame = 0
 1942              		@ frame_needed = 0, uses_anonymous_args = 0
 1943              	.LVL108:
 380:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 1944              		.loc 1 380 0
 1945 0000 0028     		cmp	r0, #0
 1946 0002 7FD0     		beq	.L191
 373:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 1947              		.loc 1 373 0
 1948 0004 38B5     		push	{r3, r4, r5, lr}
 1949              	.LCFI27:
 1950              		.cfi_def_cfa_offset 16
 1951              		.cfi_offset 3, -16
 1952              		.cfi_offset 4, -12
 1953              		.cfi_offset 5, -8
 1954              		.cfi_offset 14, -4
 1955 0006 0446     		mov	r4, r0
 409:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 1956              		.loc 1 409 0
 1957 0008 836A     		ldr	r3, [r0, #40]
 1958 000a 002B     		cmp	r3, #0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 76


 1959 000c 33D0     		beq	.L198
 1960              	.LVL109:
 1961              	.L183:
 426:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 1962              		.loc 1 426 0
 1963 000e 2046     		mov	r0, r4
 1964 0010 FFF7FEFF 		bl	ADC_ConversionStop_Disable
 1965              	.LVL110:
 431:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (tmp_hal_status == HAL_OK)                                  )
 1966              		.loc 1 431 0
 1967 0014 A36A     		ldr	r3, [r4, #40]
 1968 0016 13F01003 		ands	r3, r3, #16
 1969 001a 6DD1     		bne	.L184
 431:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       (tmp_hal_status == HAL_OK)                                  )
 1970              		.loc 1 431 0 is_stmt 0 discriminator 1
 1971 001c 0028     		cmp	r0, #0
 1972 001e 6BD1     		bne	.L184
 435:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                       HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 1973              		.loc 1 435 0 is_stmt 1
 1974 0020 A26A     		ldr	r2, [r4, #40]
 1975 0022 22F48852 		bic	r2, r2, #4352
 1976 0026 22F00202 		bic	r2, r2, #2
 1977 002a 42F00202 		orr	r2, r2, #2
 1978 002e A262     		str	r2, [r4, #40]
 451:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 ADC_CFGR_EXTSEL(hadc, hadc->Init.ExternalTrigConv) |
 1979              		.loc 1 451 0
 1980 0030 6268     		ldr	r2, [r4, #4]
 452:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 ADC_CR2_CONTINUOUS(hadc->Init.ContinuousConvMode)   );
 1981              		.loc 1 452 0
 1982 0032 E169     		ldr	r1, [r4, #28]
 451:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 ADC_CFGR_EXTSEL(hadc, hadc->Init.ExternalTrigConv) |
 1983              		.loc 1 451 0
 1984 0034 0A43     		orrs	r2, r2, r1
 453:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 1985              		.loc 1 453 0
 1986 0036 E568     		ldr	r5, [r4, #12]
 452:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                 ADC_CR2_CONTINUOUS(hadc->Init.ContinuousConvMode)   );
 1987              		.loc 1 452 0
 1988 0038 42EA4502 		orr	r2, r2, r5, lsl #1
 1989              	.LVL111:
 459:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 1990              		.loc 1 459 0
 1991 003c A168     		ldr	r1, [r4, #8]
 1992 003e B1F5807F 		cmp	r1, #256
 1993 0042 21D0     		beq	.L192
 459:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 1994              		.loc 1 459 0 is_stmt 0 discriminator 2
 1995 0044 0129     		cmp	r1, #1
 1996 0046 1CD0     		beq	.L199
 1997              	.L185:
 1998              	.LVL112:
 464:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 1999              		.loc 1 464 0 is_stmt 1 discriminator 6
 2000 0048 6169     		ldr	r1, [r4, #20]
 2001 004a 0129     		cmp	r1, #1
 2002 004c 1FD0     		beq	.L200
 2003              	.L186:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 77


 487:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                  ADC_CR1_SCAN    |
 2004              		.loc 1 487 0
 2005 004e 2568     		ldr	r5, [r4]
 2006 0050 6968     		ldr	r1, [r5, #4]
 2007 0052 21F46941 		bic	r1, r1, #59648
 2008 0056 0B43     		orrs	r3, r3, r1
 2009              	.LVL113:
 2010 0058 6B60     		str	r3, [r5, #4]
 494:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                  ADC_CR2_ALIGN   |
 2011              		.loc 1 494 0
 2012 005a 2168     		ldr	r1, [r4]
 2013 005c 8D68     		ldr	r5, [r1, #8]
 2014 005e 2A4B     		ldr	r3, .L202
 2015 0060 2B40     		ands	r3, r3, r5
 2016 0062 1343     		orrs	r3, r3, r2
 2017 0064 8B60     		str	r3, [r1, #8]
 510:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 2018              		.loc 1 510 0
 2019 0066 A368     		ldr	r3, [r4, #8]
 2020 0068 B3F5807F 		cmp	r3, #256
 2021 006c 20D0     		beq	.L188
 510:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 2022              		.loc 1 510 0 is_stmt 0 discriminator 1
 2023 006e 012B     		cmp	r3, #1
 2024 0070 1ED0     		beq	.L188
 377:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 2025              		.loc 1 377 0 is_stmt 1
 2026 0072 0021     		movs	r1, #0
 2027 0074 1FE0     		b	.L189
 2028              	.LVL114:
 2029              	.L198:
 412:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 2030              		.loc 1 412 0
 2031 0076 C362     		str	r3, [r0, #44]
 415:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 2032              		.loc 1 415 0
 2033 0078 80F82430 		strb	r3, [r0, #36]
 418:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
 2034              		.loc 1 418 0
 2035 007c FFF7FEFF 		bl	HAL_ADC_MspInit
 2036              	.LVL115:
 2037 0080 C5E7     		b	.L183
 2038              	.LVL116:
 2039              	.L199:
 459:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 2040              		.loc 1 459 0
 2041 0082 4FF48073 		mov	r3, #256
 2042 0086 DFE7     		b	.L185
 2043              	.L192:
 2044 0088 4FF48073 		mov	r3, #256
 2045 008c DCE7     		b	.L185
 2046              	.LVL117:
 2047              	.L200:
 466:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       {
 2048              		.loc 1 466 0
 2049 008e 35B9     		cbnz	r5, .L187
 470:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                          ADC_CR1_DISCONTINUOUS_NUM(hadc->Init.NbrOfDiscConversion)  );
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 78


 2050              		.loc 1 470 0
 2051 0090 A169     		ldr	r1, [r4, #24]
 2052 0092 0139     		subs	r1, r1, #1
 2053 0094 43EA4133 		orr	r3, r3, r1, lsl #13
 2054              	.LVL118:
 2055 0098 43F40063 		orr	r3, r3, #2048
 2056              	.LVL119:
 2057 009c D7E7     		b	.L186
 2058              	.L187:
 479:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         
 2059              		.loc 1 479 0
 2060 009e A16A     		ldr	r1, [r4, #40]
 2061 00a0 41F02001 		orr	r1, r1, #32
 2062 00a4 A162     		str	r1, [r4, #40]
 482:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       }
 2063              		.loc 1 482 0
 2064 00a6 E16A     		ldr	r1, [r4, #44]
 2065 00a8 41F00101 		orr	r1, r1, #1
 2066 00ac E162     		str	r1, [r4, #44]
 2067 00ae CEE7     		b	.L186
 2068              	.LVL120:
 2069              	.L188:
 512:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 2070              		.loc 1 512 0
 2071 00b0 2369     		ldr	r3, [r4, #16]
 2072 00b2 013B     		subs	r3, r3, #1
 2073 00b4 1905     		lsls	r1, r3, #20
 2074              	.LVL121:
 2075              	.L189:
 515:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                ADC_SQR1_L          ,
 2076              		.loc 1 515 0
 2077 00b6 2568     		ldr	r5, [r4]
 2078 00b8 EB6A     		ldr	r3, [r5, #44]
 2079 00ba 23F47003 		bic	r3, r3, #15728640
 2080 00be 0B43     		orrs	r3, r3, r1
 2081 00c0 EB62     		str	r3, [r5, #44]
 525:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                         ADC_CR2_SWSTART | ADC_CR2_JSWSTART |
 2082              		.loc 1 525 0
 2083 00c2 2368     		ldr	r3, [r4]
 2084 00c4 9968     		ldr	r1, [r3, #8]
 2085              	.LVL122:
 2086 00c6 114B     		ldr	r3, .L202+4
 2087 00c8 0B40     		ands	r3, r3, r1
 2088 00ca 9A42     		cmp	r2, r3
 2089 00cc 0BD0     		beq	.L201
 542:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                         HAL_ADC_STATE_BUSY_INTERNAL,
 2090              		.loc 1 542 0
 2091 00ce A36A     		ldr	r3, [r4, #40]
 2092 00d0 23F01203 		bic	r3, r3, #18
 2093 00d4 43F01003 		orr	r3, r3, #16
 2094 00d8 A362     		str	r3, [r4, #40]
 547:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
 2095              		.loc 1 547 0
 2096 00da E36A     		ldr	r3, [r4, #44]
 2097 00dc 43F00103 		orr	r3, r3, #1
 2098 00e0 E362     		str	r3, [r4, #44]
 2099              	.LVL123:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 79


 549:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 2100              		.loc 1 549 0
 2101 00e2 0120     		movs	r0, #1
 2102 00e4 0DE0     		b	.L182
 2103              	.LVL124:
 2104              	.L201:
 532:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****       
 2105              		.loc 1 532 0
 2106 00e6 0023     		movs	r3, #0
 2107 00e8 E362     		str	r3, [r4, #44]
 535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                         HAL_ADC_STATE_BUSY_INTERNAL,
 2108              		.loc 1 535 0
 2109 00ea A36A     		ldr	r3, [r4, #40]
 2110 00ec 23F00303 		bic	r3, r3, #3
 2111 00f0 43F00103 		orr	r3, r3, #1
 2112 00f4 A362     		str	r3, [r4, #40]
 2113 00f6 04E0     		b	.L182
 2114              	.LVL125:
 2115              	.L184:
 556:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****         
 2116              		.loc 1 556 0
 2117 00f8 A36A     		ldr	r3, [r4, #40]
 2118 00fa 43F01003 		orr	r3, r3, #16
 2119 00fe A362     		str	r3, [r4, #40]
 2120              	.LVL126:
 558:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
 2121              		.loc 1 558 0
 2122 0100 0120     		movs	r0, #1
 2123              	.LVL127:
 2124              	.L182:
 563:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 2125              		.loc 1 563 0
 2126 0102 38BD     		pop	{r3, r4, r5, pc}
 2127              	.LVL128:
 2128              	.L191:
 2129              	.LCFI28:
 2130              		.cfi_def_cfa_offset 0
 2131              		.cfi_restore 3
 2132              		.cfi_restore 4
 2133              		.cfi_restore 5
 2134              		.cfi_restore 14
 382:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
 2135              		.loc 1 382 0
 2136 0104 0120     		movs	r0, #1
 2137              	.LVL129:
 563:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 2138              		.loc 1 563 0
 2139 0106 7047     		bx	lr
 2140              	.L203:
 2141              		.align	2
 2142              	.L202:
 2143 0108 FDF7E1FF 		.word	-1968131
 2144 010c FE0E1FFF 		.word	-14741762
 2145              		.cfi_endproc
 2146              	.LFE66:
 2148              		.section	.text.HAL_ADC_DeInit,"ax",%progbits
 2149              		.align	1
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 80


 2150              		.global	HAL_ADC_DeInit
 2151              		.syntax unified
 2152              		.thumb
 2153              		.thumb_func
 2154              		.fpu softvfp
 2156              	HAL_ADC_DeInit:
 2157              	.LFB67:
 574:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 2158              		.loc 1 574 0
 2159              		.cfi_startproc
 2160              		@ args = 0, pretend = 0, frame = 0
 2161              		@ frame_needed = 0, uses_anonymous_args = 0
 2162              	.LVL130:
 2163 0000 38B5     		push	{r3, r4, r5, lr}
 2164              	.LCFI29:
 2165              		.cfi_def_cfa_offset 16
 2166              		.cfi_offset 3, -16
 2167              		.cfi_offset 4, -12
 2168              		.cfi_offset 5, -8
 2169              		.cfi_offset 14, -4
 2170              	.LVL131:
 578:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 2171              		.loc 1 578 0
 2172 0002 0028     		cmp	r0, #0
 2173 0004 74D0     		beq	.L207
 2174 0006 0446     		mov	r4, r0
 587:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 2175              		.loc 1 587 0
 2176 0008 836A     		ldr	r3, [r0, #40]
 2177 000a 43F00203 		orr	r3, r3, #2
 2178 000e 8362     		str	r3, [r0, #40]
 591:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 2179              		.loc 1 591 0
 2180 0010 FFF7FEFF 		bl	ADC_ConversionStop_Disable
 2181              	.LVL132:
 596:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 2182              		.loc 1 596 0
 2183 0014 0546     		mov	r5, r0
 2184 0016 20B1     		cbz	r0, .L209
 2185              	.LVL133:
 2186              	.L206:
 700:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 2187              		.loc 1 700 0
 2188 0018 0023     		movs	r3, #0
 2189 001a 84F82430 		strb	r3, [r4, #36]
 2190              	.LVL134:
 2191              	.L205:
 704:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 2192              		.loc 1 704 0
 2193 001e 2846     		mov	r0, r5
 2194 0020 38BD     		pop	{r3, r4, r5, pc}
 2195              	.LVL135:
 2196              	.L209:
 604:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                 ADC_FLAG_JSTRT | ADC_FLAG_STRT));
 2197              		.loc 1 604 0
 2198 0022 2368     		ldr	r3, [r4]
 2199 0024 6FF01F02 		mvn	r2, #31
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 81


 2200 0028 1A60     		str	r2, [r3]
 608:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                     ADC_CR1_JDISCEN | ADC_CR1_DISCEN | ADC_CR1_JAUTO   | 
 2201              		.loc 1 608 0
 2202 002a 2268     		ldr	r2, [r4]
 2203 002c 5168     		ldr	r1, [r2, #4]
 2204 002e 314B     		ldr	r3, .L210
 2205 0030 0B40     		ands	r3, r3, r1
 2206 0032 5360     		str	r3, [r2, #4]
 614:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                     ADC_CR2_EXTTRIG | ADC_CR2_EXTSEL  | ADC_CR2_JEXTTRIG |  
 2207              		.loc 1 614 0
 2208 0034 2268     		ldr	r2, [r4]
 2209 0036 9168     		ldr	r1, [r2, #8]
 2210 0038 2F4B     		ldr	r3, .L210+4
 2211 003a 0B40     		ands	r3, r3, r1
 2212 003c 9360     		str	r3, [r2, #8]
 621:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                       ADC_SMPR1_SMP14 | ADC_SMPR1_SMP13 | ADC_SMPR1_SMP12 | 
 2213              		.loc 1 621 0
 2214 003e 2268     		ldr	r2, [r4]
 2215 0040 D368     		ldr	r3, [r2, #12]
 2216 0042 03F07F43 		and	r3, r3, #-16777216
 2217 0046 D360     		str	r3, [r2, #12]
 626:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                       ADC_SMPR2_SMP6 | ADC_SMPR2_SMP5 | ADC_SMPR2_SMP4 | 
 2218              		.loc 1 626 0
 2219 0048 2268     		ldr	r2, [r4]
 2220 004a 1369     		ldr	r3, [r2, #16]
 2221 004c 03F04043 		and	r3, r3, #-1073741824
 2222 0050 1361     		str	r3, [r2, #16]
 632:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Reset register JOFR2 */
 2223              		.loc 1 632 0
 2224 0052 2268     		ldr	r2, [r4]
 2225 0054 5369     		ldr	r3, [r2, #20]
 2226 0056 23F47F63 		bic	r3, r3, #4080
 2227 005a 23F00F03 		bic	r3, r3, #15
 2228 005e 5361     		str	r3, [r2, #20]
 634:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Reset register JOFR3 */
 2229              		.loc 1 634 0
 2230 0060 2268     		ldr	r2, [r4]
 2231 0062 9369     		ldr	r3, [r2, #24]
 2232 0064 23F47F63 		bic	r3, r3, #4080
 2233 0068 23F00F03 		bic	r3, r3, #15
 2234 006c 9361     		str	r3, [r2, #24]
 636:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Reset register JOFR4 */
 2235              		.loc 1 636 0
 2236 006e 2268     		ldr	r2, [r4]
 2237 0070 D369     		ldr	r3, [r2, #28]
 2238 0072 23F47F63 		bic	r3, r3, #4080
 2239 0076 23F00F03 		bic	r3, r3, #15
 2240 007a D361     		str	r3, [r2, #28]
 638:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 2241              		.loc 1 638 0
 2242 007c 2268     		ldr	r2, [r4]
 2243 007e 136A     		ldr	r3, [r2, #32]
 2244 0080 23F47F63 		bic	r3, r3, #4080
 2245 0084 23F00F03 		bic	r3, r3, #15
 2246 0088 1362     		str	r3, [r2, #32]
 641:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     /* Reset register LTR */
 2247              		.loc 1 641 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 82


 2248 008a 2268     		ldr	r2, [r4]
 2249 008c 536A     		ldr	r3, [r2, #36]
 2250 008e 23F47F63 		bic	r3, r3, #4080
 2251 0092 23F00F03 		bic	r3, r3, #15
 2252 0096 5362     		str	r3, [r2, #36]
 643:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 2253              		.loc 1 643 0
 2254 0098 2268     		ldr	r2, [r4]
 2255 009a 936A     		ldr	r3, [r2, #40]
 2256 009c 23F47F63 		bic	r3, r3, #4080
 2257 00a0 23F00F03 		bic	r3, r3, #15
 2258 00a4 9362     		str	r3, [r2, #40]
 646:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                     ADC_SQR1_SQ16 | ADC_SQR1_SQ15 | 
 2259              		.loc 1 646 0
 2260 00a6 2268     		ldr	r2, [r4]
 2261 00a8 D36A     		ldr	r3, [r2, #44]
 2262 00aa 03F07F43 		and	r3, r3, #-16777216
 2263 00ae D362     		str	r3, [r2, #44]
 651:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                     ADC_SQR1_SQ16 | ADC_SQR1_SQ15 | 
 2264              		.loc 1 651 0
 2265 00b0 2268     		ldr	r2, [r4]
 2266 00b2 D36A     		ldr	r3, [r2, #44]
 2267 00b4 03F07F43 		and	r3, r3, #-16777216
 2268 00b8 D362     		str	r3, [r2, #44]
 656:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                     ADC_SQR2_SQ9  | ADC_SQR2_SQ8  | ADC_SQR2_SQ7   );
 2269              		.loc 1 656 0
 2270 00ba 2268     		ldr	r2, [r4]
 2271 00bc 136B     		ldr	r3, [r2, #48]
 2272 00be 03F04043 		and	r3, r3, #-1073741824
 2273 00c2 1363     		str	r3, [r2, #48]
 660:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                     ADC_SQR3_SQ3 | ADC_SQR3_SQ2 | ADC_SQR3_SQ1  );
 2274              		.loc 1 660 0
 2275 00c4 2268     		ldr	r2, [r4]
 2276 00c6 536B     		ldr	r3, [r2, #52]
 2277 00c8 03F04043 		and	r3, r3, #-1073741824
 2278 00cc 5363     		str	r3, [r2, #52]
 664:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                     ADC_JSQR_JSQ4 | ADC_JSQR_JSQ3 | 
 2279              		.loc 1 664 0
 2280 00ce 2268     		ldr	r2, [r4]
 2281 00d0 936B     		ldr	r3, [r2, #56]
 2282 00d2 9B0D     		lsrs	r3, r3, #22
 2283 00d4 9B05     		lsls	r3, r3, #22
 2284 00d6 9363     		str	r3, [r2, #56]
 669:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                                     ADC_JSQR_JSQ4 | ADC_JSQR_JSQ3 | 
 2285              		.loc 1 669 0
 2286 00d8 2268     		ldr	r2, [r4]
 2287 00da 936B     		ldr	r3, [r2, #56]
 2288 00dc 9B0D     		lsrs	r3, r3, #22
 2289 00de 9B05     		lsls	r3, r3, #22
 2290 00e0 9363     		str	r3, [r2, #56]
 689:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 2291              		.loc 1 689 0
 2292 00e2 2046     		mov	r0, r4
 2293              	.LVL136:
 2294 00e4 FFF7FEFF 		bl	HAL_ADC_MspDeInit
 2295              	.LVL137:
 692:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 83


 2296              		.loc 1 692 0
 2297 00e8 0023     		movs	r3, #0
 2298 00ea E362     		str	r3, [r4, #44]
 695:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 2299              		.loc 1 695 0
 2300 00ec A362     		str	r3, [r4, #40]
 2301 00ee 93E7     		b	.L206
 2302              	.LVL138:
 2303              	.L207:
 580:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   }
 2304              		.loc 1 580 0
 2305 00f0 0125     		movs	r5, #1
 2306 00f2 94E7     		b	.L205
 2307              	.L211:
 2308              		.align	2
 2309              	.L210:
 2310 00f4 00003FFF 		.word	-12648448
 2311 00f8 F00601FF 		.word	-16709904
 2312              		.cfi_endproc
 2313              	.LFE67:
 2315              		.section	.text.HAL_ADC_Stop,"ax",%progbits
 2316              		.align	1
 2317              		.global	HAL_ADC_Stop
 2318              		.syntax unified
 2319              		.thumb
 2320              		.thumb_func
 2321              		.fpu softvfp
 2323              	HAL_ADC_Stop:
 2324              	.LFB71:
 880:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 2325              		.loc 1 880 0
 2326              		.cfi_startproc
 2327              		@ args = 0, pretend = 0, frame = 0
 2328              		@ frame_needed = 0, uses_anonymous_args = 0
 2329              	.LVL139:
 887:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 2330              		.loc 1 887 0
 2331 0000 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 2332 0004 012B     		cmp	r3, #1
 2333 0006 15D0     		beq	.L215
 880:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 2334              		.loc 1 880 0 discriminator 2
 2335 0008 10B5     		push	{r4, lr}
 2336              	.LCFI30:
 2337              		.cfi_def_cfa_offset 8
 2338              		.cfi_offset 4, -8
 2339              		.cfi_offset 14, -4
 2340 000a 0446     		mov	r4, r0
 887:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 2341              		.loc 1 887 0 discriminator 2
 2342 000c 0123     		movs	r3, #1
 2343 000e 80F82430 		strb	r3, [r0, #36]
 891:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 2344              		.loc 1 891 0 discriminator 2
 2345 0012 FFF7FEFF 		bl	ADC_ConversionStop_Disable
 2346              	.LVL140:
 894:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 84


 2347              		.loc 1 894 0 discriminator 2
 2348 0016 0246     		mov	r2, r0
 2349 0018 38B9     		cbnz	r0, .L214
 897:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                       HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 2350              		.loc 1 897 0
 2351 001a A36A     		ldr	r3, [r4, #40]
 2352 001c 23F48853 		bic	r3, r3, #4352
 2353 0020 23F00103 		bic	r3, r3, #1
 2354 0024 43F00103 		orr	r3, r3, #1
 2355 0028 A362     		str	r3, [r4, #40]
 2356              	.L214:
 903:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 2357              		.loc 1 903 0
 2358 002a 0023     		movs	r3, #0
 2359 002c 84F82430 		strb	r3, [r4, #36]
 907:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 2360              		.loc 1 907 0
 2361 0030 1046     		mov	r0, r2
 2362              	.LVL141:
 2363 0032 10BD     		pop	{r4, pc}
 2364              	.LVL142:
 2365              	.L215:
 2366              	.LCFI31:
 2367              		.cfi_def_cfa_offset 0
 2368              		.cfi_restore 4
 2369              		.cfi_restore 14
 887:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 2370              		.loc 1 887 0
 2371 0034 0222     		movs	r2, #2
 907:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 2372              		.loc 1 907 0
 2373 0036 1046     		mov	r0, r2
 2374              	.LVL143:
 2375 0038 7047     		bx	lr
 2376              		.cfi_endproc
 2377              	.LFE71:
 2379              		.section	.text.HAL_ADC_Stop_IT,"ax",%progbits
 2380              		.align	1
 2381              		.global	HAL_ADC_Stop_IT
 2382              		.syntax unified
 2383              		.thumb
 2384              		.thumb_func
 2385              		.fpu softvfp
 2387              	HAL_ADC_Stop_IT:
 2388              	.LFB75:
1215:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 2389              		.loc 1 1215 0
 2390              		.cfi_startproc
 2391              		@ args = 0, pretend = 0, frame = 0
 2392              		@ frame_needed = 0, uses_anonymous_args = 0
 2393              	.LVL144:
1222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 2394              		.loc 1 1222 0
 2395 0000 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 2396 0004 012B     		cmp	r3, #1
 2397 0006 1AD0     		beq	.L223
1215:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 85


 2398              		.loc 1 1215 0 discriminator 2
 2399 0008 10B5     		push	{r4, lr}
 2400              	.LCFI32:
 2401              		.cfi_def_cfa_offset 8
 2402              		.cfi_offset 4, -8
 2403              		.cfi_offset 14, -4
 2404 000a 0446     		mov	r4, r0
1222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 2405              		.loc 1 1222 0 discriminator 2
 2406 000c 0123     		movs	r3, #1
 2407 000e 80F82430 		strb	r3, [r0, #36]
1226:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 2408              		.loc 1 1226 0 discriminator 2
 2409 0012 FFF7FEFF 		bl	ADC_ConversionStop_Disable
 2410              	.LVL145:
1229:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 2411              		.loc 1 1229 0 discriminator 2
 2412 0016 0246     		mov	r2, r0
 2413 0018 60B9     		cbnz	r0, .L222
1232:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 2414              		.loc 1 1232 0
 2415 001a 2168     		ldr	r1, [r4]
 2416 001c 4B68     		ldr	r3, [r1, #4]
 2417 001e 23F02003 		bic	r3, r3, #32
 2418 0022 4B60     		str	r3, [r1, #4]
1235:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                       HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 2419              		.loc 1 1235 0
 2420 0024 A36A     		ldr	r3, [r4, #40]
 2421 0026 23F48853 		bic	r3, r3, #4352
 2422 002a 23F00103 		bic	r3, r3, #1
 2423 002e 43F00103 		orr	r3, r3, #1
 2424 0032 A362     		str	r3, [r4, #40]
 2425              	.L222:
1241:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 2426              		.loc 1 1241 0
 2427 0034 0023     		movs	r3, #0
 2428 0036 84F82430 		strb	r3, [r4, #36]
1245:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 2429              		.loc 1 1245 0
 2430 003a 1046     		mov	r0, r2
 2431              	.LVL146:
 2432 003c 10BD     		pop	{r4, pc}
 2433              	.LVL147:
 2434              	.L223:
 2435              	.LCFI33:
 2436              		.cfi_def_cfa_offset 0
 2437              		.cfi_restore 4
 2438              		.cfi_restore 14
1222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 2439              		.loc 1 1222 0
 2440 003e 0222     		movs	r2, #2
1245:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 2441              		.loc 1 1245 0
 2442 0040 1046     		mov	r0, r2
 2443              	.LVL148:
 2444 0042 7047     		bx	lr
 2445              		.cfi_endproc
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 86


 2446              	.LFE75:
 2448              		.section	.text.HAL_ADC_Stop_DMA,"ax",%progbits
 2449              		.align	1
 2450              		.global	HAL_ADC_Stop_DMA
 2451              		.syntax unified
 2452              		.thumb
 2453              		.thumb_func
 2454              		.fpu softvfp
 2456              	HAL_ADC_Stop_DMA:
 2457              	.LFB77:
1413:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 2458              		.loc 1 1413 0
 2459              		.cfi_startproc
 2460              		@ args = 0, pretend = 0, frame = 0
 2461              		@ frame_needed = 0, uses_anonymous_args = 0
 2462              	.LVL149:
1420:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 2463              		.loc 1 1420 0
 2464 0000 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 2465 0004 012B     		cmp	r3, #1
 2466 0006 25D0     		beq	.L232
1413:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 2467              		.loc 1 1413 0 discriminator 2
 2468 0008 10B5     		push	{r4, lr}
 2469              	.LCFI34:
 2470              		.cfi_def_cfa_offset 8
 2471              		.cfi_offset 4, -8
 2472              		.cfi_offset 14, -4
 2473 000a 0446     		mov	r4, r0
1420:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 2474              		.loc 1 1420 0 discriminator 2
 2475 000c 0123     		movs	r3, #1
 2476 000e 80F82430 		strb	r3, [r0, #36]
1424:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 2477              		.loc 1 1424 0 discriminator 2
 2478 0012 FFF7FEFF 		bl	ADC_ConversionStop_Disable
 2479              	.LVL150:
1427:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   {
 2480              		.loc 1 1427 0 discriminator 2
 2481 0016 0346     		mov	r3, r0
 2482 0018 20B1     		cbz	r0, .L237
 2483              	.L230:
 2484              	.LVL151:
1452:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 2485              		.loc 1 1452 0
 2486 001a 0022     		movs	r2, #0
 2487 001c 84F82420 		strb	r2, [r4, #36]
1456:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 2488              		.loc 1 1456 0
 2489 0020 1846     		mov	r0, r3
 2490 0022 10BD     		pop	{r4, pc}
 2491              	.LVL152:
 2492              	.L237:
1430:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 2493              		.loc 1 1430 0
 2494 0024 2268     		ldr	r2, [r4]
 2495 0026 9368     		ldr	r3, [r2, #8]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 87


 2496 0028 23F48073 		bic	r3, r3, #256
 2497 002c 9360     		str	r3, [r2, #8]
1434:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     
 2498              		.loc 1 1434 0
 2499 002e 206A     		ldr	r0, [r4, #32]
 2500              	.LVL153:
 2501 0030 FFF7FEFF 		bl	HAL_DMA_Abort
 2502              	.LVL154:
1437:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     {
 2503              		.loc 1 1437 0
 2504 0034 0346     		mov	r3, r0
 2505 0036 40B9     		cbnz	r0, .L231
1440:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****                         HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 2506              		.loc 1 1440 0
 2507 0038 A26A     		ldr	r2, [r4, #40]
 2508 003a 22F48852 		bic	r2, r2, #4352
 2509 003e 22F00102 		bic	r2, r2, #1
 2510 0042 42F00102 		orr	r2, r2, #1
 2511 0046 A262     		str	r2, [r4, #40]
 2512 0048 E7E7     		b	.L230
 2513              	.L231:
1447:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****     }
 2514              		.loc 1 1447 0
 2515 004a A26A     		ldr	r2, [r4, #40]
 2516 004c 42F04002 		orr	r2, r2, #64
 2517 0050 A262     		str	r2, [r4, #40]
 2518 0052 E2E7     		b	.L230
 2519              	.LVL155:
 2520              	.L232:
 2521              	.LCFI35:
 2522              		.cfi_def_cfa_offset 0
 2523              		.cfi_restore 4
 2524              		.cfi_restore 14
1420:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c ****   
 2525              		.loc 1 1420 0
 2526 0054 0223     		movs	r3, #2
1456:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_adc.c **** 
 2527              		.loc 1 1456 0
 2528 0056 1846     		mov	r0, r3
 2529              	.LVL156:
 2530 0058 7047     		bx	lr
 2531              		.cfi_endproc
 2532              	.LFE77:
 2534              		.text
 2535              	.Letext0:
 2536              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 2537              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 2538              		.file 4 "Drivers/CMSIS/Include/core_cm3.h"
 2539              		.file 5 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/system_stm32f1xx.h"
 2540              		.file 6 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
 2541              		.file 7 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"
 2542              		.file 8 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 2543              		.file 9 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 2544              		.file 10 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\lib\\gcc\\arm-none-ea
 2545              		.file 11 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\includ
 2546              		.file 12 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"
 2547              		.file 13 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma.h"
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 88


 2548              		.file 14 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc.h"
 2549              		.file 15 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"
 2550              		.file 16 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc_ex.h"
 2551              		.file 17 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 89


DEFINED SYMBOLS
                            *ABS*:00000000 stm32f1xx_hal_adc.c
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:16     .text.HAL_ADC_MspInit:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:23     .text.HAL_ADC_MspInit:00000000 HAL_ADC_MspInit
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:38     .text.HAL_ADC_MspDeInit:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:45     .text.HAL_ADC_MspDeInit:00000000 HAL_ADC_MspDeInit
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:59     .text.HAL_ADC_PollForConversion:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:66     .text.HAL_ADC_PollForConversion:00000000 HAL_ADC_PollForConversion
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:321    .text.HAL_ADC_PollForConversion:0000015c $d
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:330    .text.HAL_ADC_PollForEvent:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:337    .text.HAL_ADC_PollForEvent:00000000 HAL_ADC_PollForEvent
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:407    .text.HAL_ADC_GetValue:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:414    .text.HAL_ADC_GetValue:00000000 HAL_ADC_GetValue
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:432    .text.HAL_ADC_ConvCpltCallback:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:439    .text.HAL_ADC_ConvCpltCallback:00000000 HAL_ADC_ConvCpltCallback
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:453    .text.ADC_DMAConvCplt:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:460    .text.ADC_DMAConvCplt:00000000 ADC_DMAConvCplt
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:531    .text.HAL_ADC_ConvHalfCpltCallback:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:538    .text.HAL_ADC_ConvHalfCpltCallback:00000000 HAL_ADC_ConvHalfCpltCallback
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:552    .text.ADC_DMAHalfConvCplt:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:559    .text.ADC_DMAHalfConvCplt:00000000 ADC_DMAHalfConvCplt
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:583    .text.HAL_ADC_LevelOutOfWindowCallback:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:590    .text.HAL_ADC_LevelOutOfWindowCallback:00000000 HAL_ADC_LevelOutOfWindowCallback
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:604    .text.HAL_ADC_IRQHandler:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:611    .text.HAL_ADC_IRQHandler:00000000 HAL_ADC_IRQHandler
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:782    .text.HAL_ADC_ErrorCallback:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:789    .text.HAL_ADC_ErrorCallback:00000000 HAL_ADC_ErrorCallback
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:803    .text.ADC_DMAError:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:810    .text.ADC_DMAError:00000000 ADC_DMAError
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:842    .text.HAL_ADC_ConfigChannel:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:849    .text.HAL_ADC_ConfigChannel:00000000 HAL_ADC_ConfigChannel
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:1058   .text.HAL_ADC_ConfigChannel:0000012c $d
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:1065   .text.HAL_ADC_AnalogWDGConfig:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:1072   .text.HAL_ADC_AnalogWDGConfig:00000000 HAL_ADC_AnalogWDGConfig
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:1158   .text.HAL_ADC_AnalogWDGConfig:0000005c $d
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:1163   .text.HAL_ADC_GetState:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:1170   .text.HAL_ADC_GetState:00000000 HAL_ADC_GetState
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:1187   .text.HAL_ADC_GetError:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:1194   .text.HAL_ADC_GetError:00000000 HAL_ADC_GetError
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:1211   .text.ADC_Enable:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:1218   .text.ADC_Enable:00000000 ADC_Enable
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:1316   .text.ADC_Enable:00000078 $d
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:1322   .text.HAL_ADC_Start:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:1329   .text.HAL_ADC_Start:00000000 HAL_ADC_Start
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:1479   .text.HAL_ADC_Start:000000e4 $d
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:1485   .text.HAL_ADC_Start_IT:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:1492   .text.HAL_ADC_Start_IT:00000000 HAL_ADC_Start_IT
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:1647   .text.HAL_ADC_Start_IT:000000f0 $d
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:1653   .text.HAL_ADC_Start_DMA:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:1660   .text.HAL_ADC_Start_DMA:00000000 HAL_ADC_Start_DMA
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:1845   .text.HAL_ADC_Start_DMA:0000011c $d
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:1854   .text.ADC_ConversionStop_Disable:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:1861   .text.ADC_ConversionStop_Disable:00000000 ADC_ConversionStop_Disable
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:1930   .text.HAL_ADC_Init:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:1937   .text.HAL_ADC_Init:00000000 HAL_ADC_Init
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:2143   .text.HAL_ADC_Init:00000108 $d
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:2149   .text.HAL_ADC_DeInit:00000000 $t
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccGFwycq.s 			page 90


C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:2156   .text.HAL_ADC_DeInit:00000000 HAL_ADC_DeInit
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:2310   .text.HAL_ADC_DeInit:000000f4 $d
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:2316   .text.HAL_ADC_Stop:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:2323   .text.HAL_ADC_Stop:00000000 HAL_ADC_Stop
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:2380   .text.HAL_ADC_Stop_IT:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:2387   .text.HAL_ADC_Stop_IT:00000000 HAL_ADC_Stop_IT
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:2449   .text.HAL_ADC_Stop_DMA:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccGFwycq.s:2456   .text.HAL_ADC_Stop_DMA:00000000 HAL_ADC_Stop_DMA

UNDEFINED SYMBOLS
HAL_GetTick
HAL_RCCEx_GetPeriphCLKFreq
SystemCoreClock
HAL_ADCEx_InjectedConvCpltCallback
HAL_DMA_Start_IT
HAL_DMA_Abort
