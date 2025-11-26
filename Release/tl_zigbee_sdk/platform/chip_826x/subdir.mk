################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/platform/chip_826x/flash.c 

C_DEPS += \
./tl_zigbee_sdk/platform/chip_826x/flash.d 

OBJS += \
./tl_zigbee_sdk/platform/chip_826x/flash.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/platform/chip_826x/%.o: ../tl_zigbee_sdk/platform/chip_826x/%.c tl_zigbee_sdk/platform/chip_826x/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-platform-2f-chip_826x

clean-tl_zigbee_sdk-2f-platform-2f-chip_826x:
	-$(RM) ./tl_zigbee_sdk/platform/chip_826x/flash.d ./tl_zigbee_sdk/platform/chip_826x/flash.o

.PHONY: clean-tl_zigbee_sdk-2f-platform-2f-chip_826x

