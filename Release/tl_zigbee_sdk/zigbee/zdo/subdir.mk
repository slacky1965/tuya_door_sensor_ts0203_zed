################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/zigbee/zdo/zdp.c 

C_DEPS += \
./tl_zigbee_sdk/zigbee/zdo/zdp.d 

OBJS += \
./tl_zigbee_sdk/zigbee/zdo/zdp.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/zigbee/zdo/%.o: ../tl_zigbee_sdk/zigbee/zdo/%.c tl_zigbee_sdk/zigbee/zdo/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-zigbee-2f-zdo

clean-tl_zigbee_sdk-2f-zigbee-2f-zdo:
	-$(RM) ./tl_zigbee_sdk/zigbee/zdo/zdp.d ./tl_zigbee_sdk/zigbee/zdo/zdp.o

.PHONY: clean-tl_zigbee_sdk-2f-zigbee-2f-zdo

