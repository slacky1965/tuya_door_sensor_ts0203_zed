################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/proj/drivers/drv_adc.c \
../tl_zigbee_sdk/proj/drivers/drv_calibration.c \
../tl_zigbee_sdk/proj/drivers/drv_console.c \
../tl_zigbee_sdk/proj/drivers/drv_flash.c \
../tl_zigbee_sdk/proj/drivers/drv_gpio.c \
../tl_zigbee_sdk/proj/drivers/drv_hw.c \
../tl_zigbee_sdk/proj/drivers/drv_i2c.c \
../tl_zigbee_sdk/proj/drivers/drv_keyboard.c \
../tl_zigbee_sdk/proj/drivers/drv_nv.c \
../tl_zigbee_sdk/proj/drivers/drv_pm.c \
../tl_zigbee_sdk/proj/drivers/drv_putchar.c \
../tl_zigbee_sdk/proj/drivers/drv_pwm.c \
../tl_zigbee_sdk/proj/drivers/drv_security.c \
../tl_zigbee_sdk/proj/drivers/drv_spi.c \
../tl_zigbee_sdk/proj/drivers/drv_timer.c \
../tl_zigbee_sdk/proj/drivers/drv_uart.c 

C_DEPS += \
./tl_zigbee_sdk/proj/drivers/drv_adc.d \
./tl_zigbee_sdk/proj/drivers/drv_calibration.d \
./tl_zigbee_sdk/proj/drivers/drv_console.d \
./tl_zigbee_sdk/proj/drivers/drv_flash.d \
./tl_zigbee_sdk/proj/drivers/drv_gpio.d \
./tl_zigbee_sdk/proj/drivers/drv_hw.d \
./tl_zigbee_sdk/proj/drivers/drv_i2c.d \
./tl_zigbee_sdk/proj/drivers/drv_keyboard.d \
./tl_zigbee_sdk/proj/drivers/drv_nv.d \
./tl_zigbee_sdk/proj/drivers/drv_pm.d \
./tl_zigbee_sdk/proj/drivers/drv_putchar.d \
./tl_zigbee_sdk/proj/drivers/drv_pwm.d \
./tl_zigbee_sdk/proj/drivers/drv_security.d \
./tl_zigbee_sdk/proj/drivers/drv_spi.d \
./tl_zigbee_sdk/proj/drivers/drv_timer.d \
./tl_zigbee_sdk/proj/drivers/drv_uart.d 

OBJS += \
./tl_zigbee_sdk/proj/drivers/drv_adc.o \
./tl_zigbee_sdk/proj/drivers/drv_calibration.o \
./tl_zigbee_sdk/proj/drivers/drv_console.o \
./tl_zigbee_sdk/proj/drivers/drv_flash.o \
./tl_zigbee_sdk/proj/drivers/drv_gpio.o \
./tl_zigbee_sdk/proj/drivers/drv_hw.o \
./tl_zigbee_sdk/proj/drivers/drv_i2c.o \
./tl_zigbee_sdk/proj/drivers/drv_keyboard.o \
./tl_zigbee_sdk/proj/drivers/drv_nv.o \
./tl_zigbee_sdk/proj/drivers/drv_pm.o \
./tl_zigbee_sdk/proj/drivers/drv_putchar.o \
./tl_zigbee_sdk/proj/drivers/drv_pwm.o \
./tl_zigbee_sdk/proj/drivers/drv_security.o \
./tl_zigbee_sdk/proj/drivers/drv_spi.o \
./tl_zigbee_sdk/proj/drivers/drv_timer.o \
./tl_zigbee_sdk/proj/drivers/drv_uart.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/proj/drivers/%.o: ../tl_zigbee_sdk/proj/drivers/%.c tl_zigbee_sdk/proj/drivers/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-proj-2f-drivers

clean-tl_zigbee_sdk-2f-proj-2f-drivers:
	-$(RM) ./tl_zigbee_sdk/proj/drivers/drv_adc.d ./tl_zigbee_sdk/proj/drivers/drv_adc.o ./tl_zigbee_sdk/proj/drivers/drv_calibration.d ./tl_zigbee_sdk/proj/drivers/drv_calibration.o ./tl_zigbee_sdk/proj/drivers/drv_console.d ./tl_zigbee_sdk/proj/drivers/drv_console.o ./tl_zigbee_sdk/proj/drivers/drv_flash.d ./tl_zigbee_sdk/proj/drivers/drv_flash.o ./tl_zigbee_sdk/proj/drivers/drv_gpio.d ./tl_zigbee_sdk/proj/drivers/drv_gpio.o ./tl_zigbee_sdk/proj/drivers/drv_hw.d ./tl_zigbee_sdk/proj/drivers/drv_hw.o ./tl_zigbee_sdk/proj/drivers/drv_i2c.d ./tl_zigbee_sdk/proj/drivers/drv_i2c.o ./tl_zigbee_sdk/proj/drivers/drv_keyboard.d ./tl_zigbee_sdk/proj/drivers/drv_keyboard.o ./tl_zigbee_sdk/proj/drivers/drv_nv.d ./tl_zigbee_sdk/proj/drivers/drv_nv.o ./tl_zigbee_sdk/proj/drivers/drv_pm.d ./tl_zigbee_sdk/proj/drivers/drv_pm.o ./tl_zigbee_sdk/proj/drivers/drv_putchar.d ./tl_zigbee_sdk/proj/drivers/drv_putchar.o ./tl_zigbee_sdk/proj/drivers/drv_pwm.d ./tl_zigbee_sdk/proj/drivers/drv_pwm.o ./tl_zigbee_sdk/proj/drivers/drv_security.d ./tl_zigbee_sdk/proj/drivers/drv_security.o ./tl_zigbee_sdk/proj/drivers/drv_spi.d ./tl_zigbee_sdk/proj/drivers/drv_spi.o ./tl_zigbee_sdk/proj/drivers/drv_timer.d ./tl_zigbee_sdk/proj/drivers/drv_timer.o ./tl_zigbee_sdk/proj/drivers/drv_uart.d ./tl_zigbee_sdk/proj/drivers/drv_uart.o

.PHONY: clean-tl_zigbee_sdk-2f-proj-2f-drivers

