################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/zigbee/aps/aps_group.c 

C_DEPS += \
./tl_zigbee_sdk/zigbee/aps/aps_group.d 

OBJS += \
./tl_zigbee_sdk/zigbee/aps/aps_group.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/zigbee/aps/%.o: ../tl_zigbee_sdk/zigbee/aps/%.c tl_zigbee_sdk/zigbee/aps/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-zigbee-2f-aps

clean-tl_zigbee_sdk-2f-zigbee-2f-aps:
	-$(RM) ./tl_zigbee_sdk/zigbee/aps/aps_group.d ./tl_zigbee_sdk/zigbee/aps/aps_group.o

.PHONY: clean-tl_zigbee_sdk-2f-zigbee-2f-aps

