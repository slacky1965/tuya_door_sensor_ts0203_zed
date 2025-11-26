################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/zcl/zcl_onoffSwitchCfg.c \
../src/zcl/zcl_relative_humidity_measurement.c \
../src/zcl/zcl_reporting.c 

C_DEPS += \
./src/zcl/zcl_onoffSwitchCfg.d \
./src/zcl/zcl_relative_humidity_measurement.d \
./src/zcl/zcl_reporting.d 

OBJS += \
./src/zcl/zcl_onoffSwitchCfg.o \
./src/zcl/zcl_relative_humidity_measurement.o \
./src/zcl/zcl_reporting.o 


# Each subdirectory must supply rules for building sources it contributes
src/zcl/%.o: ../src/zcl/%.c src/zcl/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-src-2f-zcl

clean-src-2f-zcl:
	-$(RM) ./src/zcl/zcl_onoffSwitchCfg.d ./src/zcl/zcl_onoffSwitchCfg.o ./src/zcl/zcl_relative_humidity_measurement.d ./src/zcl/zcl_relative_humidity_measurement.o ./src/zcl/zcl_reporting.d ./src/zcl/zcl_reporting.o

.PHONY: clean-src-2f-zcl

