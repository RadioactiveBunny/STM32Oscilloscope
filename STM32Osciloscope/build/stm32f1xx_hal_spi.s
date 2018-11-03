ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 1


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
  11              		.file	"stm32f1xx_hal_spi.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.SPI_AbortRx_ISR,"ax",%progbits
  16              		.align	1
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu softvfp
  22              	SPI_AbortRx_ISR:
  23              	.LFB118:
  24              		.file 1 "Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c"
   1:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
   2:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   ******************************************************************************
   3:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @file    stm32f1xx_hal_spi.c
   4:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @author  MCD Application Team
   5:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief   SPI HAL module driver.
   6:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *          This file provides firmware functions to manage the following
   7:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *          functionalities of the Serial Peripheral Interface (SPI) peripheral:
   8:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *           + Initialization and de-initialization functions
   9:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *           + IO operation functions
  10:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *           + Peripheral Control functions
  11:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *           + Peripheral State functions
  12:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *
  13:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   @verbatim
  14:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   ==============================================================================
  15:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****                         ##### How to use this driver #####
  16:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   ==============================================================================
  17:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     [..]
  18:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       The SPI HAL driver can be used as follows:
  19:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
  20:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       (#) Declare a SPI_HandleTypeDef handle structure, for example:
  21:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           SPI_HandleTypeDef  hspi;
  22:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
  23:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       (#)Initialize the SPI low level resources by implementing the HAL_SPI_MspInit() API:
  24:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           (##) Enable the SPIx interface clock
  25:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           (##) SPI pins configuration
  26:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****               (+++) Enable the clock for the SPI GPIOs
  27:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****               (+++) Configure these SPI pins as alternate function push-pull
  28:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           (##) NVIC configuration if you need to use interrupt process
  29:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****               (+++) Configure the SPIx interrupt priority
  30:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****               (+++) Enable the NVIC SPI IRQ handle
  31:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           (##) DMA Configuration if you need to use DMA process
  32:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****               (+++) Declare a DMA_HandleTypeDef handle structure for the transmit or receive Channe
  33:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****               (+++) Enable the DMAx clock
  34:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****               (+++) Configure the DMA handle parameters 
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 2


  35:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****               (+++) Configure the DMA Tx or Rx Channel
  36:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****               (+++) Associate the initilalized hdma_tx(or _rx) handle to the hspi DMA Tx (or Rx) ha
  37:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****               (+++) Configure the priority and enable the NVIC for the transfer complete interrupt 
  38:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
  39:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       (#) Program the Mode, BidirectionalMode , Data size, Baudrate Prescaler, NSS
  40:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           management, Clock polarity and phase, FirstBit and CRC configuration in the hspi Init str
  41:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
  42:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       (#) Initialize the SPI registers by calling the HAL_SPI_Init() API:
  43:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           (++) This API configures also the low level Hardware GPIO, CLOCK, CORTEX...etc)
  44:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****               by calling the customized HAL_SPI_MspInit() API.
  45:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****      [..]
  46:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****        Circular mode restriction:
  47:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       (#) The DMA circular mode cannot be used when the SPI is configured in these modes:
  48:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           (##) Master 2Lines RxOnly
  49:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           (##) Master 1Line Rx
  50:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       (#) The CRC feature is not managed when the DMA circular mode is enabled
  51:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       (#) When the SPI DMA Pause/Stop features are used, we must use the following APIs
  52:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           the HAL_SPI_DMAPause()/ HAL_SPI_DMAStop() only under the SPI callbacks
  53:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****      [..]
  54:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****        Master Receive mode restriction:
  55:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       (#) In Master unidirectional receive-only mode (MSTR =1, BIDIMODE=0, RXONLY=0) or
  56:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           bidirectional receive mode (MSTR=1, BIDIMODE=1, BIDIOE=0), to ensure that the SPI
  57:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           does not initiate a new transfer the following procedure has to be respected:
  58:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           (##) HAL_SPI_DeInit()
  59:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           (##) HAL_SPI_Init()
  60:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
  61:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   @endverbatim
  62:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
  63:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     Using the HAL it is not possible to reach all supported SPI frequency with the differents SPI M
  64:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     the following tables resume the max SPI frequency reached with data size 8bits/16bits,
  65:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     according to frequency used on APBx Peripheral Clock (fPCLK) used by the SPI instance :
  66:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     
  67:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    DataSize = SPI_DATASIZE_8BIT:
  68:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    +-----------------------------------------------------------------------------------------------
  69:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |         |                | 2Lines Fullduplex     |     2Lines RxOnly     |        1Line       
  70:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    | Process | Tranfert mode  |-----------------------|-----------------------|--------------------
  71:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |         |                |  Master   |  Slave    |  Master   |  Slave    |  Master   |  Slave 
  72:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |===============================================================================================
  73:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |    T    |     Polling    |  fPCLK/2  | fPCLK/16  |    NA     |    NA     |    NA     |    NA  
  74:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |    X    |----------------|-----------|-----------|-----------|-----------|-----------|--------
  75:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |    /    |     Interrupt  |  fPCLK/8  | fPCLK/32  |    NA     |    NA     |    NA     |    NA  
  76:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |    R    |----------------|-----------|-----------|-----------|-----------|-----------|--------
  77:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |    X    |       DMA      |  fPCLK/2  | fPCLK/4   |    NA     |    NA     |    NA     |    NA  
  78:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |=========|================|===========|===========|===========|===========|===========|========
  79:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |         |     Polling    |  fPCLK/4  | fPCLK/8   | fPCLK/8   | fPCLK/16  | fPCLK/64  | fPCLK/2
  80:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |         |----------------|-----------|-----------|-----------|-----------|-----------|--------
  81:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |    R    |     Interrupt  |  fPCLK/8  | fPCLK/16  | fPCLK/32  | fPCLK/16  | fPCLK/64  | fPCLK/4
  82:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |    X    |----------------|-----------|-----------|-----------|-----------|-----------|--------
  83:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |         |       DMA      |  fPCLK/2  | fPCLK/16  | fPCLK/8   | fPCLK/16  | fPCLK/64  | fPCLK/2
  84:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |=========|================|===========|===========|===========|===========|===========|========
  85:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |         |     Polling    |  fPCLK/2  |  fPCLK/2  |    NA     |    NA     |  fPCLK/2  | fPCLK/3
  86:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |         |----------------|-----------|-----------|-----------|-----------|-----------|--------
  87:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |    T    |     Interrupt  |  fPCLK/8  | fPCLK/16  |    NA     |    NA     |  fPCLK/2  | fPCLK/6
  88:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |    X    |----------------|-----------|-----------|-----------|-----------|-----------|--------
  89:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |         |       DMA      |  fPCLK/2  |  fPCLK/4  |    NA     |    NA     |  fPCLK/2  | fPCLK/3
  90:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    +-----------------------------------------------------------------------------------------------
  91:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 3


  92:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    DataSize = SPI_DATASIZE_16BIT:
  93:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    +-----------------------------------------------------------------------------------------------
  94:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |         |                | 2Lines Fullduplex     |     2Lines RxOnly     |        1Line       
  95:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    | Process | Tranfert mode  |-----------------------|-----------------------|--------------------
  96:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |         |                |  Master   |  Slave    |  Master   |  Slave    |  Master   |  Slave 
  97:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |===============================================================================================
  98:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |    T    |     Polling    |  fPCLK/4  | fPCLK/4   |    NA     |    NA     |    NA     |    NA  
  99:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |    X    |----------------|-----------|-----------|-----------|-----------|-----------|--------
 100:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |    /    |     Interrupt  |  fPCLK/8  | fPCLK/16  |    NA     |    NA     |    NA     |    NA  
 101:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |    R    |----------------|-----------|-----------|-----------|-----------|-----------|--------
 102:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |    X    |       DMA      |  fPCLK/2  | fPCLK/4   |    NA     |    NA     |    NA     |    NA  
 103:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |=========|================|===========|===========|===========|===========|===========|========
 104:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |         |     Polling    |  fPCLK/4  |  fPCLK/8  | fPCLK/4   | fPCLK/8   | fPCLK/64  | fPCLK/2
 105:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |         |----------------|-----------|-----------|-----------|-----------|-----------|--------
 106:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |    R    |     Interrupt  |  fPCLK/8  |  fPCLK/8  | fPCLK/128 | fPCLK/8   | fPCLK/128 | fPCLK/4
 107:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |    X    |----------------|-----------|-----------|-----------|-----------|-----------|--------
 108:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |         |       DMA      |  fPCLK/2  |  fPCLK/2  | fPCLK/128 | fPCLK/16  | fPCLK/64  | fPCLK/2
 109:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |=========|================|===========|===========|===========|===========|===========|========
 110:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |         |     Polling    |  fPCLK/2  |  fPCLK/4  |    NA     |    NA     |  fPCLK/4  | fPCLK/8
 111:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |         |----------------|-----------|-----------|-----------|-----------|-----------|--------
 112:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |    T    |     Interrupt  |  fPCLK/4  |  fPCLK/8  |    NA     |    NA     |  fPCLK/4  | fPCLK/4
 113:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |    X    |----------------|-----------|-----------|-----------|-----------|-----------|--------
 114:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    |         |       DMA      |  fPCLK/2  |  fPCLK/2  |    NA     |    NA     |  fPCLK/4  | fPCLK/8
 115:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    +-----------------------------------------------------------------------------------------------
 116:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****      [..]
 117:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****        (@) The max SPI frequency depend on SPI data size (8bits, 16bits),
 118:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****            SPI mode(2 Lines fullduplex, 2 lines RxOnly, 1 line TX/RX) and Process mode (Polling, IT
 119:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****        (@)
 120:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****             (+@) TX/RX processes are HAL_SPI_TransmitReceive(), HAL_SPI_TransmitReceive_IT() and HA
 121:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****             (+@) RX processes are HAL_SPI_Receive(), HAL_SPI_Receive_IT() and HAL_SPI_Receive_DMA()
 122:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****             (+@) TX processes are HAL_SPI_Transmit(), HAL_SPI_Transmit_IT() and HAL_SPI_Transmit_DM
 123:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   ******************************************************************************
 124:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @attention
 125:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *
 126:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * <h2><center>&copy; COPYRIGHT(c) 2017 STMicroelectronics</center></h2>
 127:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *
 128:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * Redistribution and use in source and binary forms, with or without modification,
 129:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * are permitted provided that the following conditions are met:
 130:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *   1. Redistributions of source code must retain the above copyright notice,
 131:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *      this list of conditions and the following disclaimer.
 132:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
 133:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *      this list of conditions and the following disclaimer in the documentation
 134:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *      and/or other materials provided with the distribution.
 135:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
 136:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *      may be used to endorse or promote products derived from this software
 137:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *      without specific prior written permission.
 138:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *
 139:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 140:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 141:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 142:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 143:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 144:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 145:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 146:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 147:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 148:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 4


 149:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *
 150:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   ******************************************************************************
 151:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
 152:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 153:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /* Includes ------------------------------------------------------------------*/
 154:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #include "stm32f1xx_hal.h"
 155:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 156:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /** @addtogroup STM32F1xx_HAL_Driver
 157:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @{
 158:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
 159:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /** @defgroup SPI SPI
 160:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief SPI HAL module driver
 161:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @{
 162:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
 163:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #ifdef HAL_SPI_MODULE_ENABLED
 164:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 165:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /* Private typedef -----------------------------------------------------------*/
 166:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /* Private defines -----------------------------------------------------------*/
 167:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /** @defgroup SPI_Private_Constants SPI Private Constants
 168:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @{
 169:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
 170:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #define SPI_DEFAULT_TIMEOUT 100U
 171:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
 172:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @}
 173:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
 174:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 175:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /* Private macros ------------------------------------------------------------*/
 176:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /* Private variables ---------------------------------------------------------*/
 177:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /* Private function prototypes -----------------------------------------------*/
 178:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /** @addtogroup SPI_Private_Functions
 179:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @{
 180:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
 181:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_DMATransmitCplt(DMA_HandleTypeDef *hdma);
 182:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_DMAReceiveCplt(DMA_HandleTypeDef *hdma);
 183:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_DMATransmitReceiveCplt(DMA_HandleTypeDef *hdma);
 184:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_DMAHalfTransmitCplt(DMA_HandleTypeDef *hdma);
 185:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_DMAHalfReceiveCplt(DMA_HandleTypeDef *hdma);
 186:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_DMAHalfTransmitReceiveCplt(DMA_HandleTypeDef *hdma);
 187:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_DMAError(DMA_HandleTypeDef *hdma);
 188:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_DMAAbortOnError(DMA_HandleTypeDef *hdma);
 189:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_DMATxAbortCallback(DMA_HandleTypeDef *hdma);
 190:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_DMARxAbortCallback(DMA_HandleTypeDef *hdma);
 191:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static HAL_StatusTypeDef SPI_WaitFlagStateUntilTimeout(SPI_HandleTypeDef *hspi, uint32_t Flag, uint
 192:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_TxISR_8BIT(struct __SPI_HandleTypeDef *hspi);
 193:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_TxISR_16BIT(struct __SPI_HandleTypeDef *hspi);
 194:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_RxISR_8BIT(struct __SPI_HandleTypeDef *hspi);
 195:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_RxISR_16BIT(struct __SPI_HandleTypeDef *hspi);
 196:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_2linesRxISR_8BIT(struct __SPI_HandleTypeDef *hspi);
 197:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_2linesTxISR_8BIT(struct __SPI_HandleTypeDef *hspi);
 198:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_2linesTxISR_16BIT(struct __SPI_HandleTypeDef *hspi);
 199:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_2linesRxISR_16BIT(struct __SPI_HandleTypeDef *hspi);
 200:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
 201:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_RxISR_8BITCRC(struct __SPI_HandleTypeDef *hspi);
 202:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_RxISR_16BITCRC(struct __SPI_HandleTypeDef *hspi);
 203:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_2linesRxISR_8BITCRC(struct __SPI_HandleTypeDef *hspi);
 204:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_2linesRxISR_16BITCRC(struct __SPI_HandleTypeDef *hspi);
 205:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 5


 206:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_AbortRx_ISR(SPI_HandleTypeDef *hspi);
 207:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_AbortTx_ISR(SPI_HandleTypeDef *hspi);
 208:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_CloseRxTx_ISR(SPI_HandleTypeDef *hspi);
 209:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_CloseRx_ISR(SPI_HandleTypeDef *hspi);
 210:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_CloseTx_ISR(SPI_HandleTypeDef *hspi);
 211:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static HAL_StatusTypeDef SPI_CheckFlag_BSY(SPI_HandleTypeDef *hspi, uint32_t Timeout, uint32_t Tick
 212:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
 213:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @}
 214:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
 215:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 216:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /* Exported functions --------------------------------------------------------*/
 217:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /** @defgroup SPI_Exported_Functions SPI Exported Functions
 218:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @{
 219:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
 220:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 221:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /** @defgroup SPI_Exported_Functions_Group1 Initialization and de-initialization functions
 222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****  *  @brief    Initialization and Configuration functions
 223:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****  *
 224:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** @verbatim
 225:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****  ===============================================================================
 226:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****               ##### Initialization and de-initialization functions #####
 227:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****  ===============================================================================
 228:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     [..]  This subsection provides a set of functions allowing to initialize and
 229:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           de-initialize the SPIx peripheral:
 230:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 231:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       (+) User must implement HAL_SPI_MspInit() function in which he configures
 232:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           all related peripherals resources (CLOCK, GPIO, DMA, IT and NVIC ).
 233:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 234:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       (+) Call the function HAL_SPI_Init() to configure the selected device with
 235:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           the selected configuration:
 236:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         (++) Mode
 237:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         (++) Direction
 238:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         (++) Data Size
 239:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         (++) Clock Polarity and Phase
 240:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         (++) NSS Management
 241:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         (++) BaudRate Prescaler
 242:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         (++) FirstBit
 243:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         (++) TIMode
 244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         (++) CRC Calculation
 245:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         (++) CRC Polynomial if CRC enabled
 246:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 247:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       (+) Call the function HAL_SPI_DeInit() to restore the default configuration
 248:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           of the selected SPIx peripheral.
 249:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 250:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** @endverbatim
 251:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @{
 252:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
 253:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 254:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
 255:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Initialize the SPI according to the specified parameters
 256:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *         in the SPI_InitTypeDef and initialize the associated handle.
 257:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
 258:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
 259:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval HAL status
 260:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
 261:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** __weak HAL_StatusTypeDef HAL_SPI_Init(SPI_HandleTypeDef *hspi)
 262:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 6


 263:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check the SPI handle allocation */
 264:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi == NULL)
 265:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 266:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     return HAL_ERROR;
 267:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 268:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 269:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check the parameters */
 270:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   assert_param(IS_SPI_ALL_INSTANCE(hspi->Instance));
 271:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   assert_param(IS_SPI_MODE(hspi->Init.Mode));
 272:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   assert_param(IS_SPI_DIRECTION(hspi->Init.Direction));
 273:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   assert_param(IS_SPI_DATASIZE(hspi->Init.DataSize));
 274:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   assert_param(IS_SPI_CPOL(hspi->Init.CLKPolarity));
 275:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   assert_param(IS_SPI_CPHA(hspi->Init.CLKPhase));
 276:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   assert_param(IS_SPI_NSS(hspi->Init.NSS));
 277:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   assert_param(IS_SPI_BAUDRATE_PRESCALER(hspi->Init.BaudRatePrescaler));
 278:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   assert_param(IS_SPI_FIRST_BIT(hspi->Init.FirstBit));
 279:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 280:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
 281:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   assert_param(IS_SPI_CRC_CALCULATION(hspi->Init.CRCCalculation));
 282:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
 283:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 284:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     assert_param(IS_SPI_CRC_POLYNOMIAL(hspi->Init.CRCPolynomial));
 285:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 286:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #else
 287:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
 288:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
 289:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 290:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->State == HAL_SPI_STATE_RESET)
 291:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 292:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Allocate lock resource and initialize it */
 293:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->Lock = HAL_UNLOCKED;
 294:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 295:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Init the low level hardware : GPIO, CLOCK, NVIC... */
 296:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     HAL_SPI_MspInit(hspi);
 297:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 298:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 299:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->State = HAL_SPI_STATE_BUSY;
 300:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 301:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Disable the selected SPI peripheral */
 302:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_SPI_DISABLE(hspi);
 303:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 304:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /*----------------------- SPIx CR1 & CR2 Configuration ---------------------*/
 305:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Configure : SPI Mode, Communication Mode, Data size, Clock polarity and phase, NSS management,
 306:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   Communication speed, First bit and CRC calculation state */
 307:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   WRITE_REG(hspi->Instance->CR1, (hspi->Init.Mode | hspi->Init.Direction | hspi->Init.DataSize |
 308:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****                                   hspi->Init.CLKPolarity | hspi->Init.CLKPhase | (hspi->Init.NSS & 
 309:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****                                   hspi->Init.BaudRatePrescaler | hspi->Init.FirstBit  | hspi->Init.
 310:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 311:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Configure : NSS management */
 312:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   WRITE_REG(hspi->Instance->CR2, (((hspi->Init.NSS >> 16U) & SPI_CR2_SSOE) | hspi->Init.TIMode));
 313:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 314:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
 315:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /*---------------------------- SPIx CRCPOLY Configuration ------------------*/
 316:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Configure : CRC Polynomial */
 317:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
 318:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 319:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     WRITE_REG(hspi->Instance->CRCPR, hspi->Init.CRCPolynomial);
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 7


 320:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 321:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
 322:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 323:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if defined(SPI_I2SCFGR_I2SMOD)
 324:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Activate the SPI mode (Make sure that I2SMOD bit in I2SCFGR register is reset) */
 325:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   CLEAR_BIT(hspi->Instance->I2SCFGR, SPI_I2SCFGR_I2SMOD);
 326:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* SPI_I2SCFGR_I2SMOD */
 327:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 328:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->ErrorCode = HAL_SPI_ERROR_NONE;
 329:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->State     = HAL_SPI_STATE_READY;
 330:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 331:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return HAL_OK;
 332:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
 333:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 334:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
 335:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  De Initialize the SPI peripheral.
 336:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
 337:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
 338:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval HAL status
 339:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
 340:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** HAL_StatusTypeDef HAL_SPI_DeInit(SPI_HandleTypeDef *hspi)
 341:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
 342:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check the SPI handle allocation */
 343:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi == NULL)
 344:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 345:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     return HAL_ERROR;
 346:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 347:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 348:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check SPI Instance parameter */
 349:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   assert_param(IS_SPI_ALL_INSTANCE(hspi->Instance));
 350:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 351:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->State = HAL_SPI_STATE_BUSY;
 352:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 353:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Disable the SPI Peripheral Clock */
 354:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_SPI_DISABLE(hspi);
 355:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 356:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* DeInit the low level hardware: GPIO, CLOCK, NVIC... */
 357:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_SPI_MspDeInit(hspi);
 358:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 359:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->ErrorCode = HAL_SPI_ERROR_NONE;
 360:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->State = HAL_SPI_STATE_RESET;
 361:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 362:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Release Lock */
 363:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_UNLOCK(hspi);
 364:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 365:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return HAL_OK;
 366:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
 367:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 368:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
 369:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Initialize the SPI MSP.
 370:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
 371:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
 372:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
 373:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
 374:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** __weak void HAL_SPI_MspInit(SPI_HandleTypeDef *hspi)
 375:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
 376:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Prevent unused argument(s) compilation warning */
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 8


 377:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   UNUSED(hspi);
 378:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* NOTE : This function should not be modified, when the callback is needed,
 379:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****             the HAL_SPI_MspInit should be implemented in the user file
 380:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
 381:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
 382:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 383:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
 384:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  De-Initialize the SPI MSP.
 385:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
 386:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
 387:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
 388:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
 389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** __weak void HAL_SPI_MspDeInit(SPI_HandleTypeDef *hspi)
 390:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
 391:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Prevent unused argument(s) compilation warning */
 392:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   UNUSED(hspi);
 393:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* NOTE : This function should not be modified, when the callback is needed,
 394:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****             the HAL_SPI_MspDeInit should be implemented in the user file
 395:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
 396:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
 397:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 398:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
 399:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @}
 400:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
 401:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 402:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /** @defgroup SPI_Exported_Functions_Group2 IO operation functions
 403:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****  *  @brief   Data transfers functions
 404:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****  *
 405:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** @verbatim
 406:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   ==============================================================================
 407:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****                       ##### IO operation functions #####
 408:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****  ===============================================================================
 409:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****  [..]
 410:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     This subsection provides a set of functions allowing to manage the SPI
 411:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     data transfers.
 412:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 413:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     [..] The SPI supports master and slave mode :
 414:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 415:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     (#) There are two modes of transfer:
 416:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****        (++) Blocking mode: The communication is performed in polling mode.
 417:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****             The HAL status of all data processing is returned by the same function
 418:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****             after finishing transfer.
 419:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****        (++) No-Blocking mode: The communication is performed using Interrupts
 420:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****             or DMA, These APIs return the HAL status.
 421:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****             The end of the data processing will be indicated through the
 422:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****             dedicated SPI IRQ when using Interrupt mode or the DMA IRQ when
 423:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****             using DMA mode.
 424:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****             The HAL_SPI_TxCpltCallback(), HAL_SPI_RxCpltCallback() and HAL_SPI_TxRxCpltCallback() u
 425:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****             will be executed respectively at the end of the transmit or Receive process
 426:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****             The HAL_SPI_ErrorCallback()user callback will be executed when a communication error is
 427:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 428:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     (#) APIs provided for these 2 transfer modes (Blocking mode or Non blocking mode using either I
 429:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         exist for 1Line (simplex) and 2Lines (full duplex) modes.
 430:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 431:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** @endverbatim
 432:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @{
 433:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 9


 434:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 435:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
 436:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Transmit an amount of data in blocking mode.
 437:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
 438:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
 439:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  pData: pointer to data buffer
 440:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  Size: amount of data to be sent
 441:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  Timeout: Timeout duration
 442:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval HAL status
 443:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
 444:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** HAL_StatusTypeDef HAL_SPI_Transmit(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size, uint32_t
 445:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
 446:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t tickstart = 0U;
 447:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_StatusTypeDef errorcode = HAL_OK;
 448:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 449:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check Direction parameter */
 450:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   assert_param(IS_SPI_DIRECTION_2LINES_OR_1LINE(hspi->Init.Direction));
 451:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 452:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Process Locked */
 453:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_LOCK(hspi);
 454:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 455:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Init tickstart for timeout management*/
 456:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   tickstart = HAL_GetTick();
 457:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 458:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->State != HAL_SPI_STATE_READY)
 459:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 460:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     errorcode = HAL_BUSY;
 461:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 462:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 463:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 464:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((pData == NULL ) || (Size == 0U))
 465:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 466:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     errorcode = HAL_ERROR;
 467:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 468:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 469:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 470:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Set the transaction information */
 471:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->State       = HAL_SPI_STATE_BUSY_TX;
 472:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->ErrorCode   = HAL_SPI_ERROR_NONE;
 473:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pTxBuffPtr  = (uint8_t *)pData;
 474:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferSize  = Size;
 475:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = Size;
 476:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 477:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /*Init field not used in handle to zero */
 478:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pRxBuffPtr  = (uint8_t *)NULL;
 479:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferSize  = 0U;
 480:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount = 0U;
 481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxISR       = NULL;
 482:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxISR       = NULL;
 483:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 484:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Configure communication direction : 1Line */
 485:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.Direction == SPI_DIRECTION_1LINE)
 486:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 487:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SPI_1LINE_TX(hspi);
 488:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 489:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 490:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 10


 491:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Reset CRC Calculation */
 492:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
 493:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 494:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SPI_RESET_CRC(hspi);
 495:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 496:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
 497:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 498:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check if the SPI is already enabled */
 499:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((hspi->Instance->CR1 & SPI_CR1_SPE) != SPI_CR1_SPE)
 500:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 501:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Enable SPI peripheral */
 502:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     __HAL_SPI_ENABLE(hspi);
 503:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 504:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 505:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Transmit data in 16 Bit mode */
 506:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.DataSize == SPI_DATASIZE_16BIT)
 507:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 508:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if((hspi->Init.Mode == SPI_MODE_SLAVE) || (hspi->TxXferCount == 0x01))
 509:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 510:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       hspi->Instance->DR = *((uint16_t *)pData);
 511:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       pData += sizeof(uint16_t);
 512:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       hspi->TxXferCount--;
 513:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 514:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Transmit data in 16 Bit mode */
 515:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     while (hspi->TxXferCount > 0U)
 516:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 517:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Wait until TXE flag is set to send data */
 518:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       if(__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_TXE))
 519:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 520:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           hspi->Instance->DR = *((uint16_t *)pData);
 521:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           pData += sizeof(uint16_t);
 522:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           hspi->TxXferCount--;
 523:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 524:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       else
 525:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 526:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Timeout management */
 527:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         if((Timeout == 0U) || ((Timeout != HAL_MAX_DELAY) && ((HAL_GetTick()-tickstart) >=  Timeout
 528:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
 529:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           errorcode = HAL_TIMEOUT;
 530:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           goto error;
 531:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         }
 532:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 533:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 534:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Transmit data in 8 Bit mode */
 536:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   else
 537:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 538:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if((hspi->Init.Mode == SPI_MODE_SLAVE)|| (hspi->TxXferCount == 0x01))
 539:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 540:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       *((__IO uint8_t*)&hspi->Instance->DR) = (*pData);
 541:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       pData += sizeof(uint8_t);
 542:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       hspi->TxXferCount--;
 543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 544:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     while (hspi->TxXferCount > 0U)
 545:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 546:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Wait until TXE flag is set to send data */
 547:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       if(__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_TXE))
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 11


 548:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 549:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         *((__IO uint8_t*)&hspi->Instance->DR) = (*pData);
 550:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         pData += sizeof(uint8_t);
 551:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         hspi->TxXferCount--;
 552:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 553:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       else
 554:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 555:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Timeout management */
 556:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         if((Timeout == 0U) || ((Timeout != HAL_MAX_DELAY) && ((HAL_GetTick()-tickstart) >=  Timeout
 557:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
 558:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           errorcode = HAL_TIMEOUT;
 559:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           goto error;
 560:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         }
 561:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 562:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 563:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 564:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 565:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Wait until TXE flag */
 566:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(SPI_WaitFlagStateUntilTimeout(hspi, SPI_FLAG_TXE, SET, Timeout, tickstart) != HAL_OK)
 567:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 568:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     errorcode = HAL_TIMEOUT;
 569:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 570:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 571:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   
 572:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check Busy flag */
 573:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(SPI_CheckFlag_BSY(hspi, Timeout, tickstart) != HAL_OK)
 574:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 575:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     errorcode = HAL_ERROR;
 576:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->ErrorCode = HAL_SPI_ERROR_FLAG;
 577:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 578:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 579:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 580:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Clear overrun flag in 2 Lines communication mode because received is not read */
 581:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.Direction == SPI_DIRECTION_2LINES)
 582:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 583:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     __HAL_SPI_CLEAR_OVRFLAG(hspi);
 584:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 585:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
 586:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Enable CRC Transmission */
 587:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
 588:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 589:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****      SET_BIT(hspi->Instance->CR1, SPI_CR1_CRCNEXT);
 590:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 591:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
 592:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 593:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->ErrorCode != HAL_SPI_ERROR_NONE)
 594:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 595:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     errorcode = HAL_ERROR;
 596:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 597:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 598:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** error:
 599:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->State = HAL_SPI_STATE_READY;
 600:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Process Unlocked */
 601:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_UNLOCK(hspi);
 602:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return errorcode;
 603:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
 604:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 12


 605:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
 606:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Receive an amount of data in blocking mode.
 607:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
 608:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
 609:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  pData: pointer to data buffer
 610:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  Size: amount of data to be received
 611:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  Timeout: Timeout duration
 612:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval HAL status
 613:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
 614:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** HAL_StatusTypeDef HAL_SPI_Receive(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size, uint32_t 
 615:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
 616:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
 617:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __IO uint16_t tmpreg = 0U;
 618:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
 619:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t tickstart = 0U;
 620:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_StatusTypeDef errorcode = HAL_OK;
 621:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 622:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((hspi->Init.Mode == SPI_MODE_MASTER) && (hspi->Init.Direction == SPI_DIRECTION_2LINES))
 623:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 624:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****      hspi->State = HAL_SPI_STATE_BUSY_RX;
 625:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****      /* Call transmit-receive function to send Dummy data on Tx line and generate clock on CLK line
 626:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     return HAL_SPI_TransmitReceive(hspi,pData,pData,Size,Timeout);
 627:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 628:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 629:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Process Locked */
 630:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_LOCK(hspi);
 631:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 632:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Init tickstart for timeout management*/
 633:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   tickstart = HAL_GetTick();
 634:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 635:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->State != HAL_SPI_STATE_READY)
 636:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 637:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     errorcode = HAL_BUSY;
 638:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 639:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 640:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 641:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((pData == NULL ) || (Size == 0U))
 642:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 643:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     errorcode = HAL_ERROR;
 644:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 645:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 646:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 647:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Set the transaction information */
 648:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->State       = HAL_SPI_STATE_BUSY_RX;
 649:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->ErrorCode   = HAL_SPI_ERROR_NONE;
 650:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pRxBuffPtr  = (uint8_t *)pData;
 651:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferSize  = Size;
 652:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount = Size;
 653:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 654:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /*Init field not used in handle to zero */
 655:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pTxBuffPtr  = (uint8_t *)NULL;
 656:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferSize  = 0U;
 657:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = 0U;
 658:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxISR       = NULL;
 659:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxISR       = NULL;
 660:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 661:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 13


 662:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Reset CRC Calculation */
 663:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
 664:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 665:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SPI_RESET_CRC(hspi);
 666:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* this is done to handle the CRCNEXT before the latest data */
 667:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->RxXferCount--;
 668:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 669:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
 670:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 671:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Configure communication direction: 1Line */
 672:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.Direction == SPI_DIRECTION_1LINE)
 673:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 674:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SPI_1LINE_RX(hspi);
 675:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 676:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 677:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check if the SPI is already enabled */
 678:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((hspi->Instance->CR1 & SPI_CR1_SPE) != SPI_CR1_SPE)
 679:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 680:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Enable SPI peripheral */
 681:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     __HAL_SPI_ENABLE(hspi);
 682:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 683:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 684:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Receive data in 8 Bit mode */
 685:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.DataSize == SPI_DATASIZE_8BIT)
 686:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 687:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Transfer loop */
 688:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     while(hspi->RxXferCount > 0U)
 689:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 690:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Check the RXNE flag */
 691:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       if(__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_RXNE))
 692:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 693:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* read the received data */
 694:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         (* (uint8_t *)pData)= *(__IO uint8_t *)&hspi->Instance->DR;
 695:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         pData += sizeof(uint8_t);
 696:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         hspi->RxXferCount--;
 697:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 698:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       else
 699:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 700:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Timeout management */
 701:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         if((Timeout == 0U) || ((Timeout != HAL_MAX_DELAY) && ((HAL_GetTick()-tickstart) >=  Timeout
 702:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
 703:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           errorcode = HAL_TIMEOUT;
 704:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           goto error;
 705:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         }
 706:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 707:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 708:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 709:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   else
 710:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 711:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Transfer loop */
 712:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     while(hspi->RxXferCount > 0U)
 713:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 714:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Check the RXNE flag */
 715:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       if(__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_RXNE))
 716:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 717:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         *((uint16_t*)pData) = hspi->Instance->DR;
 718:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         pData += sizeof(uint16_t);
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 14


 719:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         hspi->RxXferCount--;
 720:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 721:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       else
 722:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 723:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Timeout management */
 724:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         if((Timeout == 0U) || ((Timeout != HAL_MAX_DELAY) && ((HAL_GetTick()-tickstart) >=  Timeout
 725:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
 726:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           errorcode = HAL_TIMEOUT;
 727:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           goto error;
 728:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         }
 729:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 730:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 731:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 732:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 733:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
 734:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Handle the CRC Transmission */
 735:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
 736:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 737:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* freeze the CRC before the latest data */
 738:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SET_BIT(hspi->Instance->CR1, SPI_CR1_CRCNEXT);
 739:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 740:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Read the latest data */
 741:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(SPI_WaitFlagStateUntilTimeout(hspi, SPI_FLAG_RXNE, SET, Timeout, tickstart) != HAL_OK)
 742:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 743:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* the latest data has not been received */
 744:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       errorcode = HAL_TIMEOUT;
 745:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       goto error;
 746:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 747:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 748:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Receive last data in 16 Bit mode */
 749:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->Init.DataSize == SPI_DATASIZE_16BIT)
 750:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 751:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       *((uint16_t*)pData) = hspi->Instance->DR;
 752:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 753:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Receive last data in 8 Bit mode */
 754:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     else
 755:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 756:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       (*(uint8_t *)pData) = *(__IO uint8_t *)&hspi->Instance->DR;
 757:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 758:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 759:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Wait the CRC data */
 760:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(SPI_WaitFlagStateUntilTimeout(hspi, SPI_FLAG_RXNE, SET, Timeout, tickstart) != HAL_OK)
 761:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 762:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_CRC);
 763:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       errorcode = HAL_TIMEOUT;
 764:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       goto error;
 765:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 766:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 767:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Read CRC to Flush DR and RXNE flag */
 768:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     tmpreg = hspi->Instance->DR;
 769:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* To avoid GCC warning */
 770:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     UNUSED(tmpreg);
 771:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 772:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
 773:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 774:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check the end of the transaction */
 775:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((hspi->Init.Mode == SPI_MODE_MASTER)&&((hspi->Init.Direction == SPI_DIRECTION_1LINE)||(hspi->I
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 15


 776:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 777:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Disable SPI peripheral */
 778:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     __HAL_SPI_DISABLE(hspi);
 779:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 780:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 781:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
 782:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Check if CRC error occurred */
 783:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_CRCERR) != RESET)
 784:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 785:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Check if CRC error is valid or not (workaround to be applied or not) */
 786:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       if (SPI_ISCRCErrorValid(hspi) == SPI_VALID_CRC_ERROR)
 787:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 788:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_CRC);
 789:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 790:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Reset CRC Calculation */
 791:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         SPI_RESET_CRC(hspi);
 792:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 793:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       else
 794:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 795:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         __HAL_SPI_CLEAR_CRCERRFLAG(hspi);
 796:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 797:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 798:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
 799:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 800:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->ErrorCode != HAL_SPI_ERROR_NONE)
 801:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 802:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     errorcode = HAL_ERROR;
 803:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 804:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 805:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** error :
 806:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->State = HAL_SPI_STATE_READY;
 807:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_UNLOCK(hspi);
 808:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return errorcode;
 809:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
 810:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 811:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
 812:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Transmit and Receive an amount of data in blocking mode.
 813:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
 814:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
 815:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  pTxData: pointer to transmission data buffer
 816:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  pRxData: pointer to reception data buffer
 817:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  Size: amount of data to be sent and received
 818:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  Timeout: Timeout duration
 819:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval HAL status
 820:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
 821:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** HAL_StatusTypeDef HAL_SPI_TransmitReceive(SPI_HandleTypeDef *hspi, uint8_t *pTxData, uint8_t *pRxDa
 822:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
 823:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t tmp = 0U, tmp1 = 0U;
 824:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
 825:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __IO uint16_t tmpreg1 = 0U;
 826:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
 827:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t tickstart = 0U;
 828:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Variable used to alternate Rx and Tx during transfer */
 829:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t txallowed = 1U;
 830:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_StatusTypeDef errorcode = HAL_OK;
 831:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 832:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check Direction parameter */
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 16


 833:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   assert_param(IS_SPI_DIRECTION_2LINES(hspi->Init.Direction));
 834:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 835:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Process Locked */
 836:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_LOCK(hspi);
 837:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 838:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Init tickstart for timeout management*/
 839:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   tickstart = HAL_GetTick();
 840:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   
 841:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   tmp  = hspi->State;
 842:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   tmp1 = hspi->Init.Mode;
 843:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   
 844:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(!((tmp == HAL_SPI_STATE_READY) || \
 845:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     ((tmp1 == SPI_MODE_MASTER) && (hspi->Init.Direction == SPI_DIRECTION_2LINES) && (tmp == HAL_SPI
 846:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 847:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     errorcode = HAL_BUSY;
 848:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 849:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 850:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 851:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((pTxData == NULL) || (pRxData == NULL) || (Size == 0U))
 852:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 853:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     errorcode = HAL_ERROR;
 854:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 855:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 856:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 857:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Don't overwrite in case of HAL_SPI_STATE_BUSY_RX */
 858:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->State == HAL_SPI_STATE_READY)
 859:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 860:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->State = HAL_SPI_STATE_BUSY_TX_RX;
 861:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 862:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 863:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Set the transaction information */
 864:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->ErrorCode   = HAL_SPI_ERROR_NONE;
 865:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pRxBuffPtr  = (uint8_t *)pRxData;
 866:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount = Size;
 867:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferSize  = Size;
 868:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pTxBuffPtr  = (uint8_t *)pTxData;
 869:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = Size;
 870:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferSize  = Size;
 871:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 872:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /*Init field not used in handle to zero */
 873:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxISR       = NULL;
 874:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxISR       = NULL;
 875:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 876:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
 877:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Reset CRC Calculation */
 878:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
 879:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 880:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SPI_RESET_CRC(hspi);
 881:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 882:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
 883:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 884:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check if the SPI is already enabled */
 885:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((hspi->Instance->CR1 &SPI_CR1_SPE) != SPI_CR1_SPE)
 886:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 887:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Enable SPI peripheral */
 888:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     __HAL_SPI_ENABLE(hspi);
 889:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 17


 890:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 891:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Transmit and Receive data in 16 Bit mode */
 892:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.DataSize == SPI_DATASIZE_16BIT)
 893:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 894:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if((hspi->Init.Mode == SPI_MODE_SLAVE) || (hspi->TxXferCount == 0x01U))
 895:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 896:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       hspi->Instance->DR = *((uint16_t *)pTxData);
 897:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       pTxData += sizeof(uint16_t);
 898:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       hspi->TxXferCount--;
 899:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 900:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     while ((hspi->TxXferCount > 0U) || (hspi->RxXferCount > 0U))
 901:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 902:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Check TXE flag */
 903:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       if(txallowed && (hspi->TxXferCount > 0U) && (__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_TXE)))
 904:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 905:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         hspi->Instance->DR = *((uint16_t *)pTxData);
 906:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         pTxData += sizeof(uint16_t);
 907:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         hspi->TxXferCount--;
 908:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Next Data is a reception (Rx). Tx not allowed */ 
 909:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         txallowed = 0U;
 910:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 911:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
 912:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Enable CRC Transmission */
 913:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         if((hspi->TxXferCount == 0U) && (hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE))
 914:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
 915:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           SET_BIT(hspi->Instance->CR1, SPI_CR1_CRCNEXT);
 916:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         }
 917:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
 918:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 919:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 920:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Check RXNE flag */
 921:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       if((hspi->RxXferCount > 0U) && (__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_RXNE)))
 922:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 923:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         *((uint16_t *)pRxData) = hspi->Instance->DR;
 924:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         pRxData += sizeof(uint16_t);
 925:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         hspi->RxXferCount--;
 926:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Next Data is a Transmission (Tx). Tx is allowed */ 
 927:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         txallowed = 1U;
 928:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 929:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       if((Timeout != HAL_MAX_DELAY) && ((HAL_GetTick()-tickstart) >=  Timeout))
 930:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 931:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         errorcode = HAL_TIMEOUT;
 932:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         goto error;
 933:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 934:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 935:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 936:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Transmit and Receive data in 8 Bit mode */
 937:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   else
 938:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 939:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if((hspi->Init.Mode == SPI_MODE_SLAVE) || (hspi->TxXferCount == 0x01U))
 940:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 941:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       *((__IO uint8_t*)&hspi->Instance->DR) = (*pTxData);
 942:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       pTxData += sizeof(uint8_t);
 943:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       hspi->TxXferCount--;
 944:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 945:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     while((hspi->TxXferCount > 0U) || (hspi->RxXferCount > 0U))
 946:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 18


 947:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* check TXE flag */
 948:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       if(txallowed && (hspi->TxXferCount > 0U) && (__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_TXE)))
 949:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 950:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         *(__IO uint8_t *)&hspi->Instance->DR = (*pTxData++);
 951:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         hspi->TxXferCount--;
 952:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Next Data is a reception (Rx). Tx not allowed */ 
 953:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         txallowed = 0U;
 954:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 955:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
 956:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Enable CRC Transmission */
 957:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         if((hspi->TxXferCount == 0U) && (hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE))
 958:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
 959:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           SET_BIT(hspi->Instance->CR1, SPI_CR1_CRCNEXT);
 960:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         }
 961:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
 962:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 963:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 964:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Wait until RXNE flag is reset */
 965:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       if((hspi->RxXferCount > 0U) && (__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_RXNE)))
 966:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 967:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         (*(uint8_t *)pRxData++) = hspi->Instance->DR;
 968:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         hspi->RxXferCount--;
 969:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Next Data is a Transmission (Tx). Tx is allowed */ 
 970:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         txallowed = 1U;
 971:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 972:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       if((Timeout != HAL_MAX_DELAY) && ((HAL_GetTick()-tickstart) >=  Timeout))
 973:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 974:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         errorcode = HAL_TIMEOUT;
 975:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         goto error;
 976:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 977:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 978:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 979:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 980:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
 981:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Read CRC from DR to close CRC calculation process */
 982:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
 983:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 984:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Wait until TXE flag */
 985:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(SPI_WaitFlagStateUntilTimeout(hspi, SPI_FLAG_RXNE, SET, Timeout, tickstart) != HAL_OK)
 986:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 987:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Error on the CRC reception */
 988:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_CRC);
 989:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       errorcode = HAL_TIMEOUT;
 990:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       goto error;
 991:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 992:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Read CRC */
 993:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     tmpreg1 = hspi->Instance->DR;
 994:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* To avoid GCC warning */
 995:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     UNUSED(tmpreg1);
 996:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 997:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 998:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check if CRC error occurred */
 999:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_CRCERR) != RESET)
1000:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1001:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Check if CRC error is valid or not (workaround to be applied or not) */
1002:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if (SPI_ISCRCErrorValid(hspi) == SPI_VALID_CRC_ERROR)
1003:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 19


1004:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_CRC);
1005:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1006:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Reset CRC Calculation */
1007:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       SPI_RESET_CRC(hspi);
1008:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1009:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    	  errorcode = HAL_ERROR;
1010:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
1011:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     else
1012:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
1013:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       __HAL_SPI_CLEAR_CRCERRFLAG(hspi);
1014:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
1015:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1016:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
1017:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1018:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Wait until TXE flag */
1019:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(SPI_WaitFlagStateUntilTimeout(hspi, SPI_FLAG_TXE, SET, Timeout, tickstart) != HAL_OK)
1020:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1021:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     errorcode = HAL_TIMEOUT;
1022:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
1023:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1024:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   
1025:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check Busy flag */
1026:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(SPI_CheckFlag_BSY(hspi, Timeout, tickstart) != HAL_OK)
1027:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1028:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     errorcode = HAL_ERROR;
1029:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->ErrorCode = HAL_SPI_ERROR_FLAG;
1030:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
1031:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1032:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1033:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Clear overrun flag in 2 Lines communication mode because received is not read */
1034:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.Direction == SPI_DIRECTION_2LINES)
1035:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1036:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     __HAL_SPI_CLEAR_OVRFLAG(hspi);
1037:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1038:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   
1039:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** error :
1040:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->State = HAL_SPI_STATE_READY;
1041:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_UNLOCK(hspi);
1042:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return errorcode;
1043:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
1044:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1045:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
1046:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Transmit an amount of data in non-blocking mode with Interrupt.
1047:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
1048:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
1049:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  pData: pointer to data buffer
1050:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  Size: amount of data to be sent
1051:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval HAL status
1052:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
1053:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** HAL_StatusTypeDef HAL_SPI_Transmit_IT(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size)
1054:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
1055:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_StatusTypeDef errorcode = HAL_OK;
1056:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1057:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check Direction parameter */
1058:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   assert_param(IS_SPI_DIRECTION_2LINES_OR_1LINE(hspi->Init.Direction));
1059:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1060:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Process Locked */
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 20


1061:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_LOCK(hspi);
1062:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1063:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((pData == NULL) || (Size == 0U))
1064:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1065:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     errorcode = HAL_ERROR;
1066:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
1067:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1068:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1069:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->State != HAL_SPI_STATE_READY)
1070:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1071:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     errorcode = HAL_BUSY;
1072:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
1073:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1074:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1075:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Set the transaction information */
1076:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->State       = HAL_SPI_STATE_BUSY_TX;
1077:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->ErrorCode   = HAL_SPI_ERROR_NONE;
1078:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pTxBuffPtr  = (uint8_t *)pData;
1079:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferSize  = Size;
1080:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = Size;
1081:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1082:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Init field not used in handle to zero */
1083:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pRxBuffPtr  = (uint8_t *)NULL;
1084:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferSize  = 0U;
1085:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount = 0U;
1086:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxISR       = NULL;
1087:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1088:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Set the function for IT treatment */
1089:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.DataSize > SPI_DATASIZE_8BIT )
1090:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1091:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->TxISR = SPI_TxISR_16BIT;
1092:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1093:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   else
1094:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1095:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->TxISR = SPI_TxISR_8BIT;
1096:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1097:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1098:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Configure communication direction : 1Line */
1099:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.Direction == SPI_DIRECTION_1LINE)
1100:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1101:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SPI_1LINE_TX(hspi);
1102:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1103:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1104:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
1105:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Reset CRC Calculation */
1106:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
1107:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1108:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SPI_RESET_CRC(hspi);
1109:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1110:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
1111:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1112:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if (hspi->Init.Direction == SPI_DIRECTION_2LINES)
1113:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1114:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Enable TXE interrupt */
1115:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     __HAL_SPI_ENABLE_IT(hspi, (SPI_IT_TXE));
1116:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1117:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   else
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 21


1118:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1119:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Enable TXE and ERR interrupt */
1120:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     __HAL_SPI_ENABLE_IT(hspi, (SPI_IT_TXE | SPI_IT_ERR));
1121:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1122:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1123:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check if the SPI is already enabled */
1124:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((hspi->Instance->CR1 &SPI_CR1_SPE) != SPI_CR1_SPE)
1125:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1126:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Enable SPI peripheral */
1127:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     __HAL_SPI_ENABLE(hspi);
1128:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1129:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1130:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** error :
1131:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_UNLOCK(hspi);
1132:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return errorcode;
1133:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
1134:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1135:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
1136:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Receive an amount of data in non-blocking mode with Interrupt.
1137:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
1138:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
1139:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  pData: pointer to data buffer
1140:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  Size: amount of data to be sent
1141:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval HAL status
1142:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
1143:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** HAL_StatusTypeDef HAL_SPI_Receive_IT(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size)
1144:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
1145:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_StatusTypeDef errorcode = HAL_OK;
1146:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1147:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((hspi->Init.Direction == SPI_DIRECTION_2LINES) && (hspi->Init.Mode == SPI_MODE_MASTER))
1148:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1149:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****      hspi->State = HAL_SPI_STATE_BUSY_RX;
1150:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****      /* Call transmit-receive function to send Dummy data on Tx line and generate clock on CLK line
1151:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****      return HAL_SPI_TransmitReceive_IT(hspi, pData, pData, Size);
1152:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1153:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1154:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Process Locked */
1155:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_LOCK(hspi);
1156:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1157:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->State != HAL_SPI_STATE_READY)
1158:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1159:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     errorcode = HAL_BUSY;
1160:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
1161:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1162:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1163:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((pData == NULL) || (Size == 0U))
1164:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1165:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     errorcode = HAL_ERROR;
1166:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
1167:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1168:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1169:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Set the transaction information */
1170:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->State       = HAL_SPI_STATE_BUSY_RX;
1171:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->ErrorCode   = HAL_SPI_ERROR_NONE;
1172:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pRxBuffPtr  = (uint8_t *)pData;
1173:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferSize  = Size;
1174:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount = Size;
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 22


1175:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1176:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Init field not used in handle to zero */
1177:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pTxBuffPtr  = (uint8_t *)NULL;
1178:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferSize  = 0U;
1179:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = 0U;
1180:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxISR       = NULL;
1181:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1182:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Set the function for IT treatment */
1183:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.DataSize > SPI_DATASIZE_8BIT )
1184:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1185:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->RxISR = SPI_RxISR_16BIT;
1186:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1187:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   else
1188:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1189:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->RxISR = SPI_RxISR_8BIT;
1190:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1191:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1192:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Configure communication direction : 1Line */
1193:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.Direction == SPI_DIRECTION_1LINE)
1194:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1195:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SPI_1LINE_RX(hspi);
1196:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1197:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1198:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
1199:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Reset CRC Calculation */
1200:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
1201:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1202:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SPI_RESET_CRC(hspi);
1203:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1204:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
1205:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1206:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Enable TXE and ERR interrupt */
1207:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_SPI_ENABLE_IT(hspi, (SPI_IT_RXNE | SPI_IT_ERR));
1208:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1209:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Note : The SPI must be enabled after unlocking current process
1210:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****             to avoid the risk of SPI interrupt handle execution before current
1211:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****             process unlock */
1212:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1213:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check if the SPI is already enabled */
1214:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((hspi->Instance->CR1 &SPI_CR1_SPE) != SPI_CR1_SPE)
1215:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1216:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Enable SPI peripheral */
1217:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     __HAL_SPI_ENABLE(hspi);
1218:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1219:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1220:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** error :
1221:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Process Unlocked */
1222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_UNLOCK(hspi);
1223:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return errorcode;
1224:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
1225:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1226:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
1227:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Transmit and Receive an amount of data in non-blocking mode with Interrupt.
1228:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
1229:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
1230:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  pTxData: pointer to transmission data buffer
1231:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  pRxData: pointer to reception data buffer
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 23


1232:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  Size: amount of data to be sent and received
1233:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval HAL status
1234:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
1235:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** HAL_StatusTypeDef HAL_SPI_TransmitReceive_IT(SPI_HandleTypeDef *hspi, uint8_t *pTxData, uint8_t *pR
1236:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
1237:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t tmp = 0U, tmp1 = 0U;
1238:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_StatusTypeDef errorcode = HAL_OK;
1239:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1240:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check Direction parameter */
1241:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   assert_param(IS_SPI_DIRECTION_2LINES(hspi->Init.Direction));
1242:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1243:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Process locked */
1244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_LOCK(hspi);
1245:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1246:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   tmp  = hspi->State;
1247:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   tmp1 = hspi->Init.Mode;
1248:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   
1249:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(!((tmp == HAL_SPI_STATE_READY) || \
1250:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     ((tmp1 == SPI_MODE_MASTER) && (hspi->Init.Direction == SPI_DIRECTION_2LINES) && (tmp == HAL_SPI
1251:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1252:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     errorcode = HAL_BUSY;
1253:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
1254:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1255:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1256:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((pTxData == NULL ) || (pRxData == NULL ) || (Size == 0U))
1257:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1258:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     errorcode = HAL_ERROR;
1259:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
1260:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1261:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1262:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Don't overwrite in case of HAL_SPI_STATE_BUSY_RX */
1263:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->State == HAL_SPI_STATE_READY)
1264:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1265:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->State = HAL_SPI_STATE_BUSY_TX_RX;
1266:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1267:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1268:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Set the transaction information */
1269:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->ErrorCode   = HAL_SPI_ERROR_NONE;
1270:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pTxBuffPtr  = (uint8_t *)pTxData;
1271:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferSize  = Size;
1272:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = Size;
1273:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pRxBuffPtr  = (uint8_t *)pRxData;
1274:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferSize  = Size;
1275:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount = Size;
1276:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1277:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Set the function for IT treatment */
1278:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.DataSize > SPI_DATASIZE_8BIT )
1279:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1280:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->RxISR     = SPI_2linesRxISR_16BIT;
1281:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->TxISR     = SPI_2linesTxISR_16BIT;
1282:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1283:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   else
1284:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1285:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->RxISR     = SPI_2linesRxISR_8BIT;
1286:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->TxISR     = SPI_2linesTxISR_8BIT;
1287:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1288:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 24


1289:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
1290:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Reset CRC Calculation */
1291:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
1292:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1293:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SPI_RESET_CRC(hspi);
1294:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1295:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
1296:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1297:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Enable TXE, RXNE and ERR interrupt */
1298:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_SPI_ENABLE_IT(hspi, (SPI_IT_TXE | SPI_IT_RXNE | SPI_IT_ERR));
1299:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1300:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check if the SPI is already enabled */
1301:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((hspi->Instance->CR1 &SPI_CR1_SPE) != SPI_CR1_SPE)
1302:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1303:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Enable SPI peripheral */
1304:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     __HAL_SPI_ENABLE(hspi);
1305:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1306:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1307:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** error :
1308:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Process Unlocked */
1309:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_UNLOCK(hspi);
1310:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return errorcode;
1311:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
1312:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1313:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
1314:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Transmit an amount of data in non-blocking mode with DMA.
1315:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
1316:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
1317:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  pData: pointer to data buffer
1318:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  Size: amount of data to be sent
1319:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval HAL status
1320:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
1321:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** HAL_StatusTypeDef HAL_SPI_Transmit_DMA(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size)
1322:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
1323:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_StatusTypeDef errorcode = HAL_OK;
1324:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1325:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check Direction parameter */
1326:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   assert_param(IS_SPI_DIRECTION_2LINES_OR_1LINE(hspi->Init.Direction));
1327:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1328:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Process Locked */
1329:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_LOCK(hspi);
1330:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1331:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->State != HAL_SPI_STATE_READY)
1332:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1333:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     errorcode = HAL_BUSY;
1334:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
1335:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1336:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1337:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((pData == NULL) || (Size == 0U))
1338:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1339:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     errorcode = HAL_ERROR;
1340:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
1341:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1342:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1343:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Set the transaction information */
1344:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->State       = HAL_SPI_STATE_BUSY_TX;
1345:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->ErrorCode   = HAL_SPI_ERROR_NONE;
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 25


1346:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pTxBuffPtr  = (uint8_t *)pData;
1347:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferSize  = Size;
1348:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = Size;
1349:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1350:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Init field not used in handle to zero */
1351:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pRxBuffPtr  = (uint8_t *)NULL;
1352:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxISR       = NULL;
1353:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxISR       = NULL;
1354:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferSize  = 0U;
1355:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount = 0U;
1356:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1357:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Configure communication direction : 1Line */
1358:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.Direction == SPI_DIRECTION_1LINE)
1359:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1360:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SPI_1LINE_TX(hspi);
1361:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1362:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1363:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
1364:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Reset CRC Calculation */
1365:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
1366:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1367:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SPI_RESET_CRC(hspi);
1368:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1369:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
1370:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1371:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Set the SPI TxDMA Half transfer complete callback */
1372:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->hdmatx->XferHalfCpltCallback = SPI_DMAHalfTransmitCplt;
1373:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1374:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Set the SPI TxDMA transfer complete callback */
1375:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->hdmatx->XferCpltCallback = SPI_DMATransmitCplt;
1376:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1377:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Set the DMA error callback */
1378:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->hdmatx->XferErrorCallback = SPI_DMAError;
1379:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1380:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Set the DMA AbortCpltCallback */
1381:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->hdmatx->XferAbortCallback = NULL;
1382:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1383:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Enable the Tx DMA Stream */
1384:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_DMA_Start_IT(hspi->hdmatx, (uint32_t)hspi->pTxBuffPtr, (uint32_t)&hspi->Instance->DR, hspi->T
1385:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1386:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check if the SPI is already enabled */
1387:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((hspi->Instance->CR1 &SPI_CR1_SPE) != SPI_CR1_SPE)
1388:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Enable SPI peripheral */
1390:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     __HAL_SPI_ENABLE(hspi);
1391:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1392:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1393:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Enable the SPI Error Interrupt Bit */
1394:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SET_BIT(hspi->Instance->CR2, SPI_CR2_ERRIE);
1395:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1396:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Enable Tx DMA Request */
1397:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SET_BIT(hspi->Instance->CR2, SPI_CR2_TXDMAEN);
1398:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1399:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** error :
1400:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Process Unlocked */
1401:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_UNLOCK(hspi);
1402:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return errorcode;
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 26


1403:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
1404:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1405:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
1406:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Receive an amount of data in non-blocking mode with DMA.
1407:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
1408:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
1409:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  pData: pointer to data buffer
1410:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @note   When the CRC feature is enabled the pData Length must be Size + 1.
1411:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  Size: amount of data to be sent
1412:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval HAL status
1413:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
1414:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** HAL_StatusTypeDef HAL_SPI_Receive_DMA(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size)
1415:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
1416:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_StatusTypeDef errorcode = HAL_OK;
1417:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1418:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((hspi->Init.Direction == SPI_DIRECTION_2LINES)&&(hspi->Init.Mode == SPI_MODE_MASTER))
1419:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1420:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****      hspi->State = HAL_SPI_STATE_BUSY_RX;
1421:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****      /* Call transmit-receive function to send Dummy data on Tx line and generate clock on CLK line
1422:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****      return HAL_SPI_TransmitReceive_DMA(hspi, pData, pData, Size);
1423:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1424:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1425:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Process Locked */
1426:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_LOCK(hspi);
1427:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1428:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->State != HAL_SPI_STATE_READY)
1429:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1430:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     errorcode = HAL_BUSY;
1431:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
1432:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1433:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1434:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((pData == NULL) || (Size == 0U))
1435:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1436:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     errorcode = HAL_ERROR;
1437:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
1438:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1439:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1440:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Set the transaction information */
1441:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->State       = HAL_SPI_STATE_BUSY_RX;
1442:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->ErrorCode   = HAL_SPI_ERROR_NONE;
1443:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pRxBuffPtr  = (uint8_t *)pData;
1444:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferSize  = Size;
1445:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount = Size;
1446:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1447:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /*Init field not used in handle to zero */
1448:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxISR       = NULL;
1449:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxISR       = NULL;
1450:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferSize  = 0U;
1451:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = 0U;
1452:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1453:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Configure communication direction : 1Line */
1454:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.Direction == SPI_DIRECTION_1LINE)
1455:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1456:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SPI_1LINE_RX(hspi);
1457:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1458:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1459:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 27


1460:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Reset CRC Calculation */
1461:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
1462:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1463:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SPI_RESET_CRC(hspi);
1464:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1465:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
1466:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1467:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Set the SPI RxDMA Half transfer complete callback */
1468:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->hdmarx->XferHalfCpltCallback = SPI_DMAHalfReceiveCplt;
1469:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1470:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Set the SPI Rx DMA transfer complete callback */
1471:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->hdmarx->XferCpltCallback = SPI_DMAReceiveCplt;
1472:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1473:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Set the DMA error callback */
1474:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->hdmarx->XferErrorCallback = SPI_DMAError;
1475:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1476:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****  /* Set the DMA AbortCpltCallback */
1477:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->hdmarx->XferAbortCallback = NULL;
1478:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1479:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Enable the Rx DMA Stream */
1480:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_DMA_Start_IT(hspi->hdmarx, (uint32_t)&hspi->Instance->DR, (uint32_t)hspi->pRxBuffPtr, hspi->R
1481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1482:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check if the SPI is already enabled */
1483:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((hspi->Instance->CR1 &SPI_CR1_SPE) != SPI_CR1_SPE)
1484:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1485:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Enable SPI peripheral */
1486:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     __HAL_SPI_ENABLE(hspi);
1487:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1488:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1489:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Enable the SPI Error Interrupt Bit */
1490:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SET_BIT(hspi->Instance->CR2, SPI_CR2_ERRIE);
1491:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1492:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Enable Rx DMA Request */
1493:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SET_BIT(hspi->Instance->CR2, SPI_CR2_RXDMAEN);
1494:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1495:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** error:
1496:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Process Unlocked */
1497:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_UNLOCK(hspi);
1498:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return errorcode;
1499:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
1500:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1501:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
1502:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Transmit and Receive an amount of data in non-blocking mode with DMA.
1503:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
1504:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
1505:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  pTxData: pointer to transmission data buffer
1506:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  pRxData: pointer to reception data buffer
1507:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @note   When the CRC feature is enabled the pRxData Length must be Size + 1
1508:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  Size: amount of data to be sent
1509:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval HAL status
1510:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
1511:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** HAL_StatusTypeDef HAL_SPI_TransmitReceive_DMA(SPI_HandleTypeDef *hspi, uint8_t *pTxData, uint8_t *p
1512:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
1513:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t tmp = 0U, tmp1 = 0U;
1514:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_StatusTypeDef errorcode = HAL_OK;
1515:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1516:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check Direction parameter */
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 28


1517:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   assert_param(IS_SPI_DIRECTION_2LINES(hspi->Init.Direction));
1518:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1519:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Process locked */
1520:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_LOCK(hspi);
1521:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1522:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   tmp  = hspi->State;
1523:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   tmp1 = hspi->Init.Mode;
1524:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(!((tmp == HAL_SPI_STATE_READY) ||
1525:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       ((tmp1 == SPI_MODE_MASTER) && (hspi->Init.Direction == SPI_DIRECTION_2LINES) && (tmp == HAL_S
1526:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1527:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     errorcode = HAL_BUSY;
1528:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
1529:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1530:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1531:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((pTxData == NULL ) || (pRxData == NULL ) || (Size == 0U))
1532:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1533:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     errorcode = HAL_ERROR;
1534:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
1535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1536:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1537:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Don't overwrite in case of HAL_SPI_STATE_BUSY_RX */
1538:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->State == HAL_SPI_STATE_READY)
1539:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1540:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->State = HAL_SPI_STATE_BUSY_TX_RX;
1541:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1542:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Set the transaction information */
1544:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->ErrorCode   = HAL_SPI_ERROR_NONE;
1545:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pTxBuffPtr  = (uint8_t*)pTxData;
1546:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferSize  = Size;
1547:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = Size;
1548:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pRxBuffPtr  = (uint8_t*)pRxData;
1549:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferSize  = Size;
1550:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount = Size;
1551:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1552:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Init field not used in handle to zero */
1553:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxISR       = NULL;
1554:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxISR       = NULL;
1555:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1556:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
1557:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Reset CRC Calculation */
1558:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
1559:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1560:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SPI_RESET_CRC(hspi);
1561:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1562:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
1563:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1564:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check if we are in Rx only or in Rx/Tx Mode and configure the DMA transfer complete callback *
1565:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->State == HAL_SPI_STATE_BUSY_RX)
1566:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1567:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Set the SPI Rx DMA Half transfer complete callback */
1568:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->hdmarx->XferHalfCpltCallback = SPI_DMAHalfReceiveCplt;
1569:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->hdmarx->XferCpltCallback     = SPI_DMAReceiveCplt;
1570:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1571:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   else
1572:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1573:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Set the SPI Tx/Rx DMA Half transfer complete callback */
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 29


1574:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->hdmarx->XferHalfCpltCallback = SPI_DMAHalfTransmitReceiveCplt;
1575:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->hdmarx->XferCpltCallback     = SPI_DMATransmitReceiveCplt;
1576:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1577:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1578:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Set the DMA error callback */
1579:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->hdmarx->XferErrorCallback = SPI_DMAError;
1580:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1581:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Set the DMA AbortCpltCallback */
1582:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->hdmarx->XferAbortCallback = NULL;
1583:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1584:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Enable the Rx DMA Stream */
1585:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_DMA_Start_IT(hspi->hdmarx, (uint32_t)&hspi->Instance->DR, (uint32_t)hspi->pRxBuffPtr, hspi->R
1586:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1587:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Enable Rx DMA Request */
1588:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SET_BIT(hspi->Instance->CR2, SPI_CR2_RXDMAEN);
1589:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1590:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Set the SPI Tx DMA transfer complete callback as NULL because the communication closing
1591:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   is performed in DMA reception complete callback  */
1592:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->hdmatx->XferHalfCpltCallback = NULL;
1593:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->hdmatx->XferCpltCallback     = NULL;
1594:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->hdmatx->XferErrorCallback    = NULL;
1595:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->hdmatx->XferAbortCallback    = NULL;
1596:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1597:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Enable the Tx DMA Stream */
1598:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_DMA_Start_IT(hspi->hdmatx, (uint32_t)hspi->pTxBuffPtr, (uint32_t)&hspi->Instance->DR, hspi->T
1599:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1600:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check if the SPI is already enabled */
1601:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((hspi->Instance->CR1 &SPI_CR1_SPE) != SPI_CR1_SPE)
1602:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1603:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Enable SPI peripheral */
1604:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     __HAL_SPI_ENABLE(hspi);
1605:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1606:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Enable the SPI Error Interrupt Bit */
1607:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SET_BIT(hspi->Instance->CR2, SPI_CR2_ERRIE);
1608:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1609:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Enable Tx DMA Request */
1610:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SET_BIT(hspi->Instance->CR2, SPI_CR2_TXDMAEN);
1611:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1612:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** error :
1613:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Process Unlocked */
1614:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_UNLOCK(hspi);
1615:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return errorcode;
1616:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
1617:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1618:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
1619:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Abort ongoing transfer (blocking mode).
1620:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi SPI handle.
1621:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @note   This procedure could be used for aborting any ongoing transfer (Tx and Rx),
1622:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *         started in Interrupt or DMA mode.
1623:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *         This procedure performs following operations :
1624:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *           - Disable SPI Interrupts (depending of transfer direction)
1625:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *           - Disable the DMA transfer in the peripheral register (if enabled)
1626:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *           - Abort DMA transfer by calling HAL_DMA_Abort (in case of transfer in DMA mode)
1627:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *           - Set handle State to READY
1628:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @note   This procedure is executed in blocking mode : when exiting function, Abort is considere
1629:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @note   Once transfer is aborted, the __HAL_SPI_CLEAR_OVRFLAG() macro must be called in user ap
1630:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *         before starting new SPI receive process.
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 30


1631:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval HAL status
1632:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** */
1633:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** HAL_StatusTypeDef HAL_SPI_Abort(SPI_HandleTypeDef *hspi)
1634:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
1635:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __IO uint32_t count = SPI_DEFAULT_TIMEOUT * (SystemCoreClock / 24U / 1000U);
1636:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1637:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Disable TXEIE, RXNEIE and ERRIE(mode fault event, overrun error, TI frame error) interrupts */
1638:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(HAL_IS_BIT_SET(hspi->Instance->CR2, SPI_CR2_TXEIE))
1639:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1640:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->TxISR = SPI_AbortTx_ISR;
1641:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1642:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1643:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(HAL_IS_BIT_SET(hspi->Instance->CR2, SPI_CR2_RXNEIE))
1644:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1645:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->RxISR = SPI_AbortRx_ISR;
1646:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1647:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1648:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Clear ERRIE interrupts in case of DMA Mode */
1649:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   CLEAR_BIT(hspi->Instance->CR2, SPI_CR2_ERRIE);
1650:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1651:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Disable the SPI DMA Tx or SPI DMA Rx request if enabled */
1652:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if ((HAL_IS_BIT_SET(hspi->Instance->CR2, SPI_CR2_TXDMAEN)) || (HAL_IS_BIT_SET(hspi->Instance->CR2
1653:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1654:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Abort the SPI DMA Tx channel : use blocking DMA Abort API (no callback) */  
1655:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->hdmatx != NULL)
1656:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
1657:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Set the SPI DMA Abort callback :
1658:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       will lead to call HAL_SPI_AbortCpltCallback() at end of DMA abort procedure */
1659:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       hspi->hdmatx->XferAbortCallback = NULL;
1660:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       
1661:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Abort DMA Tx Handle linked to SPI Peripheral */
1662:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       HAL_DMA_Abort(hspi->hdmatx);
1663:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1664:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Disable Tx DMA Request */
1665:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       CLEAR_BIT(hspi->Instance->CR2, (SPI_CR2_TXDMAEN));
1666:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1667:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Wait until TXE flag is set */
1668:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       do
1669:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
1670:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         if(count-- == 0U)
1671:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
1672:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_FLAG);
1673:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           break;
1674:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         }
1675:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
1676:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       while((hspi->Instance->SR & SPI_FLAG_TXE) == RESET);       
1677:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
1678:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Abort the SPI DMA Rx channel : use blocking DMA Abort API (no callback) */
1679:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->hdmarx != NULL)
1680:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
1681:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Set the SPI DMA Abort callback :
1682:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       will lead to call HAL_SPI_AbortCpltCallback() at end of DMA abort procedure */
1683:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       hspi->hdmarx->XferAbortCallback = NULL;
1684:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       
1685:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Abort DMA Rx Handle linked to SPI Peripheral */
1686:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       HAL_DMA_Abort(hspi->hdmarx);
1687:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 31


1688:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Disable peripheral */
1689:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       __HAL_SPI_DISABLE(hspi); 
1690:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1691:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Disable Rx DMA Request */
1692:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       CLEAR_BIT(hspi->Instance->CR2, (SPI_CR2_RXDMAEN));
1693:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       
1694:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
1695:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1696:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Reset Tx and Rx transfer counters */
1697:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount = 0U;
1698:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = 0U;
1699:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1700:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Reset errorCode */
1701:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->ErrorCode = HAL_SPI_ERROR_NONE;
1702:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1703:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Clear the Error flags in the SR register */
1704:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_SPI_CLEAR_OVRFLAG(hspi);
1705:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1706:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Restore hspi->state to ready */
1707:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->State = HAL_SPI_STATE_READY;
1708:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1709:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return HAL_OK;
1710:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
1711:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1712:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
1713:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Abort ongoing transfer (Interrupt mode).
1714:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi SPI handle.
1715:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @note   This procedure could be used for aborting any ongoing transfer (Tx and Rx),
1716:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *         started in Interrupt or DMA mode.
1717:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *         This procedure performs following operations :
1718:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *           - Disable SPI Interrupts (depending of transfer direction)
1719:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *           - Disable the DMA transfer in the peripheral register (if enabled)
1720:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *           - Abort DMA transfer by calling HAL_DMA_Abort_IT (in case of transfer in DMA mode)
1721:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *           - Set handle State to READY
1722:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *           - At abort completion, call user abort complete callback
1723:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @note   This procedure is executed in Interrupt mode, meaning that abort procedure could be
1724:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *         considered as completed only when user abort complete callback is executed (not when ex
1725:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @note   Once transfer is aborted, the __HAL_SPI_CLEAR_OVRFLAG() macro must be called in user ap
1726:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *         before starting new SPI receive process.
1727:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval HAL status
1728:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** */
1729:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** HAL_StatusTypeDef HAL_SPI_Abort_IT(SPI_HandleTypeDef *hspi)
1730:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
1731:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t abortcplt;
1732:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1733:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Change Rx and Tx Irq Handler to Disable TXEIE, RXNEIE and ERRIE interrupts */
1734:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(HAL_IS_BIT_SET(hspi->Instance->CR2, SPI_CR2_TXEIE))
1735:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1736:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->TxISR = SPI_AbortTx_ISR;
1737:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1738:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1739:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(HAL_IS_BIT_SET(hspi->Instance->CR2, SPI_CR2_RXNEIE))
1740:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1741:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->RxISR = SPI_AbortRx_ISR;
1742:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1743:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1744:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Clear ERRIE interrupts in case of DMA Mode */
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 32


1745:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   CLEAR_BIT(hspi->Instance->CR2, SPI_CR2_ERRIE);
1746:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1747:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   abortcplt = 1U;
1748:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   
1749:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* If DMA Tx and/or DMA Rx Handles are associated to SPI Handle, DMA Abort complete callbacks sho
1750:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****      before any call to DMA Abort functions */  
1751:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* DMA Tx Handle is valid */
1752:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->hdmatx != NULL)
1753:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1754:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Set DMA Abort Complete callback if UART DMA Tx request if enabled.
1755:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****        Otherwise, set it to NULL */
1756:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(HAL_IS_BIT_SET(hspi->Instance->CR2, SPI_CR2_TXDMAEN))
1757:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
1758:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       hspi->hdmatx->XferAbortCallback = SPI_DMATxAbortCallback;
1759:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
1760:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     else
1761:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
1762:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       hspi->hdmatx->XferAbortCallback = NULL;
1763:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
1764:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }  
1765:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* DMA Rx Handle is valid */
1766:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->hdmarx != NULL)
1767:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1768:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Set DMA Abort Complete callback if UART DMA Rx request if enabled.
1769:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****        Otherwise, set it to NULL */
1770:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(HAL_IS_BIT_SET(hspi->Instance->CR2, SPI_CR2_RXDMAEN))
1771:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
1772:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       hspi->hdmarx->XferAbortCallback = SPI_DMARxAbortCallback;
1773:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
1774:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     else
1775:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
1776:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       hspi->hdmarx->XferAbortCallback = NULL;
1777:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
1778:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1779:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1780:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Disable the SPI DMA Tx or the SPI Rx request if enabled */
1781:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((HAL_IS_BIT_SET(hspi->Instance->CR2, SPI_CR2_TXDMAEN)) && (HAL_IS_BIT_SET(hspi->Instance->CR2,
1782:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1783:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Abort the SPI DMA Tx channel */
1784:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->hdmatx != NULL)
1785:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
1786:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Abort DMA Tx Handle linked to SPI Peripheral */
1787:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       if(HAL_DMA_Abort_IT(hspi->hdmatx) != HAL_OK)
1788:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
1789:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         hspi->hdmatx->XferAbortCallback = NULL;
1790:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
1791:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       else
1792:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
1793:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         abortcplt = 0U;
1794:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
1795:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
1796:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Abort the SPI DMA Rx channel */
1797:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->hdmarx != NULL)
1798:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
1799:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Abort DMA Rx Handle linked to SPI Peripheral */
1800:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       if(HAL_DMA_Abort_IT(hspi->hdmarx)!=  HAL_OK)
1801:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 33


1802:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         hspi->hdmarx->XferAbortCallback = NULL;
1803:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         abortcplt = 1U;
1804:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
1805:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       else
1806:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
1807:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         abortcplt = 0U;
1808:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
1809:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
1810:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1811:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1812:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Disable the SPI DMA Tx or the SPI Rx request if enabled */
1813:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if (HAL_IS_BIT_SET(hspi->Instance->CR2, SPI_CR2_TXDMAEN))
1814:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1815:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Abort the SPI DMA Tx channel */
1816:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->hdmatx != NULL)
1817:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
1818:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Abort DMA Tx Handle linked to SPI Peripheral */
1819:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       if(HAL_DMA_Abort_IT(hspi->hdmatx) != HAL_OK)
1820:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
1821:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         hspi->hdmatx->XferAbortCallback = NULL;
1822:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
1823:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       else
1824:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
1825:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         abortcplt = 0U;
1826:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
1827:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
1828:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1829:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Disable the SPI DMA Tx or the SPI Rx request if enabled */
1830:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if (HAL_IS_BIT_SET(hspi->Instance->CR2, SPI_CR2_RXDMAEN))
1831:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1832:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Abort the SPI DMA Rx channel */
1833:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->hdmarx != NULL)
1834:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
1835:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Abort DMA Rx Handle linked to SPI Peripheral */
1836:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       if(HAL_DMA_Abort_IT(hspi->hdmarx)!=  HAL_OK)
1837:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
1838:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         hspi->hdmarx->XferAbortCallback = NULL;
1839:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
1840:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       else
1841:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
1842:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         abortcplt = 0U;
1843:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
1844:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
1845:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1846:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1847:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(abortcplt == 1U)
1848:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1849:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Reset Tx and Rx transfer counters */
1850:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->RxXferCount = 0U;
1851:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->TxXferCount = 0U;
1852:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1853:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Reset errorCode */
1854:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->ErrorCode = HAL_SPI_ERROR_NONE;
1855:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1856:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Clear the Error flags in the SR register */
1857:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     __HAL_SPI_CLEAR_OVRFLAG(hspi);
1858:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 34


1859:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Restore hspi->State to Ready */
1860:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->State = HAL_SPI_STATE_READY;
1861:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1862:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* As no DMA to be aborted, call directly user Abort complete callback */
1863:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     HAL_SPI_AbortCpltCallback(hspi);
1864:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1865:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return HAL_OK;
1866:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
1867:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1868:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
1869:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Pause the DMA Transfer.
1870:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
1871:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for the specified SPI module.
1872:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval HAL status
1873:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
1874:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** HAL_StatusTypeDef HAL_SPI_DMAPause(SPI_HandleTypeDef *hspi)
1875:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
1876:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Process Locked */
1877:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_LOCK(hspi);
1878:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1879:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Disable the SPI DMA Tx & Rx requests */
1880:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   CLEAR_BIT(hspi->Instance->CR2, SPI_CR2_TXDMAEN | SPI_CR2_RXDMAEN);
1881:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1882:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Process Unlocked */
1883:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_UNLOCK(hspi);
1884:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1885:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return HAL_OK;
1886:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
1887:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1888:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
1889:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Resume the DMA Transfer.
1890:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
1891:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for the specified SPI module.
1892:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval HAL status
1893:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
1894:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** HAL_StatusTypeDef HAL_SPI_DMAResume(SPI_HandleTypeDef *hspi)
1895:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
1896:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Process Locked */
1897:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_LOCK(hspi);
1898:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1899:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Enable the SPI DMA Tx & Rx requests */
1900:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SET_BIT(hspi->Instance->CR2, SPI_CR2_TXDMAEN | SPI_CR2_RXDMAEN);
1901:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1902:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Process Unlocked */
1903:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_UNLOCK(hspi);
1904:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1905:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return HAL_OK;
1906:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
1907:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1908:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
1909:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief Stop the DMA Transfer.
1910:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
1911:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for the specified SPI module.
1912:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval HAL status
1913:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
1914:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** HAL_StatusTypeDef HAL_SPI_DMAStop(SPI_HandleTypeDef *hspi)
1915:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 35


1916:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* The Lock is not implemented on this API to allow the user application
1917:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****      to call the HAL SPI API under callbacks HAL_SPI_TxCpltCallback() or HAL_SPI_RxCpltCallback() o
1918:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****      when calling HAL_DMA_Abort() API the DMA TX/RX Transfer complete interrupt is generated
1919:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****      and the correspond call back is executed HAL_SPI_TxCpltCallback() or HAL_SPI_RxCpltCallback() 
1920:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****      */
1921:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1922:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Abort the SPI DMA tx Stream */
1923:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->hdmatx != NULL)
1924:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1925:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     HAL_DMA_Abort(hspi->hdmatx);
1926:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1927:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Abort the SPI DMA rx Stream */
1928:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->hdmarx != NULL)
1929:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1930:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     HAL_DMA_Abort(hspi->hdmarx);
1931:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1932:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1933:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Disable the SPI DMA Tx & Rx requests */
1934:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   CLEAR_BIT(hspi->Instance->CR2, SPI_CR2_TXDMAEN | SPI_CR2_RXDMAEN);
1935:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->State = HAL_SPI_STATE_READY;
1936:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return HAL_OK;
1937:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
1938:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1939:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
1940:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Handle SPI interrupt request.
1941:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
1942:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for the specified SPI module.
1943:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
1944:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
1945:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** void HAL_SPI_IRQHandler(SPI_HandleTypeDef *hspi)
1946:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
1947:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t itsource = hspi->Instance->CR2;
1948:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t itflag   = hspi->Instance->SR;
1949:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1950:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* SPI in mode Receiver ----------------------------------------------------*/
1951:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(((itflag & SPI_FLAG_OVR) == RESET) &&
1952:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****      ((itflag & SPI_FLAG_RXNE) != RESET) && ((itsource & SPI_IT_RXNE) != RESET))
1953:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1954:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->RxISR(hspi);
1955:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     return;
1956:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1957:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1958:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* SPI in mode Transmitter -------------------------------------------------*/
1959:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(((itflag & SPI_FLAG_TXE) != RESET) && ((itsource & SPI_IT_TXE) != RESET))
1960:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1961:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->TxISR(hspi);
1962:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     return;
1963:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
1964:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1965:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* SPI in Error Treatment --------------------------------------------------*/
1966:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(((itflag & (SPI_FLAG_MODF | SPI_FLAG_OVR)) != RESET) && ((itsource & SPI_IT_ERR) != RESET))
1967:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
1968:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* SPI Overrun error interrupt occurred ----------------------------------*/
1969:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if((itflag & SPI_FLAG_OVR) != RESET)
1970:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
1971:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       if(hspi->State != HAL_SPI_STATE_BUSY_TX)
1972:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 36


1973:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_OVR);
1974:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         __HAL_SPI_CLEAR_OVRFLAG(hspi);
1975:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
1976:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       else
1977:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
1978:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         __HAL_SPI_CLEAR_OVRFLAG(hspi);
1979:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         return;
1980:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
1981:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
1982:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1983:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* SPI Mode Fault error interrupt occurred -------------------------------*/
1984:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if((itflag & SPI_FLAG_MODF) != RESET)
1985:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
1986:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_MODF);
1987:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       __HAL_SPI_CLEAR_MODFFLAG(hspi);
1988:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
1989:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1990:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->ErrorCode != HAL_SPI_ERROR_NONE)
1991:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
1992:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Disable all interrupts */
1993:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       __HAL_SPI_DISABLE_IT(hspi, SPI_IT_RXNE | SPI_IT_TXE | SPI_IT_ERR);
1994:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
1995:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       hspi->State = HAL_SPI_STATE_READY;
1996:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Disable the SPI DMA requests if enabled */
1997:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       if ((HAL_IS_BIT_SET(itsource, SPI_CR2_TXDMAEN))||(HAL_IS_BIT_SET(itsource, SPI_CR2_RXDMAEN)))
1998:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
1999:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         CLEAR_BIT(hspi->Instance->CR2, (SPI_CR2_TXDMAEN | SPI_CR2_RXDMAEN));
2000:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2001:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Abort the SPI DMA Rx channel */
2002:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         if(hspi->hdmarx != NULL)
2003:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
2004:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           /* Set the SPI DMA Abort callback :
2005:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           will lead to call HAL_SPI_ErrorCallback() at end of DMA abort procedure */
2006:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           hspi->hdmarx->XferAbortCallback = SPI_DMAAbortOnError;
2007:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           HAL_DMA_Abort_IT(hspi->hdmarx);
2008:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         }
2009:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Abort the SPI DMA Tx channel */
2010:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         if(hspi->hdmatx != NULL)
2011:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
2012:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           /* Set the SPI DMA Abort callback :
2013:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           will lead to call HAL_SPI_ErrorCallback() at end of DMA abort procedure */
2014:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           hspi->hdmatx->XferAbortCallback = SPI_DMAAbortOnError;
2015:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           HAL_DMA_Abort_IT(hspi->hdmatx);
2016:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         }
2017:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
2018:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       else
2019:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
2020:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Call user error callback */
2021:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         HAL_SPI_ErrorCallback(hspi);
2022:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
2023:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2024:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     return;
2025:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
2026:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2027:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2028:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2029:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief Tx Transfer completed callback.
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 37


2030:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
2031:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
2032:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2033:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2034:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** __weak void HAL_SPI_TxCpltCallback(SPI_HandleTypeDef *hspi)
2035:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2036:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Prevent unused argument(s) compilation warning */
2037:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   UNUSED(hspi);
2038:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* NOTE : This function should not be modified, when the callback is needed,
2039:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****             the HAL_SPI_TxCpltCallback should be implemented in the user file
2040:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2041:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2042:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2043:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2044:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief Rx Transfer completed callback.
2045:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
2046:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
2047:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2048:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2049:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** __weak void HAL_SPI_RxCpltCallback(SPI_HandleTypeDef *hspi)
2050:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2051:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Prevent unused argument(s) compilation warning */
2052:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   UNUSED(hspi);
2053:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* NOTE : This function should not be modified, when the callback is needed,
2054:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****             the HAL_SPI_RxCpltCallback should be implemented in the user file
2055:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2056:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2057:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2058:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2059:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief Tx and Rx Transfer completed callback.
2060:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
2061:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
2062:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2063:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2064:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** __weak void HAL_SPI_TxRxCpltCallback(SPI_HandleTypeDef *hspi)
2065:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2066:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Prevent unused argument(s) compilation warning */
2067:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   UNUSED(hspi);
2068:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* NOTE : This function should not be modified, when the callback is needed,
2069:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****             the HAL_SPI_TxRxCpltCallback should be implemented in the user file
2070:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2071:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2072:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2073:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2074:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief Tx Half Transfer completed callback.
2075:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
2076:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
2077:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2078:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2079:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** __weak void HAL_SPI_TxHalfCpltCallback(SPI_HandleTypeDef *hspi)
2080:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2081:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Prevent unused argument(s) compilation warning */
2082:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   UNUSED(hspi);
2083:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* NOTE : This function should not be modified, when the callback is needed,
2084:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****             the HAL_SPI_TxHalfCpltCallback should be implemented in the user file
2085:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2086:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 38


2087:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2088:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2089:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief Rx Half Transfer completed callback.
2090:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
2091:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
2092:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2093:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2094:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** __weak void HAL_SPI_RxHalfCpltCallback(SPI_HandleTypeDef *hspi)
2095:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2096:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Prevent unused argument(s) compilation warning */
2097:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   UNUSED(hspi);
2098:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* NOTE : This function should not be modified, when the callback is needed,
2099:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****             the HAL_SPI_RxHalfCpltCallback() should be implemented in the user file
2100:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2101:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2102:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2103:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2104:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief Tx and Rx Half Transfer callback.
2105:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
2106:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
2107:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2108:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2109:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** __weak void HAL_SPI_TxRxHalfCpltCallback(SPI_HandleTypeDef *hspi)
2110:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2111:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Prevent unused argument(s) compilation warning */
2112:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   UNUSED(hspi);
2113:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* NOTE : This function should not be modified, when the callback is needed,
2114:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****             the HAL_SPI_TxRxHalfCpltCallback() should be implemented in the user file
2115:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2116:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2117:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2118:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2119:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief SPI error callback.
2120:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
2121:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
2122:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2123:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2124:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****  __weak void HAL_SPI_ErrorCallback(SPI_HandleTypeDef *hspi)
2125:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2126:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Prevent unused argument(s) compilation warning */
2127:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   UNUSED(hspi);
2128:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* NOTE : This function should not be modified, when the callback is needed,
2129:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****             the HAL_SPI_ErrorCallback should be implemented in the user file
2130:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    */
2131:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* NOTE : The ErrorCode parameter in the hspi handle is updated by the SPI processes
2132:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****             and user can use HAL_SPI_GetError() API to check the latest error occurred
2133:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2134:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2135:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2136:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2137:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  SPI Abort Complete callback.
2138:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi SPI handle.
2139:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2140:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2141:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** __weak void HAL_SPI_AbortCpltCallback(SPI_HandleTypeDef *hspi)
2142:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2143:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Prevent unused argument(s) compilation warning */
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 39


2144:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   UNUSED(hspi);
2145:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2146:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* NOTE : This function should not be modified, when the callback is needed,
2147:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****             the HAL_SPI_AbortCpltCallback can be implemented in the user file.
2148:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    */
2149:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2150:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2151:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2152:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @}
2153:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2154:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2155:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /** @defgroup SPI_Exported_Functions_Group3 Peripheral State and Errors functions
2156:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief   SPI control functions
2157:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *
2158:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** @verbatim
2159:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****  ===============================================================================
2160:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****                       ##### Peripheral State and Errors functions #####
2161:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****  ===============================================================================
2162:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     [..]
2163:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     This subsection provides a set of functions allowing to control the SPI.
2164:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****      (+) HAL_SPI_GetState() API can be helpful to check in run-time the state of the SPI peripheral
2165:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****      (+) HAL_SPI_GetError() check in run-time Errors occurring during communication
2166:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** @endverbatim
2167:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @{
2168:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2169:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2170:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2171:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Return the SPI handle state.
2172:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
2173:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
2174:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval SPI state
2175:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2176:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** HAL_SPI_StateTypeDef HAL_SPI_GetState(SPI_HandleTypeDef *hspi)
2177:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2178:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Return SPI handle state */
2179:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return hspi->State;
2180:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2181:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2182:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2183:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Return the SPI error code.
2184:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
2185:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
2186:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval SPI error code in bitmap format
2187:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2188:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** uint32_t HAL_SPI_GetError(SPI_HandleTypeDef *hspi)
2189:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2190:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Return SPI ErrorCode */
2191:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return hspi->ErrorCode;
2192:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2193:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2194:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2195:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @}
2196:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2197:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2198:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2199:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @}
2200:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 40


2201:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2202:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /** @addtogroup SPI_Private_Functions
2203:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief   Private functions
2204:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @{
2205:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2206:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2207:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2208:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief DMA SPI transmit process complete callback.
2209:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
2210:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for the specified DMA module.
2211:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2212:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2213:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_DMATransmitCplt(DMA_HandleTypeDef *hdma)
2214:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2215:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SPI_HandleTypeDef* hspi = ( SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
2216:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t tickstart = 0U;
2217:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2218:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Init tickstart for timeout managment*/
2219:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   tickstart = HAL_GetTick();
2220:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2221:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* DMA Normal Mode */
2222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((hdma->Instance->CCR & DMA_CCR_CIRC) != DMA_CCR_CIRC)
2223:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
2224:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Disable Tx DMA Request */
2225:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     CLEAR_BIT(hspi->Instance->CR2, SPI_CR2_TXDMAEN);
2226:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2227:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Check the end of the transaction */
2228:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(SPI_CheckFlag_BSY(hspi, SPI_DEFAULT_TIMEOUT, tickstart) != HAL_OK)
2229:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
2230:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_FLAG);
2231:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2232:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2233:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Clear overrun flag in 2 Lines communication mode because received data is not read */
2234:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->Init.Direction == SPI_DIRECTION_2LINES)
2235:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
2236:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       __HAL_SPI_CLEAR_OVRFLAG(hspi);
2237:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2238:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2239:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->TxXferCount = 0U;
2240:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->State = HAL_SPI_STATE_READY;
2241:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2242:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->ErrorCode != HAL_SPI_ERROR_NONE)
2243:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
2244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       HAL_SPI_ErrorCallback(hspi);
2245:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       return;
2246:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2247:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
2248:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_SPI_TxCpltCallback(hspi);
2249:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2250:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2251:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2252:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief DMA SPI receive process complete callback.
2253:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
2254:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for the specified DMA module.
2255:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2256:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2257:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_DMAReceiveCplt(DMA_HandleTypeDef *hdma)
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 41


2258:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2259:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SPI_HandleTypeDef* hspi = ( SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
2260:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
2261:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t tickstart = 0U;
2262:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __IO uint16_t tmpreg = 0U;
2263:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2264:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Init tickstart for timeout management*/
2265:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   tickstart = HAL_GetTick();
2266:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
2267:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****  
2268:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((hdma->Instance->CCR & DMA_CCR_CIRC) != DMA_CCR_CIRC)
2269:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
2270:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
2271:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* CRC handling */
2272:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
2273:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
2274:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Wait until RXNE flag */
2275:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       if(SPI_WaitFlagStateUntilTimeout(hspi, SPI_FLAG_RXNE, SPI_FLAG_RXNE, SPI_DEFAULT_TIMEOUT, tic
2276:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
2277:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Error on the CRC reception */
2278:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_CRC);
2279:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
2280:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Read CRC */
2281:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       tmpreg = hspi->Instance->DR;
2282:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* To avoid GCC warning */
2283:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       UNUSED(tmpreg);
2284:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2285:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
2286:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2287:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Disable Rx/Tx DMA Request (done by default to handle the case master rx direction 2 lines) *
2288:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     CLEAR_BIT(hspi->Instance->CR2, SPI_CR2_TXDMAEN | SPI_CR2_RXDMAEN);
2289:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2290:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Check the end of the transaction */
2291:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if((hspi->Init.Mode == SPI_MODE_MASTER)&&((hspi->Init.Direction == SPI_DIRECTION_1LINE)||(hspi-
2292:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
2293:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Disable SPI peripheral */
2294:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       __HAL_SPI_DISABLE(hspi);
2295:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2296:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2297:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->RxXferCount = 0U;
2298:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->State = HAL_SPI_STATE_READY;
2299:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2300:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
2301:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Check if CRC error occurred */
2302:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_CRCERR) != RESET)
2303:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
2304:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Check if CRC error is valid or not (workaround to be applied or not) */
2305:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       if (SPI_ISCRCErrorValid(hspi) == SPI_VALID_CRC_ERROR)
2306:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
2307:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_CRC);
2308:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2309:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Reset CRC Calculation */
2310:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         SPI_RESET_CRC(hspi);
2311:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2312:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       else
2313:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
2314:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         __HAL_SPI_CLEAR_CRCERRFLAG(hspi);
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 42


2315:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
2316:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2317:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
2318:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2319:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->ErrorCode != HAL_SPI_ERROR_NONE)
2320:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
2321:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       HAL_SPI_ErrorCallback(hspi);
2322:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       return;
2323:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2324:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
2325:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_SPI_RxCpltCallback(hspi);
2326:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2327:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2328:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2329:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  DMA SPI transmit receive process complete callback.
2330:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
2331:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for the specified DMA module.
2332:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2333:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2334:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_DMATransmitReceiveCplt(DMA_HandleTypeDef *hdma)
2335:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2336:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SPI_HandleTypeDef* hspi = ( SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
2337:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t tickstart = 0U;
2338:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
2339:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __IO int16_t tmpreg = 0U;
2340:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
2341:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Init tickstart for timeout management*/
2342:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   tickstart = HAL_GetTick();
2343:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2344:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((hdma->Instance->CCR & DMA_CCR_CIRC) != DMA_CCR_CIRC)
2345:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
2346:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
2347:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* CRC handling */
2348:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
2349:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
2350:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Wait the CRC data */
2351:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       if(SPI_WaitFlagStateUntilTimeout(hspi, SPI_FLAG_RXNE, SET, SPI_DEFAULT_TIMEOUT, tickstart) !=
2352:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
2353:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_CRC);
2354:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
2355:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Read CRC to Flush DR and RXNE flag */
2356:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       tmpreg = hspi->Instance->DR;
2357:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* To avoid GCC warning */
2358:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       UNUSED(tmpreg);
2359:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2360:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
2361:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Check the end of the transaction */
2362:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(SPI_CheckFlag_BSY(hspi, SPI_DEFAULT_TIMEOUT, tickstart) != HAL_OK)
2363:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
2364:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_FLAG);
2365:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2366:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2367:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Disable Rx/Tx DMA Request */
2368:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     CLEAR_BIT(hspi->Instance->CR2, SPI_CR2_TXDMAEN | SPI_CR2_RXDMAEN);
2369:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2370:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->TxXferCount = 0U;
2371:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->RxXferCount = 0U;
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 43


2372:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->State = HAL_SPI_STATE_READY;
2373:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2374:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
2375:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Check if CRC error occurred */
2376:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_CRCERR) != RESET)
2377:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
2378:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Check if CRC error is valid or not (workaround to be applied or not) */
2379:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       if (SPI_ISCRCErrorValid(hspi) == SPI_VALID_CRC_ERROR)
2380:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
2381:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_CRC);
2382:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2383:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Reset CRC Calculation */
2384:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         SPI_RESET_CRC(hspi);
2385:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2386:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       else
2387:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
2388:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         __HAL_SPI_CLEAR_CRCERRFLAG(hspi);
2389:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
2390:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2391:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
2392:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2393:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->ErrorCode != HAL_SPI_ERROR_NONE)
2394:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
2395:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       HAL_SPI_ErrorCallback(hspi);
2396:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       return;
2397:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2398:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
2399:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_SPI_TxRxCpltCallback(hspi);
2400:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2401:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2402:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2403:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  DMA SPI half transmit process complete callback.
2404:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
2405:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for the specified DMA module.
2406:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2407:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2408:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_DMAHalfTransmitCplt(DMA_HandleTypeDef *hdma)
2409:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2410:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SPI_HandleTypeDef* hspi = ( SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
2411:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2412:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_SPI_TxHalfCpltCallback(hspi);
2413:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2414:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2415:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2416:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  DMA SPI half receive process complete callback
2417:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
2418:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for the specified DMA module.
2419:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2420:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2421:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_DMAHalfReceiveCplt(DMA_HandleTypeDef *hdma)
2422:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2423:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SPI_HandleTypeDef* hspi = ( SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
2424:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2425:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_SPI_RxHalfCpltCallback(hspi);
2426:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2427:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2428:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 44


2429:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  DMA SPI half transmit receive process complete callback.
2430:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
2431:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for the specified DMA module.
2432:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2433:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2434:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_DMAHalfTransmitReceiveCplt(DMA_HandleTypeDef *hdma)
2435:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2436:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SPI_HandleTypeDef* hspi = ( SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
2437:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2438:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_SPI_TxRxHalfCpltCallback(hspi);
2439:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2440:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2441:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2442:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  DMA SPI communication error callback.
2443:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
2444:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for the specified DMA module.
2445:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2446:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2447:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_DMAError(DMA_HandleTypeDef *hdma)
2448:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2449:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SPI_HandleTypeDef* hspi = (SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
2450:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2451:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /* Stop the disable DMA transfer on SPI side */
2452:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   CLEAR_BIT(hspi->Instance->CR2, SPI_CR2_TXDMAEN | SPI_CR2_RXDMAEN);
2453:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2454:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_DMA);
2455:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->State = HAL_SPI_STATE_READY;
2456:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_SPI_ErrorCallback(hspi);
2457:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2458:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2459:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2460:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  DMA SPI communication abort callback, when initiated by HAL services on Error
2461:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *         (To be called at end of DMA Abort procedure following error occurrence).
2462:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hdma DMA handle.
2463:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2464:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2465:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_DMAAbortOnError(DMA_HandleTypeDef *hdma)
2466:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2467:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SPI_HandleTypeDef* hspi = ( SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
2468:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount = 0U;
2469:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = 0U;
2470:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2471:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_SPI_ErrorCallback(hspi);
2472:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2473:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2474:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2475:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  DMA SPI Tx communication abort callback, when initiated by user
2476:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *         (To be called at end of DMA Tx Abort procedure following user abort request).
2477:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @note   When this callback is executed, User Abort complete call back is called only if no
2478:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *         Abort still ongoing for Rx DMA Handle.
2479:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hdma DMA handle.
2480:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2482:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_DMATxAbortCallback(DMA_HandleTypeDef *hdma)
2483:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2484:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __IO uint32_t count = SPI_DEFAULT_TIMEOUT * (SystemCoreClock / 24U / 1000U);
2485:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SPI_HandleTypeDef* hspi = ( SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 45


2486:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2487:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->hdmatx->XferAbortCallback = NULL;
2488:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2489:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Disable Tx DMA Request */
2490:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   CLEAR_BIT(hspi->Instance->CR2, SPI_CR2_TXDMAEN );
2491:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2492:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Wait until TXE flag is set */
2493:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   do
2494:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
2495:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(count-- == 0U)
2496:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
2497:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_FLAG);
2498:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       break;
2499:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2500:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
2501:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   while((hspi->Instance->SR & SPI_FLAG_TXE) == RESET);
2502:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2503:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check if an Abort process is still ongoing */
2504:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->hdmarx != NULL)
2505:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
2506:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->hdmarx->XferAbortCallback != NULL)
2507:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
2508:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       return;
2509:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2510:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
2511:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   
2512:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* No Abort process still ongoing : All DMA channels are aborted, call user Abort Complete callba
2513:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount = 0U;
2514:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = 0U;
2515:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2516:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Reset errorCode */
2517:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->ErrorCode = HAL_SPI_ERROR_NONE;
2518:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2519:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Restore hspi->State to Ready */
2520:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->State  = HAL_SPI_STATE_READY;
2521:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2522:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Call user Abort complete callback */
2523:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_SPI_AbortCpltCallback(hspi);
2524:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2525:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2526:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2527:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  DMA SPI Rx communication abort callback, when initiated by user
2528:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *         (To be called at end of DMA Rx Abort procedure following user abort request).
2529:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @note   When this callback is executed, User Abort complete call back is called only if no
2530:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *         Abort still ongoing for Tx DMA Handle.
2531:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hdma DMA handle.
2532:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2533:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2534:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_DMARxAbortCallback(DMA_HandleTypeDef *hdma)
2535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2536:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SPI_HandleTypeDef* hspi = ( SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
2537:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2538:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Disable SPI Peripheral */
2539:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_SPI_DISABLE(hspi);
2540:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2541:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->hdmarx->XferAbortCallback = NULL;
2542:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 46


2543:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Disable Rx DMA Request */
2544:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   CLEAR_BIT(hspi->Instance->CR2, SPI_CR2_RXDMAEN);
2545:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2546:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check if an Abort process is still ongoing */
2547:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->hdmatx != NULL)
2548:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
2549:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->hdmatx->XferAbortCallback != NULL)
2550:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
2551:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       return;
2552:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2553:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
2554:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2555:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* No Abort process still ongoing : All DMA channels are aborted, call user Abort Complete callba
2556:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount = 0U;
2557:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = 0U;
2558:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2559:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Reset errorCode */
2560:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->ErrorCode = HAL_SPI_ERROR_NONE;
2561:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2562:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Clear the Error flags in the SR register */
2563:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_SPI_CLEAR_OVRFLAG(hspi);
2564:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2565:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Restore hspi->State to Ready */
2566:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->State  = HAL_SPI_STATE_READY;
2567:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2568:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Call user Abort complete callback */
2569:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_SPI_AbortCpltCallback(hspi);
2570:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2571:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2572:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2573:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Rx 8-bit handler for Transmit and Receive in Interrupt mode.
2574:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
2575:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
2576:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2577:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2578:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_2linesRxISR_8BIT(struct __SPI_HandleTypeDef *hspi)
2579:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2580:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Receive data in 8bit mode */
2581:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *hspi->pRxBuffPtr++ = *((__IO uint8_t *)&hspi->Instance->DR);
2582:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount--;
2583:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2584:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* check end of the reception */
2585:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->RxXferCount == 0U)
2586:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
2587:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
2588:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
2589:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
2590:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       hspi->RxISR =  SPI_2linesRxISR_8BITCRC;
2591:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       return;
2592:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2593:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
2594:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2595:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Disable RXNE interrupt */
2596:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     __HAL_SPI_DISABLE_IT(hspi, (SPI_IT_RXNE | SPI_IT_ERR));
2597:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2598:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->TxXferCount == 0U)
2599:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 47


2600:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       SPI_CloseRxTx_ISR(hspi);
2601:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2602:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
2603:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2604:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2605:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
2606:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2607:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Rx 8-bit handler for Transmit and Receive in Interrupt mode.
2608:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
2609:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
2610:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2611:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2612:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_2linesRxISR_8BITCRC(struct __SPI_HandleTypeDef *hspi)
2613:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2614:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __IO uint8_t tmpreg = 0U;
2615:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2616:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Read data register to flush CRC */
2617:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   tmpreg = *((__IO uint8_t *)&hspi->Instance->DR);
2618:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2619:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* To avoid GCC warning */
2620:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2621:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   UNUSED(tmpreg);
2622:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2623:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****    /* Disable RXNE interrupt */
2624:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_SPI_DISABLE_IT(hspi, (SPI_IT_RXNE | SPI_IT_ERR));
2625:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2626:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->TxXferCount == 0U)
2627:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
2628:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SPI_CloseRxTx_ISR(hspi);
2629:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
2630:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2631:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
2632:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2633:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2634:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Tx 8-bit handler for Transmit and Receive in Interrupt mode.
2635:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
2636:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
2637:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2638:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2639:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_2linesTxISR_8BIT(struct __SPI_HandleTypeDef *hspi)
2640:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2641:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *(__IO uint8_t *)&hspi->Instance->DR = (*hspi->pTxBuffPtr++);
2642:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount--;
2643:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2644:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* check the end of the transmission */
2645:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->TxXferCount == 0U)
2646:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
2647:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
2648:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
2649:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
2650:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       SET_BIT(hspi->Instance->CR1, SPI_CR1_CRCNEXT);
2651:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       __HAL_SPI_DISABLE_IT(hspi, SPI_IT_TXE);
2652:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       return;
2653:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2654:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
2655:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2656:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Disable TXE interrupt */
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 48


2657:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     __HAL_SPI_DISABLE_IT(hspi, SPI_IT_TXE);
2658:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2659:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->RxXferCount == 0U)
2660:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
2661:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       SPI_CloseRxTx_ISR(hspi);
2662:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2663:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
2664:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2665:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2666:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2667:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Rx 16-bit handler for Transmit and Receive in Interrupt mode.
2668:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
2669:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
2670:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2671:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2672:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_2linesRxISR_16BIT(struct __SPI_HandleTypeDef *hspi)
2673:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2674:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Receive data in 16 Bit mode */
2675:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *((uint16_t*)hspi->pRxBuffPtr) = hspi->Instance->DR;
2676:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pRxBuffPtr += sizeof(uint16_t);
2677:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount--;
2678:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2679:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->RxXferCount == 0U)
2680:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
2681:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
2682:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
2683:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
2684:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       hspi->RxISR =  SPI_2linesRxISR_16BITCRC;
2685:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       return;
2686:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2687:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
2688:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2689:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Disable RXNE interrupt */
2690:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     __HAL_SPI_DISABLE_IT(hspi, SPI_IT_RXNE);
2691:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2692:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->TxXferCount == 0U)
2693:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
2694:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       SPI_CloseRxTx_ISR(hspi);
2695:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2696:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
2697:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2698:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2699:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
2700:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2701:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Manage the CRC 16-bit receive for Transmit and Receive in Interrupt mode.
2702:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
2703:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
2704:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2705:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2706:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_2linesRxISR_16BITCRC(struct __SPI_HandleTypeDef *hspi)
2707:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2708:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Receive data in 16 Bit mode */
2709:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __IO uint16_t tmpreg = 0U;
2710:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2711:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Read data register to flush CRC */
2712:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   tmpreg = hspi->Instance->DR;
2713:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 49


2714:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* To avoid GCC warning */
2715:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   UNUSED(tmpreg);
2716:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2717:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Disable RXNE interrupt */
2718:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_SPI_DISABLE_IT(hspi, SPI_IT_RXNE);
2719:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2720:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SPI_CloseRxTx_ISR(hspi);
2721:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2722:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
2723:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2724:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2725:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Tx 16-bit handler for Transmit and Receive in Interrupt mode.
2726:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
2727:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
2728:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2729:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2730:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_2linesTxISR_16BIT(struct __SPI_HandleTypeDef *hspi)
2731:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2732:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Transmit data in 16 Bit mode */
2733:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->Instance->DR = *((uint16_t *)hspi->pTxBuffPtr);
2734:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pTxBuffPtr += sizeof(uint16_t);
2735:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount--;
2736:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2737:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Enable CRC Transmission */
2738:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->TxXferCount == 0U)
2739:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
2740:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
2741:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
2742:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
2743:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       SET_BIT(hspi->Instance->CR1, SPI_CR1_CRCNEXT);
2744:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       __HAL_SPI_DISABLE_IT(hspi, SPI_IT_TXE);
2745:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       return;
2746:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2747:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
2748:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2749:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Disable TXE interrupt */
2750:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     __HAL_SPI_DISABLE_IT(hspi, SPI_IT_TXE);
2751:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2752:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->RxXferCount == 0U)
2753:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
2754:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       SPI_CloseRxTx_ISR(hspi);
2755:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2756:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
2757:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2758:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2759:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
2760:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2761:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Manage the CRC 8-bit receive in Interrupt context.
2762:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
2763:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
2764:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2765:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2766:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_RxISR_8BITCRC(struct __SPI_HandleTypeDef *hspi)
2767:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2768:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __IO uint8_t tmpreg = 0U;
2769:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2770:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Read data register to flush CRC */
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 50


2771:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   tmpreg = *((__IO uint8_t*)&hspi->Instance->DR);
2772:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2773:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* To avoid GCC warning */
2774:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   UNUSED(tmpreg);
2775:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2776:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SPI_CloseRx_ISR(hspi);
2777:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2778:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
2779:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2780:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2781:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Manage the receive 8-bit in Interrupt context.
2782:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
2783:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
2784:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2785:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2786:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_RxISR_8BIT(struct __SPI_HandleTypeDef *hspi)
2787:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2788:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *hspi->pRxBuffPtr++ = (*(__IO uint8_t *)&hspi->Instance->DR);
2789:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount--;
2790:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2791:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
2792:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Enable CRC Transmission */
2793:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((hspi->RxXferCount == 1U) && (hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE))
2794:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
2795:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SET_BIT(hspi->Instance->CR1, SPI_CR1_CRCNEXT);
2796:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
2797:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
2798:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2799:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->RxXferCount == 0U)
2800:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
2801:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
2802:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
2803:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
2804:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       hspi->RxISR =  SPI_RxISR_8BITCRC;
2805:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       return;
2806:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2807:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
2808:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SPI_CloseRx_ISR(hspi);
2809:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
2810:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2811:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2812:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
2813:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2814:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Manage the CRC 16-bit receive in Interrupt context.
2815:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
2816:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
2817:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2818:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2819:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_RxISR_16BITCRC(struct __SPI_HandleTypeDef *hspi)
2820:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2821:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __IO uint16_t tmpreg = 0U;
2822:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2823:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Read data register to flush CRC */
2824:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   tmpreg = hspi->Instance->DR;
2825:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2826:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* To avoid GCC warning */
2827:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   UNUSED(tmpreg);
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 51


2828:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2829:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Disable RXNE and ERR interrupt */
2830:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_SPI_DISABLE_IT(hspi, (SPI_IT_RXNE | SPI_IT_ERR));
2831:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2832:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SPI_CloseRx_ISR(hspi);
2833:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2834:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
2835:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2836:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2837:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Manage the 16-bit receive in Interrupt context.
2838:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
2839:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
2840:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2841:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2842:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_RxISR_16BIT(struct __SPI_HandleTypeDef *hspi)
2843:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2844:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *((uint16_t *)hspi->pRxBuffPtr) = hspi->Instance->DR;
2845:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pRxBuffPtr += sizeof(uint16_t);
2846:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount--;
2847:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2848:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
2849:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Enable CRC Transmission */
2850:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if((hspi->RxXferCount == 1U) && (hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE))
2851:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
2852:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SET_BIT(hspi->Instance->CR1, SPI_CR1_CRCNEXT);
2853:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
2854:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
2855:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2856:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->RxXferCount == 0U)
2857:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
2858:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
2859:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
2860:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
2861:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       hspi->RxISR = SPI_RxISR_16BITCRC;
2862:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       return;
2863:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2864:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
2865:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SPI_CloseRx_ISR(hspi);
2866:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
2867:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2868:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2869:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2870:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Handle the data 8-bit transmit in Interrupt mode.
2871:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
2872:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
2873:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2874:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2875:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_TxISR_8BIT(struct __SPI_HandleTypeDef *hspi)
2876:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2877:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *(__IO uint8_t *)&hspi->Instance->DR = (*hspi->pTxBuffPtr++);
2878:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount--;
2879:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2880:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->TxXferCount == 0U)
2881:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
2882:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
2883:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
2884:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 52


2885:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Enable CRC Transmission */
2886:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       SET_BIT(hspi->Instance->CR1, SPI_CR1_CRCNEXT);
2887:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2888:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
2889:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SPI_CloseTx_ISR(hspi);
2890:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
2891:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2892:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2893:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2894:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Handle the data 16-bit transmit in Interrupt mode.
2895:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
2896:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
2897:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2898:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2899:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_TxISR_16BIT(struct __SPI_HandleTypeDef *hspi)
2900:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2901:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Transmit data in 16 Bit mode */
2902:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->Instance->DR = *((uint16_t *)hspi->pTxBuffPtr);
2903:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pTxBuffPtr += sizeof(uint16_t);
2904:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount--;
2905:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2906:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->TxXferCount == 0U)
2907:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
2908:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
2909:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
2910:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
2911:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Enable CRC Transmission */
2912:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       SET_BIT(hspi->Instance->CR1, SPI_CR1_CRCNEXT);
2913:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2914:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
2915:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SPI_CloseTx_ISR(hspi);
2916:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
2917:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2918:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2919:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2920:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief Handle SPI Communication Timeout.
2921:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param hspi: pointer to a SPI_HandleTypeDef structure that contains
2922:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *              the configuration information for SPI module.
2923:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param Flag: SPI flag to check
2924:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param State: flag state to check
2925:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param Timeout: Timeout duration
2926:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param Tickstart: tick start value
2927:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval HAL status
2928:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2929:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static HAL_StatusTypeDef SPI_WaitFlagStateUntilTimeout(SPI_HandleTypeDef *hspi, uint32_t Flag, uint
2930:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2931:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   while((((hspi->Instance->SR & Flag) == (Flag)) ? SET : RESET) != State)
2932:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
2933:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(Timeout != HAL_MAX_DELAY)
2934:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
2935:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       if((Timeout == 0U) || ((HAL_GetTick()-Tickstart) >= Timeout))
2936:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
2937:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Disable the SPI and reset the CRC: the CRC value should be cleared
2938:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         on both master and slave sides in order to resynchronize the master
2939:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         and slave for their respective CRC calculation */
2940:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2941:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Disable TXE, RXNE and ERR interrupts for the interrupt process */
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 53


2942:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         __HAL_SPI_DISABLE_IT(hspi, (SPI_IT_TXE | SPI_IT_RXNE | SPI_IT_ERR));
2943:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2944:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         if((hspi->Init.Mode == SPI_MODE_MASTER)&&((hspi->Init.Direction == SPI_DIRECTION_1LINE)||(h
2945:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
2946:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           /* Disable SPI peripheral */
2947:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           __HAL_SPI_DISABLE(hspi);
2948:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         }
2949:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2950:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Reset CRC Calculation */
2951:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
2952:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
2953:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           SPI_RESET_CRC(hspi);
2954:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         }
2955:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2956:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         hspi->State= HAL_SPI_STATE_READY;
2957:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2958:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Process Unlocked */
2959:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         __HAL_UNLOCK(hspi);
2960:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2961:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         return HAL_TIMEOUT;
2962:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
2963:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
2964:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
2965:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2966:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return HAL_OK;
2967:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2968:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2969:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief Handle to check BSY flag before start a new transaction.
2970:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param hspi: pointer to a SPI_HandleTypeDef structure that contains
2971:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *              the configuration information for SPI module.
2972:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param Timeout: Timeout duration
2973:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param Tickstart: tick start value
2974:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval HAL status
2975:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2976:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static HAL_StatusTypeDef SPI_CheckFlag_BSY(SPI_HandleTypeDef *hspi, uint32_t Timeout, uint32_t Tick
2977:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2978:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Control the BSY flag */
2979:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(SPI_WaitFlagStateUntilTimeout(hspi, SPI_FLAG_BSY, RESET, Timeout, Tickstart) != HAL_OK)
2980:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
2981:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_FLAG);
2982:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     return HAL_TIMEOUT;
2983:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
2984:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return HAL_OK;
2985:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
2986:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
2987:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
2988:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Handle the end of the RXTX transaction.
2989:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
2990:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
2991:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
2992:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
2993:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_CloseRxTx_ISR(SPI_HandleTypeDef *hspi)
2994:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
2995:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t tickstart = 0U;
2996:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __IO uint32_t count = SPI_DEFAULT_TIMEOUT * (SystemCoreClock / 24U / 1000U);
2997:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Init tickstart for timeout managment*/
2998:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   tickstart = HAL_GetTick();
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 54


2999:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3000:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Disable ERR interrupt */
3001:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_SPI_DISABLE_IT(hspi, SPI_IT_ERR);
3002:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3003:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Wait until TXE flag is set */
3004:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   do
3005:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
3006:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(count-- == 0U)
3007:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
3008:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_FLAG);
3009:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       break;
3010:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
3011:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
3012:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   while((hspi->Instance->SR & SPI_FLAG_TXE) == RESET);
3013:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   
3014:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check the end of the transaction */
3015:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(SPI_CheckFlag_BSY(hspi, SPI_DEFAULT_TIMEOUT, tickstart)!=HAL_OK)
3016:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
3017:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_FLAG);
3018:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
3019:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3020:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Clear overrun flag in 2 Lines communication mode because received is not read */
3021:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.Direction == SPI_DIRECTION_2LINES)
3022:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
3023:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     __HAL_SPI_CLEAR_OVRFLAG(hspi);
3024:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
3025:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3026:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
3027:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check if CRC error occurred */
3028:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_CRCERR) != RESET)
3029:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
3030:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Check if CRC error is valid or not (workaround to be applied or not) */
3031:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if (SPI_ISCRCErrorValid(hspi) == SPI_VALID_CRC_ERROR)
3032:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
3033:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       hspi->State = HAL_SPI_STATE_READY;
3034:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_CRC);
3035:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3036:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Reset CRC Calculation */
3037:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       SPI_RESET_CRC(hspi);
3038:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3039:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     HAL_SPI_ErrorCallback(hspi);
3040:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
3041:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     else
3042:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
3043:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       __HAL_SPI_CLEAR_CRCERRFLAG(hspi);
3044:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
3045:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
3046:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   else
3047:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
3048:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
3049:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->ErrorCode == HAL_SPI_ERROR_NONE)
3050:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
3051:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       if(hspi->State == HAL_SPI_STATE_BUSY_RX)
3052:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
3053:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       	hspi->State = HAL_SPI_STATE_READY;
3054:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         HAL_SPI_RxCpltCallback(hspi);
3055:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 55


3056:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       else
3057:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
3058:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       	hspi->State = HAL_SPI_STATE_READY;
3059:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         HAL_SPI_TxRxCpltCallback(hspi);
3060:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
3061:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
3062:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     else
3063:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
3064:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       hspi->State = HAL_SPI_STATE_READY;
3065:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       HAL_SPI_ErrorCallback(hspi);
3066:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
3067:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
3068:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
3069:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
3070:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
3071:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3072:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
3073:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Handle the end of the RX transaction.
3074:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
3075:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
3076:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
3077:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
3078:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_CloseRx_ISR(SPI_HandleTypeDef *hspi)
3079:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
3080:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Disable RXNE and ERR interrupt */
3081:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     __HAL_SPI_DISABLE_IT(hspi, (SPI_IT_RXNE | SPI_IT_ERR));
3082:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3083:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Check the end of the transaction */
3084:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if((hspi->Init.Mode == SPI_MODE_MASTER)&&((hspi->Init.Direction == SPI_DIRECTION_1LINE)||(hspi-
3085:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
3086:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Disable SPI peripheral */
3087:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       __HAL_SPI_DISABLE(hspi);
3088:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
3089:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3090:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Clear overrun flag in 2 Lines communication mode because received is not read */
3091:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(hspi->Init.Direction == SPI_DIRECTION_2LINES)
3092:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
3093:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       __HAL_SPI_CLEAR_OVRFLAG(hspi);
3094:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
3095:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->State = HAL_SPI_STATE_READY;
3096:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3097:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
3098:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Check if CRC error occurred */
3099:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_CRCERR) != RESET)
3100:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
3101:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Check if CRC error is valid or not (workaround to be applied or not) */
3102:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       if (SPI_ISCRCErrorValid(hspi) == SPI_VALID_CRC_ERROR)
3103:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
3104:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_CRC);
3105:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3106:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Reset CRC Calculation */
3107:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         SPI_RESET_CRC(hspi);
3108:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3109:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****          HAL_SPI_ErrorCallback(hspi);
3110:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
3111:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       else
3112:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 56


3113:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         __HAL_SPI_CLEAR_CRCERRFLAG(hspi);
3114:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
3115:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
3116:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     else
3117:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
3118:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
3119:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       if(hspi->ErrorCode == HAL_SPI_ERROR_NONE)
3120:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
3121:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         HAL_SPI_RxCpltCallback(hspi);
3122:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
3123:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       else
3124:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
3125:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         HAL_SPI_ErrorCallback(hspi);
3126:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
3127:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
3128:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
3129:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
3130:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
3131:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3132:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
3133:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Handle the end of the TX transaction.
3134:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
3135:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
3136:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
3137:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
3138:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_CloseTx_ISR(SPI_HandleTypeDef *hspi)
3139:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
3140:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t tickstart = 0U;
3141:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __IO uint32_t count = SPI_DEFAULT_TIMEOUT * (SystemCoreClock / 24U / 1000U);
3142:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3143:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Init tickstart for timeout management*/
3144:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   tickstart = HAL_GetTick();
3145:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3146:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Wait until TXE flag is set */
3147:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   do
3148:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
3149:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(count-- == 0U)
3150:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
3151:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_FLAG);
3152:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       break;
3153:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
3154:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
3155:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   while((hspi->Instance->SR & SPI_FLAG_TXE) == RESET);
3156:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3157:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Disable TXE and ERR interrupt */
3158:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_SPI_DISABLE_IT(hspi, (SPI_IT_TXE | SPI_IT_ERR));
3159:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3160:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check Busy flag */
3161:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(SPI_CheckFlag_BSY(hspi, SPI_DEFAULT_TIMEOUT, tickstart) != HAL_OK)
3162:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
3163:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_FLAG);
3164:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
3165:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3166:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Clear overrun flag in 2 Lines communication mode because received is not read */
3167:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->Init.Direction == SPI_DIRECTION_2LINES)
3168:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
3169:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     __HAL_SPI_CLEAR_OVRFLAG(hspi);
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 57


3170:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
3171:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3172:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->State = HAL_SPI_STATE_READY;
3173:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->ErrorCode != HAL_SPI_ERROR_NONE)
3174:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
3175:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     HAL_SPI_ErrorCallback(hspi);
3176:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
3177:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   else
3178:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
3179:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     HAL_SPI_TxCpltCallback(hspi);
3180:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
3181:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
3182:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3183:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
3184:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @}
3185:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
3186:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3187:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
3188:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Handle abort a Tx or Rx transaction.
3189:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
3190:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
3191:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
3192:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
3193:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_AbortRx_ISR(SPI_HandleTypeDef *hspi)
3194:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
  25              		.loc 1 3194 0
  26              		.cfi_startproc
  27              		@ args = 0, pretend = 0, frame = 8
  28              		@ frame_needed = 0, uses_anonymous_args = 0
  29              		@ link register save eliminated.
  30              	.LVL0:
  31 0000 82B0     		sub	sp, sp, #8
  32              	.LCFI0:
  33              		.cfi_def_cfa_offset 8
3195:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __IO uint32_t tmpreg = 0U;
  34              		.loc 1 3195 0
  35 0002 0023     		movs	r3, #0
  36 0004 0193     		str	r3, [sp, #4]
3196:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __IO uint32_t count = SPI_DEFAULT_TIMEOUT * (SystemCoreClock / 24U / 1000U);
  37              		.loc 1 3196 0
  38 0006 144B     		ldr	r3, .L7
  39 0008 1B68     		ldr	r3, [r3]
  40 000a 144A     		ldr	r2, .L7+4
  41 000c A2FB0323 		umull	r2, r3, r2, r3
  42 0010 5B0A     		lsrs	r3, r3, #9
  43 0012 6422     		movs	r2, #100
  44 0014 02FB03F3 		mul	r3, r2, r3
  45 0018 0093     		str	r3, [sp]
  46              	.L4:
3197:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3198:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Wait until TXE flag is set */
3199:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   do
3200:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
3201:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     if(count-- == 0U)
  47              		.loc 1 3201 0
  48 001a 009B     		ldr	r3, [sp]
  49 001c 5A1E     		subs	r2, r3, #1
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 58


  50 001e 0092     		str	r2, [sp]
  51 0020 2BB1     		cbz	r3, .L6
3202:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
3203:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_FLAG);
3204:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       break;
3205:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
3206:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
3207:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   while((hspi->Instance->SR & SPI_FLAG_TXE) == RESET);
  52              		.loc 1 3207 0
  53 0022 0368     		ldr	r3, [r0]
  54 0024 9B68     		ldr	r3, [r3, #8]
  55 0026 13F0020F 		tst	r3, #2
  56 002a F6D0     		beq	.L4
  57 002c 03E0     		b	.L3
  58              	.L6:
3203:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       break;
  59              		.loc 1 3203 0
  60 002e 436D     		ldr	r3, [r0, #84]
  61 0030 43F02003 		orr	r3, r3, #32
  62 0034 4365     		str	r3, [r0, #84]
  63              	.L3:
3208:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3209:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Disable SPI Peripheral */
3210:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_SPI_DISABLE(hspi);    
  64              		.loc 1 3210 0
  65 0036 0268     		ldr	r2, [r0]
  66 0038 1368     		ldr	r3, [r2]
  67 003a 23F04003 		bic	r3, r3, #64
  68 003e 1360     		str	r3, [r2]
3211:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3212:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Disable TXEIE, RXNEIE and ERRIE(mode fault event, overrun error, TI frame error) interrupts */
3213:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   CLEAR_BIT(hspi->Instance->CR2, (SPI_CR2_TXEIE | SPI_CR2_RXNEIE | SPI_CR2_ERRIE));
  69              		.loc 1 3213 0
  70 0040 0268     		ldr	r2, [r0]
  71 0042 5368     		ldr	r3, [r2, #4]
  72 0044 23F0E003 		bic	r3, r3, #224
  73 0048 5360     		str	r3, [r2, #4]
3214:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3215:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Flush DR Register */
3216:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   tmpreg = (*(__IO uint32_t *)&hspi->Instance->DR);
  74              		.loc 1 3216 0
  75 004a 0368     		ldr	r3, [r0]
  76 004c DB68     		ldr	r3, [r3, #12]
  77 004e 0193     		str	r3, [sp, #4]
3217:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3218:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* To avoid GCC warning */
3219:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   UNUSED(tmpreg);
  78              		.loc 1 3219 0
  79 0050 019B     		ldr	r3, [sp, #4]
3220:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
  80              		.loc 1 3220 0
  81 0052 02B0     		add	sp, sp, #8
  82              	.LCFI1:
  83              		.cfi_def_cfa_offset 0
  84              		@ sp needed
  85 0054 7047     		bx	lr
  86              	.L8:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 59


  87 0056 00BF     		.align	2
  88              	.L7:
  89 0058 00000000 		.word	SystemCoreClock
  90 005c F1197605 		.word	91625969
  91              		.cfi_endproc
  92              	.LFE118:
  94              		.section	.text.SPI_AbortTx_ISR,"ax",%progbits
  95              		.align	1
  96              		.syntax unified
  97              		.thumb
  98              		.thumb_func
  99              		.fpu softvfp
 101              	SPI_AbortTx_ISR:
 102              	.LFB119:
3221:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
3223:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Handle abort a Tx or Rx transaction.
3224:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
3225:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
3226:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval None
3227:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   */
3228:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** static void SPI_AbortTx_ISR(SPI_HandleTypeDef *hspi)
3229:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
 103              		.loc 1 3229 0
 104              		.cfi_startproc
 105              		@ args = 0, pretend = 0, frame = 0
 106              		@ frame_needed = 0, uses_anonymous_args = 0
 107              		@ link register save eliminated.
 108              	.LVL1:
3230:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Disable TXEIE, RXNEIE and ERRIE(mode fault event, overrun error, TI frame error) interrupts */
3231:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   CLEAR_BIT(hspi->Instance->CR2, (SPI_CR2_TXEIE | SPI_CR2_RXNEIE | SPI_CR2_ERRIE));
 109              		.loc 1 3231 0
 110 0000 0268     		ldr	r2, [r0]
 111 0002 5368     		ldr	r3, [r2, #4]
 112 0004 23F0E003 		bic	r3, r3, #224
 113 0008 5360     		str	r3, [r2, #4]
3232:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3233:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Disable SPI Peripheral */
3234:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_SPI_DISABLE(hspi);
 114              		.loc 1 3234 0
 115 000a 0268     		ldr	r2, [r0]
 116 000c 1368     		ldr	r3, [r2]
 117 000e 23F04003 		bic	r3, r3, #64
 118 0012 1360     		str	r3, [r2]
3235:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
 119              		.loc 1 3235 0
 120 0014 7047     		bx	lr
 121              		.cfi_endproc
 122              	.LFE119:
 124              		.section	.text.SPI_WaitFlagStateUntilTimeout,"ax",%progbits
 125              		.align	1
 126              		.syntax unified
 127              		.thumb
 128              		.thumb_func
 129              		.fpu softvfp
 131              	SPI_WaitFlagStateUntilTimeout:
 132              	.LFB113:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 60


2930:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   while((((hspi->Instance->SR & Flag) == (Flag)) ? SET : RESET) != State)
 133              		.loc 1 2930 0
 134              		.cfi_startproc
 135              		@ args = 4, pretend = 0, frame = 0
 136              		@ frame_needed = 0, uses_anonymous_args = 0
 137              	.LVL2:
 138 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 139              	.LCFI2:
 140              		.cfi_def_cfa_offset 24
 141              		.cfi_offset 3, -24
 142              		.cfi_offset 4, -20
 143              		.cfi_offset 5, -16
 144              		.cfi_offset 6, -12
 145              		.cfi_offset 7, -8
 146              		.cfi_offset 14, -4
 147 0002 0546     		mov	r5, r0
 148 0004 0F46     		mov	r7, r1
 149 0006 1646     		mov	r6, r2
 150 0008 1C46     		mov	r4, r3
2931:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 151              		.loc 1 2931 0
 152 000a 3BE0     		b	.L12
 153              	.LVL3:
 154              	.L25:
2935:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 155              		.loc 1 2935 0
 156 000c 2CB1     		cbz	r4, .L13
2935:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 157              		.loc 1 2935 0 is_stmt 0 discriminator 1
 158 000e FFF7FEFF 		bl	HAL_GetTick
 159              	.LVL4:
 160 0012 069B     		ldr	r3, [sp, #24]
 161 0014 C01A     		subs	r0, r0, r3
 162 0016 A042     		cmp	r0, r4
 163 0018 34D3     		bcc	.L12
 164              	.L13:
2942:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 165              		.loc 1 2942 0 is_stmt 1
 166 001a 2A68     		ldr	r2, [r5]
 167 001c 5368     		ldr	r3, [r2, #4]
 168 001e 23F0E003 		bic	r3, r3, #224
 169 0022 5360     		str	r3, [r2, #4]
2944:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
 170              		.loc 1 2944 0
 171 0024 6B68     		ldr	r3, [r5, #4]
 172 0026 B3F5827F 		cmp	r3, #260
 173 002a 0BD0     		beq	.L22
 174              	.L14:
2951:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
 175              		.loc 1 2951 0
 176 002c AB6A     		ldr	r3, [r5, #40]
 177 002e B3F5005F 		cmp	r3, #8192
 178 0032 14D0     		beq	.L23
 179              	.L16:
2956:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 180              		.loc 1 2956 0
 181 0034 0123     		movs	r3, #1
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 61


 182 0036 85F85130 		strb	r3, [r5, #81]
2959:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 183              		.loc 1 2959 0
 184 003a 0023     		movs	r3, #0
 185 003c 85F85030 		strb	r3, [r5, #80]
2961:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 186              		.loc 1 2961 0
 187 0040 0320     		movs	r0, #3
 188 0042 27E0     		b	.L17
 189              	.L22:
2944:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
 190              		.loc 1 2944 0 discriminator 1
 191 0044 AB68     		ldr	r3, [r5, #8]
 192 0046 B3F5004F 		cmp	r3, #32768
 193 004a 02D0     		beq	.L15
2944:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
 194              		.loc 1 2944 0 is_stmt 0 discriminator 2
 195 004c B3F5806F 		cmp	r3, #1024
 196 0050 ECD1     		bne	.L14
 197              	.L15:
2947:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         }
 198              		.loc 1 2947 0 is_stmt 1
 199 0052 2A68     		ldr	r2, [r5]
 200 0054 1368     		ldr	r3, [r2]
 201 0056 23F04003 		bic	r3, r3, #64
 202 005a 1360     		str	r3, [r2]
 203 005c E6E7     		b	.L14
 204              	.L23:
2953:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         }
 205              		.loc 1 2953 0
 206 005e 2A68     		ldr	r2, [r5]
 207 0060 1368     		ldr	r3, [r2]
 208 0062 23F40053 		bic	r3, r3, #8192
 209 0066 1B04     		lsls	r3, r3, #16
 210 0068 1B0C     		lsrs	r3, r3, #16
 211 006a 1360     		str	r3, [r2]
 212 006c 2A68     		ldr	r2, [r5]
 213 006e 1368     		ldr	r3, [r2]
 214 0070 43F40053 		orr	r3, r3, #8192
 215 0074 1360     		str	r3, [r2]
 216 0076 DDE7     		b	.L16
 217              	.L26:
2931:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 218              		.loc 1 2931 0
 219 0078 0123     		movs	r3, #1
 220              	.L18:
2931:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 221              		.loc 1 2931 0 is_stmt 0 discriminator 4
 222 007a B342     		cmp	r3, r6
 223 007c 09D0     		beq	.L24
2933:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 224              		.loc 1 2933 0 is_stmt 1
 225 007e B4F1FF3F 		cmp	r4, #-1
 226 0082 C3D1     		bne	.L25
 227              	.L12:
2931:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 228              		.loc 1 2931 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 62


 229 0084 2B68     		ldr	r3, [r5]
 230 0086 9B68     		ldr	r3, [r3, #8]
 231 0088 37EA0303 		bics	r3, r7, r3
 232 008c F4D0     		beq	.L26
 233 008e 0023     		movs	r3, #0
 234 0090 F3E7     		b	.L18
 235              	.L24:
2966:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
 236              		.loc 1 2966 0
 237 0092 0020     		movs	r0, #0
 238              	.L17:
2967:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
 239              		.loc 1 2967 0
 240 0094 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 241              		.cfi_endproc
 242              	.LFE113:
 244              		.section	.text.SPI_CheckFlag_BSY,"ax",%progbits
 245              		.align	1
 246              		.syntax unified
 247              		.thumb
 248              		.thumb_func
 249              		.fpu softvfp
 251              	SPI_CheckFlag_BSY:
 252              	.LFB114:
2977:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Control the BSY flag */
 253              		.loc 1 2977 0
 254              		.cfi_startproc
 255              		@ args = 0, pretend = 0, frame = 0
 256              		@ frame_needed = 0, uses_anonymous_args = 0
 257              	.LVL5:
 258 0000 10B5     		push	{r4, lr}
 259              	.LCFI3:
 260              		.cfi_def_cfa_offset 8
 261              		.cfi_offset 4, -8
 262              		.cfi_offset 14, -4
 263 0002 82B0     		sub	sp, sp, #8
 264              	.LCFI4:
 265              		.cfi_def_cfa_offset 16
 266 0004 0446     		mov	r4, r0
2979:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 267              		.loc 1 2979 0
 268 0006 0092     		str	r2, [sp]
 269 0008 0B46     		mov	r3, r1
 270 000a 0022     		movs	r2, #0
 271              	.LVL6:
 272 000c 8021     		movs	r1, #128
 273              	.LVL7:
 274 000e FFF7FEFF 		bl	SPI_WaitFlagStateUntilTimeout
 275              	.LVL8:
 276 0012 0346     		mov	r3, r0
 277 0014 10B9     		cbnz	r0, .L30
 278              	.L28:
2985:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 279              		.loc 1 2985 0
 280 0016 1846     		mov	r0, r3
 281 0018 02B0     		add	sp, sp, #8
 282              	.LCFI5:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 63


 283              		.cfi_remember_state
 284              		.cfi_def_cfa_offset 8
 285              		@ sp needed
 286 001a 10BD     		pop	{r4, pc}
 287              	.LVL9:
 288              	.L30:
 289              	.LCFI6:
 290              		.cfi_restore_state
2981:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     return HAL_TIMEOUT;
 291              		.loc 1 2981 0
 292 001c 636D     		ldr	r3, [r4, #84]
 293 001e 43F02003 		orr	r3, r3, #32
 294 0022 6365     		str	r3, [r4, #84]
2982:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 295              		.loc 1 2982 0
 296 0024 0323     		movs	r3, #3
 297 0026 F6E7     		b	.L28
 298              		.cfi_endproc
 299              	.LFE114:
 301              		.section	.text.HAL_SPI_MspInit,"ax",%progbits
 302              		.align	1
 303              		.weak	HAL_SPI_MspInit
 304              		.syntax unified
 305              		.thumb
 306              		.thumb_func
 307              		.fpu softvfp
 309              	HAL_SPI_MspInit:
 310              	.LFB68:
 375:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Prevent unused argument(s) compilation warning */
 311              		.loc 1 375 0
 312              		.cfi_startproc
 313              		@ args = 0, pretend = 0, frame = 0
 314              		@ frame_needed = 0, uses_anonymous_args = 0
 315              		@ link register save eliminated.
 316              	.LVL10:
 381:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 317              		.loc 1 381 0
 318 0000 7047     		bx	lr
 319              		.cfi_endproc
 320              	.LFE68:
 322              		.section	.text.HAL_SPI_Init,"ax",%progbits
 323              		.align	1
 324              		.weak	HAL_SPI_Init
 325              		.syntax unified
 326              		.thumb
 327              		.thumb_func
 328              		.fpu softvfp
 330              	HAL_SPI_Init:
 331              	.LFB66:
 262:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check the SPI handle allocation */
 332              		.loc 1 262 0
 333              		.cfi_startproc
 334              		@ args = 0, pretend = 0, frame = 0
 335              		@ frame_needed = 0, uses_anonymous_args = 0
 336              	.LVL11:
 264:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 337              		.loc 1 264 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 64


 338 0000 0028     		cmp	r0, #0
 339 0002 3BD0     		beq	.L35
 262:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check the SPI handle allocation */
 340              		.loc 1 262 0
 341 0004 10B5     		push	{r4, lr}
 342              	.LCFI7:
 343              		.cfi_def_cfa_offset 8
 344              		.cfi_offset 4, -8
 345              		.cfi_offset 14, -4
 346 0006 0446     		mov	r4, r0
 287:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* USE_SPI_CRC */
 347              		.loc 1 287 0
 348 0008 0023     		movs	r3, #0
 349 000a 8362     		str	r3, [r0, #40]
 290:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 350              		.loc 1 290 0
 351 000c 90F85130 		ldrb	r3, [r0, #81]	@ zero_extendqisi2
 352 0010 002B     		cmp	r3, #0
 353 0012 2ED0     		beq	.L40
 354              	.LVL12:
 355              	.L34:
 299:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 356              		.loc 1 299 0
 357 0014 0223     		movs	r3, #2
 358 0016 84F85130 		strb	r3, [r4, #81]
 302:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 359              		.loc 1 302 0
 360 001a 2268     		ldr	r2, [r4]
 361 001c 1368     		ldr	r3, [r2]
 362 001e 23F04003 		bic	r3, r3, #64
 363 0022 1360     		str	r3, [r2]
 307:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****                                   hspi->Init.CLKPolarity | hspi->Init.CLKPhase | (hspi->Init.NSS & 
 364              		.loc 1 307 0
 365 0024 6368     		ldr	r3, [r4, #4]
 366 0026 A268     		ldr	r2, [r4, #8]
 367 0028 1343     		orrs	r3, r3, r2
 368 002a E268     		ldr	r2, [r4, #12]
 369 002c 1343     		orrs	r3, r3, r2
 370 002e 2269     		ldr	r2, [r4, #16]
 371 0030 1343     		orrs	r3, r3, r2
 372 0032 6269     		ldr	r2, [r4, #20]
 373 0034 1343     		orrs	r3, r3, r2
 374 0036 A269     		ldr	r2, [r4, #24]
 375 0038 02F40072 		and	r2, r2, #512
 376 003c 1343     		orrs	r3, r3, r2
 377 003e E269     		ldr	r2, [r4, #28]
 378 0040 1343     		orrs	r3, r3, r2
 379 0042 226A     		ldr	r2, [r4, #32]
 380 0044 1343     		orrs	r3, r3, r2
 381 0046 A16A     		ldr	r1, [r4, #40]
 382 0048 2268     		ldr	r2, [r4]
 383 004a 0B43     		orrs	r3, r3, r1
 384 004c 1360     		str	r3, [r2]
 312:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 385              		.loc 1 312 0
 386 004e 638B     		ldrh	r3, [r4, #26]
 387 0050 03F00403 		and	r3, r3, #4
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 65


 388 0054 616A     		ldr	r1, [r4, #36]
 389 0056 2268     		ldr	r2, [r4]
 390 0058 0B43     		orrs	r3, r3, r1
 391 005a 5360     		str	r3, [r2, #4]
 325:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #endif /* SPI_I2SCFGR_I2SMOD */
 392              		.loc 1 325 0
 393 005c 2268     		ldr	r2, [r4]
 394 005e D369     		ldr	r3, [r2, #28]
 395 0060 23F40063 		bic	r3, r3, #2048
 396 0064 D361     		str	r3, [r2, #28]
 328:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->State     = HAL_SPI_STATE_READY;
 397              		.loc 1 328 0
 398 0066 0020     		movs	r0, #0
 399 0068 6065     		str	r0, [r4, #84]
 329:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 400              		.loc 1 329 0
 401 006a 0123     		movs	r3, #1
 402 006c 84F85130 		strb	r3, [r4, #81]
 332:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 403              		.loc 1 332 0
 404 0070 10BD     		pop	{r4, pc}
 405              	.LVL13:
 406              	.L40:
 293:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 407              		.loc 1 293 0
 408 0072 80F85030 		strb	r3, [r0, #80]
 296:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 409              		.loc 1 296 0
 410 0076 FFF7FEFF 		bl	HAL_SPI_MspInit
 411              	.LVL14:
 412 007a CBE7     		b	.L34
 413              	.LVL15:
 414              	.L35:
 415              	.LCFI8:
 416              		.cfi_def_cfa_offset 0
 417              		.cfi_restore 4
 418              		.cfi_restore 14
 266:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 419              		.loc 1 266 0
 420 007c 0120     		movs	r0, #1
 421              	.LVL16:
 332:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 422              		.loc 1 332 0
 423 007e 7047     		bx	lr
 424              		.cfi_endproc
 425              	.LFE66:
 427              		.section	.text.HAL_SPI_MspDeInit,"ax",%progbits
 428              		.align	1
 429              		.weak	HAL_SPI_MspDeInit
 430              		.syntax unified
 431              		.thumb
 432              		.thumb_func
 433              		.fpu softvfp
 435              	HAL_SPI_MspDeInit:
 436              	.LFB69:
 390:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Prevent unused argument(s) compilation warning */
 437              		.loc 1 390 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 66


 438              		.cfi_startproc
 439              		@ args = 0, pretend = 0, frame = 0
 440              		@ frame_needed = 0, uses_anonymous_args = 0
 441              		@ link register save eliminated.
 442              	.LVL17:
 396:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 443              		.loc 1 396 0
 444 0000 7047     		bx	lr
 445              		.cfi_endproc
 446              	.LFE69:
 448              		.section	.text.HAL_SPI_DeInit,"ax",%progbits
 449              		.align	1
 450              		.global	HAL_SPI_DeInit
 451              		.syntax unified
 452              		.thumb
 453              		.thumb_func
 454              		.fpu softvfp
 456              	HAL_SPI_DeInit:
 457              	.LFB67:
 341:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check the SPI handle allocation */
 458              		.loc 1 341 0
 459              		.cfi_startproc
 460              		@ args = 0, pretend = 0, frame = 0
 461              		@ frame_needed = 0, uses_anonymous_args = 0
 462              	.LVL18:
 343:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 463              		.loc 1 343 0
 464 0000 90B1     		cbz	r0, .L44
 341:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Check the SPI handle allocation */
 465              		.loc 1 341 0
 466 0002 10B5     		push	{r4, lr}
 467              	.LCFI9:
 468              		.cfi_def_cfa_offset 8
 469              		.cfi_offset 4, -8
 470              		.cfi_offset 14, -4
 471 0004 0446     		mov	r4, r0
 351:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 472              		.loc 1 351 0
 473 0006 0223     		movs	r3, #2
 474 0008 80F85130 		strb	r3, [r0, #81]
 354:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 475              		.loc 1 354 0
 476 000c 0268     		ldr	r2, [r0]
 477 000e 1368     		ldr	r3, [r2]
 478 0010 23F04003 		bic	r3, r3, #64
 479 0014 1360     		str	r3, [r2]
 357:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 480              		.loc 1 357 0
 481 0016 FFF7FEFF 		bl	HAL_SPI_MspDeInit
 482              	.LVL19:
 359:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->State = HAL_SPI_STATE_RESET;
 483              		.loc 1 359 0
 484 001a 0020     		movs	r0, #0
 485 001c 6065     		str	r0, [r4, #84]
 360:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 486              		.loc 1 360 0
 487 001e 84F85100 		strb	r0, [r4, #81]
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 67


 363:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 488              		.loc 1 363 0
 489 0022 84F85000 		strb	r0, [r4, #80]
 366:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 490              		.loc 1 366 0
 491 0026 10BD     		pop	{r4, pc}
 492              	.LVL20:
 493              	.L44:
 494              	.LCFI10:
 495              		.cfi_def_cfa_offset 0
 496              		.cfi_restore 4
 497              		.cfi_restore 14
 345:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 498              		.loc 1 345 0
 499 0028 0120     		movs	r0, #1
 500              	.LVL21:
 366:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 501              		.loc 1 366 0
 502 002a 7047     		bx	lr
 503              		.cfi_endproc
 504              	.LFE67:
 506              		.section	.text.HAL_SPI_Transmit,"ax",%progbits
 507              		.align	1
 508              		.global	HAL_SPI_Transmit
 509              		.syntax unified
 510              		.thumb
 511              		.thumb_func
 512              		.fpu softvfp
 514              	HAL_SPI_Transmit:
 515              	.LFB70:
 445:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t tickstart = 0U;
 516              		.loc 1 445 0
 517              		.cfi_startproc
 518              		@ args = 0, pretend = 0, frame = 8
 519              		@ frame_needed = 0, uses_anonymous_args = 0
 520              	.LVL22:
 521 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 522              	.LCFI11:
 523              		.cfi_def_cfa_offset 24
 524              		.cfi_offset 4, -24
 525              		.cfi_offset 5, -20
 526              		.cfi_offset 6, -16
 527              		.cfi_offset 7, -12
 528              		.cfi_offset 8, -8
 529              		.cfi_offset 14, -4
 530 0004 84B0     		sub	sp, sp, #16
 531              	.LCFI12:
 532              		.cfi_def_cfa_offset 40
 533 0006 1E46     		mov	r6, r3
 534              	.LVL23:
 453:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 535              		.loc 1 453 0
 536 0008 90F85030 		ldrb	r3, [r0, #80]	@ zero_extendqisi2
 537              	.LVL24:
 538 000c 012B     		cmp	r3, #1
 539 000e 00F0C880 		beq	.L70
 540 0012 0446     		mov	r4, r0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 68


 541 0014 0D46     		mov	r5, r1
 542 0016 9046     		mov	r8, r2
 453:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 543              		.loc 1 453 0 is_stmt 0 discriminator 2
 544 0018 0123     		movs	r3, #1
 545 001a 80F85030 		strb	r3, [r0, #80]
 456:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 546              		.loc 1 456 0 is_stmt 1 discriminator 2
 547 001e FFF7FEFF 		bl	HAL_GetTick
 548              	.LVL25:
 549 0022 0746     		mov	r7, r0
 550              	.LVL26:
 458:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 551              		.loc 1 458 0 discriminator 2
 552 0024 94F85130 		ldrb	r3, [r4, #81]	@ zero_extendqisi2
 553 0028 DBB2     		uxtb	r3, r3
 554 002a 012B     		cmp	r3, #1
 555 002c 0AD0     		beq	.L81
 460:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 556              		.loc 1 460 0
 557 002e 0223     		movs	r3, #2
 558              	.LVL27:
 559              	.L51:
 599:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Process Unlocked */
 560              		.loc 1 599 0
 561 0030 0122     		movs	r2, #1
 562 0032 84F85120 		strb	r2, [r4, #81]
 601:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return errorcode;
 563              		.loc 1 601 0
 564 0036 0022     		movs	r2, #0
 565 0038 84F85020 		strb	r2, [r4, #80]
 566              	.LVL28:
 567              	.L50:
 603:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 568              		.loc 1 603 0
 569 003c 1846     		mov	r0, r3
 570 003e 04B0     		add	sp, sp, #16
 571              	.LCFI13:
 572              		.cfi_remember_state
 573              		.cfi_def_cfa_offset 24
 574              		@ sp needed
 575 0040 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 576              	.LVL29:
 577              	.L81:
 578              	.LCFI14:
 579              		.cfi_restore_state
 464:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 580              		.loc 1 464 0
 581 0044 002D     		cmp	r5, #0
 582 0046 00F0A480 		beq	.L72
 464:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 583              		.loc 1 464 0 is_stmt 0 discriminator 1
 584 004a B8F1000F 		cmp	r8, #0
 585 004e 00F0A280 		beq	.L73
 471:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->ErrorCode   = HAL_SPI_ERROR_NONE;
 586              		.loc 1 471 0 is_stmt 1
 587 0052 0323     		movs	r3, #3
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 69


 588 0054 84F85130 		strb	r3, [r4, #81]
 472:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pTxBuffPtr  = (uint8_t *)pData;
 589              		.loc 1 472 0
 590 0058 0023     		movs	r3, #0
 591 005a 6365     		str	r3, [r4, #84]
 473:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferSize  = Size;
 592              		.loc 1 473 0
 593 005c 2563     		str	r5, [r4, #48]
 474:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = Size;
 594              		.loc 1 474 0
 595 005e A4F83480 		strh	r8, [r4, #52]	@ movhi
 475:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 596              		.loc 1 475 0
 597 0062 A4F83680 		strh	r8, [r4, #54]	@ movhi
 478:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferSize  = 0U;
 598              		.loc 1 478 0
 599 0066 A363     		str	r3, [r4, #56]
 479:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount = 0U;
 600              		.loc 1 479 0
 601 0068 A387     		strh	r3, [r4, #60]	@ movhi
 480:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxISR       = NULL;
 602              		.loc 1 480 0
 603 006a E387     		strh	r3, [r4, #62]	@ movhi
 481:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxISR       = NULL;
 604              		.loc 1 481 0
 605 006c 6364     		str	r3, [r4, #68]
 482:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 606              		.loc 1 482 0
 607 006e 2364     		str	r3, [r4, #64]
 485:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 608              		.loc 1 485 0
 609 0070 A368     		ldr	r3, [r4, #8]
 610 0072 B3F5004F 		cmp	r3, #32768
 611 0076 1BD0     		beq	.L82
 612              	.L52:
 499:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 613              		.loc 1 499 0
 614 0078 2368     		ldr	r3, [r4]
 615 007a 1A68     		ldr	r2, [r3]
 616 007c 12F0400F 		tst	r2, #64
 617 0080 03D1     		bne	.L53
 502:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 618              		.loc 1 502 0
 619 0082 1A68     		ldr	r2, [r3]
 620 0084 42F04002 		orr	r2, r2, #64
 621 0088 1A60     		str	r2, [r3]
 622              	.L53:
 506:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 623              		.loc 1 506 0
 624 008a E368     		ldr	r3, [r4, #12]
 625 008c B3F5006F 		cmp	r3, #2048
 626 0090 14D0     		beq	.L83
 538:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 627              		.loc 1 538 0
 628 0092 6368     		ldr	r3, [r4, #4]
 629 0094 1BB1     		cbz	r3, .L62
 538:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 70


 630              		.loc 1 538 0 is_stmt 0 discriminator 1
 631 0096 E38E     		ldrh	r3, [r4, #54]
 632 0098 9BB2     		uxth	r3, r3
 633 009a 012B     		cmp	r3, #1
 634 009c 3ED1     		bne	.L64
 635              	.L62:
 540:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       pData += sizeof(uint8_t);
 636              		.loc 1 540 0 is_stmt 1
 637 009e 2368     		ldr	r3, [r4]
 638 00a0 15F8012B 		ldrb	r2, [r5], #1	@ zero_extendqisi2
 639              	.LVL30:
 640 00a4 1A73     		strb	r2, [r3, #12]
 641              	.LVL31:
 542:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 642              		.loc 1 542 0
 643 00a6 E38E     		ldrh	r3, [r4, #54]
 644 00a8 013B     		subs	r3, r3, #1
 645 00aa 9BB2     		uxth	r3, r3
 646 00ac E386     		strh	r3, [r4, #54]	@ movhi
 647 00ae 35E0     		b	.L64
 648              	.L82:
 487:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 649              		.loc 1 487 0
 650 00b0 2268     		ldr	r2, [r4]
 651 00b2 1368     		ldr	r3, [r2]
 652 00b4 43F48043 		orr	r3, r3, #16384
 653 00b8 1360     		str	r3, [r2]
 654 00ba DDE7     		b	.L52
 655              	.L83:
 508:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 656              		.loc 1 508 0
 657 00bc 6368     		ldr	r3, [r4, #4]
 658 00be 1BB1     		cbz	r3, .L55
 508:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 659              		.loc 1 508 0 is_stmt 0 discriminator 1
 660 00c0 E38E     		ldrh	r3, [r4, #54]
 661 00c2 9BB2     		uxth	r3, r3
 662 00c4 012B     		cmp	r3, #1
 663 00c6 0DD1     		bne	.L57
 664              	.L55:
 510:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       pData += sizeof(uint16_t);
 665              		.loc 1 510 0 is_stmt 1
 666 00c8 2368     		ldr	r3, [r4]
 667 00ca 35F8022B 		ldrh	r2, [r5], #2
 668              	.LVL32:
 669 00ce DA60     		str	r2, [r3, #12]
 670              	.LVL33:
 512:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 671              		.loc 1 512 0
 672 00d0 E38E     		ldrh	r3, [r4, #54]
 673 00d2 013B     		subs	r3, r3, #1
 674 00d4 9BB2     		uxth	r3, r3
 675 00d6 E386     		strh	r3, [r4, #54]	@ movhi
 676 00d8 04E0     		b	.L57
 677              	.LVL34:
 678              	.L58:
 527:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 71


 679              		.loc 1 527 0
 680 00da 002E     		cmp	r6, #0
 681 00dc 5DD0     		beq	.L74
 527:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
 682              		.loc 1 527 0 is_stmt 0 discriminator 1
 683 00de B6F1FF3F 		cmp	r6, #-1
 684 00e2 0FD1     		bne	.L84
 685              	.L57:
 515:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 686              		.loc 1 515 0 is_stmt 1
 687 00e4 E38E     		ldrh	r3, [r4, #54]
 688 00e6 9BB2     		uxth	r3, r3
 689 00e8 7BB3     		cbz	r3, .L61
 518:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 690              		.loc 1 518 0
 691 00ea 2368     		ldr	r3, [r4]
 692 00ec 9A68     		ldr	r2, [r3, #8]
 693 00ee 12F0020F 		tst	r2, #2
 694 00f2 F2D0     		beq	.L58
 520:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           pData += sizeof(uint16_t);
 695              		.loc 1 520 0
 696 00f4 35F8022B 		ldrh	r2, [r5], #2
 697              	.LVL35:
 698 00f8 DA60     		str	r2, [r3, #12]
 699              	.LVL36:
 522:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 700              		.loc 1 522 0
 701 00fa E38E     		ldrh	r3, [r4, #54]
 702 00fc 013B     		subs	r3, r3, #1
 703 00fe 9BB2     		uxth	r3, r3
 704 0100 E386     		strh	r3, [r4, #54]	@ movhi
 705 0102 EFE7     		b	.L57
 706              	.L84:
 527:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
 707              		.loc 1 527 0 discriminator 2
 708 0104 FFF7FEFF 		bl	HAL_GetTick
 709              	.LVL37:
 710 0108 C01B     		subs	r0, r0, r7
 711 010a B042     		cmp	r0, r6
 712 010c EAD3     		bcc	.L57
 529:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           goto error;
 713              		.loc 1 529 0
 714 010e 0323     		movs	r3, #3
 715 0110 8EE7     		b	.L51
 716              	.L65:
 556:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
 717              		.loc 1 556 0
 718 0112 002E     		cmp	r6, #0
 719 0114 43D0     		beq	.L76
 556:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
 720              		.loc 1 556 0 is_stmt 0 discriminator 1
 721 0116 B6F1FF3F 		cmp	r6, #-1
 722 011a 0FD1     		bne	.L85
 723              	.L64:
 544:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 724              		.loc 1 544 0 is_stmt 1
 725 011c E38E     		ldrh	r3, [r4, #54]
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 72


 726 011e 9BB2     		uxth	r3, r3
 727 0120 9BB1     		cbz	r3, .L61
 547:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 728              		.loc 1 547 0
 729 0122 2368     		ldr	r3, [r4]
 730 0124 9A68     		ldr	r2, [r3, #8]
 731 0126 12F0020F 		tst	r2, #2
 732 012a F2D0     		beq	.L65
 549:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         pData += sizeof(uint8_t);
 733              		.loc 1 549 0
 734 012c 15F8012B 		ldrb	r2, [r5], #1	@ zero_extendqisi2
 735              	.LVL38:
 736 0130 1A73     		strb	r2, [r3, #12]
 737              	.LVL39:
 551:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 738              		.loc 1 551 0
 739 0132 E38E     		ldrh	r3, [r4, #54]
 740 0134 013B     		subs	r3, r3, #1
 741 0136 9BB2     		uxth	r3, r3
 742 0138 E386     		strh	r3, [r4, #54]	@ movhi
 743 013a EFE7     		b	.L64
 744              	.L85:
 556:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
 745              		.loc 1 556 0 discriminator 2
 746 013c FFF7FEFF 		bl	HAL_GetTick
 747              	.LVL40:
 748 0140 C01B     		subs	r0, r0, r7
 749 0142 B042     		cmp	r0, r6
 750 0144 EAD3     		bcc	.L64
 558:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           goto error;
 751              		.loc 1 558 0
 752 0146 0323     		movs	r3, #3
 753 0148 72E7     		b	.L51
 754              	.L61:
 566:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 755              		.loc 1 566 0
 756 014a 0097     		str	r7, [sp]
 757 014c 3346     		mov	r3, r6
 758 014e 0122     		movs	r2, #1
 759 0150 0221     		movs	r1, #2
 760 0152 2046     		mov	r0, r4
 761 0154 FFF7FEFF 		bl	SPI_WaitFlagStateUntilTimeout
 762              	.LVL41:
 763 0158 08B1     		cbz	r0, .L86
 568:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 764              		.loc 1 568 0
 765 015a 0323     		movs	r3, #3
 766 015c 68E7     		b	.L51
 767              	.L86:
 573:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 768              		.loc 1 573 0
 769 015e 3A46     		mov	r2, r7
 770 0160 3146     		mov	r1, r6
 771 0162 2046     		mov	r0, r4
 772 0164 FFF7FEFF 		bl	SPI_CheckFlag_BSY
 773              	.LVL42:
 774 0168 0346     		mov	r3, r0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 73


 775 016a 18B1     		cbz	r0, .L68
 776              	.LVL43:
 576:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 777              		.loc 1 576 0
 778 016c 2023     		movs	r3, #32
 779 016e 6365     		str	r3, [r4, #84]
 575:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->ErrorCode = HAL_SPI_ERROR_FLAG;
 780              		.loc 1 575 0
 781 0170 0123     		movs	r3, #1
 577:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 782              		.loc 1 577 0
 783 0172 5DE7     		b	.L51
 784              	.LVL44:
 785              	.L68:
 581:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 786              		.loc 1 581 0
 787 0174 A268     		ldr	r2, [r4, #8]
 788 0176 32B9     		cbnz	r2, .L69
 789              	.LBB2:
 583:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 790              		.loc 1 583 0
 791 0178 0392     		str	r2, [sp, #12]
 792 017a 2268     		ldr	r2, [r4]
 793 017c D168     		ldr	r1, [r2, #12]
 794 017e 0391     		str	r1, [sp, #12]
 795 0180 9268     		ldr	r2, [r2, #8]
 796 0182 0392     		str	r2, [sp, #12]
 797 0184 039A     		ldr	r2, [sp, #12]
 798              	.L69:
 799              	.LBE2:
 593:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 800              		.loc 1 593 0
 801 0186 626D     		ldr	r2, [r4, #84]
 802 0188 002A     		cmp	r2, #0
 803 018a 3FF451AF 		beq	.L51
 595:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 804              		.loc 1 595 0
 805 018e 0123     		movs	r3, #1
 806 0190 4EE7     		b	.L51
 807              	.LVL45:
 808              	.L72:
 466:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 809              		.loc 1 466 0
 810 0192 0123     		movs	r3, #1
 811 0194 4CE7     		b	.L51
 812              	.L73:
 813 0196 0123     		movs	r3, #1
 814 0198 4AE7     		b	.L51
 815              	.LVL46:
 816              	.L74:
 529:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           goto error;
 817              		.loc 1 529 0
 818 019a 0323     		movs	r3, #3
 819 019c 48E7     		b	.L51
 820              	.L76:
 558:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           goto error;
 821              		.loc 1 558 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 74


 822 019e 0323     		movs	r3, #3
 823 01a0 46E7     		b	.L51
 824              	.LVL47:
 825              	.L70:
 453:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 826              		.loc 1 453 0
 827 01a2 0223     		movs	r3, #2
 828 01a4 4AE7     		b	.L50
 829              		.cfi_endproc
 830              	.LFE70:
 832              		.section	.text.HAL_SPI_TransmitReceive,"ax",%progbits
 833              		.align	1
 834              		.global	HAL_SPI_TransmitReceive
 835              		.syntax unified
 836              		.thumb
 837              		.thumb_func
 838              		.fpu softvfp
 840              	HAL_SPI_TransmitReceive:
 841              	.LFB72:
 822:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t tmp = 0U, tmp1 = 0U;
 842              		.loc 1 822 0
 843              		.cfi_startproc
 844              		@ args = 4, pretend = 0, frame = 8
 845              		@ frame_needed = 0, uses_anonymous_args = 0
 846              	.LVL48:
 847 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 848              	.LCFI15:
 849              		.cfi_def_cfa_offset 28
 850              		.cfi_offset 4, -28
 851              		.cfi_offset 5, -24
 852              		.cfi_offset 6, -20
 853              		.cfi_offset 7, -16
 854              		.cfi_offset 8, -12
 855              		.cfi_offset 9, -8
 856              		.cfi_offset 14, -4
 857 0004 85B0     		sub	sp, sp, #20
 858              	.LCFI16:
 859              		.cfi_def_cfa_offset 48
 860 0006 9946     		mov	r9, r3
 861 0008 0C9D     		ldr	r5, [sp, #48]
 862              	.LVL49:
 836:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 863              		.loc 1 836 0
 864 000a 90F85030 		ldrb	r3, [r0, #80]	@ zero_extendqisi2
 865              	.LVL50:
 866 000e 012B     		cmp	r3, #1
 867 0010 00F01081 		beq	.L110
 868 0014 0446     		mov	r4, r0
 869 0016 0F46     		mov	r7, r1
 870 0018 1646     		mov	r6, r2
 836:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 871              		.loc 1 836 0 is_stmt 0 discriminator 2
 872 001a 0123     		movs	r3, #1
 873 001c 80F85030 		strb	r3, [r0, #80]
 839:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   
 874              		.loc 1 839 0 is_stmt 1 discriminator 2
 875 0020 FFF7FEFF 		bl	HAL_GetTick
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 75


 876              	.LVL51:
 877 0024 8046     		mov	r8, r0
 878              	.LVL52:
 841:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   tmp1 = hspi->Init.Mode;
 879              		.loc 1 841 0 discriminator 2
 880 0026 94F85130 		ldrb	r3, [r4, #81]	@ zero_extendqisi2
 881 002a DBB2     		uxtb	r3, r3
 882              	.LVL53:
 842:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   
 883              		.loc 1 842 0 discriminator 2
 884 002c 6268     		ldr	r2, [r4, #4]
 885              	.LVL54:
 844:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     ((tmp1 == SPI_MODE_MASTER) && (hspi->Init.Direction == SPI_DIRECTION_2LINES) && (tmp == HAL_SPI
 886              		.loc 1 844 0 discriminator 2
 887 002e 012B     		cmp	r3, #1
 888 0030 15D0     		beq	.L89
 844:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     ((tmp1 == SPI_MODE_MASTER) && (hspi->Init.Direction == SPI_DIRECTION_2LINES) && (tmp == HAL_SPI
 889              		.loc 1 844 0 is_stmt 0 discriminator 1
 890 0032 B2F5827F 		cmp	r2, #260
 891 0036 0AD0     		beq	.L121
 847:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 892              		.loc 1 847 0 is_stmt 1
 893 0038 0223     		movs	r3, #2
 894              	.LVL55:
 895              	.L90:
1040:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_UNLOCK(hspi);
 896              		.loc 1 1040 0
 897 003a 0122     		movs	r2, #1
 898 003c 84F85120 		strb	r2, [r4, #81]
1041:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return errorcode;
 899              		.loc 1 1041 0
 900 0040 0022     		movs	r2, #0
 901 0042 84F85020 		strb	r2, [r4, #80]
 902              	.LVL56:
 903              	.L88:
1043:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 904              		.loc 1 1043 0
 905 0046 1846     		mov	r0, r3
 906 0048 05B0     		add	sp, sp, #20
 907              	.LCFI17:
 908              		.cfi_remember_state
 909              		.cfi_def_cfa_offset 28
 910              		@ sp needed
 911 004a BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 912              	.LVL57:
 913              	.L121:
 914              	.LCFI18:
 915              		.cfi_restore_state
 845:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 916              		.loc 1 845 0
 917 004e A268     		ldr	r2, [r4, #8]
 918              	.LVL58:
 919 0050 002A     		cmp	r2, #0
 920 0052 40F0E780 		bne	.L112
 845:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 921              		.loc 1 845 0 is_stmt 0 discriminator 1
 922 0056 042B     		cmp	r3, #4
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 76


 923 0058 01D0     		beq	.L89
 847:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 924              		.loc 1 847 0 is_stmt 1
 925 005a 0223     		movs	r3, #2
 926              	.LVL59:
 927 005c EDE7     		b	.L90
 928              	.LVL60:
 929              	.L89:
 851:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 930              		.loc 1 851 0
 931 005e 002F     		cmp	r7, #0
 932 0060 00F0E280 		beq	.L114
 851:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 933              		.loc 1 851 0 is_stmt 0 discriminator 1
 934 0064 002E     		cmp	r6, #0
 935 0066 00F0E180 		beq	.L115
 851:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 936              		.loc 1 851 0 discriminator 2
 937 006a B9F1000F 		cmp	r9, #0
 938 006e 00F0DF80 		beq	.L116
 858:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 939              		.loc 1 858 0 is_stmt 1
 940 0072 94F85130 		ldrb	r3, [r4, #81]	@ zero_extendqisi2
 941              	.LVL61:
 942 0076 DBB2     		uxtb	r3, r3
 943 0078 012B     		cmp	r3, #1
 944 007a 2BD0     		beq	.L122
 945              	.L91:
 864:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pRxBuffPtr  = (uint8_t *)pRxData;
 946              		.loc 1 864 0
 947 007c 0023     		movs	r3, #0
 948 007e 6365     		str	r3, [r4, #84]
 865:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount = Size;
 949              		.loc 1 865 0
 950 0080 A663     		str	r6, [r4, #56]
 866:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferSize  = Size;
 951              		.loc 1 866 0
 952 0082 A4F83E90 		strh	r9, [r4, #62]	@ movhi
 867:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pTxBuffPtr  = (uint8_t *)pTxData;
 953              		.loc 1 867 0
 954 0086 A4F83C90 		strh	r9, [r4, #60]	@ movhi
 868:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = Size;
 955              		.loc 1 868 0
 956 008a 2763     		str	r7, [r4, #48]
 869:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferSize  = Size;
 957              		.loc 1 869 0
 958 008c A4F83690 		strh	r9, [r4, #54]	@ movhi
 870:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 959              		.loc 1 870 0
 960 0090 A4F83490 		strh	r9, [r4, #52]	@ movhi
 873:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxISR       = NULL;
 961              		.loc 1 873 0
 962 0094 2364     		str	r3, [r4, #64]
 874:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 963              		.loc 1 874 0
 964 0096 6364     		str	r3, [r4, #68]
 885:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 77


 965              		.loc 1 885 0
 966 0098 2368     		ldr	r3, [r4]
 967 009a 1A68     		ldr	r2, [r3]
 968 009c 12F0400F 		tst	r2, #64
 969 00a0 03D1     		bne	.L92
 888:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 970              		.loc 1 888 0
 971 00a2 1A68     		ldr	r2, [r3]
 972 00a4 42F04002 		orr	r2, r2, #64
 973 00a8 1A60     		str	r2, [r3]
 974              	.LVL62:
 975              	.L92:
 892:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 976              		.loc 1 892 0
 977 00aa E368     		ldr	r3, [r4, #12]
 978 00ac B3F5006F 		cmp	r3, #2048
 979 00b0 14D0     		beq	.L123
 939:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 980              		.loc 1 939 0
 981 00b2 6368     		ldr	r3, [r4, #4]
 982 00b4 1BB1     		cbz	r3, .L102
 939:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 983              		.loc 1 939 0 is_stmt 0 discriminator 1
 984 00b6 E38E     		ldrh	r3, [r4, #54]
 985 00b8 9BB2     		uxth	r3, r3
 986 00ba 012B     		cmp	r3, #1
 987 00bc 07D1     		bne	.L103
 988              	.L102:
 941:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       pTxData += sizeof(uint8_t);
 989              		.loc 1 941 0 is_stmt 1
 990 00be 2368     		ldr	r3, [r4]
 991 00c0 17F8012B 		ldrb	r2, [r7], #1	@ zero_extendqisi2
 992              	.LVL63:
 993 00c4 1A73     		strb	r2, [r3, #12]
 994              	.LVL64:
 943:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 995              		.loc 1 943 0
 996 00c6 E38E     		ldrh	r3, [r4, #54]
 997 00c8 013B     		subs	r3, r3, #1
 998 00ca 9BB2     		uxth	r3, r3
 999 00cc E386     		strh	r3, [r4, #54]	@ movhi
 1000              	.L103:
 970:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 1001              		.loc 1 970 0
 1002 00ce 4FF00109 		mov	r9, #1
 1003 00d2 61E0     		b	.L104
 1004              	.LVL65:
 1005              	.L122:
 860:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 1006              		.loc 1 860 0
 1007 00d4 0523     		movs	r3, #5
 1008 00d6 84F85130 		strb	r3, [r4, #81]
 1009 00da CFE7     		b	.L91
 1010              	.LVL66:
 1011              	.L123:
 894:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 1012              		.loc 1 894 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 78


 1013 00dc 6368     		ldr	r3, [r4, #4]
 1014 00de 1BB1     		cbz	r3, .L94
 894:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 1015              		.loc 1 894 0 is_stmt 0 discriminator 1
 1016 00e0 E38E     		ldrh	r3, [r4, #54]
 1017 00e2 9BB2     		uxth	r3, r3
 1018 00e4 012B     		cmp	r3, #1
 1019 00e6 07D1     		bne	.L95
 1020              	.L94:
 896:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       pTxData += sizeof(uint16_t);
 1021              		.loc 1 896 0 is_stmt 1
 1022 00e8 2368     		ldr	r3, [r4]
 1023 00ea 37F8022B 		ldrh	r2, [r7], #2
 1024              	.LVL67:
 1025 00ee DA60     		str	r2, [r3, #12]
 1026              	.LVL68:
 898:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 1027              		.loc 1 898 0
 1028 00f0 E38E     		ldrh	r3, [r4, #54]
 1029 00f2 013B     		subs	r3, r3, #1
 1030 00f4 9BB2     		uxth	r3, r3
 1031 00f6 E386     		strh	r3, [r4, #54]	@ movhi
 1032              	.L95:
 927:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 1033              		.loc 1 927 0
 1034 00f8 4FF00109 		mov	r9, #1
 1035 00fc 13E0     		b	.L96
 1036              	.LVL69:
 1037              	.L97:
 921:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 1038              		.loc 1 921 0
 1039 00fe E38F     		ldrh	r3, [r4, #62]
 1040 0100 9BB2     		uxth	r3, r3
 1041 0102 6BB1     		cbz	r3, .L98
 921:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 1042              		.loc 1 921 0 is_stmt 0 discriminator 1
 1043 0104 2368     		ldr	r3, [r4]
 1044 0106 9A68     		ldr	r2, [r3, #8]
 1045 0108 12F0010F 		tst	r2, #1
 1046 010c 08D0     		beq	.L98
 923:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         pRxData += sizeof(uint16_t);
 1047              		.loc 1 923 0 is_stmt 1
 1048 010e DB68     		ldr	r3, [r3, #12]
 1049 0110 26F8023B 		strh	r3, [r6], #2	@ movhi
 1050              	.LVL70:
 925:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Next Data is a Transmission (Tx). Tx is allowed */ 
 1051              		.loc 1 925 0
 1052 0114 E38F     		ldrh	r3, [r4, #62]
 1053 0116 013B     		subs	r3, r3, #1
 1054 0118 9BB2     		uxth	r3, r3
 1055 011a E387     		strh	r3, [r4, #62]	@ movhi
 1056              	.LVL71:
 927:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 1057              		.loc 1 927 0
 1058 011c 4FF00109 		mov	r9, #1
 1059              	.LVL72:
 1060              	.L98:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 79


 929:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 1061              		.loc 1 929 0
 1062 0120 B5F1FF3F 		cmp	r5, #-1
 1063 0124 1CD1     		bne	.L124
 1064              	.LVL73:
 1065              	.L96:
 900:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 1066              		.loc 1 900 0
 1067 0126 E38E     		ldrh	r3, [r4, #54]
 1068 0128 9BB2     		uxth	r3, r3
 1069 012a 1BB9     		cbnz	r3, .L100
 900:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 1070              		.loc 1 900 0 is_stmt 0 discriminator 1
 1071 012c E38F     		ldrh	r3, [r4, #62]
 1072 012e 9BB2     		uxth	r3, r3
 1073 0130 002B     		cmp	r3, #0
 1074 0132 55D0     		beq	.L101
 1075              	.L100:
 903:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 1076              		.loc 1 903 0 is_stmt 1
 1077 0134 B9F1000F 		cmp	r9, #0
 1078 0138 E1D0     		beq	.L97
 903:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 1079              		.loc 1 903 0 is_stmt 0 discriminator 1
 1080 013a E38E     		ldrh	r3, [r4, #54]
 1081 013c 9BB2     		uxth	r3, r3
 1082 013e 002B     		cmp	r3, #0
 1083 0140 DDD0     		beq	.L97
 903:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 1084              		.loc 1 903 0 discriminator 2
 1085 0142 2368     		ldr	r3, [r4]
 1086 0144 9A68     		ldr	r2, [r3, #8]
 1087 0146 12F0020F 		tst	r2, #2
 1088 014a D8D0     		beq	.L97
 905:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         pTxData += sizeof(uint16_t);
 1089              		.loc 1 905 0 is_stmt 1
 1090 014c 37F8022B 		ldrh	r2, [r7], #2
 1091              	.LVL74:
 1092 0150 DA60     		str	r2, [r3, #12]
 1093              	.LVL75:
 907:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Next Data is a reception (Rx). Tx not allowed */ 
 1094              		.loc 1 907 0
 1095 0152 E38E     		ldrh	r3, [r4, #54]
 1096 0154 013B     		subs	r3, r3, #1
 1097 0156 9BB2     		uxth	r3, r3
 1098 0158 E386     		strh	r3, [r4, #54]	@ movhi
 1099              	.LVL76:
 909:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1100              		.loc 1 909 0
 1101 015a 4FF00009 		mov	r9, #0
 1102 015e CEE7     		b	.L97
 1103              	.LVL77:
 1104              	.L124:
 929:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 1105              		.loc 1 929 0 discriminator 1
 1106 0160 FFF7FEFF 		bl	HAL_GetTick
 1107              	.LVL78:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 80


 1108 0164 A0EB0800 		sub	r0, r0, r8
 1109 0168 A842     		cmp	r0, r5
 1110 016a DCD3     		bcc	.L96
 931:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         goto error;
 1111              		.loc 1 931 0
 1112 016c 0323     		movs	r3, #3
 1113 016e 64E7     		b	.L90
 1114              	.LVL79:
 1115              	.L105:
 965:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 1116              		.loc 1 965 0
 1117 0170 E38F     		ldrh	r3, [r4, #62]
 1118 0172 9BB2     		uxth	r3, r3
 1119 0174 6BB1     		cbz	r3, .L106
 965:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 1120              		.loc 1 965 0 is_stmt 0 discriminator 1
 1121 0176 2368     		ldr	r3, [r4]
 1122 0178 9A68     		ldr	r2, [r3, #8]
 1123 017a 12F0010F 		tst	r2, #1
 1124 017e 08D0     		beq	.L106
 967:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         hspi->RxXferCount--;
 1125              		.loc 1 967 0 is_stmt 1
 1126 0180 DB68     		ldr	r3, [r3, #12]
 1127              	.LVL80:
 1128 0182 3370     		strb	r3, [r6]
 968:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Next Data is a Transmission (Tx). Tx is allowed */ 
 1129              		.loc 1 968 0
 1130 0184 E38F     		ldrh	r3, [r4, #62]
 1131 0186 013B     		subs	r3, r3, #1
 1132 0188 9BB2     		uxth	r3, r3
 1133 018a E387     		strh	r3, [r4, #62]	@ movhi
 1134              	.LVL81:
 967:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         hspi->RxXferCount--;
 1135              		.loc 1 967 0
 1136 018c 0136     		adds	r6, r6, #1
 1137              	.LVL82:
 970:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 1138              		.loc 1 970 0
 1139 018e 4FF00109 		mov	r9, #1
 1140              	.LVL83:
 1141              	.L106:
 972:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 1142              		.loc 1 972 0
 1143 0192 B5F1FF3F 		cmp	r5, #-1
 1144 0196 1BD1     		bne	.L125
 1145              	.LVL84:
 1146              	.L104:
 945:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 1147              		.loc 1 945 0
 1148 0198 E38E     		ldrh	r3, [r4, #54]
 1149 019a 9BB2     		uxth	r3, r3
 1150 019c 13B9     		cbnz	r3, .L108
 945:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 1151              		.loc 1 945 0 is_stmt 0 discriminator 1
 1152 019e E38F     		ldrh	r3, [r4, #62]
 1153 01a0 9BB2     		uxth	r3, r3
 1154 01a2 EBB1     		cbz	r3, .L101
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 81


 1155              	.L108:
 948:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 1156              		.loc 1 948 0 is_stmt 1
 1157 01a4 B9F1000F 		cmp	r9, #0
 1158 01a8 E2D0     		beq	.L105
 948:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 1159              		.loc 1 948 0 is_stmt 0 discriminator 1
 1160 01aa E38E     		ldrh	r3, [r4, #54]
 1161 01ac 9BB2     		uxth	r3, r3
 1162 01ae 002B     		cmp	r3, #0
 1163 01b0 DED0     		beq	.L105
 948:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 1164              		.loc 1 948 0 discriminator 2
 1165 01b2 2368     		ldr	r3, [r4]
 1166 01b4 9A68     		ldr	r2, [r3, #8]
 1167 01b6 12F0020F 		tst	r2, #2
 1168 01ba D9D0     		beq	.L105
 1169              	.LVL85:
 950:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         hspi->TxXferCount--;
 1170              		.loc 1 950 0 is_stmt 1
 1171 01bc 3A78     		ldrb	r2, [r7]	@ zero_extendqisi2
 1172 01be 1A73     		strb	r2, [r3, #12]
 951:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         /* Next Data is a reception (Rx). Tx not allowed */ 
 1173              		.loc 1 951 0
 1174 01c0 E38E     		ldrh	r3, [r4, #54]
 1175 01c2 013B     		subs	r3, r3, #1
 1176 01c4 9BB2     		uxth	r3, r3
 1177 01c6 E386     		strh	r3, [r4, #54]	@ movhi
 1178              	.LVL86:
 950:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         hspi->TxXferCount--;
 1179              		.loc 1 950 0
 1180 01c8 0137     		adds	r7, r7, #1
 1181              	.LVL87:
 953:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1182              		.loc 1 953 0
 1183 01ca 4FF00009 		mov	r9, #0
 1184 01ce CFE7     		b	.L105
 1185              	.LVL88:
 1186              	.L125:
 972:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 1187              		.loc 1 972 0 discriminator 1
 1188 01d0 FFF7FEFF 		bl	HAL_GetTick
 1189              	.LVL89:
 1190 01d4 A0EB0800 		sub	r0, r0, r8
 1191 01d8 A842     		cmp	r0, r5
 1192 01da DDD3     		bcc	.L104
 974:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         goto error;
 1193              		.loc 1 974 0
 1194 01dc 0323     		movs	r3, #3
 1195 01de 2CE7     		b	.L90
 1196              	.L101:
1019:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1197              		.loc 1 1019 0
 1198 01e0 CDF80080 		str	r8, [sp]
 1199 01e4 2B46     		mov	r3, r5
 1200 01e6 0122     		movs	r2, #1
 1201 01e8 0221     		movs	r1, #2
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 82


 1202 01ea 2046     		mov	r0, r4
 1203 01ec FFF7FEFF 		bl	SPI_WaitFlagStateUntilTimeout
 1204              	.LVL90:
 1205 01f0 08B1     		cbz	r0, .L126
1021:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 1206              		.loc 1 1021 0
 1207 01f2 0323     		movs	r3, #3
 1208 01f4 21E7     		b	.L90
 1209              	.L126:
1026:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1210              		.loc 1 1026 0
 1211 01f6 4246     		mov	r2, r8
 1212 01f8 2946     		mov	r1, r5
 1213 01fa 2046     		mov	r0, r4
 1214 01fc FFF7FEFF 		bl	SPI_CheckFlag_BSY
 1215              	.LVL91:
 1216 0200 0346     		mov	r3, r0
 1217 0202 18B1     		cbz	r0, .L109
 1218              	.LVL92:
1029:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 1219              		.loc 1 1029 0
 1220 0204 2023     		movs	r3, #32
 1221 0206 6365     		str	r3, [r4, #84]
1028:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->ErrorCode = HAL_SPI_ERROR_FLAG;
 1222              		.loc 1 1028 0
 1223 0208 0123     		movs	r3, #1
1030:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 1224              		.loc 1 1030 0
 1225 020a 16E7     		b	.L90
 1226              	.LVL93:
 1227              	.L109:
1034:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1228              		.loc 1 1034 0
 1229 020c A268     		ldr	r2, [r4, #8]
 1230 020e 002A     		cmp	r2, #0
 1231 0210 7FF413AF 		bne	.L90
 1232              	.LBB3:
1036:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 1233              		.loc 1 1036 0
 1234 0214 0392     		str	r2, [sp, #12]
 1235 0216 2268     		ldr	r2, [r4]
 1236 0218 D168     		ldr	r1, [r2, #12]
 1237 021a 0391     		str	r1, [sp, #12]
 1238 021c 9268     		ldr	r2, [r2, #8]
 1239 021e 0392     		str	r2, [sp, #12]
 1240 0220 039A     		ldr	r2, [sp, #12]
 1241 0222 0AE7     		b	.L90
 1242              	.LVL94:
 1243              	.L112:
 1244              	.LBE3:
 847:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 1245              		.loc 1 847 0
 1246 0224 0223     		movs	r3, #2
 1247              	.LVL95:
 1248 0226 08E7     		b	.L90
 1249              	.LVL96:
 1250              	.L114:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 83


 853:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 1251              		.loc 1 853 0
 1252 0228 0123     		movs	r3, #1
 1253              	.LVL97:
 1254 022a 06E7     		b	.L90
 1255              	.LVL98:
 1256              	.L115:
 1257 022c 0123     		movs	r3, #1
 1258              	.LVL99:
 1259 022e 04E7     		b	.L90
 1260              	.LVL100:
 1261              	.L116:
 1262 0230 0123     		movs	r3, #1
 1263              	.LVL101:
 1264 0232 02E7     		b	.L90
 1265              	.LVL102:
 1266              	.L110:
 836:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1267              		.loc 1 836 0
 1268 0234 0223     		movs	r3, #2
 1269 0236 06E7     		b	.L88
 1270              		.cfi_endproc
 1271              	.LFE72:
 1273              		.section	.text.HAL_SPI_Receive,"ax",%progbits
 1274              		.align	1
 1275              		.global	HAL_SPI_Receive
 1276              		.syntax unified
 1277              		.thumb
 1278              		.thumb_func
 1279              		.fpu softvfp
 1281              	HAL_SPI_Receive:
 1282              	.LFB71:
 615:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
 1283              		.loc 1 615 0
 1284              		.cfi_startproc
 1285              		@ args = 0, pretend = 0, frame = 0
 1286              		@ frame_needed = 0, uses_anonymous_args = 0
 1287              	.LVL103:
 1288 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1289              	.LCFI19:
 1290              		.cfi_def_cfa_offset 24
 1291              		.cfi_offset 4, -24
 1292              		.cfi_offset 5, -20
 1293              		.cfi_offset 6, -16
 1294              		.cfi_offset 7, -12
 1295              		.cfi_offset 8, -8
 1296              		.cfi_offset 14, -4
 1297 0004 82B0     		sub	sp, sp, #8
 1298              	.LCFI20:
 1299              		.cfi_def_cfa_offset 32
 1300 0006 0446     		mov	r4, r0
 1301 0008 0D46     		mov	r5, r1
 1302 000a 1746     		mov	r7, r2
 1303 000c 1E46     		mov	r6, r3
 1304              	.LVL104:
 622:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1305              		.loc 1 622 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 84


 1306 000e 4368     		ldr	r3, [r0, #4]
 1307              	.LVL105:
 1308 0010 B3F5827F 		cmp	r3, #260
 1309 0014 19D0     		beq	.L154
 1310              	.L128:
 630:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1311              		.loc 1 630 0
 1312 0016 94F85030 		ldrb	r3, [r4, #80]	@ zero_extendqisi2
 1313 001a 012B     		cmp	r3, #1
 1314 001c 00F0A280 		beq	.L144
 630:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1315              		.loc 1 630 0 is_stmt 0 discriminator 2
 1316 0020 0123     		movs	r3, #1
 1317 0022 84F85030 		strb	r3, [r4, #80]
 633:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1318              		.loc 1 633 0 is_stmt 1 discriminator 2
 1319 0026 FFF7FEFF 		bl	HAL_GetTick
 1320              	.LVL106:
 1321 002a 8046     		mov	r8, r0
 1322              	.LVL107:
 635:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1323              		.loc 1 635 0 discriminator 2
 1324 002c 94F85130 		ldrb	r3, [r4, #81]	@ zero_extendqisi2
 1325 0030 DBB2     		uxtb	r3, r3
 1326 0032 012B     		cmp	r3, #1
 1327 0034 15D0     		beq	.L155
 637:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 1328              		.loc 1 637 0
 1329 0036 0220     		movs	r0, #2
 1330              	.LVL108:
 1331              	.L130:
 806:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __HAL_UNLOCK(hspi);
 1332              		.loc 1 806 0
 1333 0038 0123     		movs	r3, #1
 1334 003a 84F85130 		strb	r3, [r4, #81]
 807:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return errorcode;
 1335              		.loc 1 807 0
 1336 003e 0023     		movs	r3, #0
 1337 0040 84F85030 		strb	r3, [r4, #80]
 1338              	.LVL109:
 1339              	.L129:
 809:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1340              		.loc 1 809 0
 1341 0044 02B0     		add	sp, sp, #8
 1342              	.LCFI21:
 1343              		.cfi_remember_state
 1344              		.cfi_def_cfa_offset 24
 1345              		@ sp needed
 1346 0046 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1347              	.LVL110:
 1348              	.L154:
 1349              	.LCFI22:
 1350              		.cfi_restore_state
 622:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1351              		.loc 1 622 0 discriminator 1
 1352 004a 8368     		ldr	r3, [r0, #8]
 1353 004c 002B     		cmp	r3, #0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 85


 1354 004e E2D1     		bne	.L128
 624:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****      /* Call transmit-receive function to send Dummy data on Tx line and generate clock on CLK line
 1355              		.loc 1 624 0
 1356 0050 0423     		movs	r3, #4
 1357 0052 80F85130 		strb	r3, [r0, #81]
 626:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 1358              		.loc 1 626 0
 1359 0056 0096     		str	r6, [sp]
 1360 0058 1346     		mov	r3, r2
 1361 005a 0A46     		mov	r2, r1
 1362              	.LVL111:
 1363 005c FFF7FEFF 		bl	HAL_SPI_TransmitReceive
 1364              	.LVL112:
 1365 0060 F0E7     		b	.L129
 1366              	.LVL113:
 1367              	.L155:
 641:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1368              		.loc 1 641 0
 1369 0062 002D     		cmp	r5, #0
 1370 0064 74D0     		beq	.L146
 641:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1371              		.loc 1 641 0 is_stmt 0 discriminator 1
 1372 0066 002F     		cmp	r7, #0
 1373 0068 74D0     		beq	.L147
 648:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->ErrorCode   = HAL_SPI_ERROR_NONE;
 1374              		.loc 1 648 0 is_stmt 1
 1375 006a 0423     		movs	r3, #4
 1376 006c 84F85130 		strb	r3, [r4, #81]
 649:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pRxBuffPtr  = (uint8_t *)pData;
 1377              		.loc 1 649 0
 1378 0070 0023     		movs	r3, #0
 1379 0072 6365     		str	r3, [r4, #84]
 650:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferSize  = Size;
 1380              		.loc 1 650 0
 1381 0074 A563     		str	r5, [r4, #56]
 651:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount = Size;
 1382              		.loc 1 651 0
 1383 0076 A787     		strh	r7, [r4, #60]	@ movhi
 652:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1384              		.loc 1 652 0
 1385 0078 E787     		strh	r7, [r4, #62]	@ movhi
 655:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferSize  = 0U;
 1386              		.loc 1 655 0
 1387 007a 2363     		str	r3, [r4, #48]
 656:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = 0U;
 1388              		.loc 1 656 0
 1389 007c A386     		strh	r3, [r4, #52]	@ movhi
 657:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxISR       = NULL;
 1390              		.loc 1 657 0
 1391 007e E386     		strh	r3, [r4, #54]	@ movhi
 658:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxISR       = NULL;
 1392              		.loc 1 658 0
 1393 0080 2364     		str	r3, [r4, #64]
 659:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1394              		.loc 1 659 0
 1395 0082 6364     		str	r3, [r4, #68]
 672:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 86


 1396              		.loc 1 672 0
 1397 0084 A368     		ldr	r3, [r4, #8]
 1398 0086 B3F5004F 		cmp	r3, #32768
 1399 008a 0BD0     		beq	.L156
 1400              	.L131:
 678:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1401              		.loc 1 678 0
 1402 008c 2368     		ldr	r3, [r4]
 1403 008e 1A68     		ldr	r2, [r3]
 1404 0090 12F0400F 		tst	r2, #64
 1405 0094 03D1     		bne	.L132
 681:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 1406              		.loc 1 681 0
 1407 0096 1A68     		ldr	r2, [r3]
 1408 0098 42F04002 		orr	r2, r2, #64
 1409 009c 1A60     		str	r2, [r3]
 1410              	.L132:
 685:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1411              		.loc 1 685 0
 1412 009e E368     		ldr	r3, [r4, #12]
 1413 00a0 5BB1     		cbz	r3, .L133
 1414 00a2 28E0     		b	.L134
 1415              	.L156:
 674:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 1416              		.loc 1 674 0
 1417 00a4 2268     		ldr	r2, [r4]
 1418 00a6 1368     		ldr	r3, [r2]
 1419 00a8 23F48043 		bic	r3, r3, #16384
 1420 00ac 1360     		str	r3, [r2]
 1421 00ae EDE7     		b	.L131
 1422              	.LVL114:
 1423              	.L135:
 701:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
 1424              		.loc 1 701 0
 1425 00b0 002E     		cmp	r6, #0
 1426 00b2 51D0     		beq	.L148
 701:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
 1427              		.loc 1 701 0 is_stmt 0 discriminator 1
 1428 00b4 B6F1FF3F 		cmp	r6, #-1
 1429 00b8 10D1     		bne	.L157
 1430              	.L133:
 688:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 1431              		.loc 1 688 0 is_stmt 1
 1432 00ba E38F     		ldrh	r3, [r4, #62]
 1433 00bc 9BB2     		uxth	r3, r3
 1434 00be 002B     		cmp	r3, #0
 1435 00c0 31D0     		beq	.L138
 691:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 1436              		.loc 1 691 0
 1437 00c2 2368     		ldr	r3, [r4]
 1438 00c4 9A68     		ldr	r2, [r3, #8]
 1439 00c6 12F0010F 		tst	r2, #1
 1440 00ca F1D0     		beq	.L135
 694:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         pData += sizeof(uint8_t);
 1441              		.loc 1 694 0
 1442 00cc 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 1443 00ce 05F8013B 		strb	r3, [r5], #1
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 87


 1444              	.LVL115:
 696:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 1445              		.loc 1 696 0
 1446 00d2 E38F     		ldrh	r3, [r4, #62]
 1447 00d4 013B     		subs	r3, r3, #1
 1448 00d6 9BB2     		uxth	r3, r3
 1449 00d8 E387     		strh	r3, [r4, #62]	@ movhi
 1450 00da EEE7     		b	.L133
 1451              	.L157:
 701:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
 1452              		.loc 1 701 0 discriminator 2
 1453 00dc FFF7FEFF 		bl	HAL_GetTick
 1454              	.LVL116:
 1455 00e0 A0EB0800 		sub	r0, r0, r8
 1456 00e4 B042     		cmp	r0, r6
 1457 00e6 E8D3     		bcc	.L133
 703:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           goto error;
 1458              		.loc 1 703 0
 1459 00e8 0320     		movs	r0, #3
 1460 00ea A5E7     		b	.L130
 1461              	.L139:
 724:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
 1462              		.loc 1 724 0
 1463 00ec 002E     		cmp	r6, #0
 1464 00ee 35D0     		beq	.L150
 724:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
 1465              		.loc 1 724 0 is_stmt 0 discriminator 1
 1466 00f0 B6F1FF3F 		cmp	r6, #-1
 1467 00f4 0FD1     		bne	.L158
 1468              	.L134:
 712:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 1469              		.loc 1 712 0 is_stmt 1
 1470 00f6 E38F     		ldrh	r3, [r4, #62]
 1471 00f8 9BB2     		uxth	r3, r3
 1472 00fa A3B1     		cbz	r3, .L138
 715:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 1473              		.loc 1 715 0
 1474 00fc 2368     		ldr	r3, [r4]
 1475 00fe 9A68     		ldr	r2, [r3, #8]
 1476 0100 12F0010F 		tst	r2, #1
 1477 0104 F2D0     		beq	.L139
 717:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         pData += sizeof(uint16_t);
 1478              		.loc 1 717 0
 1479 0106 DB68     		ldr	r3, [r3, #12]
 1480 0108 25F8023B 		strh	r3, [r5], #2	@ movhi
 1481              	.LVL117:
 719:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 1482              		.loc 1 719 0
 1483 010c E38F     		ldrh	r3, [r4, #62]
 1484 010e 013B     		subs	r3, r3, #1
 1485 0110 9BB2     		uxth	r3, r3
 1486 0112 E387     		strh	r3, [r4, #62]	@ movhi
 1487 0114 EFE7     		b	.L134
 1488              	.L158:
 724:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
 1489              		.loc 1 724 0 discriminator 2
 1490 0116 FFF7FEFF 		bl	HAL_GetTick
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 88


 1491              	.LVL118:
 1492 011a A0EB0800 		sub	r0, r0, r8
 1493 011e B042     		cmp	r0, r6
 1494 0120 E9D3     		bcc	.L134
 726:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           goto error;
 1495              		.loc 1 726 0
 1496 0122 0320     		movs	r0, #3
 1497 0124 88E7     		b	.L130
 1498              	.L138:
 775:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1499              		.loc 1 775 0
 1500 0126 6368     		ldr	r3, [r4, #4]
 1501 0128 B3F5827F 		cmp	r3, #260
 1502 012c 03D0     		beq	.L159
 1503              	.L142:
 800:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1504              		.loc 1 800 0
 1505 012e 636D     		ldr	r3, [r4, #84]
 1506 0130 B3B9     		cbnz	r3, .L152
 620:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1507              		.loc 1 620 0
 1508 0132 0020     		movs	r0, #0
 1509 0134 80E7     		b	.L130
 1510              	.L159:
 775:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1511              		.loc 1 775 0 discriminator 1
 1512 0136 A368     		ldr	r3, [r4, #8]
 1513 0138 B3F5004F 		cmp	r3, #32768
 1514 013c 02D0     		beq	.L143
 775:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1515              		.loc 1 775 0 is_stmt 0 discriminator 2
 1516 013e B3F5806F 		cmp	r3, #1024
 1517 0142 F4D1     		bne	.L142
 1518              	.L143:
 778:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 1519              		.loc 1 778 0 is_stmt 1
 1520 0144 2268     		ldr	r2, [r4]
 1521 0146 1368     		ldr	r3, [r2]
 1522 0148 23F04003 		bic	r3, r3, #64
 1523 014c 1360     		str	r3, [r2]
 1524 014e EEE7     		b	.L142
 1525              	.LVL119:
 1526              	.L146:
 643:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 1527              		.loc 1 643 0
 1528 0150 0120     		movs	r0, #1
 1529              	.LVL120:
 1530 0152 71E7     		b	.L130
 1531              	.LVL121:
 1532              	.L147:
 1533 0154 0120     		movs	r0, #1
 1534              	.LVL122:
 1535 0156 6FE7     		b	.L130
 1536              	.L148:
 703:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           goto error;
 1537              		.loc 1 703 0
 1538 0158 0320     		movs	r0, #3
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 89


 1539 015a 6DE7     		b	.L130
 1540              	.L150:
 726:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           goto error;
 1541              		.loc 1 726 0
 1542 015c 0320     		movs	r0, #3
 1543 015e 6BE7     		b	.L130
 1544              	.L152:
 802:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 1545              		.loc 1 802 0
 1546 0160 0120     		movs	r0, #1
 1547 0162 69E7     		b	.L130
 1548              	.LVL123:
 1549              	.L144:
 630:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1550              		.loc 1 630 0
 1551 0164 0220     		movs	r0, #2
 1552              	.LVL124:
 1553 0166 6DE7     		b	.L129
 1554              		.cfi_endproc
 1555              	.LFE71:
 1557              		.section	.text.HAL_SPI_Transmit_IT,"ax",%progbits
 1558              		.align	1
 1559              		.global	HAL_SPI_Transmit_IT
 1560              		.syntax unified
 1561              		.thumb
 1562              		.thumb_func
 1563              		.fpu softvfp
 1565              	HAL_SPI_Transmit_IT:
 1566              	.LFB73:
1054:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_StatusTypeDef errorcode = HAL_OK;
 1567              		.loc 1 1054 0
 1568              		.cfi_startproc
 1569              		@ args = 0, pretend = 0, frame = 0
 1570              		@ frame_needed = 0, uses_anonymous_args = 0
 1571              		@ link register save eliminated.
 1572              	.LVL125:
 1573 0000 0346     		mov	r3, r0
 1574              	.LVL126:
1061:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1575              		.loc 1 1061 0
 1576 0002 90F85000 		ldrb	r0, [r0, #80]	@ zero_extendqisi2
 1577              	.LVL127:
 1578 0006 0128     		cmp	r0, #1
 1579 0008 4BD0     		beq	.L168
1061:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1580              		.loc 1 1061 0 is_stmt 0 discriminator 2
 1581 000a 0120     		movs	r0, #1
 1582 000c 83F85000 		strb	r0, [r3, #80]
1063:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1583              		.loc 1 1063 0 is_stmt 1 discriminator 2
 1584 0010 0029     		cmp	r1, #0
 1585 0012 3DD0     		beq	.L169
1063:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1586              		.loc 1 1063 0 is_stmt 0 discriminator 1
 1587 0014 002A     		cmp	r2, #0
 1588 0016 3DD0     		beq	.L170
1069:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 90


 1589              		.loc 1 1069 0 is_stmt 1
 1590 0018 93F85100 		ldrb	r0, [r3, #81]	@ zero_extendqisi2
 1591 001c C0B2     		uxtb	r0, r0
 1592 001e 0128     		cmp	r0, #1
 1593 0020 01D0     		beq	.L173
1071:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 1594              		.loc 1 1071 0
 1595 0022 0220     		movs	r0, #2
 1596 0024 37E0     		b	.L162
 1597              	.L173:
1076:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->ErrorCode   = HAL_SPI_ERROR_NONE;
 1598              		.loc 1 1076 0
 1599 0026 0320     		movs	r0, #3
 1600 0028 83F85100 		strb	r0, [r3, #81]
1077:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pTxBuffPtr  = (uint8_t *)pData;
 1601              		.loc 1 1077 0
 1602 002c 0020     		movs	r0, #0
 1603 002e 5865     		str	r0, [r3, #84]
1078:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferSize  = Size;
 1604              		.loc 1 1078 0
 1605 0030 1963     		str	r1, [r3, #48]
1079:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = Size;
 1606              		.loc 1 1079 0
 1607 0032 9A86     		strh	r2, [r3, #52]	@ movhi
1080:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1608              		.loc 1 1080 0
 1609 0034 DA86     		strh	r2, [r3, #54]	@ movhi
1083:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferSize  = 0U;
 1610              		.loc 1 1083 0
 1611 0036 9863     		str	r0, [r3, #56]
1084:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount = 0U;
 1612              		.loc 1 1084 0
 1613 0038 9887     		strh	r0, [r3, #60]	@ movhi
1085:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxISR       = NULL;
 1614              		.loc 1 1085 0
 1615 003a D887     		strh	r0, [r3, #62]	@ movhi
1086:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1616              		.loc 1 1086 0
 1617 003c 1864     		str	r0, [r3, #64]
1089:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1618              		.loc 1 1089 0
 1619 003e DA68     		ldr	r2, [r3, #12]
 1620              	.LVL128:
 1621 0040 BAB1     		cbz	r2, .L163
1091:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 1622              		.loc 1 1091 0
 1623 0042 194A     		ldr	r2, .L175
 1624 0044 5A64     		str	r2, [r3, #68]
 1625              	.L164:
1099:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1626              		.loc 1 1099 0
 1627 0046 9A68     		ldr	r2, [r3, #8]
 1628 0048 B2F5004F 		cmp	r2, #32768
 1629 004c 14D0     		beq	.L174
 1630              	.LVL129:
 1631              	.L165:
1112:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 91


 1632              		.loc 1 1112 0
 1633 004e 9A68     		ldr	r2, [r3, #8]
 1634 0050 C2B9     		cbnz	r2, .L166
1115:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 1635              		.loc 1 1115 0
 1636 0052 1968     		ldr	r1, [r3]
 1637 0054 4A68     		ldr	r2, [r1, #4]
 1638 0056 42F08002 		orr	r2, r2, #128
 1639 005a 4A60     		str	r2, [r1, #4]
 1640              	.L167:
1124:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1641              		.loc 1 1124 0
 1642 005c 1A68     		ldr	r2, [r3]
 1643 005e 1168     		ldr	r1, [r2]
 1644 0060 11F0400F 		tst	r1, #64
 1645 0064 1BD1     		bne	.L172
1127:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 1646              		.loc 1 1127 0
 1647 0066 1168     		ldr	r1, [r2]
 1648 0068 41F04001 		orr	r1, r1, #64
 1649 006c 1160     		str	r1, [r2]
1055:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1650              		.loc 1 1055 0
 1651 006e 0020     		movs	r0, #0
 1652 0070 11E0     		b	.L162
 1653              	.LVL130:
 1654              	.L163:
1095:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 1655              		.loc 1 1095 0
 1656 0072 0E4A     		ldr	r2, .L175+4
 1657 0074 5A64     		str	r2, [r3, #68]
 1658 0076 E6E7     		b	.L164
 1659              	.L174:
1101:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 1660              		.loc 1 1101 0
 1661 0078 1968     		ldr	r1, [r3]
 1662              	.LVL131:
 1663 007a 0A68     		ldr	r2, [r1]
 1664 007c 42F48042 		orr	r2, r2, #16384
 1665 0080 0A60     		str	r2, [r1]
 1666              	.LVL132:
 1667 0082 E4E7     		b	.L165
 1668              	.L166:
1120:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 1669              		.loc 1 1120 0
 1670 0084 1968     		ldr	r1, [r3]
 1671 0086 4A68     		ldr	r2, [r1, #4]
 1672 0088 42F0A002 		orr	r2, r2, #160
 1673 008c 4A60     		str	r2, [r1, #4]
 1674 008e E5E7     		b	.L167
 1675              	.LVL133:
 1676              	.L169:
1065:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 1677              		.loc 1 1065 0
 1678 0090 0120     		movs	r0, #1
 1679 0092 00E0     		b	.L162
 1680              	.L170:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 92


 1681 0094 0120     		movs	r0, #1
 1682              	.LVL134:
 1683              	.L162:
1131:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return errorcode;
 1684              		.loc 1 1131 0
 1685 0096 0022     		movs	r2, #0
 1686 0098 83F85020 		strb	r2, [r3, #80]
1132:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
 1687              		.loc 1 1132 0
 1688 009c 7047     		bx	lr
 1689              	.LVL135:
 1690              	.L172:
1055:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1691              		.loc 1 1055 0
 1692 009e 0020     		movs	r0, #0
 1693 00a0 F9E7     		b	.L162
 1694              	.LVL136:
 1695              	.L168:
1061:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1696              		.loc 1 1061 0
 1697 00a2 0220     		movs	r0, #2
1133:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1698              		.loc 1 1133 0
 1699 00a4 7047     		bx	lr
 1700              	.L176:
 1701 00a6 00BF     		.align	2
 1702              	.L175:
 1703 00a8 00000000 		.word	SPI_TxISR_16BIT
 1704 00ac 00000000 		.word	SPI_TxISR_8BIT
 1705              		.cfi_endproc
 1706              	.LFE73:
 1708              		.section	.text.HAL_SPI_TransmitReceive_IT,"ax",%progbits
 1709              		.align	1
 1710              		.global	HAL_SPI_TransmitReceive_IT
 1711              		.syntax unified
 1712              		.thumb
 1713              		.thumb_func
 1714              		.fpu softvfp
 1716              	HAL_SPI_TransmitReceive_IT:
 1717              	.LFB75:
1236:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t tmp = 0U, tmp1 = 0U;
 1718              		.loc 1 1236 0
 1719              		.cfi_startproc
 1720              		@ args = 0, pretend = 0, frame = 0
 1721              		@ frame_needed = 0, uses_anonymous_args = 0
 1722              		@ link register save eliminated.
 1723              	.LVL137:
 1724 0000 30B4     		push	{r4, r5}
 1725              	.LCFI23:
 1726              		.cfi_def_cfa_offset 8
 1727              		.cfi_offset 4, -8
 1728              		.cfi_offset 5, -4
 1729              	.LVL138:
1244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1730              		.loc 1 1244 0
 1731 0002 90F85040 		ldrb	r4, [r0, #80]	@ zero_extendqisi2
 1732 0006 012C     		cmp	r4, #1
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 93


 1733 0008 55D0     		beq	.L184
1244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1734              		.loc 1 1244 0 is_stmt 0 discriminator 2
 1735 000a 0124     		movs	r4, #1
 1736 000c 80F85040 		strb	r4, [r0, #80]
1246:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   tmp1 = hspi->Init.Mode;
 1737              		.loc 1 1246 0 is_stmt 1 discriminator 2
 1738 0010 90F85140 		ldrb	r4, [r0, #81]	@ zero_extendqisi2
 1739 0014 E4B2     		uxtb	r4, r4
 1740              	.LVL139:
1247:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   
 1741              		.loc 1 1247 0 discriminator 2
 1742 0016 4568     		ldr	r5, [r0, #4]
 1743              	.LVL140:
1249:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     ((tmp1 == SPI_MODE_MASTER) && (hspi->Init.Direction == SPI_DIRECTION_2LINES) && (tmp == HAL_SPI
 1744              		.loc 1 1249 0 discriminator 2
 1745 0018 012C     		cmp	r4, #1
 1746 001a 10D0     		beq	.L179
1249:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     ((tmp1 == SPI_MODE_MASTER) && (hspi->Init.Direction == SPI_DIRECTION_2LINES) && (tmp == HAL_SPI
 1747              		.loc 1 1249 0 is_stmt 0 discriminator 1
 1748 001c B5F5827F 		cmp	r5, #260
 1749 0020 06D0     		beq	.L193
1252:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 1750              		.loc 1 1252 0 is_stmt 1
 1751 0022 0223     		movs	r3, #2
 1752              	.LVL141:
 1753              	.L180:
1309:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return errorcode;
 1754              		.loc 1 1309 0
 1755 0024 0022     		movs	r2, #0
 1756 0026 80F85020 		strb	r2, [r0, #80]
 1757              	.LVL142:
 1758              	.L178:
1311:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1759              		.loc 1 1311 0
 1760 002a 1846     		mov	r0, r3
 1761              	.LVL143:
 1762 002c 30BC     		pop	{r4, r5}
 1763              	.LCFI24:
 1764              		.cfi_remember_state
 1765              		.cfi_restore 5
 1766              		.cfi_restore 4
 1767              		.cfi_def_cfa_offset 0
 1768 002e 7047     		bx	lr
 1769              	.LVL144:
 1770              	.L193:
 1771              	.LCFI25:
 1772              		.cfi_restore_state
1250:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1773              		.loc 1 1250 0
 1774 0030 8568     		ldr	r5, [r0, #8]
 1775              	.LVL145:
 1776 0032 002D     		cmp	r5, #0
 1777 0034 35D1     		bne	.L186
1250:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1778              		.loc 1 1250 0 is_stmt 0 discriminator 1
 1779 0036 042C     		cmp	r4, #4
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 94


 1780 0038 01D0     		beq	.L179
1252:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 1781              		.loc 1 1252 0 is_stmt 1
 1782 003a 0223     		movs	r3, #2
 1783              	.LVL146:
 1784 003c F2E7     		b	.L180
 1785              	.LVL147:
 1786              	.L179:
1256:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1787              		.loc 1 1256 0
 1788 003e 0029     		cmp	r1, #0
 1789 0040 31D0     		beq	.L188
1256:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1790              		.loc 1 1256 0 is_stmt 0 discriminator 1
 1791 0042 002A     		cmp	r2, #0
 1792 0044 31D0     		beq	.L189
1256:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1793              		.loc 1 1256 0 discriminator 2
 1794 0046 002B     		cmp	r3, #0
 1795 0048 31D0     		beq	.L190
1263:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1796              		.loc 1 1263 0 is_stmt 1
 1797 004a 90F85140 		ldrb	r4, [r0, #81]	@ zero_extendqisi2
 1798              	.LVL148:
 1799 004e E4B2     		uxtb	r4, r4
 1800 0050 012C     		cmp	r4, #1
 1801 0052 1DD0     		beq	.L194
 1802              	.L181:
1269:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pTxBuffPtr  = (uint8_t *)pTxData;
 1803              		.loc 1 1269 0
 1804 0054 0024     		movs	r4, #0
 1805 0056 4465     		str	r4, [r0, #84]
1270:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferSize  = Size;
 1806              		.loc 1 1270 0
 1807 0058 0163     		str	r1, [r0, #48]
1271:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = Size;
 1808              		.loc 1 1271 0
 1809 005a 8386     		strh	r3, [r0, #52]	@ movhi
1272:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pRxBuffPtr  = (uint8_t *)pRxData;
 1810              		.loc 1 1272 0
 1811 005c C386     		strh	r3, [r0, #54]	@ movhi
1273:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferSize  = Size;
 1812              		.loc 1 1273 0
 1813 005e 8263     		str	r2, [r0, #56]
1274:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount = Size;
 1814              		.loc 1 1274 0
 1815 0060 8387     		strh	r3, [r0, #60]	@ movhi
1275:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1816              		.loc 1 1275 0
 1817 0062 C387     		strh	r3, [r0, #62]	@ movhi
1278:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1818              		.loc 1 1278 0
 1819 0064 C368     		ldr	r3, [r0, #12]
 1820              	.LVL149:
 1821 0066 BBB1     		cbz	r3, .L182
1280:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->TxISR     = SPI_2linesTxISR_16BIT;
 1822              		.loc 1 1280 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 95


 1823 0068 144B     		ldr	r3, .L195
 1824 006a 0364     		str	r3, [r0, #64]
1281:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 1825              		.loc 1 1281 0
 1826 006c 144B     		ldr	r3, .L195+4
 1827 006e 4364     		str	r3, [r0, #68]
 1828              	.L183:
1298:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1829              		.loc 1 1298 0
 1830 0070 0268     		ldr	r2, [r0]
 1831              	.LVL150:
 1832 0072 5368     		ldr	r3, [r2, #4]
 1833 0074 43F0E003 		orr	r3, r3, #224
 1834 0078 5360     		str	r3, [r2, #4]
 1835              	.LVL151:
1301:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1836              		.loc 1 1301 0
 1837 007a 0368     		ldr	r3, [r0]
 1838 007c 1A68     		ldr	r2, [r3]
 1839 007e 12F0400F 		tst	r2, #64
 1840 0082 16D1     		bne	.L191
1304:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 1841              		.loc 1 1304 0
 1842 0084 1A68     		ldr	r2, [r3]
 1843 0086 42F04002 		orr	r2, r2, #64
 1844 008a 1A60     		str	r2, [r3]
1238:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1845              		.loc 1 1238 0
 1846 008c 0023     		movs	r3, #0
 1847 008e C9E7     		b	.L180
 1848              	.LVL152:
 1849              	.L194:
1265:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 1850              		.loc 1 1265 0
 1851 0090 0524     		movs	r4, #5
 1852 0092 80F85140 		strb	r4, [r0, #81]
 1853 0096 DDE7     		b	.L181
 1854              	.LVL153:
 1855              	.L182:
1285:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->TxISR     = SPI_2linesTxISR_8BIT;
 1856              		.loc 1 1285 0
 1857 0098 0A4B     		ldr	r3, .L195+8
 1858 009a 0364     		str	r3, [r0, #64]
1286:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 1859              		.loc 1 1286 0
 1860 009c 0A4B     		ldr	r3, .L195+12
 1861 009e 4364     		str	r3, [r0, #68]
 1862 00a0 E6E7     		b	.L183
 1863              	.LVL154:
 1864              	.L186:
1252:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 1865              		.loc 1 1252 0
 1866 00a2 0223     		movs	r3, #2
 1867              	.LVL155:
 1868 00a4 BEE7     		b	.L180
 1869              	.LVL156:
 1870              	.L188:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 96


1258:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 1871              		.loc 1 1258 0
 1872 00a6 0123     		movs	r3, #1
 1873              	.LVL157:
 1874 00a8 BCE7     		b	.L180
 1875              	.LVL158:
 1876              	.L189:
 1877 00aa 0123     		movs	r3, #1
 1878              	.LVL159:
 1879 00ac BAE7     		b	.L180
 1880              	.LVL160:
 1881              	.L190:
 1882 00ae 0123     		movs	r3, #1
 1883              	.LVL161:
 1884 00b0 B8E7     		b	.L180
 1885              	.LVL162:
 1886              	.L191:
1238:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1887              		.loc 1 1238 0
 1888 00b2 0023     		movs	r3, #0
 1889 00b4 B6E7     		b	.L180
 1890              	.LVL163:
 1891              	.L184:
1244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1892              		.loc 1 1244 0
 1893 00b6 0223     		movs	r3, #2
 1894              	.LVL164:
 1895 00b8 B7E7     		b	.L178
 1896              	.L196:
 1897 00ba 00BF     		.align	2
 1898              	.L195:
 1899 00bc 00000000 		.word	SPI_2linesRxISR_16BIT
 1900 00c0 00000000 		.word	SPI_2linesTxISR_16BIT
 1901 00c4 00000000 		.word	SPI_2linesRxISR_8BIT
 1902 00c8 00000000 		.word	SPI_2linesTxISR_8BIT
 1903              		.cfi_endproc
 1904              	.LFE75:
 1906              		.section	.text.HAL_SPI_Receive_IT,"ax",%progbits
 1907              		.align	1
 1908              		.global	HAL_SPI_Receive_IT
 1909              		.syntax unified
 1910              		.thumb
 1911              		.thumb_func
 1912              		.fpu softvfp
 1914              	HAL_SPI_Receive_IT:
 1915              	.LFB74:
1144:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_StatusTypeDef errorcode = HAL_OK;
 1916              		.loc 1 1144 0
 1917              		.cfi_startproc
 1918              		@ args = 0, pretend = 0, frame = 0
 1919              		@ frame_needed = 0, uses_anonymous_args = 0
 1920              	.LVL165:
 1921 0000 38B5     		push	{r3, r4, r5, lr}
 1922              	.LCFI26:
 1923              		.cfi_def_cfa_offset 16
 1924              		.cfi_offset 3, -16
 1925              		.cfi_offset 4, -12
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 97


 1926              		.cfi_offset 5, -8
 1927              		.cfi_offset 14, -4
 1928 0002 0446     		mov	r4, r0
 1929              	.LVL166:
1147:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1930              		.loc 1 1147 0
 1931 0004 8568     		ldr	r5, [r0, #8]
 1932 0006 1DB9     		cbnz	r5, .L198
1147:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1933              		.loc 1 1147 0 is_stmt 0 discriminator 1
 1934 0008 4368     		ldr	r3, [r0, #4]
 1935 000a B3F5827F 		cmp	r3, #260
 1936 000e 10D0     		beq	.L210
 1937              	.L198:
1155:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1938              		.loc 1 1155 0 is_stmt 1
 1939 0010 94F85000 		ldrb	r0, [r4, #80]	@ zero_extendqisi2
 1940              	.LVL167:
 1941 0014 0128     		cmp	r0, #1
 1942 0016 4AD0     		beq	.L204
1155:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1943              		.loc 1 1155 0 is_stmt 0 discriminator 2
 1944 0018 0123     		movs	r3, #1
 1945 001a 84F85030 		strb	r3, [r4, #80]
1157:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1946              		.loc 1 1157 0 is_stmt 1 discriminator 2
 1947 001e 94F85100 		ldrb	r0, [r4, #81]	@ zero_extendqisi2
 1948 0022 C0B2     		uxtb	r0, r0
 1949 0024 9842     		cmp	r0, r3
 1950 0026 0CD0     		beq	.L211
1159:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 1951              		.loc 1 1159 0
 1952 0028 0220     		movs	r0, #2
 1953              	.LVL168:
 1954              	.L200:
1222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return errorcode;
 1955              		.loc 1 1222 0
 1956 002a 0023     		movs	r3, #0
 1957 002c 84F85030 		strb	r3, [r4, #80]
 1958              	.LVL169:
 1959              	.L199:
1224:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1960              		.loc 1 1224 0
 1961 0030 38BD     		pop	{r3, r4, r5, pc}
 1962              	.LVL170:
 1963              	.L210:
 1964 0032 1346     		mov	r3, r2
1149:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****      /* Call transmit-receive function to send Dummy data on Tx line and generate clock on CLK line
 1965              		.loc 1 1149 0
 1966 0034 0422     		movs	r2, #4
 1967              	.LVL171:
 1968 0036 80F85120 		strb	r2, [r0, #81]
1151:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 1969              		.loc 1 1151 0
 1970 003a 0A46     		mov	r2, r1
 1971 003c FFF7FEFF 		bl	HAL_SPI_TransmitReceive_IT
 1972              	.LVL172:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 98


 1973 0040 F6E7     		b	.L199
 1974              	.LVL173:
 1975              	.L211:
1163:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1976              		.loc 1 1163 0
 1977 0042 0029     		cmp	r1, #0
 1978 0044 2DD0     		beq	.L206
1163:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 1979              		.loc 1 1163 0 is_stmt 0 discriminator 1
 1980 0046 002A     		cmp	r2, #0
 1981 0048 2DD0     		beq	.L207
1170:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->ErrorCode   = HAL_SPI_ERROR_NONE;
 1982              		.loc 1 1170 0 is_stmt 1
 1983 004a 0423     		movs	r3, #4
 1984 004c 84F85130 		strb	r3, [r4, #81]
1171:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pRxBuffPtr  = (uint8_t *)pData;
 1985              		.loc 1 1171 0
 1986 0050 0023     		movs	r3, #0
 1987 0052 6365     		str	r3, [r4, #84]
1172:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferSize  = Size;
 1988              		.loc 1 1172 0
 1989 0054 A163     		str	r1, [r4, #56]
1173:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount = Size;
 1990              		.loc 1 1173 0
 1991 0056 A287     		strh	r2, [r4, #60]	@ movhi
1174:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 1992              		.loc 1 1174 0
 1993 0058 E287     		strh	r2, [r4, #62]	@ movhi
1177:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferSize  = 0U;
 1994              		.loc 1 1177 0
 1995 005a 2363     		str	r3, [r4, #48]
1178:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = 0U;
 1996              		.loc 1 1178 0
 1997 005c A386     		strh	r3, [r4, #52]	@ movhi
1179:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxISR       = NULL;
 1998              		.loc 1 1179 0
 1999 005e E386     		strh	r3, [r4, #54]	@ movhi
1180:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2000              		.loc 1 1180 0
 2001 0060 6364     		str	r3, [r4, #68]
1183:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2002              		.loc 1 1183 0
 2003 0062 E368     		ldr	r3, [r4, #12]
 2004 0064 A3B1     		cbz	r3, .L201
1185:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 2005              		.loc 1 1185 0
 2006 0066 134B     		ldr	r3, .L213
 2007 0068 2364     		str	r3, [r4, #64]
 2008              	.L202:
1193:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2009              		.loc 1 1193 0
 2010 006a B5F5004F 		cmp	r5, #32768
 2011 006e 12D0     		beq	.L212
 2012              	.LVL174:
 2013              	.L203:
1207:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2014              		.loc 1 1207 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 99


 2015 0070 2268     		ldr	r2, [r4]
 2016 0072 5368     		ldr	r3, [r2, #4]
 2017 0074 43F06003 		orr	r3, r3, #96
 2018 0078 5360     		str	r3, [r2, #4]
1214:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2019              		.loc 1 1214 0
 2020 007a 2368     		ldr	r3, [r4]
 2021 007c 1A68     		ldr	r2, [r3]
 2022 007e 12F0400F 		tst	r2, #64
 2023 0082 12D1     		bne	.L208
1217:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 2024              		.loc 1 1217 0
 2025 0084 1A68     		ldr	r2, [r3]
 2026 0086 42F04002 		orr	r2, r2, #64
 2027 008a 1A60     		str	r2, [r3]
1145:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2028              		.loc 1 1145 0
 2029 008c 0020     		movs	r0, #0
 2030 008e CCE7     		b	.L200
 2031              	.LVL175:
 2032              	.L201:
1189:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 2033              		.loc 1 1189 0
 2034 0090 094B     		ldr	r3, .L213+4
 2035 0092 2364     		str	r3, [r4, #64]
 2036 0094 E9E7     		b	.L202
 2037              	.L212:
1195:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 2038              		.loc 1 1195 0
 2039 0096 2268     		ldr	r2, [r4]
 2040              	.LVL176:
 2041 0098 1368     		ldr	r3, [r2]
 2042 009a 23F48043 		bic	r3, r3, #16384
 2043 009e 1360     		str	r3, [r2]
 2044              	.LVL177:
 2045 00a0 E6E7     		b	.L203
 2046              	.LVL178:
 2047              	.L206:
1165:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 2048              		.loc 1 1165 0
 2049 00a2 0120     		movs	r0, #1
 2050 00a4 C1E7     		b	.L200
 2051              	.L207:
 2052 00a6 0120     		movs	r0, #1
 2053 00a8 BFE7     		b	.L200
 2054              	.LVL179:
 2055              	.L208:
1145:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2056              		.loc 1 1145 0
 2057 00aa 0020     		movs	r0, #0
 2058 00ac BDE7     		b	.L200
 2059              	.LVL180:
 2060              	.L204:
1155:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2061              		.loc 1 1155 0
 2062 00ae 0220     		movs	r0, #2
 2063 00b0 BEE7     		b	.L199
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 100


 2064              	.L214:
 2065 00b2 00BF     		.align	2
 2066              	.L213:
 2067 00b4 00000000 		.word	SPI_RxISR_16BIT
 2068 00b8 00000000 		.word	SPI_RxISR_8BIT
 2069              		.cfi_endproc
 2070              	.LFE74:
 2072              		.section	.text.HAL_SPI_Transmit_DMA,"ax",%progbits
 2073              		.align	1
 2074              		.global	HAL_SPI_Transmit_DMA
 2075              		.syntax unified
 2076              		.thumb
 2077              		.thumb_func
 2078              		.fpu softvfp
 2080              	HAL_SPI_Transmit_DMA:
 2081              	.LFB76:
1322:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_StatusTypeDef errorcode = HAL_OK;
 2082              		.loc 1 1322 0
 2083              		.cfi_startproc
 2084              		@ args = 0, pretend = 0, frame = 0
 2085              		@ frame_needed = 0, uses_anonymous_args = 0
 2086              	.LVL181:
1329:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2087              		.loc 1 1329 0
 2088 0000 90F85030 		ldrb	r3, [r0, #80]	@ zero_extendqisi2
 2089 0004 012B     		cmp	r3, #1
 2090 0006 55D0     		beq	.L220
1322:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_StatusTypeDef errorcode = HAL_OK;
 2091              		.loc 1 1322 0 discriminator 2
 2092 0008 10B5     		push	{r4, lr}
 2093              	.LCFI27:
 2094              		.cfi_def_cfa_offset 8
 2095              		.cfi_offset 4, -8
 2096              		.cfi_offset 14, -4
 2097 000a 0446     		mov	r4, r0
1329:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2098              		.loc 1 1329 0 discriminator 2
 2099 000c 0123     		movs	r3, #1
 2100 000e 80F85030 		strb	r3, [r0, #80]
1331:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2101              		.loc 1 1331 0 discriminator 2
 2102 0012 90F85130 		ldrb	r3, [r0, #81]	@ zero_extendqisi2
 2103 0016 DBB2     		uxtb	r3, r3
 2104 0018 012B     		cmp	r3, #1
 2105 001a 04D0     		beq	.L228
1333:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 2106              		.loc 1 1333 0
 2107 001c 0220     		movs	r0, #2
 2108              	.LVL182:
 2109              	.L217:
1401:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return errorcode;
 2110              		.loc 1 1401 0
 2111 001e 0023     		movs	r3, #0
 2112 0020 84F85030 		strb	r3, [r4, #80]
1403:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2113              		.loc 1 1403 0
 2114 0024 10BD     		pop	{r4, pc}
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 101


 2115              	.LVL183:
 2116              	.L228:
1337:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2117              		.loc 1 1337 0
 2118 0026 0029     		cmp	r1, #0
 2119 0028 40D0     		beq	.L222
1337:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2120              		.loc 1 1337 0 is_stmt 0 discriminator 1
 2121 002a 002A     		cmp	r2, #0
 2122 002c 40D0     		beq	.L223
1344:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->ErrorCode   = HAL_SPI_ERROR_NONE;
 2123              		.loc 1 1344 0 is_stmt 1
 2124 002e 0323     		movs	r3, #3
 2125 0030 80F85130 		strb	r3, [r0, #81]
1345:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pTxBuffPtr  = (uint8_t *)pData;
 2126              		.loc 1 1345 0
 2127 0034 0023     		movs	r3, #0
 2128 0036 4365     		str	r3, [r0, #84]
1346:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferSize  = Size;
 2129              		.loc 1 1346 0
 2130 0038 0163     		str	r1, [r0, #48]
1347:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = Size;
 2131              		.loc 1 1347 0
 2132 003a 8286     		strh	r2, [r0, #52]	@ movhi
1348:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2133              		.loc 1 1348 0
 2134 003c C286     		strh	r2, [r0, #54]	@ movhi
1351:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxISR       = NULL;
 2135              		.loc 1 1351 0
 2136 003e 8363     		str	r3, [r0, #56]
1352:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxISR       = NULL;
 2137              		.loc 1 1352 0
 2138 0040 4364     		str	r3, [r0, #68]
1353:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferSize  = 0U;
 2139              		.loc 1 1353 0
 2140 0042 0364     		str	r3, [r0, #64]
1354:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount = 0U;
 2141              		.loc 1 1354 0
 2142 0044 8387     		strh	r3, [r0, #60]	@ movhi
1355:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2143              		.loc 1 1355 0
 2144 0046 C387     		strh	r3, [r0, #62]	@ movhi
1358:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2145              		.loc 1 1358 0
 2146 0048 8368     		ldr	r3, [r0, #8]
 2147 004a B3F5004F 		cmp	r3, #32768
 2148 004e 27D0     		beq	.L229
 2149              	.LVL184:
 2150              	.L218:
1372:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2151              		.loc 1 1372 0
 2152 0050 A36C     		ldr	r3, [r4, #72]
 2153 0052 194A     		ldr	r2, .L230
 2154 0054 DA62     		str	r2, [r3, #44]
1375:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2155              		.loc 1 1375 0
 2156 0056 A36C     		ldr	r3, [r4, #72]
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 102


 2157 0058 184A     		ldr	r2, .L230+4
 2158 005a 9A62     		str	r2, [r3, #40]
1378:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2159              		.loc 1 1378 0
 2160 005c A36C     		ldr	r3, [r4, #72]
 2161 005e 184A     		ldr	r2, .L230+8
 2162 0060 1A63     		str	r2, [r3, #48]
1381:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2163              		.loc 1 1381 0
 2164 0062 A36C     		ldr	r3, [r4, #72]
 2165 0064 0022     		movs	r2, #0
 2166 0066 5A63     		str	r2, [r3, #52]
1384:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2167              		.loc 1 1384 0
 2168 0068 2268     		ldr	r2, [r4]
 2169 006a E38E     		ldrh	r3, [r4, #54]
 2170 006c 0C32     		adds	r2, r2, #12
 2171 006e 216B     		ldr	r1, [r4, #48]
 2172              	.LVL185:
 2173 0070 A06C     		ldr	r0, [r4, #72]
 2174              	.LVL186:
 2175 0072 FFF7FEFF 		bl	HAL_DMA_Start_IT
 2176              	.LVL187:
1387:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2177              		.loc 1 1387 0
 2178 0076 2368     		ldr	r3, [r4]
 2179 0078 1A68     		ldr	r2, [r3]
 2180 007a 12F0400F 		tst	r2, #64
 2181 007e 03D1     		bne	.L219
1390:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 2182              		.loc 1 1390 0
 2183 0080 1A68     		ldr	r2, [r3]
 2184 0082 42F04002 		orr	r2, r2, #64
 2185 0086 1A60     		str	r2, [r3]
 2186              	.L219:
1394:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2187              		.loc 1 1394 0
 2188 0088 2268     		ldr	r2, [r4]
 2189 008a 5368     		ldr	r3, [r2, #4]
 2190 008c 43F02003 		orr	r3, r3, #32
 2191 0090 5360     		str	r3, [r2, #4]
1397:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2192              		.loc 1 1397 0
 2193 0092 2268     		ldr	r2, [r4]
 2194 0094 5368     		ldr	r3, [r2, #4]
 2195 0096 43F00203 		orr	r3, r3, #2
 2196 009a 5360     		str	r3, [r2, #4]
1323:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2197              		.loc 1 1323 0
 2198 009c 0020     		movs	r0, #0
 2199 009e BEE7     		b	.L217
 2200              	.LVL188:
 2201              	.L229:
1360:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 2202              		.loc 1 1360 0
 2203 00a0 0268     		ldr	r2, [r0]
 2204              	.LVL189:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 103


 2205 00a2 1368     		ldr	r3, [r2]
 2206 00a4 43F48043 		orr	r3, r3, #16384
 2207 00a8 1360     		str	r3, [r2]
 2208              	.LVL190:
 2209 00aa D1E7     		b	.L218
 2210              	.LVL191:
 2211              	.L222:
1339:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 2212              		.loc 1 1339 0
 2213 00ac 0120     		movs	r0, #1
 2214              	.LVL192:
 2215 00ae B6E7     		b	.L217
 2216              	.LVL193:
 2217              	.L223:
 2218 00b0 0120     		movs	r0, #1
 2219              	.LVL194:
 2220 00b2 B4E7     		b	.L217
 2221              	.LVL195:
 2222              	.L220:
 2223              	.LCFI28:
 2224              		.cfi_def_cfa_offset 0
 2225              		.cfi_restore 4
 2226              		.cfi_restore 14
1329:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2227              		.loc 1 1329 0
 2228 00b4 0220     		movs	r0, #2
 2229              	.LVL196:
1403:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2230              		.loc 1 1403 0
 2231 00b6 7047     		bx	lr
 2232              	.L231:
 2233              		.align	2
 2234              	.L230:
 2235 00b8 00000000 		.word	SPI_DMAHalfTransmitCplt
 2236 00bc 00000000 		.word	SPI_DMATransmitCplt
 2237 00c0 00000000 		.word	SPI_DMAError
 2238              		.cfi_endproc
 2239              	.LFE76:
 2241              		.section	.text.HAL_SPI_TransmitReceive_DMA,"ax",%progbits
 2242              		.align	1
 2243              		.global	HAL_SPI_TransmitReceive_DMA
 2244              		.syntax unified
 2245              		.thumb
 2246              		.thumb_func
 2247              		.fpu softvfp
 2249              	HAL_SPI_TransmitReceive_DMA:
 2250              	.LFB78:
1512:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t tmp = 0U, tmp1 = 0U;
 2251              		.loc 1 1512 0
 2252              		.cfi_startproc
 2253              		@ args = 0, pretend = 0, frame = 0
 2254              		@ frame_needed = 0, uses_anonymous_args = 0
 2255              	.LVL197:
 2256 0000 38B5     		push	{r3, r4, r5, lr}
 2257              	.LCFI29:
 2258              		.cfi_def_cfa_offset 16
 2259              		.cfi_offset 3, -16
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 104


 2260              		.cfi_offset 4, -12
 2261              		.cfi_offset 5, -8
 2262              		.cfi_offset 14, -4
 2263              	.LVL198:
1520:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2264              		.loc 1 1520 0
 2265 0002 90F85040 		ldrb	r4, [r0, #80]	@ zero_extendqisi2
 2266 0006 012C     		cmp	r4, #1
 2267 0008 00F08280 		beq	.L240
 2268 000c 0446     		mov	r4, r0
1520:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2269              		.loc 1 1520 0 is_stmt 0 discriminator 2
 2270 000e 0120     		movs	r0, #1
 2271              	.LVL199:
 2272 0010 84F85000 		strb	r0, [r4, #80]
1522:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   tmp1 = hspi->Init.Mode;
 2273              		.loc 1 1522 0 is_stmt 1 discriminator 2
 2274 0014 94F85100 		ldrb	r0, [r4, #81]	@ zero_extendqisi2
 2275 0018 C0B2     		uxtb	r0, r0
 2276              	.LVL200:
1523:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(!((tmp == HAL_SPI_STATE_READY) ||
 2277              		.loc 1 1523 0 discriminator 2
 2278 001a 6568     		ldr	r5, [r4, #4]
 2279              	.LVL201:
1524:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       ((tmp1 == SPI_MODE_MASTER) && (hspi->Init.Direction == SPI_DIRECTION_2LINES) && (tmp == HAL_S
 2280              		.loc 1 1524 0 discriminator 2
 2281 001c 0128     		cmp	r0, #1
 2282 001e 0ED0     		beq	.L234
1524:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       ((tmp1 == SPI_MODE_MASTER) && (hspi->Init.Direction == SPI_DIRECTION_2LINES) && (tmp == HAL_S
 2283              		.loc 1 1524 0 is_stmt 0 discriminator 1
 2284 0020 B5F5827F 		cmp	r5, #260
 2285 0024 04D0     		beq	.L248
1527:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 2286              		.loc 1 1527 0 is_stmt 1
 2287 0026 0220     		movs	r0, #2
 2288              	.LVL202:
 2289              	.L235:
1614:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return errorcode;
 2290              		.loc 1 1614 0
 2291 0028 0023     		movs	r3, #0
 2292 002a 84F85030 		strb	r3, [r4, #80]
 2293              	.LVL203:
 2294              	.L233:
1616:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2295              		.loc 1 1616 0
 2296 002e 38BD     		pop	{r3, r4, r5, pc}
 2297              	.LVL204:
 2298              	.L248:
1525:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2299              		.loc 1 1525 0
 2300 0030 A568     		ldr	r5, [r4, #8]
 2301              	.LVL205:
 2302 0032 002D     		cmp	r5, #0
 2303 0034 64D1     		bne	.L242
1525:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2304              		.loc 1 1525 0 is_stmt 0 discriminator 1
 2305 0036 0428     		cmp	r0, #4
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 105


 2306 0038 01D0     		beq	.L234
1527:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 2307              		.loc 1 1527 0 is_stmt 1
 2308 003a 0220     		movs	r0, #2
 2309              	.LVL206:
 2310 003c F4E7     		b	.L235
 2311              	.LVL207:
 2312              	.L234:
1531:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2313              		.loc 1 1531 0
 2314 003e 0029     		cmp	r1, #0
 2315 0040 60D0     		beq	.L244
1531:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2316              		.loc 1 1531 0 is_stmt 0 discriminator 1
 2317 0042 002A     		cmp	r2, #0
 2318 0044 60D0     		beq	.L245
1531:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2319              		.loc 1 1531 0 discriminator 2
 2320 0046 002B     		cmp	r3, #0
 2321 0048 60D0     		beq	.L246
1538:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2322              		.loc 1 1538 0 is_stmt 1
 2323 004a 94F85100 		ldrb	r0, [r4, #81]	@ zero_extendqisi2
 2324              	.LVL208:
 2325 004e C0B2     		uxtb	r0, r0
 2326 0050 0128     		cmp	r0, #1
 2327 0052 4AD0     		beq	.L249
 2328              	.L236:
1544:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pTxBuffPtr  = (uint8_t*)pTxData;
 2329              		.loc 1 1544 0
 2330 0054 0020     		movs	r0, #0
 2331 0056 6065     		str	r0, [r4, #84]
1545:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferSize  = Size;
 2332              		.loc 1 1545 0
 2333 0058 2163     		str	r1, [r4, #48]
1546:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = Size;
 2334              		.loc 1 1546 0
 2335 005a A386     		strh	r3, [r4, #52]	@ movhi
1547:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pRxBuffPtr  = (uint8_t*)pRxData;
 2336              		.loc 1 1547 0
 2337 005c E386     		strh	r3, [r4, #54]	@ movhi
1548:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferSize  = Size;
 2338              		.loc 1 1548 0
 2339 005e A263     		str	r2, [r4, #56]
1549:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount = Size;
 2340              		.loc 1 1549 0
 2341 0060 A387     		strh	r3, [r4, #60]	@ movhi
1550:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2342              		.loc 1 1550 0
 2343 0062 E387     		strh	r3, [r4, #62]	@ movhi
1553:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxISR       = NULL;
 2344              		.loc 1 1553 0
 2345 0064 2064     		str	r0, [r4, #64]
1554:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2346              		.loc 1 1554 0
 2347 0066 6064     		str	r0, [r4, #68]
1565:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 106


 2348              		.loc 1 1565 0
 2349 0068 94F85130 		ldrb	r3, [r4, #81]	@ zero_extendqisi2
 2350              	.LVL209:
 2351 006c DBB2     		uxtb	r3, r3
 2352 006e 042B     		cmp	r3, #4
 2353 0070 3FD0     		beq	.L250
1574:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->hdmarx->XferCpltCallback     = SPI_DMATransmitReceiveCplt;
 2354              		.loc 1 1574 0
 2355 0072 E36C     		ldr	r3, [r4, #76]
 2356 0074 274A     		ldr	r2, .L251
 2357              	.LVL210:
 2358 0076 DA62     		str	r2, [r3, #44]
 2359              	.LVL211:
1575:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 2360              		.loc 1 1575 0
 2361 0078 E36C     		ldr	r3, [r4, #76]
 2362 007a 274A     		ldr	r2, .L251+4
 2363 007c 9A62     		str	r2, [r3, #40]
 2364              	.L238:
1579:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2365              		.loc 1 1579 0
 2366 007e E36C     		ldr	r3, [r4, #76]
 2367 0080 264A     		ldr	r2, .L251+8
 2368 0082 1A63     		str	r2, [r3, #48]
1582:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2369              		.loc 1 1582 0
 2370 0084 E36C     		ldr	r3, [r4, #76]
 2371 0086 0025     		movs	r5, #0
 2372 0088 5D63     		str	r5, [r3, #52]
1585:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2373              		.loc 1 1585 0
 2374 008a 2168     		ldr	r1, [r4]
 2375              	.LVL212:
 2376 008c E38F     		ldrh	r3, [r4, #62]
 2377 008e A26B     		ldr	r2, [r4, #56]
 2378 0090 0C31     		adds	r1, r1, #12
 2379 0092 E06C     		ldr	r0, [r4, #76]
 2380 0094 FFF7FEFF 		bl	HAL_DMA_Start_IT
 2381              	.LVL213:
1588:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2382              		.loc 1 1588 0
 2383 0098 2268     		ldr	r2, [r4]
 2384 009a 5368     		ldr	r3, [r2, #4]
 2385 009c 43F00103 		orr	r3, r3, #1
 2386 00a0 5360     		str	r3, [r2, #4]
1592:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->hdmatx->XferCpltCallback     = NULL;
 2387              		.loc 1 1592 0
 2388 00a2 A36C     		ldr	r3, [r4, #72]
 2389 00a4 DD62     		str	r5, [r3, #44]
1593:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->hdmatx->XferErrorCallback    = NULL;
 2390              		.loc 1 1593 0
 2391 00a6 A36C     		ldr	r3, [r4, #72]
 2392 00a8 9D62     		str	r5, [r3, #40]
1594:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->hdmatx->XferAbortCallback    = NULL;
 2393              		.loc 1 1594 0
 2394 00aa A36C     		ldr	r3, [r4, #72]
 2395 00ac 1D63     		str	r5, [r3, #48]
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 107


1595:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2396              		.loc 1 1595 0
 2397 00ae A36C     		ldr	r3, [r4, #72]
 2398 00b0 5D63     		str	r5, [r3, #52]
1598:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2399              		.loc 1 1598 0
 2400 00b2 2268     		ldr	r2, [r4]
 2401 00b4 E38E     		ldrh	r3, [r4, #54]
 2402 00b6 0C32     		adds	r2, r2, #12
 2403 00b8 216B     		ldr	r1, [r4, #48]
 2404 00ba A06C     		ldr	r0, [r4, #72]
 2405 00bc FFF7FEFF 		bl	HAL_DMA_Start_IT
 2406              	.LVL214:
1601:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2407              		.loc 1 1601 0
 2408 00c0 2368     		ldr	r3, [r4]
 2409 00c2 1A68     		ldr	r2, [r3]
 2410 00c4 12F0400F 		tst	r2, #64
 2411 00c8 03D1     		bne	.L239
1604:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 2412              		.loc 1 1604 0
 2413 00ca 1A68     		ldr	r2, [r3]
 2414 00cc 42F04002 		orr	r2, r2, #64
 2415 00d0 1A60     		str	r2, [r3]
 2416              	.L239:
1607:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2417              		.loc 1 1607 0
 2418 00d2 2268     		ldr	r2, [r4]
 2419 00d4 5368     		ldr	r3, [r2, #4]
 2420 00d6 43F02003 		orr	r3, r3, #32
 2421 00da 5360     		str	r3, [r2, #4]
1610:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2422              		.loc 1 1610 0
 2423 00dc 2268     		ldr	r2, [r4]
 2424 00de 5368     		ldr	r3, [r2, #4]
 2425 00e0 43F00203 		orr	r3, r3, #2
 2426 00e4 5360     		str	r3, [r2, #4]
1514:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2427              		.loc 1 1514 0
 2428 00e6 0020     		movs	r0, #0
 2429 00e8 9EE7     		b	.L235
 2430              	.LVL215:
 2431              	.L249:
1540:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 2432              		.loc 1 1540 0
 2433 00ea 0520     		movs	r0, #5
 2434 00ec 84F85100 		strb	r0, [r4, #81]
 2435 00f0 B0E7     		b	.L236
 2436              	.LVL216:
 2437              	.L250:
1568:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->hdmarx->XferCpltCallback     = SPI_DMAReceiveCplt;
 2438              		.loc 1 1568 0
 2439 00f2 E36C     		ldr	r3, [r4, #76]
 2440 00f4 0A4A     		ldr	r2, .L251+12
 2441              	.LVL217:
 2442 00f6 DA62     		str	r2, [r3, #44]
 2443              	.LVL218:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 108


1569:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 2444              		.loc 1 1569 0
 2445 00f8 E36C     		ldr	r3, [r4, #76]
 2446 00fa 0A4A     		ldr	r2, .L251+16
 2447 00fc 9A62     		str	r2, [r3, #40]
 2448 00fe BEE7     		b	.L238
 2449              	.LVL219:
 2450              	.L242:
1527:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 2451              		.loc 1 1527 0
 2452 0100 0220     		movs	r0, #2
 2453              	.LVL220:
 2454 0102 91E7     		b	.L235
 2455              	.LVL221:
 2456              	.L244:
1533:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 2457              		.loc 1 1533 0
 2458 0104 0120     		movs	r0, #1
 2459              	.LVL222:
 2460 0106 8FE7     		b	.L235
 2461              	.LVL223:
 2462              	.L245:
 2463 0108 0120     		movs	r0, #1
 2464              	.LVL224:
 2465 010a 8DE7     		b	.L235
 2466              	.LVL225:
 2467              	.L246:
 2468 010c 0120     		movs	r0, #1
 2469              	.LVL226:
 2470 010e 8BE7     		b	.L235
 2471              	.LVL227:
 2472              	.L240:
1520:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2473              		.loc 1 1520 0
 2474 0110 0220     		movs	r0, #2
 2475              	.LVL228:
 2476 0112 8CE7     		b	.L233
 2477              	.L252:
 2478              		.align	2
 2479              	.L251:
 2480 0114 00000000 		.word	SPI_DMAHalfTransmitReceiveCplt
 2481 0118 00000000 		.word	SPI_DMATransmitReceiveCplt
 2482 011c 00000000 		.word	SPI_DMAError
 2483 0120 00000000 		.word	SPI_DMAHalfReceiveCplt
 2484 0124 00000000 		.word	SPI_DMAReceiveCplt
 2485              		.cfi_endproc
 2486              	.LFE78:
 2488              		.section	.text.HAL_SPI_Receive_DMA,"ax",%progbits
 2489              		.align	1
 2490              		.global	HAL_SPI_Receive_DMA
 2491              		.syntax unified
 2492              		.thumb
 2493              		.thumb_func
 2494              		.fpu softvfp
 2496              	HAL_SPI_Receive_DMA:
 2497              	.LFB77:
1415:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_StatusTypeDef errorcode = HAL_OK;
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 109


 2498              		.loc 1 1415 0
 2499              		.cfi_startproc
 2500              		@ args = 0, pretend = 0, frame = 0
 2501              		@ frame_needed = 0, uses_anonymous_args = 0
 2502              	.LVL229:
 2503 0000 38B5     		push	{r3, r4, r5, lr}
 2504              	.LCFI30:
 2505              		.cfi_def_cfa_offset 16
 2506              		.cfi_offset 3, -16
 2507              		.cfi_offset 4, -12
 2508              		.cfi_offset 5, -8
 2509              		.cfi_offset 14, -4
 2510 0002 0446     		mov	r4, r0
 2511              	.LVL230:
1418:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2512              		.loc 1 1418 0
 2513 0004 8568     		ldr	r5, [r0, #8]
 2514 0006 1DB9     		cbnz	r5, .L254
1418:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2515              		.loc 1 1418 0 is_stmt 0 discriminator 1
 2516 0008 4368     		ldr	r3, [r0, #4]
 2517 000a B3F5827F 		cmp	r3, #260
 2518 000e 10D0     		beq	.L264
 2519              	.L254:
1426:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2520              		.loc 1 1426 0 is_stmt 1
 2521 0010 94F85000 		ldrb	r0, [r4, #80]	@ zero_extendqisi2
 2522              	.LVL231:
 2523 0014 0128     		cmp	r0, #1
 2524 0016 59D0     		beq	.L259
1426:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2525              		.loc 1 1426 0 is_stmt 0 discriminator 2
 2526 0018 0120     		movs	r0, #1
 2527 001a 84F85000 		strb	r0, [r4, #80]
1428:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2528              		.loc 1 1428 0 is_stmt 1 discriminator 2
 2529 001e 94F85100 		ldrb	r0, [r4, #81]	@ zero_extendqisi2
 2530 0022 C0B2     		uxtb	r0, r0
 2531 0024 0128     		cmp	r0, #1
 2532 0026 0CD0     		beq	.L265
1430:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 2533              		.loc 1 1430 0
 2534 0028 0220     		movs	r0, #2
 2535              	.LVL232:
 2536              	.L256:
1497:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return errorcode;
 2537              		.loc 1 1497 0
 2538 002a 0023     		movs	r3, #0
 2539 002c 84F85030 		strb	r3, [r4, #80]
 2540              	.LVL233:
 2541              	.L255:
1499:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2542              		.loc 1 1499 0
 2543 0030 38BD     		pop	{r3, r4, r5, pc}
 2544              	.LVL234:
 2545              	.L264:
1420:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****      /* Call transmit-receive function to send Dummy data on Tx line and generate clock on CLK line
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 110


 2546              		.loc 1 1420 0
 2547 0032 0423     		movs	r3, #4
 2548 0034 80F85130 		strb	r3, [r0, #81]
1422:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 2549              		.loc 1 1422 0
 2550 0038 1346     		mov	r3, r2
 2551 003a 0A46     		mov	r2, r1
 2552              	.LVL235:
 2553 003c FFF7FEFF 		bl	HAL_SPI_TransmitReceive_DMA
 2554              	.LVL236:
 2555 0040 F6E7     		b	.L255
 2556              	.LVL237:
 2557              	.L265:
1434:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2558              		.loc 1 1434 0
 2559 0042 0029     		cmp	r1, #0
 2560 0044 3ED0     		beq	.L261
1434:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2561              		.loc 1 1434 0 is_stmt 0 discriminator 1
 2562 0046 002A     		cmp	r2, #0
 2563 0048 3ED0     		beq	.L262
1441:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->ErrorCode   = HAL_SPI_ERROR_NONE;
 2564              		.loc 1 1441 0 is_stmt 1
 2565 004a 0423     		movs	r3, #4
 2566 004c 84F85130 		strb	r3, [r4, #81]
1442:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pRxBuffPtr  = (uint8_t *)pData;
 2567              		.loc 1 1442 0
 2568 0050 0023     		movs	r3, #0
 2569 0052 6365     		str	r3, [r4, #84]
1443:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferSize  = Size;
 2570              		.loc 1 1443 0
 2571 0054 A163     		str	r1, [r4, #56]
1444:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount = Size;
 2572              		.loc 1 1444 0
 2573 0056 A287     		strh	r2, [r4, #60]	@ movhi
1445:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2574              		.loc 1 1445 0
 2575 0058 E287     		strh	r2, [r4, #62]	@ movhi
1448:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxISR       = NULL;
 2576              		.loc 1 1448 0
 2577 005a 2364     		str	r3, [r4, #64]
1449:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferSize  = 0U;
 2578              		.loc 1 1449 0
 2579 005c 6364     		str	r3, [r4, #68]
1450:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = 0U;
 2580              		.loc 1 1450 0
 2581 005e A386     		strh	r3, [r4, #52]	@ movhi
1451:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2582              		.loc 1 1451 0
 2583 0060 E386     		strh	r3, [r4, #54]	@ movhi
1454:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2584              		.loc 1 1454 0
 2585 0062 B5F5004F 		cmp	r5, #32768
 2586 0066 27D0     		beq	.L266
 2587              	.LVL238:
 2588              	.L257:
1468:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 111


 2589              		.loc 1 1468 0
 2590 0068 E36C     		ldr	r3, [r4, #76]
 2591 006a 194A     		ldr	r2, .L267
 2592 006c DA62     		str	r2, [r3, #44]
1471:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2593              		.loc 1 1471 0
 2594 006e E36C     		ldr	r3, [r4, #76]
 2595 0070 184A     		ldr	r2, .L267+4
 2596 0072 9A62     		str	r2, [r3, #40]
1474:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2597              		.loc 1 1474 0
 2598 0074 E36C     		ldr	r3, [r4, #76]
 2599 0076 184A     		ldr	r2, .L267+8
 2600 0078 1A63     		str	r2, [r3, #48]
1477:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2601              		.loc 1 1477 0
 2602 007a E36C     		ldr	r3, [r4, #76]
 2603 007c 0022     		movs	r2, #0
 2604 007e 5A63     		str	r2, [r3, #52]
1480:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2605              		.loc 1 1480 0
 2606 0080 2168     		ldr	r1, [r4]
 2607              	.LVL239:
 2608 0082 E38F     		ldrh	r3, [r4, #62]
 2609 0084 A26B     		ldr	r2, [r4, #56]
 2610 0086 0C31     		adds	r1, r1, #12
 2611 0088 E06C     		ldr	r0, [r4, #76]
 2612 008a FFF7FEFF 		bl	HAL_DMA_Start_IT
 2613              	.LVL240:
1483:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2614              		.loc 1 1483 0
 2615 008e 2368     		ldr	r3, [r4]
 2616 0090 1A68     		ldr	r2, [r3]
 2617 0092 12F0400F 		tst	r2, #64
 2618 0096 03D1     		bne	.L258
1486:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 2619              		.loc 1 1486 0
 2620 0098 1A68     		ldr	r2, [r3]
 2621 009a 42F04002 		orr	r2, r2, #64
 2622 009e 1A60     		str	r2, [r3]
 2623              	.L258:
1490:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2624              		.loc 1 1490 0
 2625 00a0 2268     		ldr	r2, [r4]
 2626 00a2 5368     		ldr	r3, [r2, #4]
 2627 00a4 43F02003 		orr	r3, r3, #32
 2628 00a8 5360     		str	r3, [r2, #4]
1493:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2629              		.loc 1 1493 0
 2630 00aa 2268     		ldr	r2, [r4]
 2631 00ac 5368     		ldr	r3, [r2, #4]
 2632 00ae 43F00103 		orr	r3, r3, #1
 2633 00b2 5360     		str	r3, [r2, #4]
1416:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2634              		.loc 1 1416 0
 2635 00b4 0020     		movs	r0, #0
 2636 00b6 B8E7     		b	.L256
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 112


 2637              	.LVL241:
 2638              	.L266:
1456:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 2639              		.loc 1 1456 0
 2640 00b8 2268     		ldr	r2, [r4]
 2641              	.LVL242:
 2642 00ba 1368     		ldr	r3, [r2]
 2643 00bc 23F48043 		bic	r3, r3, #16384
 2644 00c0 1360     		str	r3, [r2]
 2645              	.LVL243:
 2646 00c2 D1E7     		b	.L257
 2647              	.LVL244:
 2648              	.L261:
1436:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     goto error;
 2649              		.loc 1 1436 0
 2650 00c4 0120     		movs	r0, #1
 2651 00c6 B0E7     		b	.L256
 2652              	.L262:
 2653 00c8 0120     		movs	r0, #1
 2654 00ca AEE7     		b	.L256
 2655              	.L259:
1426:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2656              		.loc 1 1426 0
 2657 00cc 0220     		movs	r0, #2
 2658 00ce AFE7     		b	.L255
 2659              	.L268:
 2660              		.align	2
 2661              	.L267:
 2662 00d0 00000000 		.word	SPI_DMAHalfReceiveCplt
 2663 00d4 00000000 		.word	SPI_DMAReceiveCplt
 2664 00d8 00000000 		.word	SPI_DMAError
 2665              		.cfi_endproc
 2666              	.LFE77:
 2668              		.section	.text.HAL_SPI_Abort,"ax",%progbits
 2669              		.align	1
 2670              		.global	HAL_SPI_Abort
 2671              		.syntax unified
 2672              		.thumb
 2673              		.thumb_func
 2674              		.fpu softvfp
 2676              	HAL_SPI_Abort:
 2677              	.LFB79:
1634:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __IO uint32_t count = SPI_DEFAULT_TIMEOUT * (SystemCoreClock / 24U / 1000U);
 2678              		.loc 1 1634 0
 2679              		.cfi_startproc
 2680              		@ args = 0, pretend = 0, frame = 8
 2681              		@ frame_needed = 0, uses_anonymous_args = 0
 2682              	.LVL245:
 2683 0000 10B5     		push	{r4, lr}
 2684              	.LCFI31:
 2685              		.cfi_def_cfa_offset 8
 2686              		.cfi_offset 4, -8
 2687              		.cfi_offset 14, -4
 2688 0002 82B0     		sub	sp, sp, #8
 2689              	.LCFI32:
 2690              		.cfi_def_cfa_offset 16
 2691 0004 0446     		mov	r4, r0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 113


1635:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2692              		.loc 1 1635 0
 2693 0006 2F4B     		ldr	r3, .L279
 2694 0008 1B68     		ldr	r3, [r3]
 2695 000a 2F4A     		ldr	r2, .L279+4
 2696 000c A2FB0323 		umull	r2, r3, r2, r3
 2697 0010 5B0A     		lsrs	r3, r3, #9
 2698 0012 6422     		movs	r2, #100
 2699 0014 02FB03F3 		mul	r3, r2, r3
 2700 0018 0193     		str	r3, [sp, #4]
1638:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2701              		.loc 1 1638 0
 2702 001a 0368     		ldr	r3, [r0]
 2703 001c 5A68     		ldr	r2, [r3, #4]
 2704 001e 12F0800F 		tst	r2, #128
 2705 0022 01D0     		beq	.L270
1640:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 2706              		.loc 1 1640 0
 2707 0024 294A     		ldr	r2, .L279+8
 2708 0026 4264     		str	r2, [r0, #68]
 2709              	.L270:
1643:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2710              		.loc 1 1643 0
 2711 0028 5A68     		ldr	r2, [r3, #4]
 2712 002a 12F0400F 		tst	r2, #64
 2713 002e 01D0     		beq	.L271
1645:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 2714              		.loc 1 1645 0
 2715 0030 274A     		ldr	r2, .L279+12
 2716 0032 2264     		str	r2, [r4, #64]
 2717              	.L271:
1649:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2718              		.loc 1 1649 0
 2719 0034 5A68     		ldr	r2, [r3, #4]
 2720 0036 22F02002 		bic	r2, r2, #32
 2721 003a 5A60     		str	r2, [r3, #4]
1652:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2722              		.loc 1 1652 0
 2723 003c 2368     		ldr	r3, [r4]
 2724 003e 5A68     		ldr	r2, [r3, #4]
 2725 0040 12F0020F 		tst	r2, #2
 2726 0044 03D1     		bne	.L272
1652:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2727              		.loc 1 1652 0 is_stmt 0 discriminator 1
 2728 0046 5B68     		ldr	r3, [r3, #4]
 2729 0048 13F0010F 		tst	r3, #1
 2730 004c 2AD0     		beq	.L273
 2731              	.L272:
1655:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 2732              		.loc 1 1655 0 is_stmt 1
 2733 004e A36C     		ldr	r3, [r4, #72]
 2734 0050 BBB1     		cbz	r3, .L274
1659:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       
 2735              		.loc 1 1659 0
 2736 0052 0022     		movs	r2, #0
 2737 0054 5A63     		str	r2, [r3, #52]
1662:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 114


 2738              		.loc 1 1662 0
 2739 0056 A06C     		ldr	r0, [r4, #72]
 2740              	.LVL246:
 2741 0058 FFF7FEFF 		bl	HAL_DMA_Abort
 2742              	.LVL247:
1665:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2743              		.loc 1 1665 0
 2744 005c 2268     		ldr	r2, [r4]
 2745 005e 5368     		ldr	r3, [r2, #4]
 2746 0060 23F00203 		bic	r3, r3, #2
 2747 0064 5360     		str	r3, [r2, #4]
 2748              	.L276:
1670:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
 2749              		.loc 1 1670 0
 2750 0066 019B     		ldr	r3, [sp, #4]
 2751 0068 5A1E     		subs	r2, r3, #1
 2752 006a 0192     		str	r2, [sp, #4]
 2753 006c 2BB1     		cbz	r3, .L278
1676:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 2754              		.loc 1 1676 0
 2755 006e 2368     		ldr	r3, [r4]
 2756 0070 9B68     		ldr	r3, [r3, #8]
 2757 0072 13F0020F 		tst	r3, #2
 2758 0076 F6D0     		beq	.L276
 2759 0078 03E0     		b	.L274
 2760              	.L278:
1672:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           break;
 2761              		.loc 1 1672 0
 2762 007a 636D     		ldr	r3, [r4, #84]
 2763 007c 43F02003 		orr	r3, r3, #32
 2764 0080 6365     		str	r3, [r4, #84]
 2765              	.L274:
1679:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 2766              		.loc 1 1679 0
 2767 0082 E36C     		ldr	r3, [r4, #76]
 2768 0084 73B1     		cbz	r3, .L273
1683:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       
 2769              		.loc 1 1683 0
 2770 0086 0022     		movs	r2, #0
 2771 0088 5A63     		str	r2, [r3, #52]
1686:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2772              		.loc 1 1686 0
 2773 008a E06C     		ldr	r0, [r4, #76]
 2774 008c FFF7FEFF 		bl	HAL_DMA_Abort
 2775              	.LVL248:
1689:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2776              		.loc 1 1689 0
 2777 0090 2268     		ldr	r2, [r4]
 2778 0092 1368     		ldr	r3, [r2]
 2779 0094 23F04003 		bic	r3, r3, #64
 2780 0098 1360     		str	r3, [r2]
1692:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       
 2781              		.loc 1 1692 0
 2782 009a 2268     		ldr	r2, [r4]
 2783 009c 5368     		ldr	r3, [r2, #4]
 2784 009e 23F00103 		bic	r3, r3, #1
 2785 00a2 5360     		str	r3, [r2, #4]
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 115


 2786              	.L273:
1697:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = 0U;
 2787              		.loc 1 1697 0
 2788 00a4 0020     		movs	r0, #0
 2789 00a6 E087     		strh	r0, [r4, #62]	@ movhi
1698:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2790              		.loc 1 1698 0
 2791 00a8 E086     		strh	r0, [r4, #54]	@ movhi
1701:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2792              		.loc 1 1701 0
 2793 00aa 6065     		str	r0, [r4, #84]
 2794              	.LBB4:
1704:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2795              		.loc 1 1704 0
 2796 00ac 0090     		str	r0, [sp]
 2797 00ae 2368     		ldr	r3, [r4]
 2798 00b0 DA68     		ldr	r2, [r3, #12]
 2799 00b2 0092     		str	r2, [sp]
 2800 00b4 9B68     		ldr	r3, [r3, #8]
 2801 00b6 0093     		str	r3, [sp]
 2802 00b8 009B     		ldr	r3, [sp]
 2803              	.LBE4:
1707:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2804              		.loc 1 1707 0
 2805 00ba 0123     		movs	r3, #1
 2806 00bc 84F85130 		strb	r3, [r4, #81]
1710:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2807              		.loc 1 1710 0
 2808 00c0 02B0     		add	sp, sp, #8
 2809              	.LCFI33:
 2810              		.cfi_def_cfa_offset 8
 2811              		@ sp needed
 2812 00c2 10BD     		pop	{r4, pc}
 2813              	.LVL249:
 2814              	.L280:
 2815              		.align	2
 2816              	.L279:
 2817 00c4 00000000 		.word	SystemCoreClock
 2818 00c8 F1197605 		.word	91625969
 2819 00cc 00000000 		.word	SPI_AbortTx_ISR
 2820 00d0 00000000 		.word	SPI_AbortRx_ISR
 2821              		.cfi_endproc
 2822              	.LFE79:
 2824              		.section	.text.HAL_SPI_DMAPause,"ax",%progbits
 2825              		.align	1
 2826              		.global	HAL_SPI_DMAPause
 2827              		.syntax unified
 2828              		.thumb
 2829              		.thumb_func
 2830              		.fpu softvfp
 2832              	HAL_SPI_DMAPause:
 2833              	.LFB81:
1875:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Process Locked */
 2834              		.loc 1 1875 0
 2835              		.cfi_startproc
 2836              		@ args = 0, pretend = 0, frame = 0
 2837              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 116


 2838              		@ link register save eliminated.
 2839              	.LVL250:
1877:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2840              		.loc 1 1877 0
 2841 0000 90F85030 		ldrb	r3, [r0, #80]	@ zero_extendqisi2
 2842 0004 012B     		cmp	r3, #1
 2843 0006 0CD0     		beq	.L283
1877:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2844              		.loc 1 1877 0 is_stmt 0 discriminator 2
 2845 0008 0123     		movs	r3, #1
 2846 000a 80F85030 		strb	r3, [r0, #80]
1880:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2847              		.loc 1 1880 0 is_stmt 1 discriminator 2
 2848 000e 0268     		ldr	r2, [r0]
 2849 0010 5368     		ldr	r3, [r2, #4]
 2850 0012 23F00303 		bic	r3, r3, #3
 2851 0016 5360     		str	r3, [r2, #4]
1883:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2852              		.loc 1 1883 0 discriminator 2
 2853 0018 0023     		movs	r3, #0
 2854 001a 80F85030 		strb	r3, [r0, #80]
1885:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
 2855              		.loc 1 1885 0 discriminator 2
 2856 001e 1846     		mov	r0, r3
 2857              	.LVL251:
 2858 0020 7047     		bx	lr
 2859              	.LVL252:
 2860              	.L283:
1877:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2861              		.loc 1 1877 0
 2862 0022 0220     		movs	r0, #2
 2863              	.LVL253:
1886:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2864              		.loc 1 1886 0
 2865 0024 7047     		bx	lr
 2866              		.cfi_endproc
 2867              	.LFE81:
 2869              		.section	.text.HAL_SPI_DMAResume,"ax",%progbits
 2870              		.align	1
 2871              		.global	HAL_SPI_DMAResume
 2872              		.syntax unified
 2873              		.thumb
 2874              		.thumb_func
 2875              		.fpu softvfp
 2877              	HAL_SPI_DMAResume:
 2878              	.LFB82:
1895:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Process Locked */
 2879              		.loc 1 1895 0
 2880              		.cfi_startproc
 2881              		@ args = 0, pretend = 0, frame = 0
 2882              		@ frame_needed = 0, uses_anonymous_args = 0
 2883              		@ link register save eliminated.
 2884              	.LVL254:
1897:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2885              		.loc 1 1897 0
 2886 0000 90F85030 		ldrb	r3, [r0, #80]	@ zero_extendqisi2
 2887 0004 012B     		cmp	r3, #1
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 117


 2888 0006 0CD0     		beq	.L286
1897:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2889              		.loc 1 1897 0 is_stmt 0 discriminator 2
 2890 0008 0123     		movs	r3, #1
 2891 000a 80F85030 		strb	r3, [r0, #80]
1900:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2892              		.loc 1 1900 0 is_stmt 1 discriminator 2
 2893 000e 0268     		ldr	r2, [r0]
 2894 0010 5368     		ldr	r3, [r2, #4]
 2895 0012 43F00303 		orr	r3, r3, #3
 2896 0016 5360     		str	r3, [r2, #4]
1903:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2897              		.loc 1 1903 0 discriminator 2
 2898 0018 0023     		movs	r3, #0
 2899 001a 80F85030 		strb	r3, [r0, #80]
1905:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
 2900              		.loc 1 1905 0 discriminator 2
 2901 001e 1846     		mov	r0, r3
 2902              	.LVL255:
 2903 0020 7047     		bx	lr
 2904              	.LVL256:
 2905              	.L286:
1897:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2906              		.loc 1 1897 0
 2907 0022 0220     		movs	r0, #2
 2908              	.LVL257:
1906:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2909              		.loc 1 1906 0
 2910 0024 7047     		bx	lr
 2911              		.cfi_endproc
 2912              	.LFE82:
 2914              		.section	.text.HAL_SPI_DMAStop,"ax",%progbits
 2915              		.align	1
 2916              		.global	HAL_SPI_DMAStop
 2917              		.syntax unified
 2918              		.thumb
 2919              		.thumb_func
 2920              		.fpu softvfp
 2922              	HAL_SPI_DMAStop:
 2923              	.LFB83:
1915:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* The Lock is not implemented on this API to allow the user application
 2924              		.loc 1 1915 0
 2925              		.cfi_startproc
 2926              		@ args = 0, pretend = 0, frame = 0
 2927              		@ frame_needed = 0, uses_anonymous_args = 0
 2928              	.LVL258:
 2929 0000 10B5     		push	{r4, lr}
 2930              	.LCFI34:
 2931              		.cfi_def_cfa_offset 8
 2932              		.cfi_offset 4, -8
 2933              		.cfi_offset 14, -4
 2934 0002 0446     		mov	r4, r0
1923:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2935              		.loc 1 1923 0
 2936 0004 806C     		ldr	r0, [r0, #72]
 2937              	.LVL259:
 2938 0006 08B1     		cbz	r0, .L288
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 118


1925:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 2939              		.loc 1 1925 0
 2940 0008 FFF7FEFF 		bl	HAL_DMA_Abort
 2941              	.LVL260:
 2942              	.L288:
1928:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 2943              		.loc 1 1928 0
 2944 000c E06C     		ldr	r0, [r4, #76]
 2945 000e 08B1     		cbz	r0, .L289
1930:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 2946              		.loc 1 1930 0
 2947 0010 FFF7FEFF 		bl	HAL_DMA_Abort
 2948              	.LVL261:
 2949              	.L289:
1934:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->State = HAL_SPI_STATE_READY;
 2950              		.loc 1 1934 0
 2951 0014 2268     		ldr	r2, [r4]
 2952 0016 5368     		ldr	r3, [r2, #4]
 2953 0018 23F00303 		bic	r3, r3, #3
 2954 001c 5360     		str	r3, [r2, #4]
1935:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return HAL_OK;
 2955              		.loc 1 1935 0
 2956 001e 0123     		movs	r3, #1
 2957 0020 84F85130 		strb	r3, [r4, #81]
1937:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2958              		.loc 1 1937 0
 2959 0024 0020     		movs	r0, #0
 2960 0026 10BD     		pop	{r4, pc}
 2961              		.cfi_endproc
 2962              	.LFE83:
 2964              		.section	.text.HAL_SPI_TxCpltCallback,"ax",%progbits
 2965              		.align	1
 2966              		.weak	HAL_SPI_TxCpltCallback
 2967              		.syntax unified
 2968              		.thumb
 2969              		.thumb_func
 2970              		.fpu softvfp
 2972              	HAL_SPI_TxCpltCallback:
 2973              	.LFB85:
2035:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Prevent unused argument(s) compilation warning */
 2974              		.loc 1 2035 0
 2975              		.cfi_startproc
 2976              		@ args = 0, pretend = 0, frame = 0
 2977              		@ frame_needed = 0, uses_anonymous_args = 0
 2978              		@ link register save eliminated.
 2979              	.LVL262:
2041:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 2980              		.loc 1 2041 0
 2981 0000 7047     		bx	lr
 2982              		.cfi_endproc
 2983              	.LFE85:
 2985              		.section	.text.HAL_SPI_RxCpltCallback,"ax",%progbits
 2986              		.align	1
 2987              		.weak	HAL_SPI_RxCpltCallback
 2988              		.syntax unified
 2989              		.thumb
 2990              		.thumb_func
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 119


 2991              		.fpu softvfp
 2993              	HAL_SPI_RxCpltCallback:
 2994              	.LFB86:
2050:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Prevent unused argument(s) compilation warning */
 2995              		.loc 1 2050 0
 2996              		.cfi_startproc
 2997              		@ args = 0, pretend = 0, frame = 0
 2998              		@ frame_needed = 0, uses_anonymous_args = 0
 2999              		@ link register save eliminated.
 3000              	.LVL263:
2056:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3001              		.loc 1 2056 0
 3002 0000 7047     		bx	lr
 3003              		.cfi_endproc
 3004              	.LFE86:
 3006              		.section	.text.HAL_SPI_TxRxCpltCallback,"ax",%progbits
 3007              		.align	1
 3008              		.weak	HAL_SPI_TxRxCpltCallback
 3009              		.syntax unified
 3010              		.thumb
 3011              		.thumb_func
 3012              		.fpu softvfp
 3014              	HAL_SPI_TxRxCpltCallback:
 3015              	.LFB87:
2065:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Prevent unused argument(s) compilation warning */
 3016              		.loc 1 2065 0
 3017              		.cfi_startproc
 3018              		@ args = 0, pretend = 0, frame = 0
 3019              		@ frame_needed = 0, uses_anonymous_args = 0
 3020              		@ link register save eliminated.
 3021              	.LVL264:
2071:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3022              		.loc 1 2071 0
 3023 0000 7047     		bx	lr
 3024              		.cfi_endproc
 3025              	.LFE87:
 3027              		.section	.text.HAL_SPI_TxHalfCpltCallback,"ax",%progbits
 3028              		.align	1
 3029              		.weak	HAL_SPI_TxHalfCpltCallback
 3030              		.syntax unified
 3031              		.thumb
 3032              		.thumb_func
 3033              		.fpu softvfp
 3035              	HAL_SPI_TxHalfCpltCallback:
 3036              	.LFB88:
2080:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Prevent unused argument(s) compilation warning */
 3037              		.loc 1 2080 0
 3038              		.cfi_startproc
 3039              		@ args = 0, pretend = 0, frame = 0
 3040              		@ frame_needed = 0, uses_anonymous_args = 0
 3041              		@ link register save eliminated.
 3042              	.LVL265:
2086:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3043              		.loc 1 2086 0
 3044 0000 7047     		bx	lr
 3045              		.cfi_endproc
 3046              	.LFE88:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 120


 3048              		.section	.text.SPI_DMAHalfTransmitCplt,"ax",%progbits
 3049              		.align	1
 3050              		.syntax unified
 3051              		.thumb
 3052              		.thumb_func
 3053              		.fpu softvfp
 3055              	SPI_DMAHalfTransmitCplt:
 3056              	.LFB98:
2409:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SPI_HandleTypeDef* hspi = ( SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
 3057              		.loc 1 2409 0
 3058              		.cfi_startproc
 3059              		@ args = 0, pretend = 0, frame = 0
 3060              		@ frame_needed = 0, uses_anonymous_args = 0
 3061              	.LVL266:
 3062 0000 08B5     		push	{r3, lr}
 3063              	.LCFI35:
 3064              		.cfi_def_cfa_offset 8
 3065              		.cfi_offset 3, -8
 3066              		.cfi_offset 14, -4
 3067              	.LVL267:
2412:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
 3068              		.loc 1 2412 0
 3069 0002 406A     		ldr	r0, [r0, #36]
 3070              	.LVL268:
 3071 0004 FFF7FEFF 		bl	HAL_SPI_TxHalfCpltCallback
 3072              	.LVL269:
2413:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3073              		.loc 1 2413 0
 3074 0008 08BD     		pop	{r3, pc}
 3075              		.cfi_endproc
 3076              	.LFE98:
 3078              		.section	.text.HAL_SPI_RxHalfCpltCallback,"ax",%progbits
 3079              		.align	1
 3080              		.weak	HAL_SPI_RxHalfCpltCallback
 3081              		.syntax unified
 3082              		.thumb
 3083              		.thumb_func
 3084              		.fpu softvfp
 3086              	HAL_SPI_RxHalfCpltCallback:
 3087              	.LFB89:
2095:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Prevent unused argument(s) compilation warning */
 3088              		.loc 1 2095 0
 3089              		.cfi_startproc
 3090              		@ args = 0, pretend = 0, frame = 0
 3091              		@ frame_needed = 0, uses_anonymous_args = 0
 3092              		@ link register save eliminated.
 3093              	.LVL270:
2101:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3094              		.loc 1 2101 0
 3095 0000 7047     		bx	lr
 3096              		.cfi_endproc
 3097              	.LFE89:
 3099              		.section	.text.SPI_DMAHalfReceiveCplt,"ax",%progbits
 3100              		.align	1
 3101              		.syntax unified
 3102              		.thumb
 3103              		.thumb_func
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 121


 3104              		.fpu softvfp
 3106              	SPI_DMAHalfReceiveCplt:
 3107              	.LFB99:
2422:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SPI_HandleTypeDef* hspi = ( SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
 3108              		.loc 1 2422 0
 3109              		.cfi_startproc
 3110              		@ args = 0, pretend = 0, frame = 0
 3111              		@ frame_needed = 0, uses_anonymous_args = 0
 3112              	.LVL271:
 3113 0000 08B5     		push	{r3, lr}
 3114              	.LCFI36:
 3115              		.cfi_def_cfa_offset 8
 3116              		.cfi_offset 3, -8
 3117              		.cfi_offset 14, -4
 3118              	.LVL272:
2425:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
 3119              		.loc 1 2425 0
 3120 0002 406A     		ldr	r0, [r0, #36]
 3121              	.LVL273:
 3122 0004 FFF7FEFF 		bl	HAL_SPI_RxHalfCpltCallback
 3123              	.LVL274:
2426:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3124              		.loc 1 2426 0
 3125 0008 08BD     		pop	{r3, pc}
 3126              		.cfi_endproc
 3127              	.LFE99:
 3129              		.section	.text.HAL_SPI_TxRxHalfCpltCallback,"ax",%progbits
 3130              		.align	1
 3131              		.weak	HAL_SPI_TxRxHalfCpltCallback
 3132              		.syntax unified
 3133              		.thumb
 3134              		.thumb_func
 3135              		.fpu softvfp
 3137              	HAL_SPI_TxRxHalfCpltCallback:
 3138              	.LFB90:
2110:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Prevent unused argument(s) compilation warning */
 3139              		.loc 1 2110 0
 3140              		.cfi_startproc
 3141              		@ args = 0, pretend = 0, frame = 0
 3142              		@ frame_needed = 0, uses_anonymous_args = 0
 3143              		@ link register save eliminated.
 3144              	.LVL275:
2116:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3145              		.loc 1 2116 0
 3146 0000 7047     		bx	lr
 3147              		.cfi_endproc
 3148              	.LFE90:
 3150              		.section	.text.SPI_DMAHalfTransmitReceiveCplt,"ax",%progbits
 3151              		.align	1
 3152              		.syntax unified
 3153              		.thumb
 3154              		.thumb_func
 3155              		.fpu softvfp
 3157              	SPI_DMAHalfTransmitReceiveCplt:
 3158              	.LFB100:
2435:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SPI_HandleTypeDef* hspi = ( SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
 3159              		.loc 1 2435 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 122


 3160              		.cfi_startproc
 3161              		@ args = 0, pretend = 0, frame = 0
 3162              		@ frame_needed = 0, uses_anonymous_args = 0
 3163              	.LVL276:
 3164 0000 08B5     		push	{r3, lr}
 3165              	.LCFI37:
 3166              		.cfi_def_cfa_offset 8
 3167              		.cfi_offset 3, -8
 3168              		.cfi_offset 14, -4
 3169              	.LVL277:
2438:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
 3170              		.loc 1 2438 0
 3171 0002 406A     		ldr	r0, [r0, #36]
 3172              	.LVL278:
 3173 0004 FFF7FEFF 		bl	HAL_SPI_TxRxHalfCpltCallback
 3174              	.LVL279:
2439:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3175              		.loc 1 2439 0
 3176 0008 08BD     		pop	{r3, pc}
 3177              		.cfi_endproc
 3178              	.LFE100:
 3180              		.section	.text.HAL_SPI_ErrorCallback,"ax",%progbits
 3181              		.align	1
 3182              		.weak	HAL_SPI_ErrorCallback
 3183              		.syntax unified
 3184              		.thumb
 3185              		.thumb_func
 3186              		.fpu softvfp
 3188              	HAL_SPI_ErrorCallback:
 3189              	.LFB91:
2125:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Prevent unused argument(s) compilation warning */
 3190              		.loc 1 2125 0
 3191              		.cfi_startproc
 3192              		@ args = 0, pretend = 0, frame = 0
 3193              		@ frame_needed = 0, uses_anonymous_args = 0
 3194              		@ link register save eliminated.
 3195              	.LVL280:
2134:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3196              		.loc 1 2134 0
 3197 0000 7047     		bx	lr
 3198              		.cfi_endproc
 3199              	.LFE91:
 3201              		.section	.text.SPI_CloseTx_ISR,"ax",%progbits
 3202              		.align	1
 3203              		.syntax unified
 3204              		.thumb
 3205              		.thumb_func
 3206              		.fpu softvfp
 3208              	SPI_CloseTx_ISR:
 3209              	.LFB117:
3139:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t tickstart = 0U;
 3210              		.loc 1 3139 0
 3211              		.cfi_startproc
 3212              		@ args = 0, pretend = 0, frame = 8
 3213              		@ frame_needed = 0, uses_anonymous_args = 0
 3214              	.LVL281:
 3215 0000 10B5     		push	{r4, lr}
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 123


 3216              	.LCFI38:
 3217              		.cfi_def_cfa_offset 8
 3218              		.cfi_offset 4, -8
 3219              		.cfi_offset 14, -4
 3220 0002 82B0     		sub	sp, sp, #8
 3221              	.LCFI39:
 3222              		.cfi_def_cfa_offset 16
 3223 0004 0446     		mov	r4, r0
 3224              	.LVL282:
3141:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3225              		.loc 1 3141 0
 3226 0006 204B     		ldr	r3, .L315
 3227 0008 1B68     		ldr	r3, [r3]
 3228 000a 204A     		ldr	r2, .L315+4
 3229 000c A2FB0323 		umull	r2, r3, r2, r3
 3230 0010 5B0A     		lsrs	r3, r3, #9
 3231 0012 6422     		movs	r2, #100
 3232 0014 02FB03F3 		mul	r3, r2, r3
 3233 0018 0193     		str	r3, [sp, #4]
3144:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3234              		.loc 1 3144 0
 3235 001a FFF7FEFF 		bl	HAL_GetTick
 3236              	.LVL283:
 3237 001e 0246     		mov	r2, r0
 3238              	.LVL284:
 3239              	.L307:
3149:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 3240              		.loc 1 3149 0
 3241 0020 019B     		ldr	r3, [sp, #4]
 3242 0022 591E     		subs	r1, r3, #1
 3243 0024 0191     		str	r1, [sp, #4]
 3244 0026 2BB1     		cbz	r3, .L313
3155:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3245              		.loc 1 3155 0
 3246 0028 2368     		ldr	r3, [r4]
 3247 002a 9B68     		ldr	r3, [r3, #8]
 3248 002c 13F0020F 		tst	r3, #2
 3249 0030 F6D0     		beq	.L307
 3250 0032 03E0     		b	.L306
 3251              	.L313:
3151:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       break;
 3252              		.loc 1 3151 0
 3253 0034 636D     		ldr	r3, [r4, #84]
 3254 0036 43F02003 		orr	r3, r3, #32
 3255 003a 6365     		str	r3, [r4, #84]
 3256              	.L306:
3158:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3257              		.loc 1 3158 0
 3258 003c 2168     		ldr	r1, [r4]
 3259 003e 4B68     		ldr	r3, [r1, #4]
 3260 0040 23F0A003 		bic	r3, r3, #160
 3261 0044 4B60     		str	r3, [r1, #4]
3161:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 3262              		.loc 1 3161 0
 3263 0046 6421     		movs	r1, #100
 3264 0048 2046     		mov	r0, r4
 3265              	.LVL285:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 124


 3266 004a FFF7FEFF 		bl	SPI_CheckFlag_BSY
 3267              	.LVL286:
 3268 004e 18B1     		cbz	r0, .L308
3163:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 3269              		.loc 1 3163 0
 3270 0050 636D     		ldr	r3, [r4, #84]
 3271 0052 43F02003 		orr	r3, r3, #32
 3272 0056 6365     		str	r3, [r4, #84]
 3273              	.L308:
3167:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 3274              		.loc 1 3167 0
 3275 0058 A368     		ldr	r3, [r4, #8]
 3276 005a 33B9     		cbnz	r3, .L309
 3277              	.LBB5:
3169:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 3278              		.loc 1 3169 0
 3279 005c 0093     		str	r3, [sp]
 3280 005e 2368     		ldr	r3, [r4]
 3281 0060 DA68     		ldr	r2, [r3, #12]
 3282 0062 0092     		str	r2, [sp]
 3283 0064 9B68     		ldr	r3, [r3, #8]
 3284 0066 0093     		str	r3, [sp]
 3285 0068 009B     		ldr	r3, [sp]
 3286              	.L309:
 3287              	.LBE5:
3172:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   if(hspi->ErrorCode != HAL_SPI_ERROR_NONE)
 3288              		.loc 1 3172 0
 3289 006a 0123     		movs	r3, #1
 3290 006c 84F85130 		strb	r3, [r4, #81]
3173:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 3291              		.loc 1 3173 0
 3292 0070 636D     		ldr	r3, [r4, #84]
 3293 0072 23B9     		cbnz	r3, .L314
3179:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 3294              		.loc 1 3179 0
 3295 0074 2046     		mov	r0, r4
 3296 0076 FFF7FEFF 		bl	HAL_SPI_TxCpltCallback
 3297              	.LVL287:
 3298              	.L304:
3181:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3299              		.loc 1 3181 0
 3300 007a 02B0     		add	sp, sp, #8
 3301              	.LCFI40:
 3302              		.cfi_remember_state
 3303              		.cfi_def_cfa_offset 8
 3304              		@ sp needed
 3305 007c 10BD     		pop	{r4, pc}
 3306              	.LVL288:
 3307              	.L314:
 3308              	.LCFI41:
 3309              		.cfi_restore_state
3175:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 3310              		.loc 1 3175 0
 3311 007e 2046     		mov	r0, r4
 3312 0080 FFF7FEFF 		bl	HAL_SPI_ErrorCallback
 3313              	.LVL289:
 3314 0084 F9E7     		b	.L304
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 125


 3315              	.L316:
 3316 0086 00BF     		.align	2
 3317              	.L315:
 3318 0088 00000000 		.word	SystemCoreClock
 3319 008c F1197605 		.word	91625969
 3320              		.cfi_endproc
 3321              	.LFE117:
 3323              		.section	.text.SPI_TxISR_8BIT,"ax",%progbits
 3324              		.align	1
 3325              		.syntax unified
 3326              		.thumb
 3327              		.thumb_func
 3328              		.fpu softvfp
 3330              	SPI_TxISR_8BIT:
 3331              	.LFB111:
2876:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *(__IO uint8_t *)&hspi->Instance->DR = (*hspi->pTxBuffPtr++);
 3332              		.loc 1 2876 0
 3333              		.cfi_startproc
 3334              		@ args = 0, pretend = 0, frame = 0
 3335              		@ frame_needed = 0, uses_anonymous_args = 0
 3336              	.LVL290:
 3337 0000 08B5     		push	{r3, lr}
 3338              	.LCFI42:
 3339              		.cfi_def_cfa_offset 8
 3340              		.cfi_offset 3, -8
 3341              		.cfi_offset 14, -4
2877:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount--;
 3342              		.loc 1 2877 0
 3343 0002 036B     		ldr	r3, [r0, #48]
 3344 0004 5A1C     		adds	r2, r3, #1
 3345 0006 0263     		str	r2, [r0, #48]
 3346 0008 0268     		ldr	r2, [r0]
 3347 000a 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 3348 000c 1373     		strb	r3, [r2, #12]
2878:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3349              		.loc 1 2878 0
 3350 000e C38E     		ldrh	r3, [r0, #54]
 3351 0010 013B     		subs	r3, r3, #1
 3352 0012 9BB2     		uxth	r3, r3
 3353 0014 C386     		strh	r3, [r0, #54]	@ movhi
2880:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 3354              		.loc 1 2880 0
 3355 0016 C38E     		ldrh	r3, [r0, #54]
 3356 0018 9BB2     		uxth	r3, r3
 3357 001a 03B1     		cbz	r3, .L320
 3358              	.LVL291:
 3359              	.L317:
2891:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3360              		.loc 1 2891 0
 3361 001c 08BD     		pop	{r3, pc}
 3362              	.LVL292:
 3363              	.L320:
2889:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 3364              		.loc 1 2889 0
 3365 001e FFF7FEFF 		bl	SPI_CloseTx_ISR
 3366              	.LVL293:
2891:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 126


 3367              		.loc 1 2891 0
 3368 0022 FBE7     		b	.L317
 3369              		.cfi_endproc
 3370              	.LFE111:
 3372              		.section	.text.SPI_TxISR_16BIT,"ax",%progbits
 3373              		.align	1
 3374              		.syntax unified
 3375              		.thumb
 3376              		.thumb_func
 3377              		.fpu softvfp
 3379              	SPI_TxISR_16BIT:
 3380              	.LFB112:
2900:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Transmit data in 16 Bit mode */
 3381              		.loc 1 2900 0
 3382              		.cfi_startproc
 3383              		@ args = 0, pretend = 0, frame = 0
 3384              		@ frame_needed = 0, uses_anonymous_args = 0
 3385              	.LVL294:
 3386 0000 08B5     		push	{r3, lr}
 3387              	.LCFI43:
 3388              		.cfi_def_cfa_offset 8
 3389              		.cfi_offset 3, -8
 3390              		.cfi_offset 14, -4
2902:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pTxBuffPtr += sizeof(uint16_t);
 3391              		.loc 1 2902 0
 3392 0002 026B     		ldr	r2, [r0, #48]
 3393 0004 0368     		ldr	r3, [r0]
 3394 0006 1288     		ldrh	r2, [r2]
 3395 0008 DA60     		str	r2, [r3, #12]
2903:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount--;
 3396              		.loc 1 2903 0
 3397 000a 036B     		ldr	r3, [r0, #48]
 3398 000c 0233     		adds	r3, r3, #2
 3399 000e 0363     		str	r3, [r0, #48]
2904:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3400              		.loc 1 2904 0
 3401 0010 C38E     		ldrh	r3, [r0, #54]
 3402 0012 013B     		subs	r3, r3, #1
 3403 0014 9BB2     		uxth	r3, r3
 3404 0016 C386     		strh	r3, [r0, #54]	@ movhi
2906:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 3405              		.loc 1 2906 0
 3406 0018 C38E     		ldrh	r3, [r0, #54]
 3407 001a 9BB2     		uxth	r3, r3
 3408 001c 03B1     		cbz	r3, .L324
 3409              	.LVL295:
 3410              	.L321:
2917:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3411              		.loc 1 2917 0
 3412 001e 08BD     		pop	{r3, pc}
 3413              	.LVL296:
 3414              	.L324:
2915:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 3415              		.loc 1 2915 0
 3416 0020 FFF7FEFF 		bl	SPI_CloseTx_ISR
 3417              	.LVL297:
2917:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 127


 3418              		.loc 1 2917 0
 3419 0024 FBE7     		b	.L321
 3420              		.cfi_endproc
 3421              	.LFE112:
 3423              		.section	.text.SPI_CloseRx_ISR,"ax",%progbits
 3424              		.align	1
 3425              		.syntax unified
 3426              		.thumb
 3427              		.thumb_func
 3428              		.fpu softvfp
 3430              	SPI_CloseRx_ISR:
 3431              	.LFB116:
3079:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     /* Disable RXNE and ERR interrupt */
 3432              		.loc 1 3079 0
 3433              		.cfi_startproc
 3434              		@ args = 0, pretend = 0, frame = 8
 3435              		@ frame_needed = 0, uses_anonymous_args = 0
 3436              	.LVL298:
 3437 0000 00B5     		push	{lr}
 3438              	.LCFI44:
 3439              		.cfi_def_cfa_offset 4
 3440              		.cfi_offset 14, -4
 3441 0002 83B0     		sub	sp, sp, #12
 3442              	.LCFI45:
 3443              		.cfi_def_cfa_offset 16
3081:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3444              		.loc 1 3081 0
 3445 0004 0268     		ldr	r2, [r0]
 3446 0006 5368     		ldr	r3, [r2, #4]
 3447 0008 23F06003 		bic	r3, r3, #96
 3448 000c 5360     		str	r3, [r2, #4]
3084:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 3449              		.loc 1 3084 0
 3450 000e 4368     		ldr	r3, [r0, #4]
 3451 0010 B3F5827F 		cmp	r3, #260
 3452 0014 12D0     		beq	.L332
 3453              	.L326:
3091:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 3454              		.loc 1 3091 0
 3455 0016 8368     		ldr	r3, [r0, #8]
 3456 0018 33B9     		cbnz	r3, .L328
 3457              	.LBB6:
3093:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 3458              		.loc 1 3093 0
 3459 001a 0193     		str	r3, [sp, #4]
 3460 001c 0368     		ldr	r3, [r0]
 3461 001e DA68     		ldr	r2, [r3, #12]
 3462 0020 0192     		str	r2, [sp, #4]
 3463 0022 9B68     		ldr	r3, [r3, #8]
 3464 0024 0193     		str	r3, [sp, #4]
 3465 0026 019B     		ldr	r3, [sp, #4]
 3466              	.L328:
 3467              	.LBE6:
3095:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3468              		.loc 1 3095 0
 3469 0028 0123     		movs	r3, #1
 3470 002a 80F85130 		strb	r3, [r0, #81]
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 128


3119:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 3471              		.loc 1 3119 0
 3472 002e 436D     		ldr	r3, [r0, #84]
 3473 0030 8BB1     		cbz	r3, .L333
3125:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 3474              		.loc 1 3125 0
 3475 0032 FFF7FEFF 		bl	HAL_SPI_ErrorCallback
 3476              	.LVL299:
 3477              	.L325:
3130:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3478              		.loc 1 3130 0
 3479 0036 03B0     		add	sp, sp, #12
 3480              	.LCFI46:
 3481              		.cfi_remember_state
 3482              		.cfi_def_cfa_offset 4
 3483              		@ sp needed
 3484 0038 5DF804FB 		ldr	pc, [sp], #4
 3485              	.LVL300:
 3486              	.L332:
 3487              	.LCFI47:
 3488              		.cfi_restore_state
3084:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 3489              		.loc 1 3084 0 discriminator 1
 3490 003c 8368     		ldr	r3, [r0, #8]
 3491 003e B3F5004F 		cmp	r3, #32768
 3492 0042 02D0     		beq	.L327
3084:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 3493              		.loc 1 3084 0 is_stmt 0 discriminator 2
 3494 0044 B3F5806F 		cmp	r3, #1024
 3495 0048 E5D1     		bne	.L326
 3496              	.L327:
3087:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 3497              		.loc 1 3087 0 is_stmt 1
 3498 004a 0268     		ldr	r2, [r0]
 3499 004c 1368     		ldr	r3, [r2]
 3500 004e 23F04003 		bic	r3, r3, #64
 3501 0052 1360     		str	r3, [r2]
 3502 0054 DFE7     		b	.L326
 3503              	.L333:
3121:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 3504              		.loc 1 3121 0
 3505 0056 FFF7FEFF 		bl	HAL_SPI_RxCpltCallback
 3506              	.LVL301:
 3507 005a ECE7     		b	.L325
 3508              		.cfi_endproc
 3509              	.LFE116:
 3511              		.section	.text.SPI_RxISR_8BIT,"ax",%progbits
 3512              		.align	1
 3513              		.syntax unified
 3514              		.thumb
 3515              		.thumb_func
 3516              		.fpu softvfp
 3518              	SPI_RxISR_8BIT:
 3519              	.LFB109:
2787:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *hspi->pRxBuffPtr++ = (*(__IO uint8_t *)&hspi->Instance->DR);
 3520              		.loc 1 2787 0
 3521              		.cfi_startproc
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 129


 3522              		@ args = 0, pretend = 0, frame = 0
 3523              		@ frame_needed = 0, uses_anonymous_args = 0
 3524              	.LVL302:
 3525 0000 08B5     		push	{r3, lr}
 3526              	.LCFI48:
 3527              		.cfi_def_cfa_offset 8
 3528              		.cfi_offset 3, -8
 3529              		.cfi_offset 14, -4
2788:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount--;
 3530              		.loc 1 2788 0
 3531 0002 0268     		ldr	r2, [r0]
 3532 0004 836B     		ldr	r3, [r0, #56]
 3533 0006 591C     		adds	r1, r3, #1
 3534 0008 8163     		str	r1, [r0, #56]
 3535 000a 127B     		ldrb	r2, [r2, #12]	@ zero_extendqisi2
 3536 000c 1A70     		strb	r2, [r3]
2789:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3537              		.loc 1 2789 0
 3538 000e C38F     		ldrh	r3, [r0, #62]
 3539 0010 013B     		subs	r3, r3, #1
 3540 0012 9BB2     		uxth	r3, r3
 3541 0014 C387     		strh	r3, [r0, #62]	@ movhi
2799:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 3542              		.loc 1 2799 0
 3543 0016 C38F     		ldrh	r3, [r0, #62]
 3544 0018 9BB2     		uxth	r3, r3
 3545 001a 03B1     		cbz	r3, .L337
 3546              	.LVL303:
 3547              	.L334:
2810:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3548              		.loc 1 2810 0
 3549 001c 08BD     		pop	{r3, pc}
 3550              	.LVL304:
 3551              	.L337:
2808:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 3552              		.loc 1 2808 0
 3553 001e FFF7FEFF 		bl	SPI_CloseRx_ISR
 3554              	.LVL305:
2810:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3555              		.loc 1 2810 0
 3556 0022 FBE7     		b	.L334
 3557              		.cfi_endproc
 3558              	.LFE109:
 3560              		.section	.text.SPI_RxISR_16BIT,"ax",%progbits
 3561              		.align	1
 3562              		.syntax unified
 3563              		.thumb
 3564              		.thumb_func
 3565              		.fpu softvfp
 3567              	SPI_RxISR_16BIT:
 3568              	.LFB110:
2843:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *((uint16_t *)hspi->pRxBuffPtr) = hspi->Instance->DR;
 3569              		.loc 1 2843 0
 3570              		.cfi_startproc
 3571              		@ args = 0, pretend = 0, frame = 0
 3572              		@ frame_needed = 0, uses_anonymous_args = 0
 3573              	.LVL306:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 130


 3574 0000 08B5     		push	{r3, lr}
 3575              	.LCFI49:
 3576              		.cfi_def_cfa_offset 8
 3577              		.cfi_offset 3, -8
 3578              		.cfi_offset 14, -4
2844:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pRxBuffPtr += sizeof(uint16_t);
 3579              		.loc 1 2844 0
 3580 0002 0368     		ldr	r3, [r0]
 3581 0004 DA68     		ldr	r2, [r3, #12]
 3582 0006 836B     		ldr	r3, [r0, #56]
 3583 0008 1A80     		strh	r2, [r3]	@ movhi
2845:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount--;
 3584              		.loc 1 2845 0
 3585 000a 836B     		ldr	r3, [r0, #56]
 3586 000c 0233     		adds	r3, r3, #2
 3587 000e 8363     		str	r3, [r0, #56]
2846:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3588              		.loc 1 2846 0
 3589 0010 C38F     		ldrh	r3, [r0, #62]
 3590 0012 013B     		subs	r3, r3, #1
 3591 0014 9BB2     		uxth	r3, r3
 3592 0016 C387     		strh	r3, [r0, #62]	@ movhi
2856:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 3593              		.loc 1 2856 0
 3594 0018 C38F     		ldrh	r3, [r0, #62]
 3595 001a 9BB2     		uxth	r3, r3
 3596 001c 03B1     		cbz	r3, .L341
 3597              	.LVL307:
 3598              	.L338:
2867:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3599              		.loc 1 2867 0
 3600 001e 08BD     		pop	{r3, pc}
 3601              	.LVL308:
 3602              	.L341:
2865:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 3603              		.loc 1 2865 0
 3604 0020 FFF7FEFF 		bl	SPI_CloseRx_ISR
 3605              	.LVL309:
2867:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3606              		.loc 1 2867 0
 3607 0024 FBE7     		b	.L338
 3608              		.cfi_endproc
 3609              	.LFE110:
 3611              		.section	.text.SPI_CloseRxTx_ISR,"ax",%progbits
 3612              		.align	1
 3613              		.syntax unified
 3614              		.thumb
 3615              		.thumb_func
 3616              		.fpu softvfp
 3618              	SPI_CloseRxTx_ISR:
 3619              	.LFB115:
2994:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t tickstart = 0U;
 3620              		.loc 1 2994 0
 3621              		.cfi_startproc
 3622              		@ args = 0, pretend = 0, frame = 8
 3623              		@ frame_needed = 0, uses_anonymous_args = 0
 3624              	.LVL310:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 131


 3625 0000 10B5     		push	{r4, lr}
 3626              	.LCFI50:
 3627              		.cfi_def_cfa_offset 8
 3628              		.cfi_offset 4, -8
 3629              		.cfi_offset 14, -4
 3630 0002 82B0     		sub	sp, sp, #8
 3631              	.LCFI51:
 3632              		.cfi_def_cfa_offset 16
 3633 0004 0446     		mov	r4, r0
 3634              	.LVL311:
2996:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Init tickstart for timeout managment*/
 3635              		.loc 1 2996 0
 3636 0006 274B     		ldr	r3, .L354
 3637 0008 1B68     		ldr	r3, [r3]
 3638 000a 274A     		ldr	r2, .L354+4
 3639 000c A2FB0323 		umull	r2, r3, r2, r3
 3640 0010 5B0A     		lsrs	r3, r3, #9
 3641 0012 6422     		movs	r2, #100
 3642 0014 02FB03F3 		mul	r3, r2, r3
 3643 0018 0193     		str	r3, [sp, #4]
2998:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3644              		.loc 1 2998 0
 3645 001a FFF7FEFF 		bl	HAL_GetTick
 3646              	.LVL312:
 3647 001e 0246     		mov	r2, r0
 3648              	.LVL313:
3001:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3649              		.loc 1 3001 0
 3650 0020 2168     		ldr	r1, [r4]
 3651 0022 4B68     		ldr	r3, [r1, #4]
 3652 0024 23F02003 		bic	r3, r3, #32
 3653 0028 4B60     		str	r3, [r1, #4]
 3654              	.L345:
3006:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 3655              		.loc 1 3006 0
 3656 002a 019B     		ldr	r3, [sp, #4]
 3657 002c 591E     		subs	r1, r3, #1
 3658 002e 0191     		str	r1, [sp, #4]
 3659 0030 2BB1     		cbz	r3, .L352
3012:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   
 3660              		.loc 1 3012 0
 3661 0032 2368     		ldr	r3, [r4]
 3662 0034 9B68     		ldr	r3, [r3, #8]
 3663 0036 13F0020F 		tst	r3, #2
 3664 003a F6D0     		beq	.L345
 3665 003c 03E0     		b	.L344
 3666              	.L352:
3008:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       break;
 3667              		.loc 1 3008 0
 3668 003e 636D     		ldr	r3, [r4, #84]
 3669 0040 43F02003 		orr	r3, r3, #32
 3670 0044 6365     		str	r3, [r4, #84]
 3671              	.L344:
3015:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 3672              		.loc 1 3015 0
 3673 0046 6421     		movs	r1, #100
 3674 0048 2046     		mov	r0, r4
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 132


 3675              	.LVL314:
 3676 004a FFF7FEFF 		bl	SPI_CheckFlag_BSY
 3677              	.LVL315:
 3678 004e 18B1     		cbz	r0, .L346
3017:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 3679              		.loc 1 3017 0
 3680 0050 636D     		ldr	r3, [r4, #84]
 3681 0052 43F02003 		orr	r3, r3, #32
 3682 0056 6365     		str	r3, [r4, #84]
 3683              	.L346:
3021:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 3684              		.loc 1 3021 0
 3685 0058 A368     		ldr	r3, [r4, #8]
 3686 005a 33B9     		cbnz	r3, .L347
 3687              	.LBB7:
3023:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 3688              		.loc 1 3023 0
 3689 005c 0093     		str	r3, [sp]
 3690 005e 2368     		ldr	r3, [r4]
 3691 0060 DA68     		ldr	r2, [r3, #12]
 3692 0062 0092     		str	r2, [sp]
 3693 0064 9B68     		ldr	r3, [r3, #8]
 3694 0066 0093     		str	r3, [sp]
 3695 0068 009B     		ldr	r3, [sp]
 3696              	.L347:
 3697              	.LBE7:
3049:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 3698              		.loc 1 3049 0
 3699 006a 636D     		ldr	r3, [r4, #84]
 3700 006c 9BB9     		cbnz	r3, .L348
3051:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 3701              		.loc 1 3051 0
 3702 006e 94F85130 		ldrb	r3, [r4, #81]	@ zero_extendqisi2
 3703 0072 DBB2     		uxtb	r3, r3
 3704 0074 042B     		cmp	r3, #4
 3705 0076 07D0     		beq	.L353
3058:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         HAL_SPI_TxRxCpltCallback(hspi);
 3706              		.loc 1 3058 0
 3707 0078 0123     		movs	r3, #1
 3708 007a 84F85130 		strb	r3, [r4, #81]
3059:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 3709              		.loc 1 3059 0
 3710 007e 2046     		mov	r0, r4
 3711 0080 FFF7FEFF 		bl	HAL_SPI_TxRxCpltCallback
 3712              	.LVL316:
 3713              	.L342:
3070:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3714              		.loc 1 3070 0
 3715 0084 02B0     		add	sp, sp, #8
 3716              	.LCFI52:
 3717              		.cfi_remember_state
 3718              		.cfi_def_cfa_offset 8
 3719              		@ sp needed
 3720 0086 10BD     		pop	{r4, pc}
 3721              	.LVL317:
 3722              	.L353:
 3723              	.LCFI53:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 133


 3724              		.cfi_restore_state
3053:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         HAL_SPI_RxCpltCallback(hspi);
 3725              		.loc 1 3053 0
 3726 0088 0123     		movs	r3, #1
 3727 008a 84F85130 		strb	r3, [r4, #81]
3054:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 3728              		.loc 1 3054 0
 3729 008e 2046     		mov	r0, r4
 3730 0090 FFF7FEFF 		bl	HAL_SPI_RxCpltCallback
 3731              	.LVL318:
 3732 0094 F6E7     		b	.L342
 3733              	.L348:
3064:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       HAL_SPI_ErrorCallback(hspi);
 3734              		.loc 1 3064 0
 3735 0096 0123     		movs	r3, #1
 3736 0098 84F85130 		strb	r3, [r4, #81]
3065:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 3737              		.loc 1 3065 0
 3738 009c 2046     		mov	r0, r4
 3739 009e FFF7FEFF 		bl	HAL_SPI_ErrorCallback
 3740              	.LVL319:
3070:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3741              		.loc 1 3070 0
 3742 00a2 EFE7     		b	.L342
 3743              	.L355:
 3744              		.align	2
 3745              	.L354:
 3746 00a4 00000000 		.word	SystemCoreClock
 3747 00a8 F1197605 		.word	91625969
 3748              		.cfi_endproc
 3749              	.LFE115:
 3751              		.section	.text.SPI_2linesTxISR_8BIT,"ax",%progbits
 3752              		.align	1
 3753              		.syntax unified
 3754              		.thumb
 3755              		.thumb_func
 3756              		.fpu softvfp
 3758              	SPI_2linesTxISR_8BIT:
 3759              	.LFB106:
2640:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *(__IO uint8_t *)&hspi->Instance->DR = (*hspi->pTxBuffPtr++);
 3760              		.loc 1 2640 0
 3761              		.cfi_startproc
 3762              		@ args = 0, pretend = 0, frame = 0
 3763              		@ frame_needed = 0, uses_anonymous_args = 0
 3764              	.LVL320:
 3765 0000 08B5     		push	{r3, lr}
 3766              	.LCFI54:
 3767              		.cfi_def_cfa_offset 8
 3768              		.cfi_offset 3, -8
 3769              		.cfi_offset 14, -4
2641:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount--;
 3770              		.loc 1 2641 0
 3771 0002 036B     		ldr	r3, [r0, #48]
 3772 0004 5A1C     		adds	r2, r3, #1
 3773 0006 0263     		str	r2, [r0, #48]
 3774 0008 0268     		ldr	r2, [r0]
 3775 000a 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 134


 3776 000c 1373     		strb	r3, [r2, #12]
2642:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3777              		.loc 1 2642 0
 3778 000e C38E     		ldrh	r3, [r0, #54]
 3779 0010 013B     		subs	r3, r3, #1
 3780 0012 9BB2     		uxth	r3, r3
 3781 0014 C386     		strh	r3, [r0, #54]	@ movhi
2645:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 3782              		.loc 1 2645 0
 3783 0016 C38E     		ldrh	r3, [r0, #54]
 3784 0018 9BB2     		uxth	r3, r3
 3785 001a 3BB9     		cbnz	r3, .L356
2657:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3786              		.loc 1 2657 0
 3787 001c 0268     		ldr	r2, [r0]
 3788 001e 5368     		ldr	r3, [r2, #4]
 3789 0020 23F08003 		bic	r3, r3, #128
 3790 0024 5360     		str	r3, [r2, #4]
2659:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 3791              		.loc 1 2659 0
 3792 0026 C38F     		ldrh	r3, [r0, #62]
 3793 0028 9BB2     		uxth	r3, r3
 3794 002a 03B1     		cbz	r3, .L359
 3795              	.LVL321:
 3796              	.L356:
2664:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3797              		.loc 1 2664 0
 3798 002c 08BD     		pop	{r3, pc}
 3799              	.LVL322:
 3800              	.L359:
2661:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 3801              		.loc 1 2661 0
 3802 002e FFF7FEFF 		bl	SPI_CloseRxTx_ISR
 3803              	.LVL323:
2664:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3804              		.loc 1 2664 0
 3805 0032 FBE7     		b	.L356
 3806              		.cfi_endproc
 3807              	.LFE106:
 3809              		.section	.text.SPI_2linesRxISR_8BIT,"ax",%progbits
 3810              		.align	1
 3811              		.syntax unified
 3812              		.thumb
 3813              		.thumb_func
 3814              		.fpu softvfp
 3816              	SPI_2linesRxISR_8BIT:
 3817              	.LFB105:
2579:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Receive data in 8bit mode */
 3818              		.loc 1 2579 0
 3819              		.cfi_startproc
 3820              		@ args = 0, pretend = 0, frame = 0
 3821              		@ frame_needed = 0, uses_anonymous_args = 0
 3822              	.LVL324:
 3823 0000 08B5     		push	{r3, lr}
 3824              	.LCFI55:
 3825              		.cfi_def_cfa_offset 8
 3826              		.cfi_offset 3, -8
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 135


 3827              		.cfi_offset 14, -4
2581:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount--;
 3828              		.loc 1 2581 0
 3829 0002 0268     		ldr	r2, [r0]
 3830 0004 836B     		ldr	r3, [r0, #56]
 3831 0006 591C     		adds	r1, r3, #1
 3832 0008 8163     		str	r1, [r0, #56]
 3833 000a 127B     		ldrb	r2, [r2, #12]	@ zero_extendqisi2
 3834 000c 1A70     		strb	r2, [r3]
2582:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3835              		.loc 1 2582 0
 3836 000e C38F     		ldrh	r3, [r0, #62]
 3837 0010 013B     		subs	r3, r3, #1
 3838 0012 9BB2     		uxth	r3, r3
 3839 0014 C387     		strh	r3, [r0, #62]	@ movhi
2585:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 3840              		.loc 1 2585 0
 3841 0016 C38F     		ldrh	r3, [r0, #62]
 3842 0018 9BB2     		uxth	r3, r3
 3843 001a 3BB9     		cbnz	r3, .L360
2596:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3844              		.loc 1 2596 0
 3845 001c 0268     		ldr	r2, [r0]
 3846 001e 5368     		ldr	r3, [r2, #4]
 3847 0020 23F06003 		bic	r3, r3, #96
 3848 0024 5360     		str	r3, [r2, #4]
2598:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 3849              		.loc 1 2598 0
 3850 0026 C38E     		ldrh	r3, [r0, #54]
 3851 0028 9BB2     		uxth	r3, r3
 3852 002a 03B1     		cbz	r3, .L363
 3853              	.LVL325:
 3854              	.L360:
2603:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3855              		.loc 1 2603 0
 3856 002c 08BD     		pop	{r3, pc}
 3857              	.LVL326:
 3858              	.L363:
2600:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 3859              		.loc 1 2600 0
 3860 002e FFF7FEFF 		bl	SPI_CloseRxTx_ISR
 3861              	.LVL327:
2603:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3862              		.loc 1 2603 0
 3863 0032 FBE7     		b	.L360
 3864              		.cfi_endproc
 3865              	.LFE105:
 3867              		.section	.text.SPI_2linesTxISR_16BIT,"ax",%progbits
 3868              		.align	1
 3869              		.syntax unified
 3870              		.thumb
 3871              		.thumb_func
 3872              		.fpu softvfp
 3874              	SPI_2linesTxISR_16BIT:
 3875              	.LFB108:
2731:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Transmit data in 16 Bit mode */
 3876              		.loc 1 2731 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 136


 3877              		.cfi_startproc
 3878              		@ args = 0, pretend = 0, frame = 0
 3879              		@ frame_needed = 0, uses_anonymous_args = 0
 3880              	.LVL328:
 3881 0000 08B5     		push	{r3, lr}
 3882              	.LCFI56:
 3883              		.cfi_def_cfa_offset 8
 3884              		.cfi_offset 3, -8
 3885              		.cfi_offset 14, -4
2733:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pTxBuffPtr += sizeof(uint16_t);
 3886              		.loc 1 2733 0
 3887 0002 026B     		ldr	r2, [r0, #48]
 3888 0004 0368     		ldr	r3, [r0]
 3889 0006 1288     		ldrh	r2, [r2]
 3890 0008 DA60     		str	r2, [r3, #12]
2734:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount--;
 3891              		.loc 1 2734 0
 3892 000a 036B     		ldr	r3, [r0, #48]
 3893 000c 0233     		adds	r3, r3, #2
 3894 000e 0363     		str	r3, [r0, #48]
2735:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3895              		.loc 1 2735 0
 3896 0010 C38E     		ldrh	r3, [r0, #54]
 3897 0012 013B     		subs	r3, r3, #1
 3898 0014 9BB2     		uxth	r3, r3
 3899 0016 C386     		strh	r3, [r0, #54]	@ movhi
2738:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 3900              		.loc 1 2738 0
 3901 0018 C38E     		ldrh	r3, [r0, #54]
 3902 001a 9BB2     		uxth	r3, r3
 3903 001c 3BB9     		cbnz	r3, .L364
2750:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3904              		.loc 1 2750 0
 3905 001e 0268     		ldr	r2, [r0]
 3906 0020 5368     		ldr	r3, [r2, #4]
 3907 0022 23F08003 		bic	r3, r3, #128
 3908 0026 5360     		str	r3, [r2, #4]
2752:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 3909              		.loc 1 2752 0
 3910 0028 C38F     		ldrh	r3, [r0, #62]
 3911 002a 9BB2     		uxth	r3, r3
 3912 002c 03B1     		cbz	r3, .L367
 3913              	.LVL329:
 3914              	.L364:
2757:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3915              		.loc 1 2757 0
 3916 002e 08BD     		pop	{r3, pc}
 3917              	.LVL330:
 3918              	.L367:
2754:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 3919              		.loc 1 2754 0
 3920 0030 FFF7FEFF 		bl	SPI_CloseRxTx_ISR
 3921              	.LVL331:
2757:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3922              		.loc 1 2757 0
 3923 0034 FBE7     		b	.L364
 3924              		.cfi_endproc
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 137


 3925              	.LFE108:
 3927              		.section	.text.SPI_2linesRxISR_16BIT,"ax",%progbits
 3928              		.align	1
 3929              		.syntax unified
 3930              		.thumb
 3931              		.thumb_func
 3932              		.fpu softvfp
 3934              	SPI_2linesRxISR_16BIT:
 3935              	.LFB107:
2673:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Receive data in 16 Bit mode */
 3936              		.loc 1 2673 0
 3937              		.cfi_startproc
 3938              		@ args = 0, pretend = 0, frame = 0
 3939              		@ frame_needed = 0, uses_anonymous_args = 0
 3940              	.LVL332:
 3941 0000 08B5     		push	{r3, lr}
 3942              	.LCFI57:
 3943              		.cfi_def_cfa_offset 8
 3944              		.cfi_offset 3, -8
 3945              		.cfi_offset 14, -4
2675:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->pRxBuffPtr += sizeof(uint16_t);
 3946              		.loc 1 2675 0
 3947 0002 0368     		ldr	r3, [r0]
 3948 0004 DA68     		ldr	r2, [r3, #12]
 3949 0006 836B     		ldr	r3, [r0, #56]
 3950 0008 1A80     		strh	r2, [r3]	@ movhi
2676:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount--;
 3951              		.loc 1 2676 0
 3952 000a 836B     		ldr	r3, [r0, #56]
 3953 000c 0233     		adds	r3, r3, #2
 3954 000e 8363     		str	r3, [r0, #56]
2677:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3955              		.loc 1 2677 0
 3956 0010 C38F     		ldrh	r3, [r0, #62]
 3957 0012 013B     		subs	r3, r3, #1
 3958 0014 9BB2     		uxth	r3, r3
 3959 0016 C387     		strh	r3, [r0, #62]	@ movhi
2679:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 3960              		.loc 1 2679 0
 3961 0018 C38F     		ldrh	r3, [r0, #62]
 3962 001a 9BB2     		uxth	r3, r3
 3963 001c 3BB9     		cbnz	r3, .L368
2690:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3964              		.loc 1 2690 0
 3965 001e 0268     		ldr	r2, [r0]
 3966 0020 5368     		ldr	r3, [r2, #4]
 3967 0022 23F04003 		bic	r3, r3, #64
 3968 0026 5360     		str	r3, [r2, #4]
2692:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 3969              		.loc 1 2692 0
 3970 0028 C38E     		ldrh	r3, [r0, #54]
 3971 002a 9BB2     		uxth	r3, r3
 3972 002c 03B1     		cbz	r3, .L371
 3973              	.LVL333:
 3974              	.L368:
2697:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3975              		.loc 1 2697 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 138


 3976 002e 08BD     		pop	{r3, pc}
 3977              	.LVL334:
 3978              	.L371:
2694:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 3979              		.loc 1 2694 0
 3980 0030 FFF7FEFF 		bl	SPI_CloseRxTx_ISR
 3981              	.LVL335:
2697:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 3982              		.loc 1 2697 0
 3983 0034 FBE7     		b	.L368
 3984              		.cfi_endproc
 3985              	.LFE107:
 3987              		.section	.text.SPI_DMAError,"ax",%progbits
 3988              		.align	1
 3989              		.syntax unified
 3990              		.thumb
 3991              		.thumb_func
 3992              		.fpu softvfp
 3994              	SPI_DMAError:
 3995              	.LFB101:
2448:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SPI_HandleTypeDef* hspi = (SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
 3996              		.loc 1 2448 0
 3997              		.cfi_startproc
 3998              		@ args = 0, pretend = 0, frame = 0
 3999              		@ frame_needed = 0, uses_anonymous_args = 0
 4000              	.LVL336:
 4001 0000 08B5     		push	{r3, lr}
 4002              	.LCFI58:
 4003              		.cfi_def_cfa_offset 8
 4004              		.cfi_offset 3, -8
 4005              		.cfi_offset 14, -4
2449:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4006              		.loc 1 2449 0
 4007 0002 406A     		ldr	r0, [r0, #36]
 4008              	.LVL337:
2452:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4009              		.loc 1 2452 0
 4010 0004 0268     		ldr	r2, [r0]
 4011 0006 5368     		ldr	r3, [r2, #4]
 4012 0008 23F00303 		bic	r3, r3, #3
 4013 000c 5360     		str	r3, [r2, #4]
2454:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->State = HAL_SPI_STATE_READY;
 4014              		.loc 1 2454 0
 4015 000e 436D     		ldr	r3, [r0, #84]
 4016 0010 43F01003 		orr	r3, r3, #16
 4017 0014 4365     		str	r3, [r0, #84]
2455:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   HAL_SPI_ErrorCallback(hspi);
 4018              		.loc 1 2455 0
 4019 0016 0123     		movs	r3, #1
 4020 0018 80F85130 		strb	r3, [r0, #81]
2456:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
 4021              		.loc 1 2456 0
 4022 001c FFF7FEFF 		bl	HAL_SPI_ErrorCallback
 4023              	.LVL338:
2457:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4024              		.loc 1 2457 0
 4025 0020 08BD     		pop	{r3, pc}
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 139


 4026              		.cfi_endproc
 4027              	.LFE101:
 4029              		.section	.text.SPI_DMATransmitCplt,"ax",%progbits
 4030              		.align	1
 4031              		.syntax unified
 4032              		.thumb
 4033              		.thumb_func
 4034              		.fpu softvfp
 4036              	SPI_DMATransmitCplt:
 4037              	.LFB95:
2214:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SPI_HandleTypeDef* hspi = ( SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
 4038              		.loc 1 2214 0
 4039              		.cfi_startproc
 4040              		@ args = 0, pretend = 0, frame = 8
 4041              		@ frame_needed = 0, uses_anonymous_args = 0
 4042              	.LVL339:
 4043 0000 30B5     		push	{r4, r5, lr}
 4044              	.LCFI59:
 4045              		.cfi_def_cfa_offset 12
 4046              		.cfi_offset 4, -12
 4047              		.cfi_offset 5, -8
 4048              		.cfi_offset 14, -4
 4049 0002 83B0     		sub	sp, sp, #12
 4050              	.LCFI60:
 4051              		.cfi_def_cfa_offset 24
 4052 0004 0546     		mov	r5, r0
2215:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t tickstart = 0U;
 4053              		.loc 1 2215 0
 4054 0006 446A     		ldr	r4, [r0, #36]
 4055              	.LVL340:
2219:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4056              		.loc 1 2219 0
 4057 0008 FFF7FEFF 		bl	HAL_GetTick
 4058              	.LVL341:
2222:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 4059              		.loc 1 2222 0
 4060 000c 2B68     		ldr	r3, [r5]
 4061 000e 1B68     		ldr	r3, [r3]
 4062 0010 13F0200F 		tst	r3, #32
 4063 0014 1ED1     		bne	.L375
2225:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4064              		.loc 1 2225 0
 4065 0016 2268     		ldr	r2, [r4]
 4066 0018 5368     		ldr	r3, [r2, #4]
 4067 001a 23F00203 		bic	r3, r3, #2
 4068 001e 5360     		str	r3, [r2, #4]
2228:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 4069              		.loc 1 2228 0
 4070 0020 0246     		mov	r2, r0
 4071 0022 6421     		movs	r1, #100
 4072 0024 2046     		mov	r0, r4
 4073              	.LVL342:
 4074 0026 FFF7FEFF 		bl	SPI_CheckFlag_BSY
 4075              	.LVL343:
 4076 002a 18B1     		cbz	r0, .L376
2230:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 4077              		.loc 1 2230 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 140


 4078 002c 636D     		ldr	r3, [r4, #84]
 4079 002e 43F02003 		orr	r3, r3, #32
 4080 0032 6365     		str	r3, [r4, #84]
 4081              	.L376:
2234:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 4082              		.loc 1 2234 0
 4083 0034 A368     		ldr	r3, [r4, #8]
 4084 0036 33B9     		cbnz	r3, .L377
 4085              	.LBB8:
2236:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 4086              		.loc 1 2236 0
 4087 0038 0193     		str	r3, [sp, #4]
 4088 003a 2368     		ldr	r3, [r4]
 4089 003c DA68     		ldr	r2, [r3, #12]
 4090 003e 0192     		str	r2, [sp, #4]
 4091 0040 9B68     		ldr	r3, [r3, #8]
 4092 0042 0193     		str	r3, [sp, #4]
 4093 0044 019B     		ldr	r3, [sp, #4]
 4094              	.L377:
 4095              	.LBE8:
2239:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->State = HAL_SPI_STATE_READY;
 4096              		.loc 1 2239 0
 4097 0046 0023     		movs	r3, #0
 4098 0048 E386     		strh	r3, [r4, #54]	@ movhi
2240:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4099              		.loc 1 2240 0
 4100 004a 0123     		movs	r3, #1
 4101 004c 84F85130 		strb	r3, [r4, #81]
2242:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 4102              		.loc 1 2242 0
 4103 0050 636D     		ldr	r3, [r4, #84]
 4104 0052 23B9     		cbnz	r3, .L380
 4105              	.L375:
2248:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
 4106              		.loc 1 2248 0
 4107 0054 2046     		mov	r0, r4
 4108 0056 FFF7FEFF 		bl	HAL_SPI_TxCpltCallback
 4109              	.LVL344:
 4110              	.L374:
2249:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4111              		.loc 1 2249 0
 4112 005a 03B0     		add	sp, sp, #12
 4113              	.LCFI61:
 4114              		.cfi_remember_state
 4115              		.cfi_def_cfa_offset 12
 4116              		@ sp needed
 4117 005c 30BD     		pop	{r4, r5, pc}
 4118              	.LVL345:
 4119              	.L380:
 4120              	.LCFI62:
 4121              		.cfi_restore_state
2244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       return;
 4122              		.loc 1 2244 0
 4123 005e 2046     		mov	r0, r4
 4124 0060 FFF7FEFF 		bl	HAL_SPI_ErrorCallback
 4125              	.LVL346:
2245:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 141


 4126              		.loc 1 2245 0
 4127 0064 F9E7     		b	.L374
 4128              		.cfi_endproc
 4129              	.LFE95:
 4131              		.section	.text.SPI_DMAReceiveCplt,"ax",%progbits
 4132              		.align	1
 4133              		.syntax unified
 4134              		.thumb
 4135              		.thumb_func
 4136              		.fpu softvfp
 4138              	SPI_DMAReceiveCplt:
 4139              	.LFB96:
2258:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SPI_HandleTypeDef* hspi = ( SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
 4140              		.loc 1 2258 0
 4141              		.cfi_startproc
 4142              		@ args = 0, pretend = 0, frame = 0
 4143              		@ frame_needed = 0, uses_anonymous_args = 0
 4144              	.LVL347:
 4145 0000 08B5     		push	{r3, lr}
 4146              	.LCFI63:
 4147              		.cfi_def_cfa_offset 8
 4148              		.cfi_offset 3, -8
 4149              		.cfi_offset 14, -4
2259:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** #if (USE_SPI_CRC != 0U)
 4150              		.loc 1 2259 0
 4151 0002 436A     		ldr	r3, [r0, #36]
 4152              	.LVL348:
2268:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 4153              		.loc 1 2268 0
 4154 0004 0268     		ldr	r2, [r0]
 4155 0006 1268     		ldr	r2, [r2]
 4156 0008 12F0200F 		tst	r2, #32
 4157 000c 0FD1     		bne	.L382
2288:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4158              		.loc 1 2288 0
 4159 000e 1968     		ldr	r1, [r3]
 4160 0010 4A68     		ldr	r2, [r1, #4]
 4161 0012 22F00302 		bic	r2, r2, #3
 4162 0016 4A60     		str	r2, [r1, #4]
2291:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 4163              		.loc 1 2291 0
 4164 0018 5A68     		ldr	r2, [r3, #4]
 4165 001a B2F5827F 		cmp	r2, #260
 4166 001e 0AD0     		beq	.L387
 4167              	.L383:
2297:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->State = HAL_SPI_STATE_READY;
 4168              		.loc 1 2297 0
 4169 0020 0022     		movs	r2, #0
 4170 0022 DA87     		strh	r2, [r3, #62]	@ movhi
2298:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4171              		.loc 1 2298 0
 4172 0024 0122     		movs	r2, #1
 4173 0026 83F85120 		strb	r2, [r3, #81]
2319:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 4174              		.loc 1 2319 0
 4175 002a 5A6D     		ldr	r2, [r3, #84]
 4176 002c 82B9     		cbnz	r2, .L388
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 142


 4177              	.L382:
2325:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
 4178              		.loc 1 2325 0
 4179 002e 1846     		mov	r0, r3
 4180              	.LVL349:
 4181 0030 FFF7FEFF 		bl	HAL_SPI_RxCpltCallback
 4182              	.LVL350:
 4183              	.L381:
2326:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4184              		.loc 1 2326 0
 4185 0034 08BD     		pop	{r3, pc}
 4186              	.LVL351:
 4187              	.L387:
2291:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 4188              		.loc 1 2291 0 discriminator 1
 4189 0036 9A68     		ldr	r2, [r3, #8]
 4190 0038 B2F5004F 		cmp	r2, #32768
 4191 003c 02D0     		beq	.L384
2291:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 4192              		.loc 1 2291 0 is_stmt 0 discriminator 2
 4193 003e B2F5806F 		cmp	r2, #1024
 4194 0042 EDD1     		bne	.L383
 4195              	.L384:
2294:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 4196              		.loc 1 2294 0 is_stmt 1
 4197 0044 1968     		ldr	r1, [r3]
 4198 0046 0A68     		ldr	r2, [r1]
 4199 0048 22F04002 		bic	r2, r2, #64
 4200 004c 0A60     		str	r2, [r1]
 4201 004e E7E7     		b	.L383
 4202              	.L388:
2321:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       return;
 4203              		.loc 1 2321 0
 4204 0050 1846     		mov	r0, r3
 4205              	.LVL352:
 4206 0052 FFF7FEFF 		bl	HAL_SPI_ErrorCallback
 4207              	.LVL353:
2322:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 4208              		.loc 1 2322 0
 4209 0056 EDE7     		b	.L381
 4210              		.cfi_endproc
 4211              	.LFE96:
 4213              		.section	.text.SPI_DMATransmitReceiveCplt,"ax",%progbits
 4214              		.align	1
 4215              		.syntax unified
 4216              		.thumb
 4217              		.thumb_func
 4218              		.fpu softvfp
 4220              	SPI_DMATransmitReceiveCplt:
 4221              	.LFB97:
2335:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SPI_HandleTypeDef* hspi = ( SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
 4222              		.loc 1 2335 0
 4223              		.cfi_startproc
 4224              		@ args = 0, pretend = 0, frame = 0
 4225              		@ frame_needed = 0, uses_anonymous_args = 0
 4226              	.LVL354:
 4227 0000 38B5     		push	{r3, r4, r5, lr}
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 143


 4228              	.LCFI64:
 4229              		.cfi_def_cfa_offset 16
 4230              		.cfi_offset 3, -16
 4231              		.cfi_offset 4, -12
 4232              		.cfi_offset 5, -8
 4233              		.cfi_offset 14, -4
 4234 0002 0546     		mov	r5, r0
2336:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t tickstart = 0U;
 4235              		.loc 1 2336 0
 4236 0004 446A     		ldr	r4, [r0, #36]
 4237              	.LVL355:
2342:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4238              		.loc 1 2342 0
 4239 0006 FFF7FEFF 		bl	HAL_GetTick
 4240              	.LVL356:
2344:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 4241              		.loc 1 2344 0
 4242 000a 2B68     		ldr	r3, [r5]
 4243 000c 1B68     		ldr	r3, [r3]
 4244 000e 13F0200F 		tst	r3, #32
 4245 0012 16D1     		bne	.L390
2362:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 4246              		.loc 1 2362 0
 4247 0014 0246     		mov	r2, r0
 4248 0016 6421     		movs	r1, #100
 4249 0018 2046     		mov	r0, r4
 4250              	.LVL357:
 4251 001a FFF7FEFF 		bl	SPI_CheckFlag_BSY
 4252              	.LVL358:
 4253 001e 18B1     		cbz	r0, .L391
2364:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 4254              		.loc 1 2364 0
 4255 0020 636D     		ldr	r3, [r4, #84]
 4256 0022 43F02003 		orr	r3, r3, #32
 4257 0026 6365     		str	r3, [r4, #84]
 4258              	.L391:
2368:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4259              		.loc 1 2368 0
 4260 0028 2268     		ldr	r2, [r4]
 4261 002a 5368     		ldr	r3, [r2, #4]
 4262 002c 23F00303 		bic	r3, r3, #3
 4263 0030 5360     		str	r3, [r2, #4]
2370:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->RxXferCount = 0U;
 4264              		.loc 1 2370 0
 4265 0032 0023     		movs	r3, #0
 4266 0034 E386     		strh	r3, [r4, #54]	@ movhi
2371:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->State = HAL_SPI_STATE_READY;
 4267              		.loc 1 2371 0
 4268 0036 E387     		strh	r3, [r4, #62]	@ movhi
2372:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4269              		.loc 1 2372 0
 4270 0038 0123     		movs	r3, #1
 4271 003a 84F85130 		strb	r3, [r4, #81]
2393:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 4272              		.loc 1 2393 0
 4273 003e 636D     		ldr	r3, [r4, #84]
 4274 0040 1BB9     		cbnz	r3, .L394
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 144


 4275              	.L390:
2399:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
 4276              		.loc 1 2399 0
 4277 0042 2046     		mov	r0, r4
 4278 0044 FFF7FEFF 		bl	HAL_SPI_TxRxCpltCallback
 4279              	.LVL359:
 4280              	.L389:
2400:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4281              		.loc 1 2400 0
 4282 0048 38BD     		pop	{r3, r4, r5, pc}
 4283              	.LVL360:
 4284              	.L394:
2395:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       return;
 4285              		.loc 1 2395 0
 4286 004a 2046     		mov	r0, r4
 4287 004c FFF7FEFF 		bl	HAL_SPI_ErrorCallback
 4288              	.LVL361:
2396:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 4289              		.loc 1 2396 0
 4290 0050 FAE7     		b	.L389
 4291              		.cfi_endproc
 4292              	.LFE97:
 4294              		.section	.text.HAL_SPI_IRQHandler,"ax",%progbits
 4295              		.align	1
 4296              		.global	HAL_SPI_IRQHandler
 4297              		.syntax unified
 4298              		.thumb
 4299              		.thumb_func
 4300              		.fpu softvfp
 4302              	HAL_SPI_IRQHandler:
 4303              	.LFB84:
1946:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t itsource = hspi->Instance->CR2;
 4304              		.loc 1 1946 0
 4305              		.cfi_startproc
 4306              		@ args = 0, pretend = 0, frame = 16
 4307              		@ frame_needed = 0, uses_anonymous_args = 0
 4308              	.LVL362:
 4309 0000 10B5     		push	{r4, lr}
 4310              	.LCFI65:
 4311              		.cfi_def_cfa_offset 8
 4312              		.cfi_offset 4, -8
 4313              		.cfi_offset 14, -4
 4314 0002 84B0     		sub	sp, sp, #16
 4315              	.LCFI66:
 4316              		.cfi_def_cfa_offset 24
 4317 0004 0446     		mov	r4, r0
1947:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t itflag   = hspi->Instance->SR;
 4318              		.loc 1 1947 0
 4319 0006 0268     		ldr	r2, [r0]
 4320 0008 5068     		ldr	r0, [r2, #4]
 4321              	.LVL363:
1948:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4322              		.loc 1 1948 0
 4323 000a 9368     		ldr	r3, [r2, #8]
 4324              	.LVL364:
1951:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****      ((itflag & SPI_FLAG_RXNE) != RESET) && ((itsource & SPI_IT_RXNE) != RESET))
 4325              		.loc 1 1951 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 145


 4326 000c 03F04101 		and	r1, r3, #65
 4327 0010 0129     		cmp	r1, #1
 4328 0012 0AD0     		beq	.L405
 4329              	.L396:
1959:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 4330              		.loc 1 1959 0
 4331 0014 13F0020F 		tst	r3, #2
 4332 0018 0ED0     		beq	.L398
1959:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 4333              		.loc 1 1959 0 is_stmt 0 discriminator 1
 4334 001a 10F0800F 		tst	r0, #128
 4335 001e 0BD0     		beq	.L398
1961:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     return;
 4336              		.loc 1 1961 0 is_stmt 1
 4337 0020 636C     		ldr	r3, [r4, #68]
 4338              	.LVL365:
 4339 0022 2046     		mov	r0, r4
 4340              	.LVL366:
 4341 0024 9847     		blx	r3
 4342              	.LVL367:
 4343              	.L395:
2026:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4344              		.loc 1 2026 0
 4345 0026 04B0     		add	sp, sp, #16
 4346              	.LCFI67:
 4347              		.cfi_remember_state
 4348              		.cfi_def_cfa_offset 8
 4349              		@ sp needed
 4350 0028 10BD     		pop	{r4, pc}
 4351              	.LVL368:
 4352              	.L405:
 4353              	.LCFI68:
 4354              		.cfi_restore_state
1952:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 4355              		.loc 1 1952 0
 4356 002a 10F0400F 		tst	r0, #64
 4357 002e F1D0     		beq	.L396
1954:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     return;
 4358              		.loc 1 1954 0
 4359 0030 236C     		ldr	r3, [r4, #64]
 4360              	.LVL369:
 4361 0032 2046     		mov	r0, r4
 4362              	.LVL370:
 4363 0034 9847     		blx	r3
 4364              	.LVL371:
1955:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 4365              		.loc 1 1955 0
 4366 0036 F6E7     		b	.L395
 4367              	.LVL372:
 4368              	.L398:
1966:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 4369              		.loc 1 1966 0
 4370 0038 13F0600F 		tst	r3, #96
 4371 003c F3D0     		beq	.L395
1966:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 4372              		.loc 1 1966 0 is_stmt 0 discriminator 1
 4373 003e 10F0200F 		tst	r0, #32
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 146


 4374 0042 F0D0     		beq	.L395
1969:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 4375              		.loc 1 1969 0 is_stmt 1
 4376 0044 13F0400F 		tst	r3, #64
 4377 0048 0FD0     		beq	.L399
1971:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 4378              		.loc 1 1971 0
 4379 004a 94F85110 		ldrb	r1, [r4, #81]	@ zero_extendqisi2
 4380 004e C9B2     		uxtb	r1, r1
 4381 0050 0329     		cmp	r1, #3
 4382 0052 3DD0     		beq	.L400
1973:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         __HAL_SPI_CLEAR_OVRFLAG(hspi);
 4383              		.loc 1 1973 0
 4384 0054 616D     		ldr	r1, [r4, #84]
 4385 0056 41F00401 		orr	r1, r1, #4
 4386 005a 6165     		str	r1, [r4, #84]
 4387              	.LBB9:
1974:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 4388              		.loc 1 1974 0
 4389 005c 0021     		movs	r1, #0
 4390 005e 0191     		str	r1, [sp, #4]
 4391 0060 D168     		ldr	r1, [r2, #12]
 4392 0062 0191     		str	r1, [sp, #4]
 4393 0064 9168     		ldr	r1, [r2, #8]
 4394 0066 0191     		str	r1, [sp, #4]
 4395 0068 0199     		ldr	r1, [sp, #4]
 4396              	.L399:
 4397              	.LBE9:
1984:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 4398              		.loc 1 1984 0
 4399 006a 13F0200F 		tst	r3, #32
 4400 006e 0CD0     		beq	.L401
1986:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       __HAL_SPI_CLEAR_MODFFLAG(hspi);
 4401              		.loc 1 1986 0
 4402 0070 636D     		ldr	r3, [r4, #84]
 4403              	.LVL373:
 4404 0072 43F00103 		orr	r3, r3, #1
 4405 0076 6365     		str	r3, [r4, #84]
 4406              	.LBB10:
1987:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 4407              		.loc 1 1987 0
 4408 0078 0023     		movs	r3, #0
 4409 007a 0393     		str	r3, [sp, #12]
 4410 007c 9368     		ldr	r3, [r2, #8]
 4411 007e 0393     		str	r3, [sp, #12]
 4412 0080 1368     		ldr	r3, [r2]
 4413 0082 23F04003 		bic	r3, r3, #64
 4414 0086 1360     		str	r3, [r2]
 4415 0088 039B     		ldr	r3, [sp, #12]
 4416              	.L401:
 4417              	.LBE10:
1990:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 4418              		.loc 1 1990 0
 4419 008a 636D     		ldr	r3, [r4, #84]
 4420 008c 002B     		cmp	r3, #0
 4421 008e CAD0     		beq	.L395
1993:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 147


 4422              		.loc 1 1993 0
 4423 0090 2268     		ldr	r2, [r4]
 4424 0092 5368     		ldr	r3, [r2, #4]
 4425 0094 23F0E003 		bic	r3, r3, #224
 4426 0098 5360     		str	r3, [r2, #4]
1995:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       /* Disable the SPI DMA requests if enabled */
 4427              		.loc 1 1995 0
 4428 009a 0123     		movs	r3, #1
 4429 009c 84F85130 		strb	r3, [r4, #81]
1997:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 4430              		.loc 1 1997 0
 4431 00a0 10F0030F 		tst	r0, #3
 4432 00a4 1CD0     		beq	.L402
1999:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4433              		.loc 1 1999 0
 4434 00a6 2268     		ldr	r2, [r4]
 4435 00a8 5368     		ldr	r3, [r2, #4]
 4436 00aa 23F00303 		bic	r3, r3, #3
 4437 00ae 5360     		str	r3, [r2, #4]
2002:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
 4438              		.loc 1 2002 0
 4439 00b0 E36C     		ldr	r3, [r4, #76]
 4440 00b2 23B1     		cbz	r3, .L403
2006:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           HAL_DMA_Abort_IT(hspi->hdmarx);
 4441              		.loc 1 2006 0
 4442 00b4 0C4A     		ldr	r2, .L406
 4443 00b6 5A63     		str	r2, [r3, #52]
2007:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         }
 4444              		.loc 1 2007 0
 4445 00b8 E06C     		ldr	r0, [r4, #76]
 4446              	.LVL374:
 4447 00ba FFF7FEFF 		bl	HAL_DMA_Abort_IT
 4448              	.LVL375:
 4449              	.L403:
2010:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         {
 4450              		.loc 1 2010 0
 4451 00be A36C     		ldr	r3, [r4, #72]
 4452 00c0 002B     		cmp	r3, #0
 4453 00c2 B0D0     		beq	.L395
2014:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****           HAL_DMA_Abort_IT(hspi->hdmatx);
 4454              		.loc 1 2014 0
 4455 00c4 084A     		ldr	r2, .L406
 4456 00c6 5A63     		str	r2, [r3, #52]
2015:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         }
 4457              		.loc 1 2015 0
 4458 00c8 A06C     		ldr	r0, [r4, #72]
 4459 00ca FFF7FEFF 		bl	HAL_DMA_Abort_IT
 4460              	.LVL376:
 4461 00ce AAE7     		b	.L395
 4462              	.LVL377:
 4463              	.L400:
 4464              	.LBB11:
1978:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         return;
 4465              		.loc 1 1978 0
 4466 00d0 0023     		movs	r3, #0
 4467              	.LVL378:
 4468 00d2 0293     		str	r3, [sp, #8]
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 148


 4469 00d4 D368     		ldr	r3, [r2, #12]
 4470 00d6 0293     		str	r3, [sp, #8]
 4471 00d8 9368     		ldr	r3, [r2, #8]
 4472 00da 0293     		str	r3, [sp, #8]
 4473 00dc 029B     		ldr	r3, [sp, #8]
 4474              	.LBE11:
1979:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 4475              		.loc 1 1979 0
 4476 00de A2E7     		b	.L395
 4477              	.L402:
2021:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 4478              		.loc 1 2021 0
 4479 00e0 2046     		mov	r0, r4
 4480              	.LVL379:
 4481 00e2 FFF7FEFF 		bl	HAL_SPI_ErrorCallback
 4482              	.LVL380:
 4483 00e6 9EE7     		b	.L395
 4484              	.L407:
 4485              		.align	2
 4486              	.L406:
 4487 00e8 00000000 		.word	SPI_DMAAbortOnError
 4488              		.cfi_endproc
 4489              	.LFE84:
 4491              		.section	.text.SPI_DMAAbortOnError,"ax",%progbits
 4492              		.align	1
 4493              		.syntax unified
 4494              		.thumb
 4495              		.thumb_func
 4496              		.fpu softvfp
 4498              	SPI_DMAAbortOnError:
 4499              	.LFB102:
2466:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SPI_HandleTypeDef* hspi = ( SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
 4500              		.loc 1 2466 0
 4501              		.cfi_startproc
 4502              		@ args = 0, pretend = 0, frame = 0
 4503              		@ frame_needed = 0, uses_anonymous_args = 0
 4504              	.LVL381:
 4505 0000 08B5     		push	{r3, lr}
 4506              	.LCFI69:
 4507              		.cfi_def_cfa_offset 8
 4508              		.cfi_offset 3, -8
 4509              		.cfi_offset 14, -4
2467:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->RxXferCount = 0U;
 4510              		.loc 1 2467 0
 4511 0002 406A     		ldr	r0, [r0, #36]
 4512              	.LVL382:
2468:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = 0U;
 4513              		.loc 1 2468 0
 4514 0004 0023     		movs	r3, #0
 4515 0006 C387     		strh	r3, [r0, #62]	@ movhi
2469:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4516              		.loc 1 2469 0
 4517 0008 C386     		strh	r3, [r0, #54]	@ movhi
2471:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
 4518              		.loc 1 2471 0
 4519 000a FFF7FEFF 		bl	HAL_SPI_ErrorCallback
 4520              	.LVL383:
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 149


2472:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4521              		.loc 1 2472 0
 4522 000e 08BD     		pop	{r3, pc}
 4523              		.cfi_endproc
 4524              	.LFE102:
 4526              		.section	.text.HAL_SPI_AbortCpltCallback,"ax",%progbits
 4527              		.align	1
 4528              		.weak	HAL_SPI_AbortCpltCallback
 4529              		.syntax unified
 4530              		.thumb
 4531              		.thumb_func
 4532              		.fpu softvfp
 4534              	HAL_SPI_AbortCpltCallback:
 4535              	.LFB92:
2142:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Prevent unused argument(s) compilation warning */
 4536              		.loc 1 2142 0
 4537              		.cfi_startproc
 4538              		@ args = 0, pretend = 0, frame = 0
 4539              		@ frame_needed = 0, uses_anonymous_args = 0
 4540              		@ link register save eliminated.
 4541              	.LVL384:
2149:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4542              		.loc 1 2149 0
 4543 0000 7047     		bx	lr
 4544              		.cfi_endproc
 4545              	.LFE92:
 4547              		.section	.text.HAL_SPI_Abort_IT,"ax",%progbits
 4548              		.align	1
 4549              		.global	HAL_SPI_Abort_IT
 4550              		.syntax unified
 4551              		.thumb
 4552              		.thumb_func
 4553              		.fpu softvfp
 4555              	HAL_SPI_Abort_IT:
 4556              	.LFB80:
1730:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   uint32_t abortcplt;
 4557              		.loc 1 1730 0
 4558              		.cfi_startproc
 4559              		@ args = 0, pretend = 0, frame = 8
 4560              		@ frame_needed = 0, uses_anonymous_args = 0
 4561              	.LVL385:
 4562 0000 30B5     		push	{r4, r5, lr}
 4563              	.LCFI70:
 4564              		.cfi_def_cfa_offset 12
 4565              		.cfi_offset 4, -12
 4566              		.cfi_offset 5, -8
 4567              		.cfi_offset 14, -4
 4568 0002 83B0     		sub	sp, sp, #12
 4569              	.LCFI71:
 4570              		.cfi_def_cfa_offset 24
 4571 0004 0446     		mov	r4, r0
1734:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 4572              		.loc 1 1734 0
 4573 0006 0368     		ldr	r3, [r0]
 4574 0008 5A68     		ldr	r2, [r3, #4]
 4575 000a 12F0800F 		tst	r2, #128
 4576 000e 01D0     		beq	.L412
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 150


1736:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 4577              		.loc 1 1736 0
 4578 0010 3D4A     		ldr	r2, .L431
 4579 0012 4264     		str	r2, [r0, #68]
 4580              	.L412:
1739:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 4581              		.loc 1 1739 0
 4582 0014 5A68     		ldr	r2, [r3, #4]
 4583 0016 12F0400F 		tst	r2, #64
 4584 001a 01D0     		beq	.L413
1741:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 4585              		.loc 1 1741 0
 4586 001c 3B4A     		ldr	r2, .L431+4
 4587 001e 2264     		str	r2, [r4, #64]
 4588              	.L413:
1745:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4589              		.loc 1 1745 0
 4590 0020 5A68     		ldr	r2, [r3, #4]
 4591 0022 22F02002 		bic	r2, r2, #32
 4592 0026 5A60     		str	r2, [r3, #4]
 4593              	.LVL386:
1752:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 4594              		.loc 1 1752 0
 4595 0028 A36C     		ldr	r3, [r4, #72]
 4596 002a 33B1     		cbz	r3, .L414
1756:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 4597              		.loc 1 1756 0
 4598 002c 2268     		ldr	r2, [r4]
 4599 002e 5268     		ldr	r2, [r2, #4]
 4600 0030 12F0020F 		tst	r2, #2
 4601 0034 1DD0     		beq	.L415
1758:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 4602              		.loc 1 1758 0
 4603 0036 364A     		ldr	r2, .L431+8
 4604 0038 5A63     		str	r2, [r3, #52]
 4605              	.L414:
1766:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 4606              		.loc 1 1766 0
 4607 003a E36C     		ldr	r3, [r4, #76]
 4608 003c 33B1     		cbz	r3, .L416
1770:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 4609              		.loc 1 1770 0
 4610 003e 2268     		ldr	r2, [r4]
 4611 0040 5268     		ldr	r2, [r2, #4]
 4612 0042 12F0010F 		tst	r2, #1
 4613 0046 17D0     		beq	.L417
1772:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 4614              		.loc 1 1772 0
 4615 0048 324A     		ldr	r2, .L431+12
 4616 004a 5A63     		str	r2, [r3, #52]
 4617              	.L416:
1781:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 4618              		.loc 1 1781 0
 4619 004c 2368     		ldr	r3, [r4]
 4620 004e 5A68     		ldr	r2, [r3, #4]
 4621 0050 12F0020F 		tst	r2, #2
 4622 0054 20D0     		beq	.L423
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 151


1781:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 4623              		.loc 1 1781 0 is_stmt 0 discriminator 1
 4624 0056 5B68     		ldr	r3, [r3, #4]
 4625 0058 13F0010F 		tst	r3, #1
 4626 005c 3BD0     		beq	.L424
1784:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 4627              		.loc 1 1784 0 is_stmt 1
 4628 005e A06C     		ldr	r0, [r4, #72]
 4629              	.LVL387:
 4630 0060 68B1     		cbz	r0, .L425
1787:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 4631              		.loc 1 1787 0
 4632 0062 FFF7FEFF 		bl	HAL_DMA_Abort_IT
 4633              	.LVL388:
 4634 0066 A8B1     		cbz	r0, .L426
1789:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 4635              		.loc 1 1789 0
 4636 0068 A36C     		ldr	r3, [r4, #72]
 4637 006a 0022     		movs	r2, #0
 4638 006c 5A63     		str	r2, [r3, #52]
1747:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   
 4639              		.loc 1 1747 0
 4640 006e 0125     		movs	r5, #1
 4641 0070 06E0     		b	.L419
 4642              	.LVL389:
 4643              	.L415:
1762:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 4644              		.loc 1 1762 0
 4645 0072 0022     		movs	r2, #0
 4646 0074 5A63     		str	r2, [r3, #52]
 4647 0076 E0E7     		b	.L414
 4648              	.L417:
1776:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     }
 4649              		.loc 1 1776 0
 4650 0078 0022     		movs	r2, #0
 4651 007a 5A63     		str	r2, [r3, #52]
 4652 007c E6E7     		b	.L416
 4653              	.LVL390:
 4654              	.L425:
1747:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   
 4655              		.loc 1 1747 0
 4656 007e 0125     		movs	r5, #1
 4657              	.L419:
 4658              	.LVL391:
1797:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 4659              		.loc 1 1797 0
 4660 0080 E06C     		ldr	r0, [r4, #76]
 4661 0082 50B1     		cbz	r0, .L418
1800:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 4662              		.loc 1 1800 0
 4663 0084 FFF7FEFF 		bl	HAL_DMA_Abort_IT
 4664              	.LVL392:
 4665 0088 38B3     		cbz	r0, .L427
1802:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****         abortcplt = 1U;
 4666              		.loc 1 1802 0
 4667 008a E36C     		ldr	r3, [r4, #76]
 4668 008c 0022     		movs	r2, #0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 152


 4669 008e 5A63     		str	r2, [r3, #52]
 4670              	.LVL393:
1803:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 4671              		.loc 1 1803 0
 4672 0090 0125     		movs	r5, #1
 4673 0092 02E0     		b	.L418
 4674              	.L426:
1793:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 4675              		.loc 1 1793 0
 4676 0094 0025     		movs	r5, #0
 4677 0096 F3E7     		b	.L419
 4678              	.LVL394:
 4679              	.L423:
1747:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   
 4680              		.loc 1 1747 0
 4681 0098 0125     		movs	r5, #1
 4682              	.LVL395:
 4683              	.L418:
1813:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 4684              		.loc 1 1813 0
 4685 009a 2368     		ldr	r3, [r4]
 4686 009c 5B68     		ldr	r3, [r3, #4]
 4687 009e 13F0020F 		tst	r3, #2
 4688 00a2 07D0     		beq	.L420
1816:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 4689              		.loc 1 1816 0
 4690 00a4 A06C     		ldr	r0, [r4, #72]
 4691 00a6 28B1     		cbz	r0, .L420
1819:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 4692              		.loc 1 1819 0
 4693 00a8 FFF7FEFF 		bl	HAL_DMA_Abort_IT
 4694              	.LVL396:
 4695 00ac B8B1     		cbz	r0, .L428
1821:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 4696              		.loc 1 1821 0
 4697 00ae A36C     		ldr	r3, [r4, #72]
 4698 00b0 0022     		movs	r2, #0
 4699 00b2 5A63     		str	r2, [r3, #52]
 4700              	.LVL397:
 4701              	.L420:
1830:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 4702              		.loc 1 1830 0
 4703 00b4 2368     		ldr	r3, [r4]
 4704 00b6 5B68     		ldr	r3, [r3, #4]
 4705 00b8 13F0010F 		tst	r3, #1
 4706 00bc 07D0     		beq	.L421
1833:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 4707              		.loc 1 1833 0
 4708 00be E06C     		ldr	r0, [r4, #76]
 4709 00c0 28B1     		cbz	r0, .L421
1836:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       {
 4710              		.loc 1 1836 0
 4711 00c2 FFF7FEFF 		bl	HAL_DMA_Abort_IT
 4712              	.LVL398:
 4713 00c6 18B1     		cbz	r0, .L422
1838:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 4714              		.loc 1 1838 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 153


 4715 00c8 E36C     		ldr	r3, [r4, #76]
 4716 00ca 0022     		movs	r2, #0
 4717 00cc 5A63     		str	r2, [r3, #52]
 4718              	.L421:
1847:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 4719              		.loc 1 1847 0
 4720 00ce 45B9     		cbnz	r5, .L430
 4721              	.L422:
1866:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4722              		.loc 1 1866 0
 4723 00d0 0020     		movs	r0, #0
 4724 00d2 03B0     		add	sp, sp, #12
 4725              	.LCFI72:
 4726              		.cfi_remember_state
 4727              		.cfi_def_cfa_offset 12
 4728              		@ sp needed
 4729 00d4 30BD     		pop	{r4, r5, pc}
 4730              	.LVL399:
 4731              	.L424:
 4732              	.LCFI73:
 4733              		.cfi_restore_state
1747:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   
 4734              		.loc 1 1747 0
 4735 00d6 0125     		movs	r5, #1
 4736 00d8 DFE7     		b	.L418
 4737              	.LVL400:
 4738              	.L427:
1807:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 4739              		.loc 1 1807 0
 4740 00da 0025     		movs	r5, #0
 4741              	.LVL401:
 4742 00dc DDE7     		b	.L418
 4743              	.LVL402:
 4744              	.L428:
1825:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       }
 4745              		.loc 1 1825 0
 4746 00de 0025     		movs	r5, #0
 4747              	.LVL403:
 4748 00e0 E8E7     		b	.L420
 4749              	.LVL404:
 4750              	.L430:
1850:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     hspi->TxXferCount = 0U;
 4751              		.loc 1 1850 0
 4752 00e2 0023     		movs	r3, #0
 4753 00e4 E387     		strh	r3, [r4, #62]	@ movhi
1851:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4754              		.loc 1 1851 0
 4755 00e6 E386     		strh	r3, [r4, #54]	@ movhi
1854:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4756              		.loc 1 1854 0
 4757 00e8 6365     		str	r3, [r4, #84]
 4758              	.LBB12:
1857:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4759              		.loc 1 1857 0
 4760 00ea 0193     		str	r3, [sp, #4]
 4761 00ec 2368     		ldr	r3, [r4]
 4762 00ee DA68     		ldr	r2, [r3, #12]
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 154


 4763 00f0 0192     		str	r2, [sp, #4]
 4764 00f2 9B68     		ldr	r3, [r3, #8]
 4765 00f4 0193     		str	r3, [sp, #4]
 4766 00f6 019B     		ldr	r3, [sp, #4]
 4767              	.LBE12:
1860:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4768              		.loc 1 1860 0
 4769 00f8 0123     		movs	r3, #1
 4770 00fa 84F85130 		strb	r3, [r4, #81]
1863:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   }
 4771              		.loc 1 1863 0
 4772 00fe 2046     		mov	r0, r4
 4773 0100 FFF7FEFF 		bl	HAL_SPI_AbortCpltCallback
 4774              	.LVL405:
 4775 0104 E4E7     		b	.L422
 4776              	.L432:
 4777 0106 00BF     		.align	2
 4778              	.L431:
 4779 0108 00000000 		.word	SPI_AbortTx_ISR
 4780 010c 00000000 		.word	SPI_AbortRx_ISR
 4781 0110 00000000 		.word	SPI_DMATxAbortCallback
 4782 0114 00000000 		.word	SPI_DMARxAbortCallback
 4783              		.cfi_endproc
 4784              	.LFE80:
 4786              		.section	.text.SPI_DMARxAbortCallback,"ax",%progbits
 4787              		.align	1
 4788              		.syntax unified
 4789              		.thumb
 4790              		.thumb_func
 4791              		.fpu softvfp
 4793              	SPI_DMARxAbortCallback:
 4794              	.LFB104:
2535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SPI_HandleTypeDef* hspi = ( SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
 4795              		.loc 1 2535 0
 4796              		.cfi_startproc
 4797              		@ args = 0, pretend = 0, frame = 8
 4798              		@ frame_needed = 0, uses_anonymous_args = 0
 4799              	.LVL406:
2536:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4800              		.loc 1 2536 0
 4801 0000 406A     		ldr	r0, [r0, #36]
 4802              	.LVL407:
2539:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4803              		.loc 1 2539 0
 4804 0002 0268     		ldr	r2, [r0]
 4805 0004 1368     		ldr	r3, [r2]
 4806 0006 23F04003 		bic	r3, r3, #64
 4807 000a 1360     		str	r3, [r2]
2541:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4808              		.loc 1 2541 0
 4809 000c C36C     		ldr	r3, [r0, #76]
 4810 000e 0022     		movs	r2, #0
 4811 0010 5A63     		str	r2, [r3, #52]
2544:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4812              		.loc 1 2544 0
 4813 0012 0268     		ldr	r2, [r0]
 4814 0014 5368     		ldr	r3, [r2, #4]
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 155


 4815 0016 23F00103 		bic	r3, r3, #1
 4816 001a 5360     		str	r3, [r2, #4]
2547:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 4817              		.loc 1 2547 0
 4818 001c 836C     		ldr	r3, [r0, #72]
 4819 001e 13B1     		cbz	r3, .L434
2549:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 4820              		.loc 1 2549 0
 4821 0020 5B6B     		ldr	r3, [r3, #52]
 4822 0022 03B1     		cbz	r3, .L434
 4823 0024 7047     		bx	lr
 4824              	.L434:
2535:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SPI_HandleTypeDef* hspi = ( SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
 4825              		.loc 1 2535 0
 4826 0026 00B5     		push	{lr}
 4827              	.LCFI74:
 4828              		.cfi_def_cfa_offset 4
 4829              		.cfi_offset 14, -4
 4830 0028 83B0     		sub	sp, sp, #12
 4831              	.LCFI75:
 4832              		.cfi_def_cfa_offset 16
2556:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = 0U;
 4833              		.loc 1 2556 0
 4834 002a 0023     		movs	r3, #0
 4835 002c C387     		strh	r3, [r0, #62]	@ movhi
2557:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4836              		.loc 1 2557 0
 4837 002e C386     		strh	r3, [r0, #54]	@ movhi
2560:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4838              		.loc 1 2560 0
 4839 0030 4365     		str	r3, [r0, #84]
 4840              	.LBB13:
2563:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4841              		.loc 1 2563 0
 4842 0032 0193     		str	r3, [sp, #4]
 4843 0034 0368     		ldr	r3, [r0]
 4844 0036 DA68     		ldr	r2, [r3, #12]
 4845 0038 0192     		str	r2, [sp, #4]
 4846 003a 9B68     		ldr	r3, [r3, #8]
 4847 003c 0193     		str	r3, [sp, #4]
 4848 003e 019B     		ldr	r3, [sp, #4]
 4849              	.LBE13:
2566:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4850              		.loc 1 2566 0
 4851 0040 0123     		movs	r3, #1
 4852 0042 80F85130 		strb	r3, [r0, #81]
2569:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
 4853              		.loc 1 2569 0
 4854 0046 FFF7FEFF 		bl	HAL_SPI_AbortCpltCallback
 4855              	.LVL408:
2570:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4856              		.loc 1 2570 0
 4857 004a 03B0     		add	sp, sp, #12
 4858              	.LCFI76:
 4859              		.cfi_def_cfa_offset 4
 4860              		@ sp needed
 4861 004c 5DF804FB 		ldr	pc, [sp], #4
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 156


 4862              		.cfi_endproc
 4863              	.LFE104:
 4865              		.section	.text.SPI_DMATxAbortCallback,"ax",%progbits
 4866              		.align	1
 4867              		.syntax unified
 4868              		.thumb
 4869              		.thumb_func
 4870              		.fpu softvfp
 4872              	SPI_DMATxAbortCallback:
 4873              	.LFB103:
2483:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   __IO uint32_t count = SPI_DEFAULT_TIMEOUT * (SystemCoreClock / 24U / 1000U);
 4874              		.loc 1 2483 0
 4875              		.cfi_startproc
 4876              		@ args = 0, pretend = 0, frame = 8
 4877              		@ frame_needed = 0, uses_anonymous_args = 0
 4878              	.LVL409:
 4879 0000 00B5     		push	{lr}
 4880              	.LCFI77:
 4881              		.cfi_def_cfa_offset 4
 4882              		.cfi_offset 14, -4
 4883 0002 83B0     		sub	sp, sp, #12
 4884              	.LCFI78:
 4885              		.cfi_def_cfa_offset 16
2484:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   SPI_HandleTypeDef* hspi = ( SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
 4886              		.loc 1 2484 0
 4887 0004 184B     		ldr	r3, .L447
 4888 0006 1B68     		ldr	r3, [r3]
 4889 0008 184A     		ldr	r2, .L447+4
 4890 000a A2FB0323 		umull	r2, r3, r2, r3
 4891 000e 5B0A     		lsrs	r3, r3, #9
 4892 0010 6422     		movs	r2, #100
 4893 0012 02FB03F3 		mul	r3, r2, r3
 4894 0016 0193     		str	r3, [sp, #4]
2485:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4895              		.loc 1 2485 0
 4896 0018 406A     		ldr	r0, [r0, #36]
 4897              	.LVL410:
2487:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4898              		.loc 1 2487 0
 4899 001a 836C     		ldr	r3, [r0, #72]
 4900 001c 0022     		movs	r2, #0
 4901 001e 5A63     		str	r2, [r3, #52]
2490:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4902              		.loc 1 2490 0
 4903 0020 0268     		ldr	r2, [r0]
 4904 0022 5368     		ldr	r3, [r2, #4]
 4905 0024 23F00203 		bic	r3, r3, #2
 4906 0028 5360     		str	r3, [r2, #4]
 4907              	.L442:
2495:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 4908              		.loc 1 2495 0
 4909 002a 019B     		ldr	r3, [sp, #4]
 4910 002c 5A1E     		subs	r2, r3, #1
 4911 002e 0192     		str	r2, [sp, #4]
 4912 0030 2BB1     		cbz	r3, .L446
2501:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4913              		.loc 1 2501 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 157


 4914 0032 0368     		ldr	r3, [r0]
 4915 0034 9B68     		ldr	r3, [r3, #8]
 4916 0036 13F0020F 		tst	r3, #2
 4917 003a F6D0     		beq	.L442
 4918 003c 03E0     		b	.L441
 4919              	.L446:
2497:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****       break;
 4920              		.loc 1 2497 0
 4921 003e 436D     		ldr	r3, [r0, #84]
 4922 0040 43F02003 		orr	r3, r3, #32
 4923 0044 4365     		str	r3, [r0, #84]
 4924              	.L441:
2504:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   {
 4925              		.loc 1 2504 0
 4926 0046 C36C     		ldr	r3, [r0, #76]
 4927 0048 23B1     		cbz	r3, .L443
2506:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****     {
 4928              		.loc 1 2506 0
 4929 004a 5B6B     		ldr	r3, [r3, #52]
 4930 004c 13B1     		cbz	r3, .L443
 4931              	.LVL411:
 4932              	.L439:
2524:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4933              		.loc 1 2524 0
 4934 004e 03B0     		add	sp, sp, #12
 4935              	.LCFI79:
 4936              		.cfi_remember_state
 4937              		.cfi_def_cfa_offset 4
 4938              		@ sp needed
 4939 0050 5DF804FB 		ldr	pc, [sp], #4
 4940              	.LVL412:
 4941              	.L443:
 4942              	.LCFI80:
 4943              		.cfi_restore_state
2513:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   hspi->TxXferCount = 0U;
 4944              		.loc 1 2513 0
 4945 0054 0023     		movs	r3, #0
 4946 0056 C387     		strh	r3, [r0, #62]	@ movhi
2514:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4947              		.loc 1 2514 0
 4948 0058 C386     		strh	r3, [r0, #54]	@ movhi
2517:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4949              		.loc 1 2517 0
 4950 005a 4365     		str	r3, [r0, #84]
2520:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4951              		.loc 1 2520 0
 4952 005c 0123     		movs	r3, #1
 4953 005e 80F85130 		strb	r3, [r0, #81]
2523:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
 4954              		.loc 1 2523 0
 4955 0062 FFF7FEFF 		bl	HAL_SPI_AbortCpltCallback
 4956              	.LVL413:
 4957 0066 F2E7     		b	.L439
 4958              	.L448:
 4959              		.align	2
 4960              	.L447:
 4961 0068 00000000 		.word	SystemCoreClock
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 158


 4962 006c F1197605 		.word	91625969
 4963              		.cfi_endproc
 4964              	.LFE103:
 4966              		.section	.text.HAL_SPI_GetState,"ax",%progbits
 4967              		.align	1
 4968              		.global	HAL_SPI_GetState
 4969              		.syntax unified
 4970              		.thumb
 4971              		.thumb_func
 4972              		.fpu softvfp
 4974              	HAL_SPI_GetState:
 4975              	.LFB93:
2177:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Return SPI handle state */
 4976              		.loc 1 2177 0
 4977              		.cfi_startproc
 4978              		@ args = 0, pretend = 0, frame = 0
 4979              		@ frame_needed = 0, uses_anonymous_args = 0
 4980              		@ link register save eliminated.
 4981              	.LVL414:
2179:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
 4982              		.loc 1 2179 0
 4983 0000 90F85100 		ldrb	r0, [r0, #81]	@ zero_extendqisi2
 4984              	.LVL415:
2180:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 4985              		.loc 1 2180 0
 4986 0004 7047     		bx	lr
 4987              		.cfi_endproc
 4988              	.LFE93:
 4990              		.section	.text.HAL_SPI_GetError,"ax",%progbits
 4991              		.align	1
 4992              		.global	HAL_SPI_GetError
 4993              		.syntax unified
 4994              		.thumb
 4995              		.thumb_func
 4996              		.fpu softvfp
 4998              	HAL_SPI_GetError:
 4999              	.LFB94:
2189:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Return SPI ErrorCode */
 5000              		.loc 1 2189 0
 5001              		.cfi_startproc
 5002              		@ args = 0, pretend = 0, frame = 0
 5003              		@ frame_needed = 0, uses_anonymous_args = 0
 5004              		@ link register save eliminated.
 5005              	.LVL416:
2191:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
 5006              		.loc 1 2191 0
 5007 0000 406D     		ldr	r0, [r0, #84]
 5008              	.LVL417:
2192:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
 5009              		.loc 1 2192 0
 5010 0002 7047     		bx	lr
 5011              		.cfi_endproc
 5012              	.LFE94:
 5014              		.section	.text.SPI_ISCRCErrorValid,"ax",%progbits
 5015              		.align	1
 5016              		.weak	SPI_ISCRCErrorValid
 5017              		.syntax unified
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 159


 5018              		.thumb
 5019              		.thumb_func
 5020              		.fpu softvfp
 5022              	SPI_ISCRCErrorValid:
 5023              	.LFB120:
3236:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** 
3237:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** /**
3238:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @brief  Checks if encountered CRC error could be corresponding to wrongly detected errors 
3239:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *         according to SPI instance, Device type, and revision ID.
3240:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
3241:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   *               the configuration information for SPI module.
3242:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   * @retval CRC error validity (SPI_INVALID_CRC_ERROR or SPI_VALID_CRC_ERROR).  
3243:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** */
3244:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** __weak uint8_t SPI_ISCRCErrorValid(SPI_HandleTypeDef *hspi)
3245:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** {
 5024              		.loc 1 3245 0
 5025              		.cfi_startproc
 5026              		@ args = 0, pretend = 0, frame = 0
 5027              		@ frame_needed = 0, uses_anonymous_args = 0
 5028              		@ link register save eliminated.
 5029              	.LVL418:
3246:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   /* Prevent unused argument(s) compilation warning */
3247:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   UNUSED(hspi);
3248:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   
3249:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c ****   return (SPI_VALID_CRC_ERROR);
3250:Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c **** }
 5030              		.loc 1 3250 0
 5031 0000 0120     		movs	r0, #1
 5032              	.LVL419:
 5033 0002 7047     		bx	lr
 5034              		.cfi_endproc
 5035              	.LFE120:
 5037              		.text
 5038              	.Letext0:
 5039              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 5040              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 5041              		.file 4 "Drivers/CMSIS/Include/core_cm3.h"
 5042              		.file 5 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/system_stm32f1xx.h"
 5043              		.file 6 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
 5044              		.file 7 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 5045              		.file 8 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 5046              		.file 9 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\lib\\gcc\\arm-none-eab
 5047              		.file 10 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\includ
 5048              		.file 11 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"
 5049              		.file 12 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"
 5050              		.file 13 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma.h"
 5051              		.file 14 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_spi.h"
 5052              		.file 15 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 160


DEFINED SYMBOLS
                            *ABS*:00000000 stm32f1xx_hal_spi.c
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:16     .text.SPI_AbortRx_ISR:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:22     .text.SPI_AbortRx_ISR:00000000 SPI_AbortRx_ISR
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:89     .text.SPI_AbortRx_ISR:00000058 $d
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:95     .text.SPI_AbortTx_ISR:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:101    .text.SPI_AbortTx_ISR:00000000 SPI_AbortTx_ISR
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:125    .text.SPI_WaitFlagStateUntilTimeout:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:131    .text.SPI_WaitFlagStateUntilTimeout:00000000 SPI_WaitFlagStateUntilTimeout
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:245    .text.SPI_CheckFlag_BSY:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:251    .text.SPI_CheckFlag_BSY:00000000 SPI_CheckFlag_BSY
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:302    .text.HAL_SPI_MspInit:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:309    .text.HAL_SPI_MspInit:00000000 HAL_SPI_MspInit
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:323    .text.HAL_SPI_Init:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:330    .text.HAL_SPI_Init:00000000 HAL_SPI_Init
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:428    .text.HAL_SPI_MspDeInit:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:435    .text.HAL_SPI_MspDeInit:00000000 HAL_SPI_MspDeInit
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:449    .text.HAL_SPI_DeInit:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:456    .text.HAL_SPI_DeInit:00000000 HAL_SPI_DeInit
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:507    .text.HAL_SPI_Transmit:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:514    .text.HAL_SPI_Transmit:00000000 HAL_SPI_Transmit
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:833    .text.HAL_SPI_TransmitReceive:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:840    .text.HAL_SPI_TransmitReceive:00000000 HAL_SPI_TransmitReceive
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:1274   .text.HAL_SPI_Receive:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:1281   .text.HAL_SPI_Receive:00000000 HAL_SPI_Receive
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:1558   .text.HAL_SPI_Transmit_IT:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:1565   .text.HAL_SPI_Transmit_IT:00000000 HAL_SPI_Transmit_IT
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:1703   .text.HAL_SPI_Transmit_IT:000000a8 $d
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3379   .text.SPI_TxISR_16BIT:00000000 SPI_TxISR_16BIT
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3330   .text.SPI_TxISR_8BIT:00000000 SPI_TxISR_8BIT
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:1709   .text.HAL_SPI_TransmitReceive_IT:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:1716   .text.HAL_SPI_TransmitReceive_IT:00000000 HAL_SPI_TransmitReceive_IT
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:1899   .text.HAL_SPI_TransmitReceive_IT:000000bc $d
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3934   .text.SPI_2linesRxISR_16BIT:00000000 SPI_2linesRxISR_16BIT
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3874   .text.SPI_2linesTxISR_16BIT:00000000 SPI_2linesTxISR_16BIT
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3816   .text.SPI_2linesRxISR_8BIT:00000000 SPI_2linesRxISR_8BIT
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3758   .text.SPI_2linesTxISR_8BIT:00000000 SPI_2linesTxISR_8BIT
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:1907   .text.HAL_SPI_Receive_IT:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:1914   .text.HAL_SPI_Receive_IT:00000000 HAL_SPI_Receive_IT
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:2067   .text.HAL_SPI_Receive_IT:000000b4 $d
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3567   .text.SPI_RxISR_16BIT:00000000 SPI_RxISR_16BIT
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3518   .text.SPI_RxISR_8BIT:00000000 SPI_RxISR_8BIT
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:2073   .text.HAL_SPI_Transmit_DMA:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:2080   .text.HAL_SPI_Transmit_DMA:00000000 HAL_SPI_Transmit_DMA
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:2235   .text.HAL_SPI_Transmit_DMA:000000b8 $d
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3055   .text.SPI_DMAHalfTransmitCplt:00000000 SPI_DMAHalfTransmitCplt
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:4036   .text.SPI_DMATransmitCplt:00000000 SPI_DMATransmitCplt
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3994   .text.SPI_DMAError:00000000 SPI_DMAError
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:2242   .text.HAL_SPI_TransmitReceive_DMA:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:2249   .text.HAL_SPI_TransmitReceive_DMA:00000000 HAL_SPI_TransmitReceive_DMA
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:2480   .text.HAL_SPI_TransmitReceive_DMA:00000114 $d
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3157   .text.SPI_DMAHalfTransmitReceiveCplt:00000000 SPI_DMAHalfTransmitReceiveCplt
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:4220   .text.SPI_DMATransmitReceiveCplt:00000000 SPI_DMATransmitReceiveCplt
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3106   .text.SPI_DMAHalfReceiveCplt:00000000 SPI_DMAHalfReceiveCplt
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:4138   .text.SPI_DMAReceiveCplt:00000000 SPI_DMAReceiveCplt
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:2489   .text.HAL_SPI_Receive_DMA:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:2496   .text.HAL_SPI_Receive_DMA:00000000 HAL_SPI_Receive_DMA
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 161


C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:2662   .text.HAL_SPI_Receive_DMA:000000d0 $d
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:2669   .text.HAL_SPI_Abort:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:2676   .text.HAL_SPI_Abort:00000000 HAL_SPI_Abort
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:2817   .text.HAL_SPI_Abort:000000c4 $d
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:2825   .text.HAL_SPI_DMAPause:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:2832   .text.HAL_SPI_DMAPause:00000000 HAL_SPI_DMAPause
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:2870   .text.HAL_SPI_DMAResume:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:2877   .text.HAL_SPI_DMAResume:00000000 HAL_SPI_DMAResume
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:2915   .text.HAL_SPI_DMAStop:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:2922   .text.HAL_SPI_DMAStop:00000000 HAL_SPI_DMAStop
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:2965   .text.HAL_SPI_TxCpltCallback:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:2972   .text.HAL_SPI_TxCpltCallback:00000000 HAL_SPI_TxCpltCallback
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:2986   .text.HAL_SPI_RxCpltCallback:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:2993   .text.HAL_SPI_RxCpltCallback:00000000 HAL_SPI_RxCpltCallback
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3007   .text.HAL_SPI_TxRxCpltCallback:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3014   .text.HAL_SPI_TxRxCpltCallback:00000000 HAL_SPI_TxRxCpltCallback
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3028   .text.HAL_SPI_TxHalfCpltCallback:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3035   .text.HAL_SPI_TxHalfCpltCallback:00000000 HAL_SPI_TxHalfCpltCallback
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3049   .text.SPI_DMAHalfTransmitCplt:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3079   .text.HAL_SPI_RxHalfCpltCallback:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3086   .text.HAL_SPI_RxHalfCpltCallback:00000000 HAL_SPI_RxHalfCpltCallback
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3100   .text.SPI_DMAHalfReceiveCplt:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3130   .text.HAL_SPI_TxRxHalfCpltCallback:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3137   .text.HAL_SPI_TxRxHalfCpltCallback:00000000 HAL_SPI_TxRxHalfCpltCallback
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3151   .text.SPI_DMAHalfTransmitReceiveCplt:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3181   .text.HAL_SPI_ErrorCallback:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3188   .text.HAL_SPI_ErrorCallback:00000000 HAL_SPI_ErrorCallback
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3202   .text.SPI_CloseTx_ISR:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3208   .text.SPI_CloseTx_ISR:00000000 SPI_CloseTx_ISR
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3318   .text.SPI_CloseTx_ISR:00000088 $d
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3324   .text.SPI_TxISR_8BIT:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3373   .text.SPI_TxISR_16BIT:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3424   .text.SPI_CloseRx_ISR:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3430   .text.SPI_CloseRx_ISR:00000000 SPI_CloseRx_ISR
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3512   .text.SPI_RxISR_8BIT:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3561   .text.SPI_RxISR_16BIT:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3612   .text.SPI_CloseRxTx_ISR:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3618   .text.SPI_CloseRxTx_ISR:00000000 SPI_CloseRxTx_ISR
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3746   .text.SPI_CloseRxTx_ISR:000000a4 $d
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3752   .text.SPI_2linesTxISR_8BIT:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3810   .text.SPI_2linesRxISR_8BIT:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3868   .text.SPI_2linesTxISR_16BIT:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3928   .text.SPI_2linesRxISR_16BIT:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:3988   .text.SPI_DMAError:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:4030   .text.SPI_DMATransmitCplt:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:4132   .text.SPI_DMAReceiveCplt:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:4214   .text.SPI_DMATransmitReceiveCplt:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:4295   .text.HAL_SPI_IRQHandler:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:4302   .text.HAL_SPI_IRQHandler:00000000 HAL_SPI_IRQHandler
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:4487   .text.HAL_SPI_IRQHandler:000000e8 $d
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:4498   .text.SPI_DMAAbortOnError:00000000 SPI_DMAAbortOnError
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:4492   .text.SPI_DMAAbortOnError:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:4527   .text.HAL_SPI_AbortCpltCallback:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:4534   .text.HAL_SPI_AbortCpltCallback:00000000 HAL_SPI_AbortCpltCallback
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:4548   .text.HAL_SPI_Abort_IT:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:4555   .text.HAL_SPI_Abort_IT:00000000 HAL_SPI_Abort_IT
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:4779   .text.HAL_SPI_Abort_IT:00000108 $d
ARM GAS  C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s 			page 162


C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:4872   .text.SPI_DMATxAbortCallback:00000000 SPI_DMATxAbortCallback
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:4793   .text.SPI_DMARxAbortCallback:00000000 SPI_DMARxAbortCallback
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:4787   .text.SPI_DMARxAbortCallback:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:4866   .text.SPI_DMATxAbortCallback:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:4961   .text.SPI_DMATxAbortCallback:00000068 $d
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:4967   .text.HAL_SPI_GetState:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:4974   .text.HAL_SPI_GetState:00000000 HAL_SPI_GetState
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:4991   .text.HAL_SPI_GetError:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:4998   .text.HAL_SPI_GetError:00000000 HAL_SPI_GetError
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:5015   .text.SPI_ISCRCErrorValid:00000000 $t
C:\Users\crist\AppData\Local\Temp\cc9xLBAF.s:5022   .text.SPI_ISCRCErrorValid:00000000 SPI_ISCRCErrorValid

UNDEFINED SYMBOLS
SystemCoreClock
HAL_GetTick
HAL_DMA_Start_IT
HAL_DMA_Abort
HAL_DMA_Abort_IT
