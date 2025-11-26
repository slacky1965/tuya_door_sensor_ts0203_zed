################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/platform/services/b85m/irq_handler.c 

C_DEPS += \
./tl_zigbee_sdk/platform/services/b85m/irq_handler.d 

OBJS += \
./tl_zigbee_sdk/platform/services/b85m/irq_handler.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/platform/services/b85m/%.o: ../tl_zigbee_sdk/platform/services/b85m/%.c tl_zigbee_sdk/platform/services/b85m/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-platform-2f-services-2f-b85m

clean-tl_zigbee_sdk-2f-platform-2f-services-2f-b85m:
	-$(RM) ./tl_zigbee_sdk/platform/services/b85m/irq_handler.d ./tl_zigbee_sdk/platform/services/b85m/irq_handler.o

.PHONY: clean-tl_zigbee_sdk-2f-platform-2f-services-2f-b85m

