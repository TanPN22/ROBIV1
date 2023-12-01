################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../SDK_ROBI_STM32F0_1.0.0/shared/Utilities/buff.c \
../SDK_ROBI_STM32F0_1.0.0/shared/Utilities/utilities.c 

OBJS += \
./SDK_ROBI_STM32F0_1.0.0/shared/Utilities/buff.o \
./SDK_ROBI_STM32F0_1.0.0/shared/Utilities/utilities.o 

C_DEPS += \
./SDK_ROBI_STM32F0_1.0.0/shared/Utilities/buff.d \
./SDK_ROBI_STM32F0_1.0.0/shared/Utilities/utilities.d 


# Each subdirectory must supply rules for building sources it contributes
SDK_ROBI_STM32F0_1.0.0/shared/Utilities/buff.o: D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Utilities/buff.c SDK_ROBI_STM32F0_1.0.0/shared/Utilities/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DSTM32F030X8 -c -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Drivers/CMSIS/Include" -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Drivers/CMSIS/Source" -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Drivers/STM32F0xx_StdPeriph_Driver/inc" -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Drivers/STM32F0xx_StdPeriph_Driver/src" -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Middle/button" -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Middle/buzzer" -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Middle/lcd" -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Middle/led" -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Middle/motor" -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Middle/rtos" -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Middle/sensor" -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Middle/serial" -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Utilities" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
SDK_ROBI_STM32F0_1.0.0/shared/Utilities/utilities.o: D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Utilities/utilities.c SDK_ROBI_STM32F0_1.0.0/shared/Utilities/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DSTM32F030X8 -c -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Drivers/CMSIS/Include" -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Drivers/CMSIS/Source" -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Drivers/STM32F0xx_StdPeriph_Driver/inc" -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Drivers/STM32F0xx_StdPeriph_Driver/src" -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Middle/button" -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Middle/buzzer" -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Middle/lcd" -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Middle/led" -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Middle/motor" -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Middle/rtos" -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Middle/sensor" -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Middle/serial" -I"D:/DH/Lumi/LabROBI/ROBI_BEVA_V1.0(1)/ROBI_BEVA_V1.0/SDK_ROBI_STM32F0_1.0.0/shared/Utilities" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-SDK_ROBI_STM32F0_1-2e-0-2e-0-2f-shared-2f-Utilities

clean-SDK_ROBI_STM32F0_1-2e-0-2e-0-2f-shared-2f-Utilities:
	-$(RM) ./SDK_ROBI_STM32F0_1.0.0/shared/Utilities/buff.cyclo ./SDK_ROBI_STM32F0_1.0.0/shared/Utilities/buff.d ./SDK_ROBI_STM32F0_1.0.0/shared/Utilities/buff.o ./SDK_ROBI_STM32F0_1.0.0/shared/Utilities/buff.su ./SDK_ROBI_STM32F0_1.0.0/shared/Utilities/utilities.cyclo ./SDK_ROBI_STM32F0_1.0.0/shared/Utilities/utilities.d ./SDK_ROBI_STM32F0_1.0.0/shared/Utilities/utilities.o ./SDK_ROBI_STM32F0_1.0.0/shared/Utilities/utilities.su

.PHONY: clean-SDK_ROBI_STM32F0_1-2e-0-2e-0-2f-shared-2f-Utilities

