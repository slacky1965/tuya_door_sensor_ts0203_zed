################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/apps/common/factory_reset.c \
../tl_zigbee_sdk/apps/common/firmwareEncryptChk.c \
../tl_zigbee_sdk/apps/common/main.c \
../tl_zigbee_sdk/apps/common/module_test.c 

C_DEPS += \
./tl_zigbee_sdk/apps/common/factory_reset.d \
./tl_zigbee_sdk/apps/common/firmwareEncryptChk.d \
./tl_zigbee_sdk/apps/common/main.d \
./tl_zigbee_sdk/apps/common/module_test.d 

OBJS += \
./tl_zigbee_sdk/apps/common/factory_reset.o \
./tl_zigbee_sdk/apps/common/firmwareEncryptChk.o \
./tl_zigbee_sdk/apps/common/main.o \
./tl_zigbee_sdk/apps/common/module_test.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/apps/common/%.o: ../tl_zigbee_sdk/apps/common/%.c tl_zigbee_sdk/apps/common/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-apps-2f-common

clean-tl_zigbee_sdk-2f-apps-2f-common:
	-$(RM) ./tl_zigbee_sdk/apps/common/factory_reset.d ./tl_zigbee_sdk/apps/common/factory_reset.o ./tl_zigbee_sdk/apps/common/firmwareEncryptChk.d ./tl_zigbee_sdk/apps/common/firmwareEncryptChk.o ./tl_zigbee_sdk/apps/common/main.d ./tl_zigbee_sdk/apps/common/main.o ./tl_zigbee_sdk/apps/common/module_test.d ./tl_zigbee_sdk/apps/common/module_test.o

.PHONY: clean-tl_zigbee_sdk-2f-apps-2f-common

