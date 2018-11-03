ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 1


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
  11              		.file	"main.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.MX_GPIO_Init,"ax",%progbits
  16              		.align	1
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu softvfp
  22              	MX_GPIO_Init:
  23              	.LFB71:
  24              		.file 1 "Src/main.c"
   1:Src/main.c    **** 
   2:Src/main.c    **** /**
   3:Src/main.c    ****   ******************************************************************************
   4:Src/main.c    ****   * @file           : main.c
   5:Src/main.c    ****   * @brief          : Main program body
   6:Src/main.c    ****   ******************************************************************************
   7:Src/main.c    ****   ** This notice applies to any and all portions of this file
   8:Src/main.c    ****   * that are not between comment pairs USER CODE BEGIN and
   9:Src/main.c    ****   * USER CODE END. Other portions of this file, whether 
  10:Src/main.c    ****   * inserted by the user or by software development tools
  11:Src/main.c    ****   * are owned by their respective copyright owners.
  12:Src/main.c    ****   *
  13:Src/main.c    ****   * COPYRIGHT(c) 2018 STMicroelectronics
  14:Src/main.c    ****   *
  15:Src/main.c    ****   * Redistribution and use in source and binary forms, with or without modification,
  16:Src/main.c    ****   * are permitted provided that the following conditions are met:
  17:Src/main.c    ****   *   1. Redistributions of source code must retain the above copyright notice,
  18:Src/main.c    ****   *      this list of conditions and the following disclaimer.
  19:Src/main.c    ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  20:Src/main.c    ****   *      this list of conditions and the following disclaimer in the documentation
  21:Src/main.c    ****   *      and/or other materials provided with the distribution.
  22:Src/main.c    ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  23:Src/main.c    ****   *      may be used to endorse or promote products derived from this software
  24:Src/main.c    ****   *      without specific prior written permission.
  25:Src/main.c    ****   *
  26:Src/main.c    ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  27:Src/main.c    ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  28:Src/main.c    ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  29:Src/main.c    ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  30:Src/main.c    ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  31:Src/main.c    ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  32:Src/main.c    ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  33:Src/main.c    ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  34:Src/main.c    ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 2


  35:Src/main.c    ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  36:Src/main.c    ****   *
  37:Src/main.c    ****   ******************************************************************************
  38:Src/main.c    ****   */
  39:Src/main.c    **** /* Includes ------------------------------------------------------------------*/
  40:Src/main.c    **** #include "main.h"
  41:Src/main.c    **** #include "stm32f1xx_hal.h"
  42:Src/main.c    **** 
  43:Src/main.c    **** /* USER CODE BEGIN Includes */
  44:Src/main.c    **** #include "ili9341.h"
  45:Src/main.c    **** #include "xpt2046.h"
  46:Src/main.c    **** /* USER CODE END Includes */
  47:Src/main.c    **** 
  48:Src/main.c    **** /* Private variables ---------------------------------------------------------*/
  49:Src/main.c    **** ADC_HandleTypeDef hadc1;
  50:Src/main.c    **** DMA_HandleTypeDef hdma_adc1;
  51:Src/main.c    **** 
  52:Src/main.c    **** SPI_HandleTypeDef hspi2;
  53:Src/main.c    **** 
  54:Src/main.c    **** /* USER CODE BEGIN PV */
  55:Src/main.c    **** /* Private variables ---------------------------------------------------------*/
  56:Src/main.c    **** 
  57:Src/main.c    **** /* USER CODE END PV */
  58:Src/main.c    **** 
  59:Src/main.c    **** /* Private function prototypes -----------------------------------------------*/
  60:Src/main.c    **** void SystemClock_Config(void);
  61:Src/main.c    **** static void MX_GPIO_Init(void);
  62:Src/main.c    **** static void MX_DMA_Init(void);
  63:Src/main.c    **** static void MX_SPI2_Init(void);
  64:Src/main.c    **** static void MX_ADC1_Init(void);
  65:Src/main.c    **** 
  66:Src/main.c    **** /* USER CODE BEGIN PFP */
  67:Src/main.c    **** /* Private function prototypes -----------------------------------------------*/
  68:Src/main.c    **** void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc);
  69:Src/main.c    **** /* USER CODE END PFP */
  70:Src/main.c    **** 
  71:Src/main.c    **** /* USER CODE BEGIN 0 */
  72:Src/main.c    **** 	static uint32_t ticks = 100;
  73:Src/main.c    **** 	uint8_t blocked = 1;
  74:Src/main.c    **** /* USER CODE END 0 */
  75:Src/main.c    **** 
  76:Src/main.c    **** /**
  77:Src/main.c    ****   * @brief  The application entry point.
  78:Src/main.c    ****   *
  79:Src/main.c    ****   * @retval None
  80:Src/main.c    ****   */
  81:Src/main.c    **** int main(void)
  82:Src/main.c    **** {
  83:Src/main.c    ****   /* USER CODE BEGIN 1 */
  84:Src/main.c    **** 
  85:Src/main.c    ****   /* USER CODE END 1 */
  86:Src/main.c    **** 
  87:Src/main.c    ****   /* MCU Configuration----------------------------------------------------------*/
  88:Src/main.c    **** 
  89:Src/main.c    ****   /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  90:Src/main.c    ****   HAL_Init();
  91:Src/main.c    **** 
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 3


  92:Src/main.c    ****   /* USER CODE BEGIN Init */
  93:Src/main.c    **** 
  94:Src/main.c    ****   /* USER CODE END Init */
  95:Src/main.c    **** 
  96:Src/main.c    ****   /* Configure the system clock */
  97:Src/main.c    ****   SystemClock_Config();
  98:Src/main.c    **** 
  99:Src/main.c    ****   /* USER CODE BEGIN SysInit */
 100:Src/main.c    **** 
 101:Src/main.c    ****   /* USER CODE END SysInit */
 102:Src/main.c    **** 
 103:Src/main.c    ****   /* Initialize all configured peripherals */
 104:Src/main.c    ****   MX_GPIO_Init();
 105:Src/main.c    ****   MX_DMA_Init();
 106:Src/main.c    ****   MX_SPI2_Init();
 107:Src/main.c    ****   MX_ADC1_Init();
 108:Src/main.c    ****   /* USER CODE BEGIN 2 */
 109:Src/main.c    **** 	
 110:Src/main.c    **** 	TOUCH_CS_PORT->BSRR = TOUCH_CS_PIN;
 111:Src/main.c    **** 	ILI9341_Init(&hspi2);
 112:Src/main.c    **** 	xpt2046_enable_irq();
 113:Src/main.c    **** 	ILI9341_SPI_BeginDraw(&hspi2);
 114:Src/main.c    **** 	ILI9341_Draw_Main_Interface(&hspi2);
 115:Src/main.c    **** 	HAL_ADC_Start(&hadc1);
 116:Src/main.c    **** 
 117:Src/main.c    **** 	uint32_t ADCValues[128];
 118:Src/main.c    **** 
 119:Src/main.c    ****   /* USER CODE END 2 */
 120:Src/main.c    **** 
 121:Src/main.c    ****   /* Infinite loop */
 122:Src/main.c    ****   /* USER CODE BEGIN WHILE */
 123:Src/main.c    ****   while (1)
 124:Src/main.c    ****   {
 125:Src/main.c    **** 	//for profiling
 126:Src/main.c    **** 	HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_RESET);
 127:Src/main.c    **** 	HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_SET);
 128:Src/main.c    **** 	
 129:Src/main.c    **** 	blocked = 0;
 130:Src/main.c    **** 	ticks = HAL_GetTick();
 131:Src/main.c    **** 	HAL_ADC_Start_DMA(&hadc1, ADCValues, 255);
 132:Src/main.c    **** 	while(blocked == 0){}
 133:Src/main.c    **** 	
 134:Src/main.c    **** 	uint16_t* ADCValues16t=(uint16_t*)ADCValues;
 135:Src/main.c    **** 	uint8_t random_data[255];
 136:Src/main.c    **** 	static uint8_t random_data_old[255];
 137:Src/main.c    **** 	for(int i=0;i <sizeof(ADCValues)/sizeof(uint16_t); i++)
 138:Src/main.c    **** 	{
 139:Src/main.c    **** 		random_data[i] = (uint8_t)(ADCValues16t[i]/22);
 140:Src/main.c    **** 	}
 141:Src/main.c    **** 	//ILI9341_Draw_Rectangle(0, 0, 250, 200, 23);
 142:Src/main.c    **** 
 143:Src/main.c    **** 	uint8_t char_buffer[6];
 144:Src/main.c    **** 	static uint8_t old_char_buffer[6]={0x00,0x00,0x00,0x00,0x00,0x00};
 145:Src/main.c    **** 	sprintf(char_buffer,"%05u",(uint16_t)(ADCValues[63]>>16));
 146:Src/main.c    **** 	for(int i=0;i<sizeof(char_buffer)-1; i++)
 147:Src/main.c    **** 	{
 148:Src/main.c    **** 		ILI9341_Draw_Char(&hspi2,char_buffer[i],old_char_buffer[i], 5+13*i,210, COLOR_3, 2);
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 4


 149:Src/main.c    **** 	}
 150:Src/main.c    **** 	memcpy(old_char_buffer,char_buffer,sizeof(char_buffer));
 151:Src/main.c    **** 	
 152:Src/main.c    **** 	uint8_t char_buffer2[6];
 153:Src/main.c    **** 	static uint8_t old_char_buffer2[6]={0x00,0x00,0x00,0x00,0x00,0x00};
 154:Src/main.c    **** 	sprintf(char_buffer2,"%05u",(uint16_t)ticks);
 155:Src/main.c    **** 	for(int i=0;i<sizeof(char_buffer2)-1; i++)
 156:Src/main.c    **** 	{
 157:Src/main.c    **** 		ILI9341_Draw_Char(&hspi2,char_buffer2[i],old_char_buffer2[i], 100+13*i,210, COLOR_3, 2);
 158:Src/main.c    **** 	}
 159:Src/main.c    **** 	memcpy(old_char_buffer2,char_buffer2,sizeof(char_buffer2));
 160:Src/main.c    **** 	
 161:Src/main.c    **** 	ILI9341_Draw_Graph(&hspi2, random_data_old, random_data, COLOR_3);
 162:Src/main.c    **** 	memcpy(random_data_old,random_data,sizeof(random_data));
 163:Src/main.c    **** 	/*
 164:Src/main.c    **** 	ILI9341_Draw_Char(&hspi2, '0', ' ', 265,   5, COLOR_3, 2);
 165:Src/main.c    **** 	ILI9341_Draw_Char(&hspi2, '0', ' ', 280,   5, COLOR_3, 2);
 166:Src/main.c    **** 	for(uint8_t c = '0' ; c < '9' ; c++)
 167:Src/main.c    **** 	{
 168:Src/main.c    **** 		ILI9341_Draw_Char(&hspi2, c+1, c , 265,   5, COLOR_3, 2);
 169:Src/main.c    **** 		ILI9341_Draw_Char(&hspi2, c+1, c , 280,   5, COLOR_3, 2);
 170:Src/main.c    **** 	}
 171:Src/main.c    **** 	//ILI9341_SPI_StopDraw();
 172:Src/main.c    **** 	*/
 173:Src/main.c    ****   /* USER CODE END WHILE */
 174:Src/main.c    **** 
 175:Src/main.c    ****   /* USER CODE BEGIN 3 */
 176:Src/main.c    ****   }
 177:Src/main.c    ****   /* USER CODE END 3 */
 178:Src/main.c    **** 
 179:Src/main.c    **** }
 180:Src/main.c    **** 
 181:Src/main.c    **** /**
 182:Src/main.c    ****   * @brief System Clock Configuration
 183:Src/main.c    ****   * @retval None
 184:Src/main.c    ****   */
 185:Src/main.c    **** void SystemClock_Config(void)
 186:Src/main.c    **** {
 187:Src/main.c    **** 
 188:Src/main.c    ****   RCC_OscInitTypeDef RCC_OscInitStruct;
 189:Src/main.c    ****   RCC_ClkInitTypeDef RCC_ClkInitStruct;
 190:Src/main.c    ****   RCC_PeriphCLKInitTypeDef PeriphClkInit;
 191:Src/main.c    **** 
 192:Src/main.c    ****     /**Initializes the CPU, AHB and APB busses clocks 
 193:Src/main.c    ****     */
 194:Src/main.c    ****   RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
 195:Src/main.c    ****   RCC_OscInitStruct.HSIState = RCC_HSI_ON;
 196:Src/main.c    ****   RCC_OscInitStruct.HSICalibrationValue = 16;
 197:Src/main.c    ****   RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
 198:Src/main.c    ****   if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
 199:Src/main.c    ****   {
 200:Src/main.c    ****     _Error_Handler(__FILE__, __LINE__);
 201:Src/main.c    ****   }
 202:Src/main.c    **** 
 203:Src/main.c    ****     /**Initializes the CPU, AHB and APB busses clocks 
 204:Src/main.c    ****     */
 205:Src/main.c    ****   RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 5


 206:Src/main.c    ****                               |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
 207:Src/main.c    ****   RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_HSI;
 208:Src/main.c    ****   RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
 209:Src/main.c    ****   RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
 210:Src/main.c    ****   RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;
 211:Src/main.c    **** 
 212:Src/main.c    ****   if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
 213:Src/main.c    ****   {
 214:Src/main.c    ****     _Error_Handler(__FILE__, __LINE__);
 215:Src/main.c    ****   }
 216:Src/main.c    **** 
 217:Src/main.c    ****   PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_ADC;
 218:Src/main.c    ****   PeriphClkInit.AdcClockSelection = RCC_ADCPCLK2_DIV2;
 219:Src/main.c    ****   if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
 220:Src/main.c    ****   {
 221:Src/main.c    ****     _Error_Handler(__FILE__, __LINE__);
 222:Src/main.c    ****   }
 223:Src/main.c    **** 
 224:Src/main.c    ****     /**Configure the Systick interrupt time 
 225:Src/main.c    ****     */
 226:Src/main.c    ****   HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000);
 227:Src/main.c    **** 
 228:Src/main.c    ****     /**Configure the Systick 
 229:Src/main.c    ****     */
 230:Src/main.c    ****   HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);
 231:Src/main.c    **** 
 232:Src/main.c    ****   /* SysTick_IRQn interrupt configuration */
 233:Src/main.c    ****   HAL_NVIC_SetPriority(SysTick_IRQn, 0, 0);
 234:Src/main.c    **** }
 235:Src/main.c    **** 
 236:Src/main.c    **** /* ADC1 init function */
 237:Src/main.c    **** static void MX_ADC1_Init(void)
 238:Src/main.c    **** {
 239:Src/main.c    **** 
 240:Src/main.c    ****   ADC_ChannelConfTypeDef sConfig;
 241:Src/main.c    **** 
 242:Src/main.c    ****     /**Common config 
 243:Src/main.c    ****     */
 244:Src/main.c    ****   hadc1.Instance = ADC1;
 245:Src/main.c    ****   hadc1.Init.ScanConvMode = ADC_SCAN_DISABLE;
 246:Src/main.c    ****   hadc1.Init.ContinuousConvMode = ENABLE;
 247:Src/main.c    ****   hadc1.Init.DiscontinuousConvMode = DISABLE;
 248:Src/main.c    ****   hadc1.Init.ExternalTrigConv = ADC_SOFTWARE_START;
 249:Src/main.c    ****   hadc1.Init.DataAlign = ADC_DATAALIGN_RIGHT;
 250:Src/main.c    ****   hadc1.Init.NbrOfConversion = 1;
 251:Src/main.c    ****   if (HAL_ADC_Init(&hadc1) != HAL_OK)
 252:Src/main.c    ****   {
 253:Src/main.c    ****     _Error_Handler(__FILE__, __LINE__);
 254:Src/main.c    ****   }
 255:Src/main.c    **** 
 256:Src/main.c    ****     /**Configure Regular Channel 
 257:Src/main.c    ****     */
 258:Src/main.c    ****   sConfig.Channel = ADC_CHANNEL_0;
 259:Src/main.c    ****   sConfig.Rank = ADC_REGULAR_RANK_1;
 260:Src/main.c    ****   sConfig.SamplingTime = ADC_SAMPLETIME_239CYCLES_5;
 261:Src/main.c    ****   if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
 262:Src/main.c    ****   {
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 6


 263:Src/main.c    ****     _Error_Handler(__FILE__, __LINE__);
 264:Src/main.c    ****   }
 265:Src/main.c    **** 
 266:Src/main.c    **** }
 267:Src/main.c    **** 
 268:Src/main.c    **** /* SPI2 init function */
 269:Src/main.c    **** static void MX_SPI2_Init(void)
 270:Src/main.c    **** {
 271:Src/main.c    **** 
 272:Src/main.c    ****   /* SPI2 parameter configuration*/
 273:Src/main.c    ****   hspi2.Instance = SPI2;
 274:Src/main.c    ****   hspi2.Init.Mode = SPI_MODE_MASTER;
 275:Src/main.c    ****   hspi2.Init.Direction = SPI_DIRECTION_2LINES;
 276:Src/main.c    ****   hspi2.Init.DataSize = SPI_DATASIZE_8BIT;
 277:Src/main.c    ****   hspi2.Init.CLKPolarity = SPI_POLARITY_LOW;
 278:Src/main.c    ****   hspi2.Init.CLKPhase = SPI_PHASE_1EDGE;
 279:Src/main.c    ****   hspi2.Init.NSS = SPI_NSS_SOFT;
 280:Src/main.c    ****   hspi2.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_2;
 281:Src/main.c    ****   hspi2.Init.FirstBit = SPI_FIRSTBIT_MSB;
 282:Src/main.c    ****   hspi2.Init.TIMode = SPI_TIMODE_DISABLE;
 283:Src/main.c    ****   hspi2.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
 284:Src/main.c    ****   hspi2.Init.CRCPolynomial = 10;
 285:Src/main.c    ****   if (HAL_SPI_Init(&hspi2) != HAL_OK)
 286:Src/main.c    ****   {
 287:Src/main.c    ****     _Error_Handler(__FILE__, __LINE__);
 288:Src/main.c    ****   }
 289:Src/main.c    **** 
 290:Src/main.c    **** }
 291:Src/main.c    **** 
 292:Src/main.c    **** /** 
 293:Src/main.c    ****   * Enable DMA controller clock
 294:Src/main.c    ****   */
 295:Src/main.c    **** static void MX_DMA_Init(void) 
 296:Src/main.c    **** {
 297:Src/main.c    ****   /* DMA controller clock enable */
 298:Src/main.c    ****   __HAL_RCC_DMA1_CLK_ENABLE();
 299:Src/main.c    **** 
 300:Src/main.c    ****   /* DMA interrupt init */
 301:Src/main.c    ****   /* DMA1_Channel1_IRQn interrupt configuration */
 302:Src/main.c    ****   HAL_NVIC_SetPriority(DMA1_Channel1_IRQn, 0, 0);
 303:Src/main.c    ****   HAL_NVIC_EnableIRQ(DMA1_Channel1_IRQn);
 304:Src/main.c    **** 
 305:Src/main.c    **** }
 306:Src/main.c    **** 
 307:Src/main.c    **** /** Configure pins as 
 308:Src/main.c    ****         * Analog 
 309:Src/main.c    ****         * Input 
 310:Src/main.c    ****         * Output
 311:Src/main.c    ****         * EVENT_OUT
 312:Src/main.c    ****         * EXTI
 313:Src/main.c    **** */
 314:Src/main.c    **** static void MX_GPIO_Init(void)
 315:Src/main.c    **** {
  25              		.loc 1 315 0
  26              		.cfi_startproc
  27              		@ args = 0, pretend = 0, frame = 32
  28              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 7


  29 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
  30              	.LCFI0:
  31              		.cfi_def_cfa_offset 28
  32              		.cfi_offset 4, -28
  33              		.cfi_offset 5, -24
  34              		.cfi_offset 6, -20
  35              		.cfi_offset 7, -16
  36              		.cfi_offset 8, -12
  37              		.cfi_offset 9, -8
  38              		.cfi_offset 14, -4
  39 0004 89B0     		sub	sp, sp, #36
  40              	.LCFI1:
  41              		.cfi_def_cfa_offset 64
  42              	.LBB2:
 316:Src/main.c    **** 
 317:Src/main.c    ****   GPIO_InitTypeDef GPIO_InitStruct;
 318:Src/main.c    **** 
 319:Src/main.c    ****   /* GPIO Ports Clock Enable */
 320:Src/main.c    ****   __HAL_RCC_GPIOC_CLK_ENABLE();
  43              		.loc 1 320 0
  44 0006 2F4B     		ldr	r3, .L3
  45 0008 9A69     		ldr	r2, [r3, #24]
  46 000a 42F01002 		orr	r2, r2, #16
  47 000e 9A61     		str	r2, [r3, #24]
  48 0010 9A69     		ldr	r2, [r3, #24]
  49 0012 02F01002 		and	r2, r2, #16
  50 0016 0192     		str	r2, [sp, #4]
  51 0018 019A     		ldr	r2, [sp, #4]
  52              	.LBE2:
  53              	.LBB3:
 321:Src/main.c    ****   __HAL_RCC_GPIOA_CLK_ENABLE();
  54              		.loc 1 321 0
  55 001a 9A69     		ldr	r2, [r3, #24]
  56 001c 42F00402 		orr	r2, r2, #4
  57 0020 9A61     		str	r2, [r3, #24]
  58 0022 9A69     		ldr	r2, [r3, #24]
  59 0024 02F00402 		and	r2, r2, #4
  60 0028 0292     		str	r2, [sp, #8]
  61 002a 029A     		ldr	r2, [sp, #8]
  62              	.LBE3:
  63              	.LBB4:
 322:Src/main.c    ****   __HAL_RCC_GPIOB_CLK_ENABLE();
  64              		.loc 1 322 0
  65 002c 9A69     		ldr	r2, [r3, #24]
  66 002e 42F00802 		orr	r2, r2, #8
  67 0032 9A61     		str	r2, [r3, #24]
  68 0034 9B69     		ldr	r3, [r3, #24]
  69 0036 03F00803 		and	r3, r3, #8
  70 003a 0393     		str	r3, [sp, #12]
  71 003c 039B     		ldr	r3, [sp, #12]
  72              	.LBE4:
 323:Src/main.c    **** 
 324:Src/main.c    ****   /*Configure GPIO pin Output Level */
 325:Src/main.c    ****   HAL_GPIO_WritePin(Output_TimeProbe_GPIO_Port, Output_TimeProbe_Pin, GPIO_PIN_RESET);
  73              		.loc 1 325 0
  74 003e DFF88C90 		ldr	r9, .L3+8
  75 0042 0022     		movs	r2, #0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 8


  76 0044 4FF40051 		mov	r1, #8192
  77 0048 4846     		mov	r0, r9
  78 004a FFF7FEFF 		bl	HAL_GPIO_WritePin
  79              	.LVL0:
 326:Src/main.c    **** 
 327:Src/main.c    ****   /*Configure GPIO pin Output Level */
 328:Src/main.c    ****   HAL_GPIO_WritePin(GPIOA, Output_LCD_RST_Pin|Output_LCD_DC_Pin|Output_LCD_CS_Pin, GPIO_PIN_RESET);
  80              		.loc 1 328 0
  81 004e DFF88080 		ldr	r8, .L3+12
  82 0052 0022     		movs	r2, #0
  83 0054 4FF41841 		mov	r1, #38912
  84 0058 4046     		mov	r0, r8
  85 005a FFF7FEFF 		bl	HAL_GPIO_WritePin
  86              	.LVL1:
 329:Src/main.c    **** 
 330:Src/main.c    ****   /*Configure GPIO pin Output Level */
 331:Src/main.c    ****   HAL_GPIO_WritePin(Output_TOUCH_CS_GPIO_Port, Output_TOUCH_CS_Pin, GPIO_PIN_RESET);
  87              		.loc 1 331 0
  88 005e 1A4D     		ldr	r5, .L3+4
  89 0060 0022     		movs	r2, #0
  90 0062 0821     		movs	r1, #8
  91 0064 2846     		mov	r0, r5
  92 0066 FFF7FEFF 		bl	HAL_GPIO_WritePin
  93              	.LVL2:
 332:Src/main.c    **** 
 333:Src/main.c    ****   /*Configure GPIO pin : Output_TimeProbe_Pin */
 334:Src/main.c    ****   GPIO_InitStruct.Pin = Output_TimeProbe_Pin;
  94              		.loc 1 334 0
  95 006a 4FF40053 		mov	r3, #8192
  96 006e 0493     		str	r3, [sp, #16]
 335:Src/main.c    ****   GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  97              		.loc 1 335 0
  98 0070 0127     		movs	r7, #1
  99 0072 0597     		str	r7, [sp, #20]
 336:Src/main.c    ****   GPIO_InitStruct.Pull = GPIO_NOPULL;
 100              		.loc 1 336 0
 101 0074 0024     		movs	r4, #0
 102 0076 0694     		str	r4, [sp, #24]
 337:Src/main.c    ****   GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
 103              		.loc 1 337 0
 104 0078 0226     		movs	r6, #2
 105 007a 0796     		str	r6, [sp, #28]
 338:Src/main.c    ****   HAL_GPIO_Init(Output_TimeProbe_GPIO_Port, &GPIO_InitStruct);
 106              		.loc 1 338 0
 107 007c 04A9     		add	r1, sp, #16
 108 007e 4846     		mov	r0, r9
 109 0080 FFF7FEFF 		bl	HAL_GPIO_Init
 110              	.LVL3:
 339:Src/main.c    **** 
 340:Src/main.c    ****   /*Configure GPIO pins : Output_LCD_RST_Pin Output_LCD_DC_Pin Output_LCD_CS_Pin */
 341:Src/main.c    ****   GPIO_InitStruct.Pin = Output_LCD_RST_Pin|Output_LCD_DC_Pin|Output_LCD_CS_Pin;
 111              		.loc 1 341 0
 112 0084 4FF41843 		mov	r3, #38912
 113 0088 0493     		str	r3, [sp, #16]
 342:Src/main.c    ****   GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
 114              		.loc 1 342 0
 115 008a 0597     		str	r7, [sp, #20]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 9


 343:Src/main.c    ****   GPIO_InitStruct.Pull = GPIO_NOPULL;
 116              		.loc 1 343 0
 117 008c 0694     		str	r4, [sp, #24]
 344:Src/main.c    ****   GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
 118              		.loc 1 344 0
 119 008e 0796     		str	r6, [sp, #28]
 345:Src/main.c    ****   HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
 120              		.loc 1 345 0
 121 0090 04A9     		add	r1, sp, #16
 122 0092 4046     		mov	r0, r8
 123 0094 FFF7FEFF 		bl	HAL_GPIO_Init
 124              	.LVL4:
 346:Src/main.c    **** 
 347:Src/main.c    ****   /*Configure GPIO pin : Output_TOUCH_CS_Pin */
 348:Src/main.c    ****   GPIO_InitStruct.Pin = Output_TOUCH_CS_Pin;
 125              		.loc 1 348 0
 126 0098 0823     		movs	r3, #8
 127 009a 0493     		str	r3, [sp, #16]
 349:Src/main.c    ****   GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
 128              		.loc 1 349 0
 129 009c 0597     		str	r7, [sp, #20]
 350:Src/main.c    ****   GPIO_InitStruct.Pull = GPIO_NOPULL;
 130              		.loc 1 350 0
 131 009e 0694     		str	r4, [sp, #24]
 351:Src/main.c    ****   GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
 132              		.loc 1 351 0
 133 00a0 0796     		str	r6, [sp, #28]
 352:Src/main.c    ****   HAL_GPIO_Init(Output_TOUCH_CS_GPIO_Port, &GPIO_InitStruct);
 134              		.loc 1 352 0
 135 00a2 04A9     		add	r1, sp, #16
 136 00a4 2846     		mov	r0, r5
 137 00a6 FFF7FEFF 		bl	HAL_GPIO_Init
 138              	.LVL5:
 353:Src/main.c    **** 
 354:Src/main.c    ****   /*Configure GPIO pin : Input_PEN_Pin */
 355:Src/main.c    ****   GPIO_InitStruct.Pin = Input_PEN_Pin;
 139              		.loc 1 355 0
 140 00aa 1023     		movs	r3, #16
 141 00ac 0493     		str	r3, [sp, #16]
 356:Src/main.c    ****   GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
 142              		.loc 1 356 0
 143 00ae 0594     		str	r4, [sp, #20]
 357:Src/main.c    ****   GPIO_InitStruct.Pull = GPIO_NOPULL;
 144              		.loc 1 357 0
 145 00b0 0694     		str	r4, [sp, #24]
 358:Src/main.c    ****   HAL_GPIO_Init(Input_PEN_GPIO_Port, &GPIO_InitStruct);
 146              		.loc 1 358 0
 147 00b2 0DEB0301 		add	r1, sp, r3
 148 00b6 2846     		mov	r0, r5
 149 00b8 FFF7FEFF 		bl	HAL_GPIO_Init
 150              	.LVL6:
 359:Src/main.c    **** 
 360:Src/main.c    **** }
 151              		.loc 1 360 0
 152 00bc 09B0     		add	sp, sp, #36
 153              	.LCFI2:
 154              		.cfi_def_cfa_offset 28
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 10


 155              		@ sp needed
 156 00be BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 157              	.L4:
 158 00c2 00BF     		.align	2
 159              	.L3:
 160 00c4 00100240 		.word	1073876992
 161 00c8 000C0140 		.word	1073810432
 162 00cc 00100140 		.word	1073811456
 163 00d0 00080140 		.word	1073809408
 164              		.cfi_endproc
 165              	.LFE71:
 167              		.section	.text.MX_DMA_Init,"ax",%progbits
 168              		.align	1
 169              		.syntax unified
 170              		.thumb
 171              		.thumb_func
 172              		.fpu softvfp
 174              	MX_DMA_Init:
 175              	.LFB70:
 296:Src/main.c    ****   /* DMA controller clock enable */
 176              		.loc 1 296 0
 177              		.cfi_startproc
 178              		@ args = 0, pretend = 0, frame = 8
 179              		@ frame_needed = 0, uses_anonymous_args = 0
 180 0000 00B5     		push	{lr}
 181              	.LCFI3:
 182              		.cfi_def_cfa_offset 4
 183              		.cfi_offset 14, -4
 184 0002 83B0     		sub	sp, sp, #12
 185              	.LCFI4:
 186              		.cfi_def_cfa_offset 16
 187              	.LBB5:
 298:Src/main.c    **** 
 188              		.loc 1 298 0
 189 0004 0A4B     		ldr	r3, .L7
 190 0006 5A69     		ldr	r2, [r3, #20]
 191 0008 42F00102 		orr	r2, r2, #1
 192 000c 5A61     		str	r2, [r3, #20]
 193 000e 5B69     		ldr	r3, [r3, #20]
 194 0010 03F00103 		and	r3, r3, #1
 195 0014 0193     		str	r3, [sp, #4]
 196 0016 019B     		ldr	r3, [sp, #4]
 197              	.LBE5:
 302:Src/main.c    ****   HAL_NVIC_EnableIRQ(DMA1_Channel1_IRQn);
 198              		.loc 1 302 0
 199 0018 0022     		movs	r2, #0
 200 001a 1146     		mov	r1, r2
 201 001c 0B20     		movs	r0, #11
 202 001e FFF7FEFF 		bl	HAL_NVIC_SetPriority
 203              	.LVL7:
 303:Src/main.c    **** 
 204              		.loc 1 303 0
 205 0022 0B20     		movs	r0, #11
 206 0024 FFF7FEFF 		bl	HAL_NVIC_EnableIRQ
 207              	.LVL8:
 305:Src/main.c    **** 
 208              		.loc 1 305 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 11


 209 0028 03B0     		add	sp, sp, #12
 210              	.LCFI5:
 211              		.cfi_def_cfa_offset 4
 212              		@ sp needed
 213 002a 5DF804FB 		ldr	pc, [sp], #4
 214              	.L8:
 215 002e 00BF     		.align	2
 216              	.L7:
 217 0030 00100240 		.word	1073876992
 218              		.cfi_endproc
 219              	.LFE70:
 221              		.section	.text.HAL_ADC_ConvCpltCallback,"ax",%progbits
 222              		.align	1
 223              		.global	HAL_ADC_ConvCpltCallback
 224              		.syntax unified
 225              		.thumb
 226              		.thumb_func
 227              		.fpu softvfp
 229              	HAL_ADC_ConvCpltCallback:
 230              	.LFB72:
 361:Src/main.c    **** 
 362:Src/main.c    **** /* USER CODE BEGIN 4 */
 363:Src/main.c    **** void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc)
 364:Src/main.c    **** {
 231              		.loc 1 364 0
 232              		.cfi_startproc
 233              		@ args = 0, pretend = 0, frame = 0
 234              		@ frame_needed = 0, uses_anonymous_args = 0
 235              	.LVL9:
 236 0000 08B5     		push	{r3, lr}
 237              	.LCFI6:
 238              		.cfi_def_cfa_offset 8
 239              		.cfi_offset 3, -8
 240              		.cfi_offset 14, -4
 365:Src/main.c    **** 	blocked = 1;
 241              		.loc 1 365 0
 242 0002 054B     		ldr	r3, .L11
 243 0004 0122     		movs	r2, #1
 244 0006 1A70     		strb	r2, [r3]
 366:Src/main.c    **** 	ticks = HAL_GetTick() - ticks;
 245              		.loc 1 366 0
 246 0008 FFF7FEFF 		bl	HAL_GetTick
 247              	.LVL10:
 248 000c 034A     		ldr	r2, .L11+4
 249 000e 1368     		ldr	r3, [r2]
 250 0010 C01A     		subs	r0, r0, r3
 251 0012 1060     		str	r0, [r2]
 367:Src/main.c    **** }
 252              		.loc 1 367 0
 253 0014 08BD     		pop	{r3, pc}
 254              	.L12:
 255 0016 00BF     		.align	2
 256              	.L11:
 257 0018 00000000 		.word	.LANCHOR0
 258 001c 00000000 		.word	.LANCHOR1
 259              		.cfi_endproc
 260              	.LFE72:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 12


 262              		.section	.text._Error_Handler,"ax",%progbits
 263              		.align	1
 264              		.global	_Error_Handler
 265              		.syntax unified
 266              		.thumb
 267              		.thumb_func
 268              		.fpu softvfp
 270              	_Error_Handler:
 271              	.LFB73:
 368:Src/main.c    **** /* USER CODE END 4 */
 369:Src/main.c    **** 
 370:Src/main.c    **** /**
 371:Src/main.c    ****   * @brief  This function is executed in case of error occurrence.
 372:Src/main.c    ****   * @param  file: The file name as string.
 373:Src/main.c    ****   * @param  line: The line in file as a number.
 374:Src/main.c    ****   * @retval None
 375:Src/main.c    ****   */
 376:Src/main.c    **** void _Error_Handler(char *file, int line)
 377:Src/main.c    **** {
 272              		.loc 1 377 0
 273              		.cfi_startproc
 274              		@ Volatile: function does not return.
 275              		@ args = 0, pretend = 0, frame = 0
 276              		@ frame_needed = 0, uses_anonymous_args = 0
 277              		@ link register save eliminated.
 278              	.LVL11:
 279              	.L14:
 280 0000 FEE7     		b	.L14
 281              		.cfi_endproc
 282              	.LFE73:
 284              		.section	.text.MX_SPI2_Init,"ax",%progbits
 285              		.align	1
 286              		.syntax unified
 287              		.thumb
 288              		.thumb_func
 289              		.fpu softvfp
 291              	MX_SPI2_Init:
 292              	.LFB69:
 270:Src/main.c    **** 
 293              		.loc 1 270 0
 294              		.cfi_startproc
 295              		@ args = 0, pretend = 0, frame = 0
 296              		@ frame_needed = 0, uses_anonymous_args = 0
 270:Src/main.c    **** 
 297              		.loc 1 270 0
 298 0000 08B5     		push	{r3, lr}
 299              	.LCFI7:
 300              		.cfi_def_cfa_offset 8
 301              		.cfi_offset 3, -8
 302              		.cfi_offset 14, -4
 273:Src/main.c    ****   hspi2.Init.Mode = SPI_MODE_MASTER;
 303              		.loc 1 273 0
 304 0002 0E48     		ldr	r0, .L19
 305 0004 0E4B     		ldr	r3, .L19+4
 306 0006 0360     		str	r3, [r0]
 274:Src/main.c    ****   hspi2.Init.Direction = SPI_DIRECTION_2LINES;
 307              		.loc 1 274 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 13


 308 0008 4FF48273 		mov	r3, #260
 309 000c 4360     		str	r3, [r0, #4]
 275:Src/main.c    ****   hspi2.Init.DataSize = SPI_DATASIZE_8BIT;
 310              		.loc 1 275 0
 311 000e 0023     		movs	r3, #0
 312 0010 8360     		str	r3, [r0, #8]
 276:Src/main.c    ****   hspi2.Init.CLKPolarity = SPI_POLARITY_LOW;
 313              		.loc 1 276 0
 314 0012 C360     		str	r3, [r0, #12]
 277:Src/main.c    ****   hspi2.Init.CLKPhase = SPI_PHASE_1EDGE;
 315              		.loc 1 277 0
 316 0014 0361     		str	r3, [r0, #16]
 278:Src/main.c    ****   hspi2.Init.NSS = SPI_NSS_SOFT;
 317              		.loc 1 278 0
 318 0016 4361     		str	r3, [r0, #20]
 279:Src/main.c    ****   hspi2.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_2;
 319              		.loc 1 279 0
 320 0018 4FF40072 		mov	r2, #512
 321 001c 8261     		str	r2, [r0, #24]
 280:Src/main.c    ****   hspi2.Init.FirstBit = SPI_FIRSTBIT_MSB;
 322              		.loc 1 280 0
 323 001e C361     		str	r3, [r0, #28]
 281:Src/main.c    ****   hspi2.Init.TIMode = SPI_TIMODE_DISABLE;
 324              		.loc 1 281 0
 325 0020 0362     		str	r3, [r0, #32]
 282:Src/main.c    ****   hspi2.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
 326              		.loc 1 282 0
 327 0022 4362     		str	r3, [r0, #36]
 283:Src/main.c    ****   hspi2.Init.CRCPolynomial = 10;
 328              		.loc 1 283 0
 329 0024 8362     		str	r3, [r0, #40]
 284:Src/main.c    ****   if (HAL_SPI_Init(&hspi2) != HAL_OK)
 330              		.loc 1 284 0
 331 0026 0A23     		movs	r3, #10
 332 0028 C362     		str	r3, [r0, #44]
 285:Src/main.c    ****   {
 333              		.loc 1 285 0
 334 002a FFF7FEFF 		bl	HAL_SPI_Init
 335              	.LVL12:
 336 002e 00B9     		cbnz	r0, .L18
 290:Src/main.c    **** 
 337              		.loc 1 290 0
 338 0030 08BD     		pop	{r3, pc}
 339              	.L18:
 287:Src/main.c    ****   }
 340              		.loc 1 287 0
 341 0032 40F21F11 		movw	r1, #287
 342 0036 0348     		ldr	r0, .L19+8
 343 0038 FFF7FEFF 		bl	_Error_Handler
 344              	.LVL13:
 345              	.L20:
 346              		.align	2
 347              	.L19:
 348 003c 00000000 		.word	hspi2
 349 0040 00380040 		.word	1073756160
 350 0044 00000000 		.word	.LC0
 351              		.cfi_endproc
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 14


 352              	.LFE69:
 354              		.section	.text.MX_ADC1_Init,"ax",%progbits
 355              		.align	1
 356              		.syntax unified
 357              		.thumb
 358              		.thumb_func
 359              		.fpu softvfp
 361              	MX_ADC1_Init:
 362              	.LFB68:
 238:Src/main.c    **** 
 363              		.loc 1 238 0
 364              		.cfi_startproc
 365              		@ args = 0, pretend = 0, frame = 16
 366              		@ frame_needed = 0, uses_anonymous_args = 0
 367 0000 00B5     		push	{lr}
 368              	.LCFI8:
 369              		.cfi_def_cfa_offset 4
 370              		.cfi_offset 14, -4
 371 0002 85B0     		sub	sp, sp, #20
 372              	.LCFI9:
 373              		.cfi_def_cfa_offset 24
 244:Src/main.c    ****   hadc1.Init.ScanConvMode = ADC_SCAN_DISABLE;
 374              		.loc 1 244 0
 375 0004 1348     		ldr	r0, .L27
 376 0006 144B     		ldr	r3, .L27+4
 377 0008 0360     		str	r3, [r0]
 245:Src/main.c    ****   hadc1.Init.ContinuousConvMode = ENABLE;
 378              		.loc 1 245 0
 379 000a 0023     		movs	r3, #0
 380 000c 8360     		str	r3, [r0, #8]
 246:Src/main.c    ****   hadc1.Init.DiscontinuousConvMode = DISABLE;
 381              		.loc 1 246 0
 382 000e 0122     		movs	r2, #1
 383 0010 C260     		str	r2, [r0, #12]
 247:Src/main.c    ****   hadc1.Init.ExternalTrigConv = ADC_SOFTWARE_START;
 384              		.loc 1 247 0
 385 0012 4361     		str	r3, [r0, #20]
 248:Src/main.c    ****   hadc1.Init.DataAlign = ADC_DATAALIGN_RIGHT;
 386              		.loc 1 248 0
 387 0014 4FF46021 		mov	r1, #917504
 388 0018 C161     		str	r1, [r0, #28]
 249:Src/main.c    ****   hadc1.Init.NbrOfConversion = 1;
 389              		.loc 1 249 0
 390 001a 4360     		str	r3, [r0, #4]
 250:Src/main.c    ****   if (HAL_ADC_Init(&hadc1) != HAL_OK)
 391              		.loc 1 250 0
 392 001c 0261     		str	r2, [r0, #16]
 251:Src/main.c    ****   {
 393              		.loc 1 251 0
 394 001e FFF7FEFF 		bl	HAL_ADC_Init
 395              	.LVL14:
 396 0022 68B9     		cbnz	r0, .L25
 258:Src/main.c    ****   sConfig.Rank = ADC_REGULAR_RANK_1;
 397              		.loc 1 258 0
 398 0024 0023     		movs	r3, #0
 399 0026 0193     		str	r3, [sp, #4]
 259:Src/main.c    ****   sConfig.SamplingTime = ADC_SAMPLETIME_239CYCLES_5;
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 15


 400              		.loc 1 259 0
 401 0028 0123     		movs	r3, #1
 402 002a 0293     		str	r3, [sp, #8]
 260:Src/main.c    ****   if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
 403              		.loc 1 260 0
 404 002c 0723     		movs	r3, #7
 405 002e 0393     		str	r3, [sp, #12]
 261:Src/main.c    ****   {
 406              		.loc 1 261 0
 407 0030 01A9     		add	r1, sp, #4
 408 0032 0848     		ldr	r0, .L27
 409 0034 FFF7FEFF 		bl	HAL_ADC_ConfigChannel
 410              	.LVL15:
 411 0038 30B9     		cbnz	r0, .L26
 266:Src/main.c    **** 
 412              		.loc 1 266 0
 413 003a 05B0     		add	sp, sp, #20
 414              	.LCFI10:
 415              		.cfi_remember_state
 416              		.cfi_def_cfa_offset 4
 417              		@ sp needed
 418 003c 5DF804FB 		ldr	pc, [sp], #4
 419              	.L25:
 420              	.LCFI11:
 421              		.cfi_restore_state
 253:Src/main.c    ****   }
 422              		.loc 1 253 0
 423 0040 FD21     		movs	r1, #253
 424 0042 0648     		ldr	r0, .L27+8
 425 0044 FFF7FEFF 		bl	_Error_Handler
 426              	.LVL16:
 427              	.L26:
 263:Src/main.c    ****   }
 428              		.loc 1 263 0
 429 0048 40F20711 		movw	r1, #263
 430 004c 0348     		ldr	r0, .L27+8
 431 004e FFF7FEFF 		bl	_Error_Handler
 432              	.LVL17:
 433              	.L28:
 434 0052 00BF     		.align	2
 435              	.L27:
 436 0054 00000000 		.word	hadc1
 437 0058 00240140 		.word	1073816576
 438 005c 00000000 		.word	.LC0
 439              		.cfi_endproc
 440              	.LFE68:
 442              		.section	.text.SystemClock_Config,"ax",%progbits
 443              		.align	1
 444              		.global	SystemClock_Config
 445              		.syntax unified
 446              		.thumb
 447              		.thumb_func
 448              		.fpu softvfp
 450              	SystemClock_Config:
 451              	.LFB67:
 186:Src/main.c    **** 
 452              		.loc 1 186 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 16


 453              		.cfi_startproc
 454              		@ args = 0, pretend = 0, frame = 80
 455              		@ frame_needed = 0, uses_anonymous_args = 0
 456 0000 00B5     		push	{lr}
 457              	.LCFI12:
 458              		.cfi_def_cfa_offset 4
 459              		.cfi_offset 14, -4
 460 0002 95B0     		sub	sp, sp, #84
 461              	.LCFI13:
 462              		.cfi_def_cfa_offset 88
 194:Src/main.c    ****   RCC_OscInitStruct.HSIState = RCC_HSI_ON;
 463              		.loc 1 194 0
 464 0004 0223     		movs	r3, #2
 465 0006 0A93     		str	r3, [sp, #40]
 195:Src/main.c    ****   RCC_OscInitStruct.HSICalibrationValue = 16;
 466              		.loc 1 195 0
 467 0008 0123     		movs	r3, #1
 468 000a 0E93     		str	r3, [sp, #56]
 196:Src/main.c    ****   RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
 469              		.loc 1 196 0
 470 000c 1023     		movs	r3, #16
 471 000e 0F93     		str	r3, [sp, #60]
 197:Src/main.c    ****   if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
 472              		.loc 1 197 0
 473 0010 0023     		movs	r3, #0
 474 0012 1193     		str	r3, [sp, #68]
 198:Src/main.c    ****   {
 475              		.loc 1 198 0
 476 0014 0AA8     		add	r0, sp, #40
 477 0016 FFF7FEFF 		bl	HAL_RCC_OscConfig
 478              	.LVL18:
 479 001a 30BB     		cbnz	r0, .L34
 205:Src/main.c    ****                               |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
 480              		.loc 1 205 0
 481 001c 0F23     		movs	r3, #15
 482 001e 0593     		str	r3, [sp, #20]
 207:Src/main.c    ****   RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
 483              		.loc 1 207 0
 484 0020 0021     		movs	r1, #0
 485 0022 0691     		str	r1, [sp, #24]
 208:Src/main.c    ****   RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
 486              		.loc 1 208 0
 487 0024 0791     		str	r1, [sp, #28]
 209:Src/main.c    ****   RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;
 488              		.loc 1 209 0
 489 0026 0891     		str	r1, [sp, #32]
 210:Src/main.c    **** 
 490              		.loc 1 210 0
 491 0028 0991     		str	r1, [sp, #36]
 212:Src/main.c    ****   {
 492              		.loc 1 212 0
 493 002a 05A8     		add	r0, sp, #20
 494 002c FFF7FEFF 		bl	HAL_RCC_ClockConfig
 495              	.LVL19:
 496 0030 F8B9     		cbnz	r0, .L35
 217:Src/main.c    ****   PeriphClkInit.AdcClockSelection = RCC_ADCPCLK2_DIV2;
 497              		.loc 1 217 0
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 17


 498 0032 0223     		movs	r3, #2
 499 0034 0193     		str	r3, [sp, #4]
 218:Src/main.c    ****   if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
 500              		.loc 1 218 0
 501 0036 0023     		movs	r3, #0
 502 0038 0393     		str	r3, [sp, #12]
 219:Src/main.c    ****   {
 503              		.loc 1 219 0
 504 003a 01A8     		add	r0, sp, #4
 505 003c FFF7FEFF 		bl	HAL_RCCEx_PeriphCLKConfig
 506              	.LVL20:
 507 0040 D8B9     		cbnz	r0, .L36
 226:Src/main.c    **** 
 508              		.loc 1 226 0
 509 0042 FFF7FEFF 		bl	HAL_RCC_GetHCLKFreq
 510              	.LVL21:
 511 0046 0F4B     		ldr	r3, .L37
 512 0048 A3FB0030 		umull	r3, r0, r3, r0
 513 004c 8009     		lsrs	r0, r0, #6
 514 004e FFF7FEFF 		bl	HAL_SYSTICK_Config
 515              	.LVL22:
 230:Src/main.c    **** 
 516              		.loc 1 230 0
 517 0052 0420     		movs	r0, #4
 518 0054 FFF7FEFF 		bl	HAL_SYSTICK_CLKSourceConfig
 519              	.LVL23:
 233:Src/main.c    **** }
 520              		.loc 1 233 0
 521 0058 0022     		movs	r2, #0
 522 005a 1146     		mov	r1, r2
 523 005c 4FF0FF30 		mov	r0, #-1
 524 0060 FFF7FEFF 		bl	HAL_NVIC_SetPriority
 525              	.LVL24:
 234:Src/main.c    **** 
 526              		.loc 1 234 0
 527 0064 15B0     		add	sp, sp, #84
 528              	.LCFI14:
 529              		.cfi_remember_state
 530              		.cfi_def_cfa_offset 4
 531              		@ sp needed
 532 0066 5DF804FB 		ldr	pc, [sp], #4
 533              	.L34:
 534              	.LCFI15:
 535              		.cfi_restore_state
 200:Src/main.c    ****   }
 536              		.loc 1 200 0
 537 006a C821     		movs	r1, #200
 538 006c 0648     		ldr	r0, .L37+4
 539 006e FFF7FEFF 		bl	_Error_Handler
 540              	.LVL25:
 541              	.L35:
 214:Src/main.c    ****   }
 542              		.loc 1 214 0
 543 0072 D621     		movs	r1, #214
 544 0074 0448     		ldr	r0, .L37+4
 545 0076 FFF7FEFF 		bl	_Error_Handler
 546              	.LVL26:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 18


 547              	.L36:
 221:Src/main.c    ****   }
 548              		.loc 1 221 0
 549 007a DD21     		movs	r1, #221
 550 007c 0248     		ldr	r0, .L37+4
 551 007e FFF7FEFF 		bl	_Error_Handler
 552              	.LVL27:
 553              	.L38:
 554 0082 00BF     		.align	2
 555              	.L37:
 556 0084 D34D6210 		.word	274877907
 557 0088 00000000 		.word	.LC0
 558              		.cfi_endproc
 559              	.LFE67:
 561              		.section	.text.main,"ax",%progbits
 562              		.align	1
 563              		.global	main
 564              		.syntax unified
 565              		.thumb
 566              		.thumb_func
 567              		.fpu softvfp
 569              	main:
 570              	.LFB66:
  82:Src/main.c    ****   /* USER CODE BEGIN 1 */
 571              		.loc 1 82 0
 572              		.cfi_startproc
 573              		@ args = 0, pretend = 0, frame = 784
 574              		@ frame_needed = 0, uses_anonymous_args = 0
 575 0000 10B5     		push	{r4, lr}
 576              	.LCFI16:
 577              		.cfi_def_cfa_offset 8
 578              		.cfi_offset 4, -8
 579              		.cfi_offset 14, -4
 580 0002 ADF5487D 		sub	sp, sp, #800
 581              	.LCFI17:
 582              		.cfi_def_cfa_offset 808
  90:Src/main.c    **** 
 583              		.loc 1 90 0
 584 0006 FFF7FEFF 		bl	HAL_Init
 585              	.LVL28:
  97:Src/main.c    **** 
 586              		.loc 1 97 0
 587 000a FFF7FEFF 		bl	SystemClock_Config
 588              	.LVL29:
 104:Src/main.c    ****   MX_DMA_Init();
 589              		.loc 1 104 0
 590 000e FFF7FEFF 		bl	MX_GPIO_Init
 591              	.LVL30:
 105:Src/main.c    ****   MX_SPI2_Init();
 592              		.loc 1 105 0
 593 0012 FFF7FEFF 		bl	MX_DMA_Init
 594              	.LVL31:
 106:Src/main.c    ****   MX_ADC1_Init();
 595              		.loc 1 106 0
 596 0016 FFF7FEFF 		bl	MX_SPI2_Init
 597              	.LVL32:
 107:Src/main.c    ****   /* USER CODE BEGIN 2 */
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 19


 598              		.loc 1 107 0
 599 001a FFF7FEFF 		bl	MX_ADC1_Init
 600              	.LVL33:
 110:Src/main.c    **** 	ILI9341_Init(&hspi2);
 601              		.loc 1 110 0
 602 001e 4C4B     		ldr	r3, .L49
 603 0020 0822     		movs	r2, #8
 604 0022 1A61     		str	r2, [r3, #16]
 111:Src/main.c    **** 	xpt2046_enable_irq();
 605              		.loc 1 111 0
 606 0024 4B4C     		ldr	r4, .L49+4
 607 0026 2046     		mov	r0, r4
 608 0028 FFF7FEFF 		bl	ILI9341_Init
 609              	.LVL34:
 112:Src/main.c    **** 	ILI9341_SPI_BeginDraw(&hspi2);
 610              		.loc 1 112 0
 611 002c FFF7FEFF 		bl	xpt2046_enable_irq
 612              	.LVL35:
 113:Src/main.c    **** 	ILI9341_Draw_Main_Interface(&hspi2);
 613              		.loc 1 113 0
 614 0030 2046     		mov	r0, r4
 615 0032 FFF7FEFF 		bl	ILI9341_SPI_BeginDraw
 616              	.LVL36:
 114:Src/main.c    **** 	HAL_ADC_Start(&hadc1);
 617              		.loc 1 114 0
 618 0036 2046     		mov	r0, r4
 619 0038 FFF7FEFF 		bl	ILI9341_Draw_Main_Interface
 620              	.LVL37:
 115:Src/main.c    **** 
 621              		.loc 1 115 0
 622 003c 4648     		ldr	r0, .L49+8
 623 003e FFF7FEFF 		bl	HAL_ADC_Start
 624              	.LVL38:
 625 0042 66E0     		b	.L47
 626              	.LVL39:
 627              	.L42:
 628              	.LBB6:
 629              	.LBB7:
 139:Src/main.c    **** 	}
 630              		.loc 1 139 0 discriminator 3
 631 0044 C8AB     		add	r3, sp, #800
 632 0046 03EB4203 		add	r3, r3, r2, lsl #1
 633 004a A3F50073 		sub	r3, r3, #512
 634 004e 1B88     		ldrh	r3, [r3]
 635 0050 4249     		ldr	r1, .L49+12
 636 0052 A1FB0313 		umull	r1, r3, r1, r3
 637 0056 C3F30713 		ubfx	r3, r3, #4, #8
 638 005a 08A9     		add	r1, sp, #32
 639 005c 8B54     		strb	r3, [r1, r2]
 137:Src/main.c    **** 	{
 640              		.loc 1 137 0 discriminator 3
 641 005e 0132     		adds	r2, r2, #1
 642              	.LVL40:
 643              	.L41:
 137:Src/main.c    **** 	{
 644              		.loc 1 137 0 is_stmt 0 discriminator 1
 645 0060 FF2A     		cmp	r2, #255
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 20


 646 0062 EFD9     		bls	.L42
 647              	.LBE7:
 145:Src/main.c    **** 	for(int i=0;i<sizeof(char_buffer)-1; i++)
 648              		.loc 1 145 0 is_stmt 1
 649 0064 BDF81E22 		ldrh	r2, [sp, #542]
 650              	.LVL41:
 651 0068 3D49     		ldr	r1, .L49+16
 652 006a 04A8     		add	r0, sp, #16
 653 006c FFF7FEFF 		bl	sprintf
 654              	.LVL42:
 655              	.LBB8:
 146:Src/main.c    **** 	{
 656              		.loc 1 146 0
 657 0070 0024     		movs	r4, #0
 658 0072 14E0     		b	.L43
 659              	.LVL43:
 660              	.L44:
 148:Src/main.c    **** 	}
 661              		.loc 1 148 0 discriminator 3
 662 0074 04AB     		add	r3, sp, #16
 663 0076 195D     		ldrb	r1, [r3, r4]	@ zero_extendqisi2
 664 0078 3A4B     		ldr	r3, .L49+20
 665 007a 1A5D     		ldrb	r2, [r3, r4]	@ zero_extendqisi2
 666 007c 04EB4403 		add	r3, r4, r4, lsl #1
 667 0080 04EB8303 		add	r3, r4, r3, lsl #2
 668 0084 0533     		adds	r3, r3, #5
 669 0086 0220     		movs	r0, #2
 670 0088 0290     		str	r0, [sp, #8]
 671 008a 46F2E320 		movw	r0, #25315
 672 008e 0190     		str	r0, [sp, #4]
 673 0090 D220     		movs	r0, #210
 674 0092 0090     		str	r0, [sp]
 675 0094 9BB2     		uxth	r3, r3
 676 0096 2F48     		ldr	r0, .L49+4
 677 0098 FFF7FEFF 		bl	ILI9341_Draw_Char
 678              	.LVL44:
 146:Src/main.c    **** 	{
 679              		.loc 1 146 0 discriminator 3
 680 009c 0134     		adds	r4, r4, #1
 681              	.LVL45:
 682              	.L43:
 146:Src/main.c    **** 	{
 683              		.loc 1 146 0 is_stmt 0 discriminator 1
 684 009e 042C     		cmp	r4, #4
 685 00a0 E8D9     		bls	.L44
 686              	.LBE8:
 150:Src/main.c    **** 	
 687              		.loc 1 150 0 is_stmt 1
 688 00a2 304B     		ldr	r3, .L49+20
 689 00a4 04AA     		add	r2, sp, #16
 690 00a6 92E80300 		ldm	r2, {r0, r1}
 691 00aa 1860     		str	r0, [r3]
 692 00ac 9980     		strh	r1, [r3, #4]	@ movhi
 154:Src/main.c    **** 	for(int i=0;i<sizeof(char_buffer2)-1; i++)
 693              		.loc 1 154 0
 694 00ae 2E4B     		ldr	r3, .L49+24
 695 00b0 1A88     		ldrh	r2, [r3]
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 21


 696 00b2 2B49     		ldr	r1, .L49+16
 697 00b4 06A8     		add	r0, sp, #24
 698 00b6 FFF7FEFF 		bl	sprintf
 699              	.LVL46:
 700              	.LBB9:
 155:Src/main.c    **** 	{
 701              		.loc 1 155 0
 702 00ba 0024     		movs	r4, #0
 703              	.LVL47:
 704 00bc 14E0     		b	.L45
 705              	.LVL48:
 706              	.L46:
 157:Src/main.c    **** 	}
 707              		.loc 1 157 0 discriminator 3
 708 00be 06AB     		add	r3, sp, #24
 709 00c0 195D     		ldrb	r1, [r3, r4]	@ zero_extendqisi2
 710 00c2 2A4B     		ldr	r3, .L49+28
 711 00c4 1A5D     		ldrb	r2, [r3, r4]	@ zero_extendqisi2
 712 00c6 04EB4403 		add	r3, r4, r4, lsl #1
 713 00ca 04EB8303 		add	r3, r4, r3, lsl #2
 714 00ce 6433     		adds	r3, r3, #100
 715 00d0 0220     		movs	r0, #2
 716 00d2 0290     		str	r0, [sp, #8]
 717 00d4 46F2E320 		movw	r0, #25315
 718 00d8 0190     		str	r0, [sp, #4]
 719 00da D220     		movs	r0, #210
 720 00dc 0090     		str	r0, [sp]
 721 00de 9BB2     		uxth	r3, r3
 722 00e0 1C48     		ldr	r0, .L49+4
 723 00e2 FFF7FEFF 		bl	ILI9341_Draw_Char
 724              	.LVL49:
 155:Src/main.c    **** 	{
 725              		.loc 1 155 0 discriminator 3
 726 00e6 0134     		adds	r4, r4, #1
 727              	.LVL50:
 728              	.L45:
 155:Src/main.c    **** 	{
 729              		.loc 1 155 0 is_stmt 0 discriminator 1
 730 00e8 042C     		cmp	r4, #4
 731 00ea E8D9     		bls	.L46
 732              	.LBE9:
 159:Src/main.c    **** 	
 733              		.loc 1 159 0 is_stmt 1
 734 00ec 1F4B     		ldr	r3, .L49+28
 735 00ee 06AA     		add	r2, sp, #24
 736 00f0 92E80300 		ldm	r2, {r0, r1}
 737 00f4 1860     		str	r0, [r3]
 738 00f6 9980     		strh	r1, [r3, #4]	@ movhi
 161:Src/main.c    **** 	memcpy(random_data_old,random_data,sizeof(random_data));
 739              		.loc 1 161 0
 740 00f8 1D4C     		ldr	r4, .L49+32
 741              	.LVL51:
 742 00fa 46F2E323 		movw	r3, #25315
 743 00fe 08AA     		add	r2, sp, #32
 744 0100 2146     		mov	r1, r4
 745 0102 1448     		ldr	r0, .L49+4
 746 0104 FFF7FEFF 		bl	ILI9341_Draw_Graph
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 22


 747              	.LVL52:
 162:Src/main.c    **** 	/*
 748              		.loc 1 162 0
 749 0108 FF22     		movs	r2, #255
 750 010a 08A9     		add	r1, sp, #32
 751 010c 2046     		mov	r0, r4
 752 010e FFF7FEFF 		bl	memcpy
 753              	.LVL53:
 754              	.L47:
 126:Src/main.c    **** 	HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_SET);
 755              		.loc 1 126 0
 756 0112 184C     		ldr	r4, .L49+36
 757 0114 0022     		movs	r2, #0
 758 0116 4FF40051 		mov	r1, #8192
 759 011a 2046     		mov	r0, r4
 760 011c FFF7FEFF 		bl	HAL_GPIO_WritePin
 761              	.LVL54:
 127:Src/main.c    **** 	
 762              		.loc 1 127 0
 763 0120 0122     		movs	r2, #1
 764 0122 4FF40051 		mov	r1, #8192
 765 0126 2046     		mov	r0, r4
 766 0128 FFF7FEFF 		bl	HAL_GPIO_WritePin
 767              	.LVL55:
 129:Src/main.c    **** 	ticks = HAL_GetTick();
 768              		.loc 1 129 0
 769 012c 124B     		ldr	r3, .L49+40
 770 012e 0022     		movs	r2, #0
 771 0130 1A70     		strb	r2, [r3]
 130:Src/main.c    **** 	HAL_ADC_Start_DMA(&hadc1, ADCValues, 255);
 772              		.loc 1 130 0
 773 0132 FFF7FEFF 		bl	HAL_GetTick
 774              	.LVL56:
 775 0136 0C4B     		ldr	r3, .L49+24
 776 0138 1860     		str	r0, [r3]
 131:Src/main.c    **** 	while(blocked == 0){}
 777              		.loc 1 131 0
 778 013a FF22     		movs	r2, #255
 779 013c 48A9     		add	r1, sp, #288
 780 013e 0648     		ldr	r0, .L49+8
 781 0140 FFF7FEFF 		bl	HAL_ADC_Start_DMA
 782              	.LVL57:
 783              	.L40:
 132:Src/main.c    **** 	
 784              		.loc 1 132 0 discriminator 1
 785 0144 0C4B     		ldr	r3, .L49+40
 786 0146 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 787 0148 002B     		cmp	r3, #0
 788 014a FBD0     		beq	.L40
 789              	.LBB10:
 137:Src/main.c    **** 	{
 790              		.loc 1 137 0
 791 014c 0022     		movs	r2, #0
 792 014e 87E7     		b	.L41
 793              	.L50:
 794              		.align	2
 795              	.L49:
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 23


 796 0150 000C0140 		.word	1073810432
 797 0154 00000000 		.word	hspi2
 798 0158 00000000 		.word	hadc1
 799 015c A38B2EBA 		.word	-1171354717
 800 0160 00000000 		.word	.LC1
 801 0164 00000000 		.word	.LANCHOR2
 802 0168 00000000 		.word	.LANCHOR1
 803 016c 00000000 		.word	.LANCHOR3
 804 0170 00000000 		.word	.LANCHOR4
 805 0174 00100140 		.word	1073811456
 806 0178 00000000 		.word	.LANCHOR0
 807              	.LBE10:
 808              	.LBE6:
 809              		.cfi_endproc
 810              	.LFE66:
 812              		.global	blocked
 813              		.comm	hspi2,88,4
 814              		.comm	hdma_adc1,68,4
 815              		.comm	hadc1,48,4
 816              		.section	.bss.old_char_buffer.6705,"aw",%nobits
 817              		.align	2
 818              		.set	.LANCHOR2,. + 0
 821              	old_char_buffer.6705:
 822 0000 00000000 		.space	6
 822      0000
 823              		.section	.bss.old_char_buffer2.6711,"aw",%nobits
 824              		.align	2
 825              		.set	.LANCHOR3,. + 0
 828              	old_char_buffer2.6711:
 829 0000 00000000 		.space	6
 829      0000
 830              		.section	.bss.random_data_old.6699,"aw",%nobits
 831              		.align	2
 832              		.set	.LANCHOR4,. + 0
 835              	random_data_old.6699:
 836 0000 00000000 		.space	255
 836      00000000 
 836      00000000 
 836      00000000 
 836      00000000 
 837              		.section	.data.blocked,"aw",%progbits
 838              		.set	.LANCHOR0,. + 0
 841              	blocked:
 842 0000 01       		.byte	1
 843              		.section	.data.ticks,"aw",%progbits
 844              		.align	2
 845              		.set	.LANCHOR1,. + 0
 848              	ticks:
 849 0000 64000000 		.word	100
 850              		.section	.rodata.MX_SPI2_Init.str1.4,"aMS",%progbits,1
 851              		.align	2
 852              	.LC0:
 853 0000 5372632F 		.ascii	"Src/main.c\000"
 853      6D61696E 
 853      2E6300
 854              		.section	.rodata.main.str1.4,"aMS",%progbits,1
 855              		.align	2
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 24


 856              	.LC1:
 857 0000 25303575 		.ascii	"%05u\000"
 857      00
 858              		.text
 859              	.Letext0:
 860              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 861              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 862              		.file 4 "Drivers/CMSIS/Include/core_cm3.h"
 863              		.file 5 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/system_stm32f1xx.h"
 864              		.file 6 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
 865              		.file 7 "Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"
 866              		.file 8 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 867              		.file 9 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\include
 868              		.file 10 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\lib\\gcc\\arm-none-ea
 869              		.file 11 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\includ
 870              		.file 12 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"
 871              		.file 13 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"
 872              		.file 14 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"
 873              		.file 15 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio.h"
 874              		.file 16 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma.h"
 875              		.file 17 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc.h"
 876              		.file 18 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_spi.h"
 877              		.file 19 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"
 878              		.file 20 "Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_cortex.h"
 879              		.file 21 "Inc/ili9341.h"
 880              		.file 22 "c:\\program files (x86)\\gnu tools arm embedded\\7 2018-q2-update\\arm-none-eabi\\includ
 881              		.file 23 "Inc/xpt2046.h"
 882              		.file 24 "<built-in>"
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 25


DEFINED SYMBOLS
                            *ABS*:00000000 main.c
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:16     .text.MX_GPIO_Init:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:22     .text.MX_GPIO_Init:00000000 MX_GPIO_Init
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:160    .text.MX_GPIO_Init:000000c4 $d
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:168    .text.MX_DMA_Init:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:174    .text.MX_DMA_Init:00000000 MX_DMA_Init
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:217    .text.MX_DMA_Init:00000030 $d
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:222    .text.HAL_ADC_ConvCpltCallback:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:229    .text.HAL_ADC_ConvCpltCallback:00000000 HAL_ADC_ConvCpltCallback
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:257    .text.HAL_ADC_ConvCpltCallback:00000018 $d
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:263    .text._Error_Handler:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:270    .text._Error_Handler:00000000 _Error_Handler
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:285    .text.MX_SPI2_Init:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:291    .text.MX_SPI2_Init:00000000 MX_SPI2_Init
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:348    .text.MX_SPI2_Init:0000003c $d
                            *COM*:00000058 hspi2
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:355    .text.MX_ADC1_Init:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:361    .text.MX_ADC1_Init:00000000 MX_ADC1_Init
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:436    .text.MX_ADC1_Init:00000054 $d
                            *COM*:00000030 hadc1
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:443    .text.SystemClock_Config:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:450    .text.SystemClock_Config:00000000 SystemClock_Config
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:556    .text.SystemClock_Config:00000084 $d
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:562    .text.main:00000000 $t
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:569    .text.main:00000000 main
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:796    .text.main:00000150 $d
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:841    .data.blocked:00000000 blocked
                            *COM*:00000044 hdma_adc1
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:817    .bss.old_char_buffer.6705:00000000 $d
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:821    .bss.old_char_buffer.6705:00000000 old_char_buffer.6705
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:824    .bss.old_char_buffer2.6711:00000000 $d
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:828    .bss.old_char_buffer2.6711:00000000 old_char_buffer2.6711
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:831    .bss.random_data_old.6699:00000000 $d
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:835    .bss.random_data_old.6699:00000000 random_data_old.6699
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:844    .data.ticks:00000000 $d
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:848    .data.ticks:00000000 ticks
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:851    .rodata.MX_SPI2_Init.str1.4:00000000 $d
C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s:855    .rodata.main.str1.4:00000000 $d

UNDEFINED SYMBOLS
HAL_GPIO_WritePin
HAL_GPIO_Init
HAL_NVIC_SetPriority
HAL_NVIC_EnableIRQ
HAL_GetTick
HAL_SPI_Init
HAL_ADC_Init
HAL_ADC_ConfigChannel
HAL_RCC_OscConfig
HAL_RCC_ClockConfig
HAL_RCCEx_PeriphCLKConfig
HAL_RCC_GetHCLKFreq
HAL_SYSTICK_Config
HAL_SYSTICK_CLKSourceConfig
HAL_Init
ILI9341_Init
ARM GAS  C:\Users\crist\AppData\Local\Temp\ccFp3MlN.s 			page 26


xpt2046_enable_irq
ILI9341_SPI_BeginDraw
ILI9341_Draw_Main_Interface
HAL_ADC_Start
sprintf
ILI9341_Draw_Char
ILI9341_Draw_Graph
memcpy
HAL_ADC_Start_DMA
