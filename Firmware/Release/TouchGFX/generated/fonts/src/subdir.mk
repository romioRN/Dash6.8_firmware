################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../TouchGFX/generated/fonts/src/ApplicationFontProvider.cpp \
../TouchGFX/generated/fonts/src/CachedFont.cpp \
../TouchGFX/generated/fonts/src/FontCache.cpp \
../TouchGFX/generated/fonts/src/Font_bahnschrift_100_2bpp_0.cpp \
../TouchGFX/generated/fonts/src/Font_bahnschrift_140_2bpp_0.cpp \
../TouchGFX/generated/fonts/src/Font_bahnschrift_70_2bpp_0.cpp \
../TouchGFX/generated/fonts/src/Font_verdana_40_4bpp_0.cpp \
../TouchGFX/generated/fonts/src/GeneratedFont.cpp \
../TouchGFX/generated/fonts/src/Kerning_bahnschrift_100_2bpp.cpp \
../TouchGFX/generated/fonts/src/Kerning_bahnschrift_140_2bpp.cpp \
../TouchGFX/generated/fonts/src/Kerning_bahnschrift_70_2bpp.cpp \
../TouchGFX/generated/fonts/src/Kerning_verdana_40_4bpp.cpp \
../TouchGFX/generated/fonts/src/Table_bahnschrift_100_2bpp.cpp \
../TouchGFX/generated/fonts/src/Table_bahnschrift_140_2bpp.cpp \
../TouchGFX/generated/fonts/src/Table_bahnschrift_70_2bpp.cpp \
../TouchGFX/generated/fonts/src/Table_verdana_40_4bpp.cpp \
../TouchGFX/generated/fonts/src/UnmappedDataFont.cpp 

OBJS += \
./TouchGFX/generated/fonts/src/ApplicationFontProvider.o \
./TouchGFX/generated/fonts/src/CachedFont.o \
./TouchGFX/generated/fonts/src/FontCache.o \
./TouchGFX/generated/fonts/src/Font_bahnschrift_100_2bpp_0.o \
./TouchGFX/generated/fonts/src/Font_bahnschrift_140_2bpp_0.o \
./TouchGFX/generated/fonts/src/Font_bahnschrift_70_2bpp_0.o \
./TouchGFX/generated/fonts/src/Font_verdana_40_4bpp_0.o \
./TouchGFX/generated/fonts/src/GeneratedFont.o \
./TouchGFX/generated/fonts/src/Kerning_bahnschrift_100_2bpp.o \
./TouchGFX/generated/fonts/src/Kerning_bahnschrift_140_2bpp.o \
./TouchGFX/generated/fonts/src/Kerning_bahnschrift_70_2bpp.o \
./TouchGFX/generated/fonts/src/Kerning_verdana_40_4bpp.o \
./TouchGFX/generated/fonts/src/Table_bahnschrift_100_2bpp.o \
./TouchGFX/generated/fonts/src/Table_bahnschrift_140_2bpp.o \
./TouchGFX/generated/fonts/src/Table_bahnschrift_70_2bpp.o \
./TouchGFX/generated/fonts/src/Table_verdana_40_4bpp.o \
./TouchGFX/generated/fonts/src/UnmappedDataFont.o 

CPP_DEPS += \
./TouchGFX/generated/fonts/src/ApplicationFontProvider.d \
./TouchGFX/generated/fonts/src/CachedFont.d \
./TouchGFX/generated/fonts/src/FontCache.d \
./TouchGFX/generated/fonts/src/Font_bahnschrift_100_2bpp_0.d \
./TouchGFX/generated/fonts/src/Font_bahnschrift_140_2bpp_0.d \
./TouchGFX/generated/fonts/src/Font_bahnschrift_70_2bpp_0.d \
./TouchGFX/generated/fonts/src/Font_verdana_40_4bpp_0.d \
./TouchGFX/generated/fonts/src/GeneratedFont.d \
./TouchGFX/generated/fonts/src/Kerning_bahnschrift_100_2bpp.d \
./TouchGFX/generated/fonts/src/Kerning_bahnschrift_140_2bpp.d \
./TouchGFX/generated/fonts/src/Kerning_bahnschrift_70_2bpp.d \
./TouchGFX/generated/fonts/src/Kerning_verdana_40_4bpp.d \
./TouchGFX/generated/fonts/src/Table_bahnschrift_100_2bpp.d \
./TouchGFX/generated/fonts/src/Table_bahnschrift_140_2bpp.d \
./TouchGFX/generated/fonts/src/Table_bahnschrift_70_2bpp.d \
./TouchGFX/generated/fonts/src/Table_verdana_40_4bpp.d \
./TouchGFX/generated/fonts/src/UnmappedDataFont.d 


# Each subdirectory must supply rules for building sources it contributes
TouchGFX/generated/fonts/src/%.o TouchGFX/generated/fonts/src/%.su TouchGFX/generated/fonts/src/%.cyclo: ../TouchGFX/generated/fonts/src/%.cpp TouchGFX/generated/fonts/src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F429xx -DUSE_FULL_LL_DRIVER -c -I../Core/Inc -I../TouchGFX/App -I../TouchGFX/target/generated -I../TouchGFX/target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/touchgfx/framework/include -I../TouchGFX/generated/fonts/include -I../TouchGFX/generated/gui_generated/include -I../TouchGFX/generated/images/include -I../TouchGFX/generated/texts/include -I../TouchGFX/generated/videos/include -I../TouchGFX/gui/include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -femit-class-debug-always -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-TouchGFX-2f-generated-2f-fonts-2f-src

clean-TouchGFX-2f-generated-2f-fonts-2f-src:
	-$(RM) ./TouchGFX/generated/fonts/src/ApplicationFontProvider.cyclo ./TouchGFX/generated/fonts/src/ApplicationFontProvider.d ./TouchGFX/generated/fonts/src/ApplicationFontProvider.o ./TouchGFX/generated/fonts/src/ApplicationFontProvider.su ./TouchGFX/generated/fonts/src/CachedFont.cyclo ./TouchGFX/generated/fonts/src/CachedFont.d ./TouchGFX/generated/fonts/src/CachedFont.o ./TouchGFX/generated/fonts/src/CachedFont.su ./TouchGFX/generated/fonts/src/FontCache.cyclo ./TouchGFX/generated/fonts/src/FontCache.d ./TouchGFX/generated/fonts/src/FontCache.o ./TouchGFX/generated/fonts/src/FontCache.su ./TouchGFX/generated/fonts/src/Font_bahnschrift_100_2bpp_0.cyclo ./TouchGFX/generated/fonts/src/Font_bahnschrift_100_2bpp_0.d ./TouchGFX/generated/fonts/src/Font_bahnschrift_100_2bpp_0.o ./TouchGFX/generated/fonts/src/Font_bahnschrift_100_2bpp_0.su ./TouchGFX/generated/fonts/src/Font_bahnschrift_140_2bpp_0.cyclo ./TouchGFX/generated/fonts/src/Font_bahnschrift_140_2bpp_0.d ./TouchGFX/generated/fonts/src/Font_bahnschrift_140_2bpp_0.o ./TouchGFX/generated/fonts/src/Font_bahnschrift_140_2bpp_0.su ./TouchGFX/generated/fonts/src/Font_bahnschrift_70_2bpp_0.cyclo ./TouchGFX/generated/fonts/src/Font_bahnschrift_70_2bpp_0.d ./TouchGFX/generated/fonts/src/Font_bahnschrift_70_2bpp_0.o ./TouchGFX/generated/fonts/src/Font_bahnschrift_70_2bpp_0.su ./TouchGFX/generated/fonts/src/Font_verdana_40_4bpp_0.cyclo ./TouchGFX/generated/fonts/src/Font_verdana_40_4bpp_0.d ./TouchGFX/generated/fonts/src/Font_verdana_40_4bpp_0.o ./TouchGFX/generated/fonts/src/Font_verdana_40_4bpp_0.su ./TouchGFX/generated/fonts/src/GeneratedFont.cyclo ./TouchGFX/generated/fonts/src/GeneratedFont.d ./TouchGFX/generated/fonts/src/GeneratedFont.o ./TouchGFX/generated/fonts/src/GeneratedFont.su ./TouchGFX/generated/fonts/src/Kerning_bahnschrift_100_2bpp.cyclo ./TouchGFX/generated/fonts/src/Kerning_bahnschrift_100_2bpp.d ./TouchGFX/generated/fonts/src/Kerning_bahnschrift_100_2bpp.o ./TouchGFX/generated/fonts/src/Kerning_bahnschrift_100_2bpp.su ./TouchGFX/generated/fonts/src/Kerning_bahnschrift_140_2bpp.cyclo ./TouchGFX/generated/fonts/src/Kerning_bahnschrift_140_2bpp.d ./TouchGFX/generated/fonts/src/Kerning_bahnschrift_140_2bpp.o ./TouchGFX/generated/fonts/src/Kerning_bahnschrift_140_2bpp.su ./TouchGFX/generated/fonts/src/Kerning_bahnschrift_70_2bpp.cyclo ./TouchGFX/generated/fonts/src/Kerning_bahnschrift_70_2bpp.d ./TouchGFX/generated/fonts/src/Kerning_bahnschrift_70_2bpp.o ./TouchGFX/generated/fonts/src/Kerning_bahnschrift_70_2bpp.su ./TouchGFX/generated/fonts/src/Kerning_verdana_40_4bpp.cyclo ./TouchGFX/generated/fonts/src/Kerning_verdana_40_4bpp.d ./TouchGFX/generated/fonts/src/Kerning_verdana_40_4bpp.o ./TouchGFX/generated/fonts/src/Kerning_verdana_40_4bpp.su ./TouchGFX/generated/fonts/src/Table_bahnschrift_100_2bpp.cyclo ./TouchGFX/generated/fonts/src/Table_bahnschrift_100_2bpp.d ./TouchGFX/generated/fonts/src/Table_bahnschrift_100_2bpp.o ./TouchGFX/generated/fonts/src/Table_bahnschrift_100_2bpp.su ./TouchGFX/generated/fonts/src/Table_bahnschrift_140_2bpp.cyclo ./TouchGFX/generated/fonts/src/Table_bahnschrift_140_2bpp.d ./TouchGFX/generated/fonts/src/Table_bahnschrift_140_2bpp.o ./TouchGFX/generated/fonts/src/Table_bahnschrift_140_2bpp.su ./TouchGFX/generated/fonts/src/Table_bahnschrift_70_2bpp.cyclo ./TouchGFX/generated/fonts/src/Table_bahnschrift_70_2bpp.d ./TouchGFX/generated/fonts/src/Table_bahnschrift_70_2bpp.o ./TouchGFX/generated/fonts/src/Table_bahnschrift_70_2bpp.su ./TouchGFX/generated/fonts/src/Table_verdana_40_4bpp.cyclo ./TouchGFX/generated/fonts/src/Table_verdana_40_4bpp.d ./TouchGFX/generated/fonts/src/Table_verdana_40_4bpp.o ./TouchGFX/generated/fonts/src/Table_verdana_40_4bpp.su ./TouchGFX/generated/fonts/src/UnmappedDataFont.cyclo ./TouchGFX/generated/fonts/src/UnmappedDataFont.d ./TouchGFX/generated/fonts/src/UnmappedDataFont.o ./TouchGFX/generated/fonts/src/UnmappedDataFont.su

.PHONY: clean-TouchGFX-2f-generated-2f-fonts-2f-src

