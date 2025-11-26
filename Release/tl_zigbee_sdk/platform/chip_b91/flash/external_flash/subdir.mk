################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/platform/chip_b91/flash/external_flash/flash_mid182085.c 

C_DEPS += \
./tl_zigbee_sdk/platform/chip_b91/flash/external_flash/flash_mid182085.d 

OBJS += \
./tl_zigbee_sdk/platform/chip_b91/flash/external_flash/flash_mid182085.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/platform/chip_b91/flash/external_flash/%.o: ../tl_zigbee_sdk/platform/chip_b91/flash/external_flash/%.c tl_zigbee_sdk/platform/chip_b91/flash/external_flash/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-platform-2f-chip_b91-2f-flash-2f-external_flash

clean-tl_zigbee_sdk-2f-platform-2f-chip_b91-2f-flash-2f-external_flash:
	-$(RM) ./tl_zigbee_sdk/platform/chip_b91/flash/external_flash/flash_mid182085.d ./tl_zigbee_sdk/platform/chip_b91/flash/external_flash/flash_mid182085.o

.PHONY: clean-tl_zigbee_sdk-2f-platform-2f-chip_b91-2f-flash-2f-external_flash

