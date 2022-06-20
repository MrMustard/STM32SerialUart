################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../SerialUart/SerialUart.c 

OBJS += \
./SerialUart/SerialUart.o 

C_DEPS += \
./SerialUart/SerialUart.d 


# Each subdirectory must supply rules for building sources it contributes
SerialUart/%.o: ../SerialUart/%.c SerialUart/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G030xx -c -I../Core/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/pc/Desktop/STM32SerialLibrary/LibreriaUart/Debug/SerialUart" -I"C:/Users/pc/Desktop/STM32SerialLibrary/LibreriaUart/SerialUart" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"

