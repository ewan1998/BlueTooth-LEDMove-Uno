################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:\opt\Sloeber\arduinoPlugin\libraries\WiFiNINA\1.8.13\src\utility\WiFiSocketBuffer.cpp \
C:\opt\Sloeber\arduinoPlugin\libraries\WiFiNINA\1.8.13\src\utility\nano_rp2040_support.cpp \
C:\opt\Sloeber\arduinoPlugin\libraries\WiFiNINA\1.8.13\src\utility\server_drv.cpp \
C:\opt\Sloeber\arduinoPlugin\libraries\WiFiNINA\1.8.13\src\utility\spi_drv.cpp \
C:\opt\Sloeber\arduinoPlugin\libraries\WiFiNINA\1.8.13\src\utility\wifi_drv.cpp 

LINK_OBJ += \
.\libraries\WiFiNINA\src\utility\WiFiSocketBuffer.cpp.o \
.\libraries\WiFiNINA\src\utility\nano_rp2040_support.cpp.o \
.\libraries\WiFiNINA\src\utility\server_drv.cpp.o \
.\libraries\WiFiNINA\src\utility\spi_drv.cpp.o \
.\libraries\WiFiNINA\src\utility\wifi_drv.cpp.o 

CPP_DEPS += \
.\libraries\WiFiNINA\src\utility\WiFiSocketBuffer.cpp.d \
.\libraries\WiFiNINA\src\utility\nano_rp2040_support.cpp.d \
.\libraries\WiFiNINA\src\utility\server_drv.cpp.d \
.\libraries\WiFiNINA\src\utility\spi_drv.cpp.d \
.\libraries\WiFiNINA\src\utility\wifi_drv.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries\WiFiNINA\src\utility\WiFiSocketBuffer.cpp.o: C:\opt\Sloeber\arduinoPlugin\libraries\WiFiNINA\1.8.13\src\utility\WiFiSocketBuffer.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\opt\Sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino5/bin/avr-g++" -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega4809 -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO_WIFI_REV2 -DARDUINO_ARCH_MEGAAVR  -DUNO_WIFI_REV2_328MODE -DMILLIS_USE_TIMERB3 "-IC:/opt/Sloeber/arduinoPlugin/packages/arduino/hardware/megaavr/1.8.8/cores/arduino/api/deprecated"   -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\megaavr\1.8.8\cores\arduino" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\megaavr\1.8.8\variants\uno2018" -I"C:\opt\Sloeber\arduinoPlugin\libraries\PrintEx\1.2.0\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\megaavr\1.8.8\libraries\SoftwareSerial\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Firmata\2.5.8" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Firmata\2.5.8\utility" -I"C:\opt\Sloeber\arduinoPlugin\libraries\LiquidCrystal_I2C\1.1.2" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\megaavr\1.8.8\libraries\SPI\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\WiFiNINA\1.8.13\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\megaavr\1.8.8\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\WiFiNINA\src\utility\nano_rp2040_support.cpp.o: C:\opt\Sloeber\arduinoPlugin\libraries\WiFiNINA\1.8.13\src\utility\nano_rp2040_support.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\opt\Sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino5/bin/avr-g++" -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega4809 -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO_WIFI_REV2 -DARDUINO_ARCH_MEGAAVR  -DUNO_WIFI_REV2_328MODE -DMILLIS_USE_TIMERB3 "-IC:/opt/Sloeber/arduinoPlugin/packages/arduino/hardware/megaavr/1.8.8/cores/arduino/api/deprecated"   -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\megaavr\1.8.8\cores\arduino" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\megaavr\1.8.8\variants\uno2018" -I"C:\opt\Sloeber\arduinoPlugin\libraries\PrintEx\1.2.0\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\megaavr\1.8.8\libraries\SoftwareSerial\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Firmata\2.5.8" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Firmata\2.5.8\utility" -I"C:\opt\Sloeber\arduinoPlugin\libraries\LiquidCrystal_I2C\1.1.2" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\megaavr\1.8.8\libraries\SPI\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\WiFiNINA\1.8.13\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\megaavr\1.8.8\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\WiFiNINA\src\utility\server_drv.cpp.o: C:\opt\Sloeber\arduinoPlugin\libraries\WiFiNINA\1.8.13\src\utility\server_drv.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\opt\Sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino5/bin/avr-g++" -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega4809 -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO_WIFI_REV2 -DARDUINO_ARCH_MEGAAVR  -DUNO_WIFI_REV2_328MODE -DMILLIS_USE_TIMERB3 "-IC:/opt/Sloeber/arduinoPlugin/packages/arduino/hardware/megaavr/1.8.8/cores/arduino/api/deprecated"   -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\megaavr\1.8.8\cores\arduino" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\megaavr\1.8.8\variants\uno2018" -I"C:\opt\Sloeber\arduinoPlugin\libraries\PrintEx\1.2.0\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\megaavr\1.8.8\libraries\SoftwareSerial\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Firmata\2.5.8" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Firmata\2.5.8\utility" -I"C:\opt\Sloeber\arduinoPlugin\libraries\LiquidCrystal_I2C\1.1.2" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\megaavr\1.8.8\libraries\SPI\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\WiFiNINA\1.8.13\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\megaavr\1.8.8\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\WiFiNINA\src\utility\spi_drv.cpp.o: C:\opt\Sloeber\arduinoPlugin\libraries\WiFiNINA\1.8.13\src\utility\spi_drv.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\opt\Sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino5/bin/avr-g++" -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega4809 -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO_WIFI_REV2 -DARDUINO_ARCH_MEGAAVR  -DUNO_WIFI_REV2_328MODE -DMILLIS_USE_TIMERB3 "-IC:/opt/Sloeber/arduinoPlugin/packages/arduino/hardware/megaavr/1.8.8/cores/arduino/api/deprecated"   -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\megaavr\1.8.8\cores\arduino" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\megaavr\1.8.8\variants\uno2018" -I"C:\opt\Sloeber\arduinoPlugin\libraries\PrintEx\1.2.0\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\megaavr\1.8.8\libraries\SoftwareSerial\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Firmata\2.5.8" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Firmata\2.5.8\utility" -I"C:\opt\Sloeber\arduinoPlugin\libraries\LiquidCrystal_I2C\1.1.2" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\megaavr\1.8.8\libraries\SPI\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\WiFiNINA\1.8.13\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\megaavr\1.8.8\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\WiFiNINA\src\utility\wifi_drv.cpp.o: C:\opt\Sloeber\arduinoPlugin\libraries\WiFiNINA\1.8.13\src\utility\wifi_drv.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\opt\Sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino5/bin/avr-g++" -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega4809 -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO_WIFI_REV2 -DARDUINO_ARCH_MEGAAVR  -DUNO_WIFI_REV2_328MODE -DMILLIS_USE_TIMERB3 "-IC:/opt/Sloeber/arduinoPlugin/packages/arduino/hardware/megaavr/1.8.8/cores/arduino/api/deprecated"   -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\megaavr\1.8.8\cores\arduino" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\megaavr\1.8.8\variants\uno2018" -I"C:\opt\Sloeber\arduinoPlugin\libraries\PrintEx\1.2.0\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\megaavr\1.8.8\libraries\SoftwareSerial\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Firmata\2.5.8" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Firmata\2.5.8\utility" -I"C:\opt\Sloeber\arduinoPlugin\libraries\LiquidCrystal_I2C\1.1.2" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\megaavr\1.8.8\libraries\SPI\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\WiFiNINA\1.8.13\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\megaavr\1.8.8\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '


