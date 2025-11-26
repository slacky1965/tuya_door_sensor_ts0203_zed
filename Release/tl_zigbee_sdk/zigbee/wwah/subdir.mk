################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/zigbee/wwah/wwah.c \
../tl_zigbee_sdk/zigbee/wwah/wwahEpCfg.c 

C_DEPS += \
./tl_zigbee_sdk/zigbee/wwah/wwah.d \
./tl_zigbee_sdk/zigbee/wwah/wwahEpCfg.d 

OBJS += \
./tl_zigbee_sdk/zigbee/wwah/wwah.o \
./tl_zigbee_sdk/zigbee/wwah/wwahEpCfg.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/zigbee/wwah/%.o: ../tl_zigbee_sdk/zigbee/wwah/%.c tl_zigbee_sdk/zigbee/wwah/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-zigbee-2f-wwah

clean-tl_zigbee_sdk-2f-zigbee-2f-wwah:
	-$(RM) ./tl_zigbee_sdk/zigbee/wwah/wwah.d ./tl_zigbee_sdk/zigbee/wwah/wwah.o ./tl_zigbee_sdk/zigbee/wwah/wwahEpCfg.d ./tl_zigbee_sdk/zigbee/wwah/wwahEpCfg.o

.PHONY: clean-tl_zigbee_sdk-2f-zigbee-2f-wwah

