################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include arduinolib/Wire/utility/subdir.mk
-include arduinolib/Wire/subdir.mk
-include arduinolib/Stepper/subdir.mk
-include arduinolib/SoftwareSerial/subdir.mk
-include arduinolib/Servo/subdir.mk
-include arduinolib/SPI/subdir.mk
-include arduinolib/SD/utility/subdir.mk
-include arduinolib/SD/subdir.mk
-include arduinolib/LiquidCrystal/subdir.mk
-include arduinolib/Firmata/subdir.mk
-include arduinolib/Ethernet/utility/subdir.mk
-include arduinolib/Ethernet/subdir.mk
-include arduinolib/EEPROM/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LSS += \
demo.lss \

FLASH_IMAGE += \
demo.hex \

SIZEDUMMY += \
sizedummy \


# All Target
all: demo.elf secondary-outputs

# Tool invocations
demo.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C++ Linker'
	avr-g++ -Wl,-Map,demo.map,--cref -mrelax -Wl,--gc-sections -Wl,--gc-sections -L"C:\Users\Administrator\workspace\arduino_core\uno" -mmcu=atmega328p -o "demo.elf" $(OBJS) $(USER_OBJS) $(LIBS);avr-nm -C -n "demo.elf" >demo.symbol
	@echo 'Finished building target: $@'
	@echo ' '

demo.lss: demo.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S demo.elf  >"demo.lss"
	@echo 'Finished building: $@'
	@echo ' '

demo.hex: demo.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -R .fuse -R .lock -R .signature -O ihex demo.elf  "demo.hex"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: demo.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=atmega328p demo.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(C_UPPER_DEPS)$(S_DEPS)$(LSS)$(C_DEPS)$(FLASH_IMAGE)$(CC_DEPS)$(ELFS)$(C++_DEPS)$(OBJS)$(CXX_DEPS)$(ASM_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(CPP_DEPS) demo.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
