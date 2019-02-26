#Path and prefix to ARM Toolchain
PREFIX = arm-none-eabi-
GCC_PATH="/c/Program Files (x86)/GNU Tools Arm Embedded/7 2018-q2-update/bin"

#Target project name
TARGET = STM32Oscilloscope

#Optimization level
OPT = -Og

#Includes and defs
C_DEFS = -DPORTC13_PROBING

C_INCLUDES = \
-IInc

AS_DEFS = 

AS_INCLUDES = 

#Default upload COM_PORT
COM_PORT = COM3

#Tools defs
CC = $(GCC_PATH)/$(PREFIX)gcc
AS = $(GCC_PATH)/$(PREFIX)gcc -x assembler-with-cpp
CP = $(GCC_PATH)/$(PREFIX)objcopy
SZ = $(GCC_PATH)/$(PREFIX)size
HEX = $(CP) -O ihex
BIN = $(CP) -O binary -S

#target cpu
CPU = -mcpu=cortex-m3
MCU = $(CPU) -mthumb
#Debug build
DEBUG = 1

#LDSciprt
LDSCRIPT = STM32_Linker.ld
#Libs
LIBS = -lc -lm -lnosys

#Tools flags
ASFLAGS = $(MCU) $(AS_DEFS) $(AS_INCLUDES) $(OPT) -Wall -fdata-sections -ffunction-sections
CFLAGS = $(MCU) $(C_DEFS) $(C_INCLUDES) $(OPT) -Wall -fdata-sections -ffunction-sections
LDFLAGS = $(MCU) -specs=nano.specs -T$(LDSCRIPT) $(LIBDIR) $(LIBS) -Wl,-Map=$(BUILD_DIR)/$(TARGET).map,--cref -Wl,--gc-sections
ifeq ($(DEBUG), 1)
CFLAGS += -g -gdwarf-2
endif
#Dependency generation
CFLAGS += -MMD -MP -MF"$(@:%.o=%.d)"

#Source files
C_SOURCES := $(shell find ./ -name '*.c')

ASM_SOURCES := $(shell find ./ -name '*.s')

# list of objects
OBJECTS = $(addprefix $(BUILD_DIR)/,$(notdir $(C_SOURCES:.c=.o)))
vpath %.c $(sort $(dir $(C_SOURCES)))
# list of ASM program objects
OBJECTS += $(addprefix $(BUILD_DIR)/,$(notdir $(ASM_SOURCES:.s=.o)))
vpath %.s $(sort $(dir $(ASM_SOURCES))).o)

#build directory
BUILD_DIR = build

# default action: build all
all: $(BUILD_DIR)/$(TARGET).elf $(BUILD_DIR)/$(TARGET).hex $(BUILD_DIR)/$(TARGET).bin

clean:
	rm -rf $(BUILD_DIR)

upload: $(BUILD_DIR)/$(TARGET).bin
	python stm32loader.py -e -w -v -p $(COM_PORT) -g 0x8000000 -a 0x8000000 $<

#Build rules
$(BUILD_DIR)/%.o: %.c Makefile | $(BUILD_DIR) 
	$(CC) -c $(CFLAGS) -Wa,-a,-ad,-alms=$(BUILD_DIR)/$(notdir $(<:.c=.s)) $< -o $@

$(BUILD_DIR)/%.o: %.s Makefile | $(BUILD_DIR)
	$(AS) -c $(CFLAGS) $< -o $@

$(BUILD_DIR)/$(TARGET).elf: $(OBJECTS) Makefile
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@
	$(SZ) $@

$(BUILD_DIR)/%.hex: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(HEX) $< $@

$(BUILD_DIR)/%.bin: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(BIN) $< $@

$(BUILD_DIR):
	mkdir $@
