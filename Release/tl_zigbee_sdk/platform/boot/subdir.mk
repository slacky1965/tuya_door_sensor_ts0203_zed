################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../tl_zigbee_sdk/platform/boot/link_cfg.S 

OBJS += \
./tl_zigbee_sdk/platform/boot/link_cfg.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/platform/boot/%.o: ../tl_zigbee_sdk/platform/boot/%.S tl_zigbee_sdk/platform/boot/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-platform-2f-boot

clean-tl_zigbee_sdk-2f-platform-2f-boot:
	-$(RM) ./tl_zigbee_sdk/platform/boot/link_cfg.o

.PHONY: clean-tl_zigbee_sdk-2f-platform-2f-boot

