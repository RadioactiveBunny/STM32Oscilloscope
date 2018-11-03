HAL_StatusTypeDef ILI9341_Draw_Square(	SPI_HandleTypeDef* hspi_handle, 
										uint16_t posX, uint16_t posY, 
										uint16_t endX, uint16_t endY, 
										uint16_t Color)
{
	/*send 1 byte column address set command*/
	/* Wait until TXE flag is set to send data */
	register const uint32_t tickstart_local = HAL_GetTick();
	const uint32_t Timeout = 500;
	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
	{
		if((HAL_GetTick()-tickstart_local) >=  Timeout)
		{
			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
		}
	}
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2A;
	
	/*send 4 bytes column address data*/
	/*sync problem...this pin is set low before the command byte has finished transmiting*/
	/*LCD_DC_PORT->BSRR=LCD_DC_PIN; -> moved after the transmit flag has been set*/
	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
	{
		if((HAL_GetTick()-tickstart_local) >=  Timeout)
		{
			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
		}
	}
	/*moved here*/
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posX>>8);
	/*2nd byte*/
	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
	{
		if((HAL_GetTick()-tickstart_local) >=  Timeout)
		{
			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
		}
	}
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)posX;
	/*3rd byte*/
	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
	{
		if((HAL_GetTick()-tickstart_local) >=  Timeout)
		{
			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
		}
	}
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(endX>>8);
	/*4th byte*/
	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
	{
		if((HAL_GetTick()-tickstart_local) >=  Timeout)
		{
			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
		}
	}
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)endX;
	/*send 1 byte page address set command*/
	/* Wait until TXE flag is set to send data */
	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
	{
		if((HAL_GetTick()-tickstart_local) >=  Timeout)
		{
			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
		}
	}
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2B;
	
	/*send 4 bytes page address data*/
	/*1st byte*/
	/* Wait until TXE flag is set to send data */
	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
	{
		if((HAL_GetTick()-tickstart_local) >=  Timeout)
		{
			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
		}
	}
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(posY>>8);
	/*2nd byte*/
	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
	{
		if((HAL_GetTick()-tickstart_local) >=  Timeout)
		{
			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
		}
	}
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)posY;
	/*3rd byte*/
	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
	{
		if((HAL_GetTick()-tickstart_local) >=  Timeout)
		{
			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
		}
	}
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(endY>>8);
	/*4th byte*/
	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
	{
		if((HAL_GetTick()-tickstart_local) >=  Timeout)
		{
			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
		}
	}
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)endY;
	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
	{
		if((HAL_GetTick()-tickstart_local) >=  Timeout)
		{
			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
		}
	}
	LCD_DC_PORT->BSRR=(uint32_t)LCD_DC_PIN << 16U;
	*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)0x2C;
	/*send 6 bytes color information*/
	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
	{
		if((HAL_GetTick()-tickstart_local) >=  Timeout)
		{
			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
		}
	}
	LCD_DC_PORT->BSRR=LCD_DC_PIN;
	for(uint16_t i=0; i <= endX - posX; i++)
		for(uint16_t j=0; j <= endY - posY; j++)
		{
			while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
			{
				if((HAL_GetTick()-tickstart_local) >=  Timeout)
				{
					return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
				}
			}
			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)(Color>>8);
			while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
			{
				if((HAL_GetTick()-tickstart_local) >=  Timeout)
				{
					return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
				}
			}
			*((__IO uint8_t*)&hspi_handle->Instance->DR) = (uint8_t)Color;
		}
	while(!(__HAL_SPI_GET_FLAG(hspi_handle, SPI_FLAG_TXE)))
	{
		if((HAL_GetTick()-tickstart_local) >=  Timeout)
		{
			return ILI9341_SPI_Error(hspi_handle, HAL_TIMEOUT);
		}
	}
	return HAL_OK;
}
