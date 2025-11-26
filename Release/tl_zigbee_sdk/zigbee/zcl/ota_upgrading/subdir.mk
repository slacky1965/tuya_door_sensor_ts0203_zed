################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/zigbee/zcl/ota_upgrading/zcl_ota.c \
../tl_zigbee_sdk/zigbee/zcl/ota_upgrading/zcl_ota_attr.c 

C_DEPS += \
./tl_zigbee_sdk/zigbee/zcl/ota_upgrading/zcl_ota.d \
./tl_zigbee_sdk/zigbee/zcl/ota_upgrading/zcl_ota_attr.d 

OBJS += \
./tl_zigbee_sdk/zigbee/zcl/ota_upgrading/zcl_ota.o \
./tl_zigbee_sdk/zigbee/zcl/ota_upgrading/zcl_ota_attr.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/zigbee/zcl/ota_upgrading/%.o: ../tl_zigbee_sdk/zigbee/zcl/ota_upgrading/%.c tl_zigbee_sdk/zigbee/zcl/ota_upgrading/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-ota_upgrading

clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-ota_upgrading:
	-$(RM) ./tl_zigbee_sdk/zigbee/zcl/ota_upgrading/zcl_ota.d ./tl_zigbee_sdk/zigbee/zcl/ota_upgrading/zcl_ota.o ./tl_zigbee_sdk/zigbee/zcl/ota_upgrading/zcl_ota_attr.d ./tl_zigbee_sdk/zigbee/zcl/ota_upgrading/zcl_ota_attr.o

.PHONY: clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-ota_upgrading

