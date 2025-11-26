################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/zigbee/common/zb_config.c \
../tl_zigbee_sdk/zigbee/common/zb_version.c 

C_DEPS += \
./tl_zigbee_sdk/zigbee/common/zb_config.d \
./tl_zigbee_sdk/zigbee/common/zb_version.d 

OBJS += \
./tl_zigbee_sdk/zigbee/common/zb_config.o \
./tl_zigbee_sdk/zigbee/common/zb_version.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/zigbee/common/%.o: ../tl_zigbee_sdk/zigbee/common/%.c tl_zigbee_sdk/zigbee/common/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-zigbee-2f-common

clean-tl_zigbee_sdk-2f-zigbee-2f-common:
	-$(RM) ./tl_zigbee_sdk/zigbee/common/zb_config.d ./tl_zigbee_sdk/zigbee/common/zb_config.o ./tl_zigbee_sdk/zigbee/common/zb_version.d ./tl_zigbee_sdk/zigbee/common/zb_version.o

.PHONY: clean-tl_zigbee_sdk-2f-zigbee-2f-common

