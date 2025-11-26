################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/zigbee/bdb/bdb.c 

C_DEPS += \
./tl_zigbee_sdk/zigbee/bdb/bdb.d 

OBJS += \
./tl_zigbee_sdk/zigbee/bdb/bdb.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/zigbee/bdb/%.o: ../tl_zigbee_sdk/zigbee/bdb/%.c tl_zigbee_sdk/zigbee/bdb/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-zigbee-2f-bdb

clean-tl_zigbee_sdk-2f-zigbee-2f-bdb:
	-$(RM) ./tl_zigbee_sdk/zigbee/bdb/bdb.d ./tl_zigbee_sdk/zigbee/bdb/bdb.o

.PHONY: clean-tl_zigbee_sdk-2f-zigbee-2f-bdb

