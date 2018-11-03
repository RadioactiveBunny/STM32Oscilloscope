#include "main.h"
#include "stm32f1xx_hal.h"
#include "ili9341.h"
#include "font.h"

#define WAIT_TX_CHECK_TIMEOUT(Timeout) \
while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE))) \
{ \
	if((HAL_GetTick()-tickstart_local) >=  Timeout) \
	{ \
		return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT); \
	} \
} \


static __attribute__((noinline)) HAL_StatusTypeDef ILI9341_SPI_Error(SPI_HandleTypeDef* hspi_handle, HAL_StatusTypeDef errorcode)
{
	hspi_handle->State = HAL_SPI_STATE_READY;
	__HAL_UNLOCK(hspi_handle);
	LCD_CS_PORT->BSRR = LCD_CS_PIN;
	return errorcode;
}


HAL_StatusTypeDef ILI9341_SPI_BeginDraw(SPI_HandleTypeDef* hspi_handle)
{
	/*chip select ili9341*/
	LCD_CS_PORT->BSRR=(uint32_t)LCD_CS_PIN << 16U;

	/* Check Direction parameter */
	assert_param(IS_SPI_DIRECTION_2LINES_OR_1LINE(hspi_handle->Init.Direction));

	/* Process Locked */
	__HAL_LOCK(hspi_handle);

	if(hspi_handle->State != HAL_SPI_STATE_READY)
	{
		return ILI9341_SPI_Error(hspi_handle, HAL_BUSY);
	}

	/* Set the transaction information */
	hspi_handle->State       = HAL_SPI_STATE_BUSY_TX;
	hspi_handle->ErrorCode   = HAL_SPI_ERROR_NONE;

	/*Init field not used in handle to zero */
	hspi_handle->pRxBuffPtr  = (uint8_t *)NULL;
	hspi_handle->RxXferSize  = 0U;
	hspi_handle->RxXferCount = 0U;
	hspi_handle->TxISR       = NULL;
	hspi_handle->RxISR       = NULL;

	/* Configure communication direction : 1Line */
	if(hspi_handle->Init.Direction == SPI_DIRECTION_1LINE)
	{
		SPI_1LINE_TX(hspi_handle);
	}

	#if (USE_SPI_CRC != 0U)
	/* Reset CRC Calculation */
	if(hspi_handle->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
	{
		SPI_RESET_CRC(hspi_handle);
	}
	#endif /* USE_SPI_CRC */

	/* Check if the SPI is already enabled */
	if((hspi_handle->Instance->CR1 & SPI_CR1_SPE) != SPI_CR1_SPE)
	{
		/* Enable SPI peripheral */
		__HAL_SPI_ENABLE(hspi_handle);
	}
	return HAL_OK;
}


HAL_StatusTypeDef ILI9341_SPI_StopDraw(SPI_HandleTypeDef* hspi_handle)
{
	/* Clear overrun flag in 2 Lines communication mode because received is not read */
	if(hspi_handle->Init.Direction == SPI_DIRECTION_2LINES)
	{
		__HAL_SPI_CLEAR_OVRFLAG(hspi_handle);
	}
	#if (USE_SPI_CRC != 0U)
	/* Enable CRC Transmission */
	if(hspi_handle->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
	{
		SET_BIT(hspi_handle->Instance->CR1, SPI_CR1_CRCNEXT);
	}
	#endif /* USE_SPI_CRC */

	if(hspi_handle->ErrorCode != HAL_SPI_ERROR_NONE)
	{
		return ILI9341_SPI_Error(hspi_handle, HAL_ERROR);
	}
	LCD_CS_PORT->BSRR=(uint32_t)LCD_CS_PIN << 16U;
	return ILI9341_SPI_Error(hspi_handle, HAL_OK);
}


/* Send command (char) to LCD */
HAL_StatusTypeDef ILI9341_Write_Command(SPI_HandleTypeDef* hspi_handle, uint8_t Command)
{
	const uint32_t tickstart_local = HAL_GetTick();
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)Command;
	WAIT_TX_CHECK_TIMEOUT(2)
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	return HAL_OK;
}


/* Send Data (char) to LCD */
HAL_StatusTypeDef ILI9341_Write_Data(SPI_HandleTypeDef* hspi_handle, uint8_t Data)
{
	const uint32_t tickstart_local = HAL_GetTick();
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)Data;
	WAIT_TX_CHECK_TIMEOUT(2)
	return HAL_OK;
}


void ILI9341_Enable(void)
{
	LCD_RST_PORT->BSRR = LCD_RST_PIN;
}


void ILI9341_Reset(void)
{
	LCD_RST_PORT->BSRR =(uint32_t)LCD_RST_PIN<<16U;
	HAL_Delay(400);
	LCD_RST_PORT->BSRR = LCD_RST_PIN;
}


/*Initialize LCD display*/
HAL_StatusTypeDef ILI9341_Init(SPI_HandleTypeDef* hspi_handle)
{
	ILI9341_Enable();
	ILI9341_Reset();
	//SOFTWARE RESET
	if(ILI9341_SPI_BeginDraw(hspi_handle) != HAL_OK)
		return HAL_BUSY;

	ILI9341_Write_Command(hspi_handle, 0x01);
	HAL_Delay(1000);

	//POWER CONTROL A
	ILI9341_Write_Command(hspi_handle, 0xCB);
	ILI9341_Write_Data(hspi_handle, 0x39);
	ILI9341_Write_Data(hspi_handle, 0x2C);
	ILI9341_Write_Data(hspi_handle, 0x00);
	ILI9341_Write_Data(hspi_handle, 0x34);
	ILI9341_Write_Data(hspi_handle, 0x02);

	//POWER CONTROL B
	ILI9341_Write_Command(hspi_handle, 0xCF);
	ILI9341_Write_Data(hspi_handle, 0x00);
	ILI9341_Write_Data(hspi_handle, 0xC1);
	ILI9341_Write_Data(hspi_handle, 0x30);

	//DRIVER TIMING CONTROL A
	ILI9341_Write_Command(hspi_handle, 0xE8);
	ILI9341_Write_Data(hspi_handle, 0x85);
	ILI9341_Write_Data(hspi_handle, 0x00);
	ILI9341_Write_Data(hspi_handle, 0x78);

	//DRIVER TIMING CONTROL B
	ILI9341_Write_Command(hspi_handle, 0xEA);
	ILI9341_Write_Data(hspi_handle, 0x00);
	ILI9341_Write_Data(hspi_handle, 0x00);

	//POWER ON SEQUENCE CONTROL
	ILI9341_Write_Command(hspi_handle, 0xED);
	ILI9341_Write_Data(hspi_handle, 0x64);
	ILI9341_Write_Data(hspi_handle, 0x03);
	ILI9341_Write_Data(hspi_handle, 0x12);
	ILI9341_Write_Data(hspi_handle, 0x81);

	//PUMP RATIO CONTROL
	ILI9341_Write_Command(hspi_handle, 0xF7);
	ILI9341_Write_Data(hspi_handle, 0x20);

	//POWER CONTROL,VRH[5:0]
	ILI9341_Write_Command(hspi_handle, 0xC0);
	ILI9341_Write_Data(hspi_handle, 0x23);

	//POWER CONTROL,SAP[2:0];BT[3:0]
	ILI9341_Write_Command(hspi_handle, 0xC1);
	ILI9341_Write_Data(hspi_handle, 0x10);

	//VCM CONTROL
	ILI9341_Write_Command(hspi_handle, 0xC5);
	ILI9341_Write_Data(hspi_handle, 0x3E);
	ILI9341_Write_Data(hspi_handle, 0x28);

	//VCM CONTROL 2
	ILI9341_Write_Command(hspi_handle, 0xC7);
	ILI9341_Write_Data(hspi_handle, 0x86);

	//MEMORY ACCESS CONTROL
	ILI9341_Write_Command(hspi_handle, 0x36);
	ILI9341_Write_Data(hspi_handle, 0x48);

	//PIXEL FORMAT
	ILI9341_Write_Command(hspi_handle, 0x3A);
	ILI9341_Write_Data(hspi_handle, 0x55);

	//FRAME RATIO CONTROL, STANDARD RGB COLOR
	ILI9341_Write_Command(hspi_handle, 0xB1);
	ILI9341_Write_Data(hspi_handle, 0x00);
	ILI9341_Write_Data(hspi_handle, 0x18);

	//DISPLAY FUNCTION CONTROL
	ILI9341_Write_Command(hspi_handle, 0xB6);
	ILI9341_Write_Data(hspi_handle, 0x08);
	ILI9341_Write_Data(hspi_handle, 0x82);
	ILI9341_Write_Data(hspi_handle, 0x27);

	//3GAMMA FUNCTION DISABLE
	ILI9341_Write_Command(hspi_handle, 0xF2);
	ILI9341_Write_Data(hspi_handle, 0x00);

	//GAMMA CURVE SELECTED
	ILI9341_Write_Command(hspi_handle, 0x26);
	ILI9341_Write_Data(hspi_handle, 0x01);

	//POSITIVE GAMMA CORRECTION
	ILI9341_Write_Command(hspi_handle, 0xE0);
	ILI9341_Write_Data(hspi_handle, 0x0F);
	ILI9341_Write_Data(hspi_handle, 0x31);
	ILI9341_Write_Data(hspi_handle, 0x2B);
	ILI9341_Write_Data(hspi_handle, 0x0C);
	ILI9341_Write_Data(hspi_handle, 0x0E);
	ILI9341_Write_Data(hspi_handle, 0x08);
	ILI9341_Write_Data(hspi_handle, 0x4E);
	ILI9341_Write_Data(hspi_handle, 0xF1);
	ILI9341_Write_Data(hspi_handle, 0x37);
	ILI9341_Write_Data(hspi_handle, 0x07);
	ILI9341_Write_Data(hspi_handle, 0x10);
	ILI9341_Write_Data(hspi_handle, 0x03);
	ILI9341_Write_Data(hspi_handle, 0x0E);
	ILI9341_Write_Data(hspi_handle, 0x09);
	ILI9341_Write_Data(hspi_handle, 0x00);

	//NEGATIVE GAMMA CORRECTION
	ILI9341_Write_Command(hspi_handle, 0xE1);
	ILI9341_Write_Data(hspi_handle, 0x00);
	ILI9341_Write_Data(hspi_handle, 0x0E);
	ILI9341_Write_Data(hspi_handle, 0x14);
	ILI9341_Write_Data(hspi_handle, 0x03);
	ILI9341_Write_Data(hspi_handle, 0x11);
	ILI9341_Write_Data(hspi_handle, 0x07);
	ILI9341_Write_Data(hspi_handle, 0x31);
	ILI9341_Write_Data(hspi_handle, 0xC1);
	ILI9341_Write_Data(hspi_handle, 0x48);
	ILI9341_Write_Data(hspi_handle, 0x08);
	ILI9341_Write_Data(hspi_handle, 0x0F);
	ILI9341_Write_Data(hspi_handle, 0x0C);
	ILI9341_Write_Data(hspi_handle, 0x31);
	ILI9341_Write_Data(hspi_handle, 0x36);
	ILI9341_Write_Data(hspi_handle, 0x0F);

	//EXIT SLEEP
	ILI9341_Write_Command(hspi_handle, 0x11);
	HAL_Delay(120);

	//TURN ON DISPLAY
	ILI9341_Write_Command(hspi_handle, 0x29);

	//STARTING ROTATION
	ILI9341_Write_Command(hspi_handle, 0x36);
	ILI9341_Write_Data(hspi_handle, SCREEN_HORIZONTAL_1);

	return ILI9341_SPI_StopDraw(hspi_handle);
}


ILI9341_Draw_Pixel(SPI_HandleTypeDef* hspi_handle, uint16_t posX, uint16_t posY, uint16_t Color)
{
	register const uint32_t tickstart_local = HAL_GetTick();
	const uint32_t Timeout = 500;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	/*Send 1 byte column address set command*/
	LCD_DC_PORT->BSRR = (uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2A;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	LCD_DC_PORT->BSRR = LCD_DC_PIN;
	/*send 4 bytes column address data*/
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posX>>8);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posX);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)((posX)>>8);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posX);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	
	/*send 1 byte page address set command*/
	LCD_DC_PORT->BSRR = (uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	LCD_DC_PORT->BSRR = LCD_DC_PIN;
	/*send 4 bytes page address data*/
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)((posY)>>8);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posY);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)((posY)>>8);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posY);
	WAIT_TX_CHECK_TIMEOUT(Timeout)

	/*send 1 byte memory write command*/
	LCD_DC_PORT->BSRR = (uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	LCD_DC_PORT->BSRR = LCD_DC_PIN;
	/*send 2 bytes color information*/
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(Color>>8);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(Color);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	return HAL_OK;
}


HAL_StatusTypeDef ILI9341_Draw_Graph(SPI_HandleTypeDef* hspi_handle, uint8_t* OldGraph, uint8_t* NewGraph, uint16_t Color)
{
	const uint32_t Timeout = 100U;
	register const uint32_t tickstart_local = HAL_GetTick();
	uint8_t lGraphPrev, lGraphCur, lGraphDiff; 
	WAIT_TX_CHECK_TIMEOUT(Timeout)		

	/*Send 1 byte column address set command*/
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2A;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	/*send 4 bytes column address data*/
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)25;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)25;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	
	/*First clear the old graph pixel*/
	/*send 1 byte page address set command*/
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	/*send 4 bytes page address data*/
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(OldGraph[0]);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(OldGraph[0]);
	WAIT_TX_CHECK_TIMEOUT(Timeout)

	/*send 1 byte memory write command*/
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	/*send 2 bytes color information*/
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(COLOR_1>>8);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)COLOR_1;
	WAIT_TX_CHECK_TIMEOUT(Timeout)

	
	/*Write the new graph pixel*/
	/*Send 1 byte page address set command*/
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	/*send 4 bytes page address data*/
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(NewGraph[0]);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(NewGraph[0]);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	
	/*send 1 byte memory write command*/
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	/*send 2 bytes color information*/
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(Color>>8);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)Color;
	WAIT_TX_CHECK_TIMEOUT(Timeout)


	for(uint8_t i=1; i<230;i++)
	{
		/*Send 1 byte column address set command*/
		LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2A;
		WAIT_TX_CHECK_TIMEOUT(Timeout)
		LCD_DC_PORT->BSRR=LCD_DC_PIN;
		/*send 4 bytes column address data*/
		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
		WAIT_TX_CHECK_TIMEOUT(Timeout)
		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)i+25;
		WAIT_TX_CHECK_TIMEOUT(Timeout)
		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
		WAIT_TX_CHECK_TIMEOUT(Timeout)
		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)i+25;
		WAIT_TX_CHECK_TIMEOUT(Timeout)
		
		/*First clear the old graph pixel*/
		/*send 1 byte page address set command*/
		LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
		/*Fetch old graph data from memory while we wait for the byte to send*/
		lGraphPrev = OldGraph[i-1];
	       	lGraphCur = OldGraph[i];
		WAIT_TX_CHECK_TIMEOUT(Timeout)
		LCD_DC_PORT->BSRR=LCD_DC_PIN;
		/*send 4 bytes page address data*/
		if(lGraphCur>=lGraphPrev)
		{
			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
			lGraphDiff = lGraphCur-lGraphPrev;
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphPrev);
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphCur);
			WAIT_TX_CHECK_TIMEOUT(Timeout)
		}
		else
		{
			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
			lGraphDiff = lGraphPrev-lGraphCur;
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphCur);
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphPrev);
			WAIT_TX_CHECK_TIMEOUT(Timeout)
		}	

		/*send 1 byte memory write command*/
		LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
		WAIT_TX_CHECK_TIMEOUT(Timeout)
		LCD_DC_PORT->BSRR=LCD_DC_PIN;
		/*send 2*diff bytes color information*/
		for(uint8_t j=0; j<=lGraphDiff; j++)
		{
			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(COLOR_1>>8);
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)COLOR_1;
			WAIT_TX_CHECK_TIMEOUT(Timeout)
		}
		
		/*Write the new graph pixel*/
		/*Send 1 byte page address set command*/
		LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
		/*Fetch old graph data from memory while we wait for the byte to send*/
		lGraphPrev = NewGraph[i-1];
		lGraphCur = NewGraph[i];
		WAIT_TX_CHECK_TIMEOUT(Timeout)
		LCD_DC_PORT->BSRR=LCD_DC_PIN;
		/*send 4 bytes page address data*/
		if(lGraphCur>=lGraphPrev)
		{
			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
			lGraphDiff = lGraphCur-lGraphPrev;
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphPrev);
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphCur);
			WAIT_TX_CHECK_TIMEOUT(Timeout)
		}
		else
		{
			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
			lGraphDiff = lGraphPrev-lGraphCur;
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphCur);
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x00;
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(lGraphPrev);
			WAIT_TX_CHECK_TIMEOUT(Timeout)
		}

		/*send 1 byte memory write command*/
		LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
		*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
		WAIT_TX_CHECK_TIMEOUT(Timeout)
		LCD_DC_PORT->BSRR=LCD_DC_PIN;
		/*send 2 bytes color information*/
		for(uint8_t j=0; j<=lGraphDiff; j++)
		{
			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(Color>>8);
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)Color;
			WAIT_TX_CHECK_TIMEOUT(Timeout)
		}

	}
	return HAL_OK;
}


HAL_StatusTypeDef ILI9341_Draw_Square(	SPI_HandleTypeDef* hspi_handle, 
					uint16_t posX, uint16_t posY, 
					uint16_t endX, uint16_t endY, 
					uint16_t Color)
{
	register const uint32_t tickstart_local = HAL_GetTick();
	const uint32_t Timeout = 500;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	/*send 1 byte column address set command*/
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2A;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	/*send 4 bytes column address data*/
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posX>>8);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)posX;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(endX>>8);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)endX;
	WAIT_TX_CHECK_TIMEOUT(Timeout)

	/*send 1 byte page address set command*/
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	/*send 4 bytes page address data*/
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posY>>8);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)posY;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(endY>>8);
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)endY;
	WAIT_TX_CHECK_TIMEOUT(Timeout)

	/*send 1 byte memory write command*/
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
	WAIT_TX_CHECK_TIMEOUT(Timeout)
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	/*send 2*(endY-posY)*(endX-posX) bytes color information*/
	for(uint16_t i=0; i <= endX - posX; i++)
		for(uint16_t j=0; j <= endY - posY; j++)
		{
			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(Color>>8);
			WAIT_TX_CHECK_TIMEOUT(Timeout)
			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)Color;
			WAIT_TX_CHECK_TIMEOUT(Timeout)
		}
	return HAL_OK;
}


HAL_StatusTypeDef ILI9341_Draw_Char(SPI_HandleTypeDef* hspi_handle, char Character, char oldCharacter, uint16_t posX, uint16_t posY, uint16_t Color, uint8_t Size) 
{
	uint8_t 	function_char, function_old_char;
	uint8_t 	i,j;
	
	function_char = Character;
	function_old_char = oldCharacter;
	
	if (function_char < ' ') {
		function_char = 0;
	} else {
		function_char -= 32;
	}
	
	if (function_old_char < ' ') {
		function_old_char = 0;
	} else {
		function_old_char -= 32;
	}
	
	char temp[CHAR_WIDTH];
	char temp_old[CHAR_WIDTH];
	char concurrent_pixels;
	
	for(uint8_t k = 0; k<CHAR_WIDTH; k++)
	{
		temp[k] = font[function_char][k];
		temp_old[k] = font[function_old_char][k];
		concurrent_pixels = temp[k] & temp_old[k];
		temp[k] = temp[k] & (~concurrent_pixels);
		if(function_old_char != 0)
			temp_old[k] = temp_old[k] & (~concurrent_pixels);
		else
			temp_old[k] = 0xFF & (~concurrent_pixels);
	}
	
	for (j=0; j<CHAR_WIDTH; j++) {
		for (i=0; i<CHAR_HEIGHT; i++) {
			if (temp_old[j] & (1<<i)) 
			{
				if(Size == 1)
				{
					ILI9341_Draw_Pixel(hspi_handle, posX+j, posY+i, COLOR_1);
				}
				else
				{
					ILI9341_Draw_Square(hspi_handle, posX+(j*Size), posY+(i*Size), posX+(j*Size) + Size-1, posY+(i*Size) + Size-1, COLOR_1);
				}
			}
			if (temp[j] & (1<<i)) 
			{
				if(Size == 1)
				{
					ILI9341_Draw_Pixel(hspi_handle, posX+j, posY+i, Color);
				}
				else
				{
					ILI9341_Draw_Square(hspi_handle, posX+(j*Size), posY+(i*Size), posX+(j*Size) + Size-1, posY+(i*Size) + Size-1, Color);
				}
			}
		}
	}
	return HAL_OK;
}


HAL_StatusTypeDef ILI9341_Draw_Main_Interface(SPI_HandleTypeDef* hspi_handle)
{
	ILI9341_Draw_Square(hspi_handle,   0,   0, 320, 120, COLOR_1);
	ILI9341_Draw_Square(hspi_handle,   0, 120, 320, 240, COLOR_1);
	
	ILI9341_Draw_Square(hspi_handle, 256,   0, 259, 240, COLOR_2);
	ILI9341_Draw_Square(hspi_handle,   0, 200, 320, 204, COLOR_2);
	ILI9341_Draw_Square(hspi_handle, 260,  96, 320, 101, COLOR_2);
	ILI9341_Draw_Square(hspi_handle,  86, 204,  89, 240, COLOR_2);
	ILI9341_Draw_Square(hspi_handle, 171, 204, 174, 240, COLOR_2);
	
	/*Amplitude Indicators*/
	ILI9341_Draw_Square(hspi_handle,  25,  95, 255,  96, COLOR_3);
	ILI9341_Draw_Square(hspi_handle,  25,   5, 255,   6, COLOR_3);
	ILI9341_Draw_Square(hspi_handle,  25, 185, 255, 186, COLOR_3);

	ILI9341_Draw_Square(hspi_handle,  15,  94,  24,  97, COLOR_3);
	ILI9341_Draw_Square(hspi_handle,  15,   4,  24,   7, COLOR_3);
	ILI9341_Draw_Square(hspi_handle,  15, 184,  24, 187, COLOR_3);
	ILI9341_Draw_Square(hspi_handle,  15,  49,  23,  51, COLOR_3);
	ILI9341_Draw_Square(hspi_handle,  15, 139,  23, 141, COLOR_3);
	
	for(int i=5 ; i<186 ; i+=9)
	{
		ILI9341_Draw_Square(hspi_handle,  15 ,i,  20,i+1, COLOR_3);
	}
	
	/*Timebase indicators*/
	ILI9341_Draw_Square(hspi_handle,  24, 187,  25, 197, COLOR_3);
	ILI9341_Draw_Square(hspi_handle, 140, 187, 141, 197, COLOR_3);
	ILI9341_Draw_Square(hspi_handle, 254, 187, 255, 197, COLOR_3);
	for(int i=24;i<255;i+=29)
	{
		ILI9341_Draw_Square(hspi_handle, i, 187, i+1, 192,COLOR_3);
	}
	
}



