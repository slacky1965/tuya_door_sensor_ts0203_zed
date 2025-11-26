################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/zigbee/ss/ss_nv.c 

C_DEPS += \
./tl_zigbee_sdk/zigbee/ss/ss_nv.d 

OBJS += \
./tl_zigbee_sdk/zigbee/ss/ss_nv.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/zigbee/ss/%.o: ../tl_zigbee_sdk/zigbee/ss/%.c tl_zigbee_sdk/zigbee/ss/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-zigbee-2f-ss

clean-tl_zigbee_sdk-2f-zigbee-2f-ss:
	-$(RM) ./tl_zigbee_sdk/zigbee/ss/ss_nv.d ./tl_zigbee_sdk/zigbee/ss/ss_nv.o

.PHONY: clean-tl_zigbee_sdk-2f-zigbee-2f-ss

