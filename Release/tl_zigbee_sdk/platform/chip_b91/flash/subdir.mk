################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/platform/chip_b91/flash/flash_common.c 

C_DEPS += \
./tl_zigbee_sdk/platform/chip_b91/flash/flash_common.d 

OBJS += \
./tl_zigbee_sdk/platform/chip_b91/flash/flash_common.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/platform/chip_b91/flash/%.o: ../tl_zigbee_sdk/platform/chip_b91/flash/%.c tl_zigbee_sdk/platform/chip_b91/flash/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-platform-2f-chip_b91-2f-flash

clean-tl_zigbee_sdk-2f-platform-2f-chip_b91-2f-flash:
	-$(RM) ./tl_zigbee_sdk/platform/chip_b91/flash/flash_common.d ./tl_zigbee_sdk/platform/chip_b91/flash/flash_common.o

.PHONY: clean-tl_zigbee_sdk-2f-platform-2f-chip_b91-2f-flash

