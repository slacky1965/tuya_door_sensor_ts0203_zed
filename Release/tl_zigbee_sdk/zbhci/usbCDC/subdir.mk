################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/zbhci/usbCDC/zbhci_usb_cdc.c 

C_DEPS += \
./tl_zigbee_sdk/zbhci/usbCDC/zbhci_usb_cdc.d 

OBJS += \
./tl_zigbee_sdk/zbhci/usbCDC/zbhci_usb_cdc.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/zbhci/usbCDC/%.o: ../tl_zigbee_sdk/zbhci/usbCDC/%.c tl_zigbee_sdk/zbhci/usbCDC/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-zbhci-2f-usbCDC

clean-tl_zigbee_sdk-2f-zbhci-2f-usbCDC:
	-$(RM) ./tl_zigbee_sdk/zbhci/usbCDC/zbhci_usb_cdc.d ./tl_zigbee_sdk/zbhci/usbCDC/zbhci_usb_cdc.o

.PHONY: clean-tl_zigbee_sdk-2f-zbhci-2f-usbCDC

