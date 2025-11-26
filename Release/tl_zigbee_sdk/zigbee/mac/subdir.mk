################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/zigbee/mac/mac_phy.c \
../tl_zigbee_sdk/zigbee/mac/mac_pib.c 

C_DEPS += \
./tl_zigbee_sdk/zigbee/mac/mac_phy.d \
./tl_zigbee_sdk/zigbee/mac/mac_pib.d 

OBJS += \
./tl_zigbee_sdk/zigbee/mac/mac_phy.o \
./tl_zigbee_sdk/zigbee/mac/mac_pib.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/zigbee/mac/%.o: ../tl_zigbee_sdk/zigbee/mac/%.c tl_zigbee_sdk/zigbee/mac/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-zigbee-2f-mac

clean-tl_zigbee_sdk-2f-zigbee-2f-mac:
	-$(RM) ./tl_zigbee_sdk/zigbee/mac/mac_phy.d ./tl_zigbee_sdk/zigbee/mac/mac_phy.o ./tl_zigbee_sdk/zigbee/mac/mac_pib.d ./tl_zigbee_sdk/zigbee/mac/mac_pib.o

.PHONY: clean-tl_zigbee_sdk-2f-zigbee-2f-mac

