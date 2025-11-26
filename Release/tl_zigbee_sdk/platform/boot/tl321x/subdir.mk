################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../tl_zigbee_sdk/platform/boot/tl321x/cstartup_tl321x.S 

OBJS += \
./tl_zigbee_sdk/platform/boot/tl321x/cstartup_tl321x.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/platform/boot/tl321x/%.o: ../tl_zigbee_sdk/platform/boot/tl321x/%.S tl_zigbee_sdk/platform/boot/tl321x/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-platform-2f-boot-2f-tl321x

clean-tl_zigbee_sdk-2f-platform-2f-boot-2f-tl321x:
	-$(RM) ./tl_zigbee_sdk/platform/boot/tl321x/cstartup_tl321x.o

.PHONY: clean-tl_zigbee_sdk-2f-platform-2f-boot-2f-tl321x

