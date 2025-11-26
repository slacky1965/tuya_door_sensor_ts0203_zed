################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../tl_zigbee_sdk/platform/boot/826x/cstartup_826x.S 

OBJS += \
./tl_zigbee_sdk/platform/boot/826x/cstartup_826x.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/platform/boot/826x/%.o: ../tl_zigbee_sdk/platform/boot/826x/%.S tl_zigbee_sdk/platform/boot/826x/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-platform-2f-boot-2f-826x

clean-tl_zigbee_sdk-2f-platform-2f-boot-2f-826x:
	-$(RM) ./tl_zigbee_sdk/platform/boot/826x/cstartup_826x.o

.PHONY: clean-tl_zigbee_sdk-2f-platform-2f-boot-2f-826x

