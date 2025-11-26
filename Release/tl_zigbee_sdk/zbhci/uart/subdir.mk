################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/zbhci/uart/hci_uart.c 

C_DEPS += \
./tl_zigbee_sdk/zbhci/uart/hci_uart.d 

OBJS += \
./tl_zigbee_sdk/zbhci/uart/hci_uart.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/zbhci/uart/%.o: ../tl_zigbee_sdk/zbhci/uart/%.c tl_zigbee_sdk/zbhci/uart/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-zbhci-2f-uart

clean-tl_zigbee_sdk-2f-zbhci-2f-uart:
	-$(RM) ./tl_zigbee_sdk/zbhci/uart/hci_uart.d ./tl_zigbee_sdk/zbhci/uart/hci_uart.o

.PHONY: clean-tl_zigbee_sdk-2f-zbhci-2f-uart

