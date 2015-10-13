################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../arduinolib/Robot_Control/utility/twi.c 

CPP_SRCS += \
../arduinolib/Robot_Control/utility/RobotTextManager.cpp \
../arduinolib/Robot_Control/utility/VirtualKeyboard.cpp 

C_DEPS += \
./arduinolib/Robot_Control/utility/twi.d 

OBJS += \
./arduinolib/Robot_Control/utility/RobotTextManager.o \
./arduinolib/Robot_Control/utility/VirtualKeyboard.o \
./arduinolib/Robot_Control/utility/twi.o 

CPP_DEPS += \
./arduinolib/Robot_Control/utility/RobotTextManager.d \
./arduinolib/Robot_Control/utility/VirtualKeyboard.d 


# Each subdirectory must supply rules for building sources it contributes
arduinolib/Robot_Control/utility/%.o: ../arduinolib/Robot_Control/utility/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"C:\Users\Administrator\workspace\arduino_core\src\arduino" -I"C:\Users\Administrator\workspace\demo\arduinolib" -I"C:\Users\Administrator\workspace\demo\lib" -I"C:\Users\Administrator\workspace\demo\src" -DARDUINO=105 -Wall -g2 -gstabs -O0 -ffunction-sections -fdata-sections -ffunction-sections -fdata-sections -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduinolib/Robot_Control/utility/%.o: ../arduinolib/Robot_Control/utility/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"C:\Users\Administrator\workspace\arduino_core\src\arduino" -I"C:\Users\Administrator\workspace\demo\arduinolib" -I"C:\Users\Administrator\workspace\demo\lib" -I"C:\Users\Administrator\workspace\demo\src" -DARDUINO=105 -Wall -g2 -gstabs -Os -ffunction-sections -fdata-sections -ffunction-sections -fdata-sections -std=gnu99 -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


