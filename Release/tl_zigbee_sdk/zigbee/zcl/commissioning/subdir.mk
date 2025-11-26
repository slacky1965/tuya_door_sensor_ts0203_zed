################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/zigbee/zcl/commissioning/zcl_commissioning.c \
../tl_zigbee_sdk/zigbee/zcl/commissioning/zcl_commissioning_attr.c 

C_DEPS += \
./tl_zigbee_sdk/zigbee/zcl/commissioning/zcl_commissioning.d \
./tl_zigbee_sdk/zigbee/zcl/commissioning/zcl_commissioning_attr.d 

OBJS += \
./tl_zigbee_sdk/zigbee/zcl/commissioning/zcl_commissioning.o \
./tl_zigbee_sdk/zigbee/zcl/commissioning/zcl_commissioning_attr.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/zigbee/zcl/commissioning/%.o: ../tl_zigbee_sdk/zigbee/zcl/commissioning/%.c tl_zigbee_sdk/zigbee/zcl/commissioning/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-commissioning

clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-commissioning:
	-$(RM) ./tl_zigbee_sdk/zigbee/zcl/commissioning/zcl_commissioning.d ./tl_zigbee_sdk/zigbee/zcl/commissioning/zcl_commissioning.o ./tl_zigbee_sdk/zigbee/zcl/commissioning/zcl_commissioning_attr.d ./tl_zigbee_sdk/zigbee/zcl/commissioning/zcl_commissioning_attr.o

.PHONY: clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-commissioning

