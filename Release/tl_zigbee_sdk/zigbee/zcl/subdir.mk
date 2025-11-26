################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/zigbee/zcl/zcl.c \
../tl_zigbee_sdk/zigbee/zcl/zcl_nv.c \
../tl_zigbee_sdk/zigbee/zcl/zcl_reporting.c 

C_DEPS += \
./tl_zigbee_sdk/zigbee/zcl/zcl.d \
./tl_zigbee_sdk/zigbee/zcl/zcl_nv.d \
./tl_zigbee_sdk/zigbee/zcl/zcl_reporting.d 

OBJS += \
./tl_zigbee_sdk/zigbee/zcl/zcl.o \
./tl_zigbee_sdk/zigbee/zcl/zcl_nv.o \
./tl_zigbee_sdk/zigbee/zcl/zcl_reporting.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/zigbee/zcl/%.o: ../tl_zigbee_sdk/zigbee/zcl/%.c tl_zigbee_sdk/zigbee/zcl/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-zigbee-2f-zcl

clean-tl_zigbee_sdk-2f-zigbee-2f-zcl:
	-$(RM) ./tl_zigbee_sdk/zigbee/zcl/zcl.d ./tl_zigbee_sdk/zigbee/zcl/zcl.o ./tl_zigbee_sdk/zigbee/zcl/zcl_nv.d ./tl_zigbee_sdk/zigbee/zcl/zcl_nv.o ./tl_zigbee_sdk/zigbee/zcl/zcl_reporting.d ./tl_zigbee_sdk/zigbee/zcl/zcl_reporting.o

.PHONY: clean-tl_zigbee_sdk-2f-zigbee-2f-zcl

