################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/platform/services/b92/irq_handler.c \
../tl_zigbee_sdk/platform/services/b92/plic_isr.c 

C_DEPS += \
./tl_zigbee_sdk/platform/services/b92/irq_handler.d \
./tl_zigbee_sdk/platform/services/b92/plic_isr.d 

OBJS += \
./tl_zigbee_sdk/platform/services/b92/irq_handler.o \
./tl_zigbee_sdk/platform/services/b92/plic_isr.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/platform/services/b92/%.o: ../tl_zigbee_sdk/platform/services/b92/%.c tl_zigbee_sdk/platform/services/b92/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-platform-2f-services-2f-b92

clean-tl_zigbee_sdk-2f-platform-2f-services-2f-b92:
	-$(RM) ./tl_zigbee_sdk/platform/services/b92/irq_handler.d ./tl_zigbee_sdk/platform/services/b92/irq_handler.o ./tl_zigbee_sdk/platform/services/b92/plic_isr.d ./tl_zigbee_sdk/platform/services/b92/plic_isr.o

.PHONY: clean-tl_zigbee_sdk-2f-platform-2f-services-2f-b92

