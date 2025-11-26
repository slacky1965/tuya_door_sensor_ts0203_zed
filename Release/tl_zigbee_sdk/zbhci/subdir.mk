################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/zbhci/zbhci.c \
../tl_zigbee_sdk/zbhci/zbhciCmdProcess.c \
../tl_zigbee_sdk/zbhci/zbhci_zclHandler.c 

C_DEPS += \
./tl_zigbee_sdk/zbhci/zbhci.d \
./tl_zigbee_sdk/zbhci/zbhciCmdProcess.d \
./tl_zigbee_sdk/zbhci/zbhci_zclHandler.d 

OBJS += \
./tl_zigbee_sdk/zbhci/zbhci.o \
./tl_zigbee_sdk/zbhci/zbhciCmdProcess.o \
./tl_zigbee_sdk/zbhci/zbhci_zclHandler.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/zbhci/%.o: ../tl_zigbee_sdk/zbhci/%.c tl_zigbee_sdk/zbhci/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-zbhci

clean-tl_zigbee_sdk-2f-zbhci:
	-$(RM) ./tl_zigbee_sdk/zbhci/zbhci.d ./tl_zigbee_sdk/zbhci/zbhci.o ./tl_zigbee_sdk/zbhci/zbhciCmdProcess.d ./tl_zigbee_sdk/zbhci/zbhciCmdProcess.o ./tl_zigbee_sdk/zbhci/zbhci_zclHandler.d ./tl_zigbee_sdk/zbhci/zbhci_zclHandler.o

.PHONY: clean-tl_zigbee_sdk-2f-zbhci

