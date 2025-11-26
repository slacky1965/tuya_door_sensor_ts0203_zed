################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/app_battery.c \
../src/app_button.c \
../src/app_endpoint_cfg.c \
../src/app_led.c \
../src/app_main.c \
../src/app_on_off.c \
../src/app_pm.c \
../src/app_reporting.c \
../src/app_utility.c \
../src/zb_appCb.c \
../src/zcl_appCb.c 

C_DEPS += \
./src/app_battery.d \
./src/app_button.d \
./src/app_endpoint_cfg.d \
./src/app_led.d \
./src/app_main.d \
./src/app_on_off.d \
./src/app_pm.d \
./src/app_reporting.d \
./src/app_utility.d \
./src/zb_appCb.d \
./src/zcl_appCb.d 

OBJS += \
./src/app_battery.o \
./src/app_button.o \
./src/app_endpoint_cfg.o \
./src/app_led.o \
./src/app_main.o \
./src/app_on_off.o \
./src/app_pm.o \
./src/app_reporting.o \
./src/app_utility.o \
./src/zb_appCb.o \
./src/zcl_appCb.o 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-src

clean-src:
	-$(RM) ./src/app_battery.d ./src/app_battery.o ./src/app_button.d ./src/app_button.o ./src/app_endpoint_cfg.d ./src/app_endpoint_cfg.o ./src/app_led.d ./src/app_led.o ./src/app_main.d ./src/app_main.o ./src/app_on_off.d ./src/app_on_off.o ./src/app_pm.d ./src/app_pm.o ./src/app_reporting.d ./src/app_reporting.o ./src/app_utility.d ./src/app_utility.o ./src/zb_appCb.d ./src/zb_appCb.o ./src/zcl_appCb.d ./src/zcl_appCb.o

.PHONY: clean-src

