################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/zigbee/ota/ota.c \
../tl_zigbee_sdk/zigbee/ota/otaEpCfg.c 

C_DEPS += \
./tl_zigbee_sdk/zigbee/ota/ota.d \
./tl_zigbee_sdk/zigbee/ota/otaEpCfg.d 

OBJS += \
./tl_zigbee_sdk/zigbee/ota/ota.o \
./tl_zigbee_sdk/zigbee/ota/otaEpCfg.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/zigbee/ota/%.o: ../tl_zigbee_sdk/zigbee/ota/%.c tl_zigbee_sdk/zigbee/ota/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-zigbee-2f-ota

clean-tl_zigbee_sdk-2f-zigbee-2f-ota:
	-$(RM) ./tl_zigbee_sdk/zigbee/ota/ota.d ./tl_zigbee_sdk/zigbee/ota/ota.o ./tl_zigbee_sdk/zigbee/ota/otaEpCfg.d ./tl_zigbee_sdk/zigbee/ota/otaEpCfg.o

.PHONY: clean-tl_zigbee_sdk-2f-zigbee-2f-ota

