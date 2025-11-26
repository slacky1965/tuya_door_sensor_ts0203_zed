################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/zbhci/usbHID/zbhci_usb_hid.c 

C_DEPS += \
./tl_zigbee_sdk/zbhci/usbHID/zbhci_usb_hid.d 

OBJS += \
./tl_zigbee_sdk/zbhci/usbHID/zbhci_usb_hid.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/zbhci/usbHID/%.o: ../tl_zigbee_sdk/zbhci/usbHID/%.c tl_zigbee_sdk/zbhci/usbHID/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-zbhci-2f-usbHID

clean-tl_zigbee_sdk-2f-zbhci-2f-usbHID:
	-$(RM) ./tl_zigbee_sdk/zbhci/usbHID/zbhci_usb_hid.d ./tl_zigbee_sdk/zbhci/usbHID/zbhci_usb_hid.o

.PHONY: clean-tl_zigbee_sdk-2f-zbhci-2f-usbHID

