################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/proj/drivers/usb/app/usbcdc.c \
../tl_zigbee_sdk/proj/drivers/usb/app/usbkb.c \
../tl_zigbee_sdk/proj/drivers/usb/app/usbmouse.c \
../tl_zigbee_sdk/proj/drivers/usb/app/usbvendor.c 

C_DEPS += \
./tl_zigbee_sdk/proj/drivers/usb/app/usbcdc.d \
./tl_zigbee_sdk/proj/drivers/usb/app/usbkb.d \
./tl_zigbee_sdk/proj/drivers/usb/app/usbmouse.d \
./tl_zigbee_sdk/proj/drivers/usb/app/usbvendor.d 

OBJS += \
./tl_zigbee_sdk/proj/drivers/usb/app/usbcdc.o \
./tl_zigbee_sdk/proj/drivers/usb/app/usbkb.o \
./tl_zigbee_sdk/proj/drivers/usb/app/usbmouse.o \
./tl_zigbee_sdk/proj/drivers/usb/app/usbvendor.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/proj/drivers/usb/app/%.o: ../tl_zigbee_sdk/proj/drivers/usb/app/%.c tl_zigbee_sdk/proj/drivers/usb/app/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-proj-2f-drivers-2f-usb-2f-app

clean-tl_zigbee_sdk-2f-proj-2f-drivers-2f-usb-2f-app:
	-$(RM) ./tl_zigbee_sdk/proj/drivers/usb/app/usbcdc.d ./tl_zigbee_sdk/proj/drivers/usb/app/usbcdc.o ./tl_zigbee_sdk/proj/drivers/usb/app/usbkb.d ./tl_zigbee_sdk/proj/drivers/usb/app/usbkb.o ./tl_zigbee_sdk/proj/drivers/usb/app/usbmouse.d ./tl_zigbee_sdk/proj/drivers/usb/app/usbmouse.o ./tl_zigbee_sdk/proj/drivers/usb/app/usbvendor.d ./tl_zigbee_sdk/proj/drivers/usb/app/usbvendor.o

.PHONY: clean-tl_zigbee_sdk-2f-proj-2f-drivers-2f-usb-2f-app

