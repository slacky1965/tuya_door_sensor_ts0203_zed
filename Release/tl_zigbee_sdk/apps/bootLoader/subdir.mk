################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/apps/bootLoader/bootloader.c \
../tl_zigbee_sdk/apps/bootLoader/main.c 

C_DEPS += \
./tl_zigbee_sdk/apps/bootLoader/bootloader.d \
./tl_zigbee_sdk/apps/bootLoader/main.d 

OBJS += \
./tl_zigbee_sdk/apps/bootLoader/bootloader.o \
./tl_zigbee_sdk/apps/bootLoader/main.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/apps/bootLoader/%.o: ../tl_zigbee_sdk/apps/bootLoader/%.c tl_zigbee_sdk/apps/bootLoader/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-apps-2f-bootLoader

clean-tl_zigbee_sdk-2f-apps-2f-bootLoader:
	-$(RM) ./tl_zigbee_sdk/apps/bootLoader/bootloader.d ./tl_zigbee_sdk/apps/bootLoader/bootloader.o ./tl_zigbee_sdk/apps/bootLoader/main.d ./tl_zigbee_sdk/apps/bootLoader/main.o

.PHONY: clean-tl_zigbee_sdk-2f-apps-2f-bootLoader

