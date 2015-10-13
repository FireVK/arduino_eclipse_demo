################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../arduinolib/Ethernet/utility/socket.cpp \
../arduinolib/Ethernet/utility/w5100.cpp 

OBJS += \
./arduinolib/Ethernet/utility/socket.o \
./arduinolib/Ethernet/utility/w5100.o 

CPP_DEPS += \
./arduinolib/Ethernet/utility/socket.d \
./arduinolib/Ethernet/utility/w5100.d 


# Each subdirectory must supply rules for building sources it contributes
arduinolib/Ethernet/utility/%.o: ../arduinolib/Ethernet/utility/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"C:\Users\Administrator\workspace\arduino_core\src\arduino" -I"C:\Users\Administrator\workspace\demo\arduinolib" -I"C:\Users\Administrator\workspace\demo\lib" -I"C:\Users\Administrator\workspace\demo\src" -DARDUINO=105 -Wall -g2 -gstabs -O0 -ffunction-sections -fdata-sections -ffunction-sections -fdata-sections -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


