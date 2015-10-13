################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../arduinolib/Robot_Control/glcdfont.c 

CPP_SRCS += \
../arduinolib/Robot_Control/Adafruit_GFX.cpp \
../arduinolib/Robot_Control/ArduinoRobot.cpp \
../arduinolib/Robot_Control/Arduino_LCD.cpp \
../arduinolib/Robot_Control/Compass.cpp \
../arduinolib/Robot_Control/EEPROM_I2C.cpp \
../arduinolib/Robot_Control/EasyTransfer2.cpp \
../arduinolib/Robot_Control/Fat16.cpp \
../arduinolib/Robot_Control/Melody.cpp \
../arduinolib/Robot_Control/Motors.cpp \
../arduinolib/Robot_Control/Multiplexer.cpp \
../arduinolib/Robot_Control/RobotSdCard.cpp \
../arduinolib/Robot_Control/SPI.cpp \
../arduinolib/Robot_Control/SdCard.cpp \
../arduinolib/Robot_Control/Sensors.cpp \
../arduinolib/Robot_Control/Squawk.cpp \
../arduinolib/Robot_Control/SquawkSD.cpp \
../arduinolib/Robot_Control/Wire.cpp \
../arduinolib/Robot_Control/communication.cpp \
../arduinolib/Robot_Control/helper.cpp \
../arduinolib/Robot_Control/information.cpp \
../arduinolib/Robot_Control/keyboard.cpp \
../arduinolib/Robot_Control/lcd.cpp 

C_DEPS += \
./arduinolib/Robot_Control/glcdfont.d 

OBJS += \
./arduinolib/Robot_Control/Adafruit_GFX.o \
./arduinolib/Robot_Control/ArduinoRobot.o \
./arduinolib/Robot_Control/Arduino_LCD.o \
./arduinolib/Robot_Control/Compass.o \
./arduinolib/Robot_Control/EEPROM_I2C.o \
./arduinolib/Robot_Control/EasyTransfer2.o \
./arduinolib/Robot_Control/Fat16.o \
./arduinolib/Robot_Control/Melody.o \
./arduinolib/Robot_Control/Motors.o \
./arduinolib/Robot_Control/Multiplexer.o \
./arduinolib/Robot_Control/RobotSdCard.o \
./arduinolib/Robot_Control/SPI.o \
./arduinolib/Robot_Control/SdCard.o \
./arduinolib/Robot_Control/Sensors.o \
./arduinolib/Robot_Control/Squawk.o \
./arduinolib/Robot_Control/SquawkSD.o \
./arduinolib/Robot_Control/Wire.o \
./arduinolib/Robot_Control/communication.o \
./arduinolib/Robot_Control/glcdfont.o \
./arduinolib/Robot_Control/helper.o \
./arduinolib/Robot_Control/information.o \
./arduinolib/Robot_Control/keyboard.o \
./arduinolib/Robot_Control/lcd.o 

CPP_DEPS += \
./arduinolib/Robot_Control/Adafruit_GFX.d \
./arduinolib/Robot_Control/ArduinoRobot.d \
./arduinolib/Robot_Control/Arduino_LCD.d \
./arduinolib/Robot_Control/Compass.d \
./arduinolib/Robot_Control/EEPROM_I2C.d \
./arduinolib/Robot_Control/EasyTransfer2.d \
./arduinolib/Robot_Control/Fat16.d \
./arduinolib/Robot_Control/Melody.d \
./arduinolib/Robot_Control/Motors.d \
./arduinolib/Robot_Control/Multiplexer.d \
./arduinolib/Robot_Control/RobotSdCard.d \
./arduinolib/Robot_Control/SPI.d \
./arduinolib/Robot_Control/SdCard.d \
./arduinolib/Robot_Control/Sensors.d \
./arduinolib/Robot_Control/Squawk.d \
./arduinolib/Robot_Control/SquawkSD.d \
./arduinolib/Robot_Control/Wire.d \
./arduinolib/Robot_Control/communication.d \
./arduinolib/Robot_Control/helper.d \
./arduinolib/Robot_Control/information.d \
./arduinolib/Robot_Control/keyboard.d \
./arduinolib/Robot_Control/lcd.d 


# Each subdirectory must supply rules for building sources it contributes
arduinolib/Robot_Control/%.o: ../arduinolib/Robot_Control/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"C:\Users\Administrator\workspace\arduino_core\src\arduino" -I"C:\Users\Administrator\workspace\demo\arduinolib" -I"C:\Users\Administrator\workspace\demo\lib" -I"C:\Users\Administrator\workspace\demo\src" -DARDUINO=105 -Wall -g2 -gstabs -O0 -ffunction-sections -fdata-sections -ffunction-sections -fdata-sections -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduinolib/Robot_Control/%.o: ../arduinolib/Robot_Control/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"C:\Users\Administrator\workspace\arduino_core\src\arduino" -I"C:\Users\Administrator\workspace\demo\arduinolib" -I"C:\Users\Administrator\workspace\demo\lib" -I"C:\Users\Administrator\workspace\demo\src" -DARDUINO=105 -Wall -g2 -gstabs -Os -ffunction-sections -fdata-sections -ffunction-sections -fdata-sections -std=gnu99 -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


