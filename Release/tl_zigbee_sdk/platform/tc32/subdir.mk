################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../tl_zigbee_sdk/platform/tc32/div_mod.S 

OBJS += \
./tl_zigbee_sdk/platform/tc32/div_mod.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/platform/tc32/%.o: ../tl_zigbee_sdk/platform/tc32/%.S tl_zigbee_sdk/platform/tc32/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-platform-2f-tc32

clean-tl_zigbee_sdk-2f-platform-2f-tc32:
	-$(RM) ./tl_zigbee_sdk/platform/tc32/div_mod.o

.PHONY: clean-tl_zigbee_sdk-2f-platform-2f-tc32

