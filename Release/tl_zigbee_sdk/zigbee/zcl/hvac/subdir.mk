################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/zigbee/zcl/hvac/zcl_thermostat.c 

C_DEPS += \
./tl_zigbee_sdk/zigbee/zcl/hvac/zcl_thermostat.d 

OBJS += \
./tl_zigbee_sdk/zigbee/zcl/hvac/zcl_thermostat.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/zigbee/zcl/hvac/%.o: ../tl_zigbee_sdk/zigbee/zcl/hvac/%.c tl_zigbee_sdk/zigbee/zcl/hvac/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-hvac

clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-hvac:
	-$(RM) ./tl_zigbee_sdk/zigbee/zcl/hvac/zcl_thermostat.d ./tl_zigbee_sdk/zigbee/zcl/hvac/zcl_thermostat.o

.PHONY: clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-hvac

