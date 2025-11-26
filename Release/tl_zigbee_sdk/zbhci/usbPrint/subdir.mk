################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/zbhci/usbPrint/hci_usbPrint.c 

C_DEPS += \
./tl_zigbee_sdk/zbhci/usbPrint/hci_usbPrint.d 

OBJS += \
./tl_zigbee_sdk/zbhci/usbPrint/hci_usbPrint.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/zbhci/usbPrint/%.o: ../tl_zigbee_sdk/zbhci/usbPrint/%.c tl_zigbee_sdk/zbhci/usbPrint/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-zbhci-2f-usbPrint

clean-tl_zigbee_sdk-2f-zbhci-2f-usbPrint:
	-$(RM) ./tl_zigbee_sdk/zbhci/usbPrint/hci_usbPrint.d ./tl_zigbee_sdk/zbhci/usbPrint/hci_usbPrint.o

.PHONY: clean-tl_zigbee_sdk-2f-zbhci-2f-usbPrint

