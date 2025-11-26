################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/proj/drivers/usb/usb.c \
../tl_zigbee_sdk/proj/drivers/usb/usbdesc.c 

C_DEPS += \
./tl_zigbee_sdk/proj/drivers/usb/usb.d \
./tl_zigbee_sdk/proj/drivers/usb/usbdesc.d 

OBJS += \
./tl_zigbee_sdk/proj/drivers/usb/usb.o \
./tl_zigbee_sdk/proj/drivers/usb/usbdesc.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/proj/drivers/usb/%.o: ../tl_zigbee_sdk/proj/drivers/usb/%.c tl_zigbee_sdk/proj/drivers/usb/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-proj-2f-drivers-2f-usb

clean-tl_zigbee_sdk-2f-proj-2f-drivers-2f-usb:
	-$(RM) ./tl_zigbee_sdk/proj/drivers/usb/usb.d ./tl_zigbee_sdk/proj/drivers/usb/usb.o ./tl_zigbee_sdk/proj/drivers/usb/usbdesc.d ./tl_zigbee_sdk/proj/drivers/usb/usbdesc.o

.PHONY: clean-tl_zigbee_sdk-2f-proj-2f-drivers-2f-usb

