################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/zigbee/zcl/smart_energy/zcl_metering.c \
../tl_zigbee_sdk/zigbee/zcl/smart_energy/zcl_metering_attr.c 

C_DEPS += \
./tl_zigbee_sdk/zigbee/zcl/smart_energy/zcl_metering.d \
./tl_zigbee_sdk/zigbee/zcl/smart_energy/zcl_metering_attr.d 

OBJS += \
./tl_zigbee_sdk/zigbee/zcl/smart_energy/zcl_metering.o \
./tl_zigbee_sdk/zigbee/zcl/smart_energy/zcl_metering_attr.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/zigbee/zcl/smart_energy/%.o: ../tl_zigbee_sdk/zigbee/zcl/smart_energy/%.c tl_zigbee_sdk/zigbee/zcl/smart_energy/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-smart_energy

clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-smart_energy:
	-$(RM) ./tl_zigbee_sdk/zigbee/zcl/smart_energy/zcl_metering.d ./tl_zigbee_sdk/zigbee/zcl/smart_energy/zcl_metering.o ./tl_zigbee_sdk/zigbee/zcl/smart_energy/zcl_metering_attr.d ./tl_zigbee_sdk/zigbee/zcl/smart_energy/zcl_metering_attr.o

.PHONY: clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-smart_energy

