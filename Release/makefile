################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ..\makefile.init

RM := rm -f

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include src\util\subdir.mk
-include src\subdir.mk
-include libraries\Wire\src\utility\subdir.mk
-include libraries\Wire\src\subdir.mk
-include libraries\WiFiNINA\src\utility\subdir.mk
-include libraries\WiFiNINA\src\subdir.mk
-include libraries\SoftwareSerial\src\subdir.mk
-include libraries\SPI\src\subdir.mk
-include libraries\PrintEx\src\tools\URIEncoder\subdir.mk
-include libraries\PrintEx\src\tools\CRCStream\subdir.mk
-include libraries\PrintEx\src\tools\Base64Encoder\subdir.mk
-include libraries\PrintEx\src\lib\subdir.mk
-include libraries\LiquidCrystal_I2C\subdir.mk
-include libraries\Firmata\utility\subdir.mk
-include libraries\Firmata\subdir.mk
-include core\variant\subdir.mk
-include core\core\api\subdir.mk
-include core\core\subdir.mk
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
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ..\makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
AR += \
D:\03_Src\arduino\chap15_wifi\Release\arduino.ar \

ELF += \
chap15_wifi.elf \

HEX += \
chap15_wifi.hex \



#bootloaderTest
BurnBootLoader: 
	@echo trying to burn bootloader ${bootloader.tool}
	${tools.${bootloader.tool}.erase.pattern}
	${tools.${bootloader.tool}.bootloader.pattern}

uploadWithBuild: all
	@echo trying to build and upload with upload tool ${upload.tool}
	${tools.${upload.tool}.upload.pattern}

uploadWithoutBuild: 
	@echo trying to upload without build with upload tool ${upload.tool}
	${tools.${upload.tool}.upload.pattern}
    
uploadWithProgrammerWithBuild: all
	@echo trying to build and upload with programmer ${program.tool}
	${tools.${program.tool}.program.pattern}

uploadWithProgrammerWithoutBuild: 
	@echo trying to upload with programmer ${program.tool} without build
	${tools.${program.tool}.program.pattern}

# All Target
all: chap15_wifi

# Tool invocations
chap15_wifi: $(HEX)
	@echo 'Building target: $@'
	@echo 'Printing size:'
	"C:\opt\Sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino5/bin/avr-size" -A "D:\03_Src\arduino\chap15_wifi\Release/chap15_wifi.elf"
	@echo 'Finished building target: $@'
	@echo ' '

D:\03_Src\arduino\chap15_wifi\Release\arduino.ar: $(AR_OBJ)
	@echo 'Starting archiver'
	"C:\opt\Sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino5/bin/avr-gcc-ar" rcs     D:\03_Src\arduino\chap15_wifi\Release/arduino.ar $(AR_OBJ)
	@echo 'Finished building: $@'
	@echo ' '

chap15_wifi.elf: $(LINK_OBJ) $(AR)
	@echo 'Starting combiner'
	"C:\opt\Sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino5/bin/avr-gcc" -w -Os -g -flto -fuse-linker-plugin -Wl,--gc-sections -Wl,--section-start=.text=0x200 -mmcu=atmega4809   -o "D:\03_Src\arduino\chap15_wifi\Release/chap15_wifi.elf"   $(LINK_OBJ)    D:\03_Src\arduino\chap15_wifi\Release/arduino.ar  "-LD:\03_Src\arduino\chap15_wifi\Release" -lm "-Wl,-Map,D:\03_Src\arduino\chap15_wifi\Release/chap15_wifi.map"
	@echo 'Finished building: $@'
	@echo ' '

chap15_wifi.hex: $(ELF)
	@echo 'Do all objcopy commands'
	${recipe.objcopy.bin.pattern}
	${recipe.objcopy.eep.pattern}
	${recipe.objcopy.hex.pattern}
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(C_UPPER_DEPS)$(PDE_DEPS)$(C_DEPS)$(AR)$(CC_DEPS)$(AR_OBJ)$(C++_DEPS)$(LINK_OBJ)$(CXX_DEPS)$(ASM_DEPS)$(HEX)$(INO_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(ELF)$(CPP_DEPS)
	-@echo ' '

.PHONY: all clean dependents

-include ..\makefile.targets
