################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../tl_zigbee_sdk/platform/boot/b91/cstartup_b91.S 

OBJS += \
./tl_zigbee_sdk/platform/boot/b91/cstartup_b91.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/platform/boot/b91/%.o: ../tl_zigbee_sdk/platform/boot/b91/%.S tl_zigbee_sdk/platform/boot/b91/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-platform-2f-boot-2f-b91

clean-tl_zigbee_sdk-2f-platform-2f-boot-2f-b91:
	-$(RM) ./tl_zigbee_sdk/platform/boot/b91/cstartup_b91.o

.PHONY: clean-tl_zigbee_sdk-2f-platform-2f-boot-2f-b91

