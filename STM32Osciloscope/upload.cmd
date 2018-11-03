upload: $(BUILD_DIR)/$(TARGET).bin
	python stm32loader.py -e -w -v -p $(COM_PORT) -g 0x8000000 -a 0x8000000 $<
