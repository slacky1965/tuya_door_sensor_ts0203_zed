################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/zigbee/zcl/closures/zcl_door_lock.c \
../tl_zigbee_sdk/zigbee/zcl/closures/zcl_door_lock_attr.c \
../tl_zigbee_sdk/zigbee/zcl/closures/zcl_window_covering.c \
../tl_zigbee_sdk/zigbee/zcl/closures/zcl_window_covering_attr.c 

C_DEPS += \
./tl_zigbee_sdk/zigbee/zcl/closures/zcl_door_lock.d \
./tl_zigbee_sdk/zigbee/zcl/closures/zcl_door_lock_attr.d \
./tl_zigbee_sdk/zigbee/zcl/closures/zcl_window_covering.d \
./tl_zigbee_sdk/zigbee/zcl/closures/zcl_window_covering_attr.d 

OBJS += \
./tl_zigbee_sdk/zigbee/zcl/closures/zcl_door_lock.o \
./tl_zigbee_sdk/zigbee/zcl/closures/zcl_door_lock_attr.o \
./tl_zigbee_sdk/zigbee/zcl/closures/zcl_window_covering.o \
./tl_zigbee_sdk/zigbee/zcl/closures/zcl_window_covering_attr.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/zigbee/zcl/closures/%.o: ../tl_zigbee_sdk/zigbee/zcl/closures/%.c tl_zigbee_sdk/zigbee/zcl/closures/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-closures

clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-closures:
	-$(RM) ./tl_zigbee_sdk/zigbee/zcl/closures/zcl_door_lock.d ./tl_zigbee_sdk/zigbee/zcl/closures/zcl_door_lock.o ./tl_zigbee_sdk/zigbee/zcl/closures/zcl_door_lock_attr.d ./tl_zigbee_sdk/zigbee/zcl/closures/zcl_door_lock_attr.o ./tl_zigbee_sdk/zigbee/zcl/closures/zcl_window_covering.d ./tl_zigbee_sdk/zigbee/zcl/closures/zcl_window_covering.o ./tl_zigbee_sdk/zigbee/zcl/closures/zcl_window_covering_attr.d ./tl_zigbee_sdk/zigbee/zcl/closures/zcl_window_covering_attr.o

.PHONY: clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-closures

