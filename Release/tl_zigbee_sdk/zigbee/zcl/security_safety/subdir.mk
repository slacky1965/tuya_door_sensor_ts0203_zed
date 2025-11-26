################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/zigbee/zcl/security_safety/zcl_ias_ace.c \
../tl_zigbee_sdk/zigbee/zcl/security_safety/zcl_ias_wd.c \
../tl_zigbee_sdk/zigbee/zcl/security_safety/zcl_ias_wd_attr.c \
../tl_zigbee_sdk/zigbee/zcl/security_safety/zcl_ias_zone.c \
../tl_zigbee_sdk/zigbee/zcl/security_safety/zcl_ias_zone_attr.c 

C_DEPS += \
./tl_zigbee_sdk/zigbee/zcl/security_safety/zcl_ias_ace.d \
./tl_zigbee_sdk/zigbee/zcl/security_safety/zcl_ias_wd.d \
./tl_zigbee_sdk/zigbee/zcl/security_safety/zcl_ias_wd_attr.d \
./tl_zigbee_sdk/zigbee/zcl/security_safety/zcl_ias_zone.d \
./tl_zigbee_sdk/zigbee/zcl/security_safety/zcl_ias_zone_attr.d 

OBJS += \
./tl_zigbee_sdk/zigbee/zcl/security_safety/zcl_ias_ace.o \
./tl_zigbee_sdk/zigbee/zcl/security_safety/zcl_ias_wd.o \
./tl_zigbee_sdk/zigbee/zcl/security_safety/zcl_ias_wd_attr.o \
./tl_zigbee_sdk/zigbee/zcl/security_safety/zcl_ias_zone.o \
./tl_zigbee_sdk/zigbee/zcl/security_safety/zcl_ias_zone_attr.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/zigbee/zcl/security_safety/%.o: ../tl_zigbee_sdk/zigbee/zcl/security_safety/%.c tl_zigbee_sdk/zigbee/zcl/security_safety/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-security_safety

clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-security_safety:
	-$(RM) ./tl_zigbee_sdk/zigbee/zcl/security_safety/zcl_ias_ace.d ./tl_zigbee_sdk/zigbee/zcl/security_safety/zcl_ias_ace.o ./tl_zigbee_sdk/zigbee/zcl/security_safety/zcl_ias_wd.d ./tl_zigbee_sdk/zigbee/zcl/security_safety/zcl_ias_wd.o ./tl_zigbee_sdk/zigbee/zcl/security_safety/zcl_ias_wd_attr.d ./tl_zigbee_sdk/zigbee/zcl/security_safety/zcl_ias_wd_attr.o ./tl_zigbee_sdk/zigbee/zcl/security_safety/zcl_ias_zone.d ./tl_zigbee_sdk/zigbee/zcl/security_safety/zcl_ias_zone.o ./tl_zigbee_sdk/zigbee/zcl/security_safety/zcl_ias_zone_attr.d ./tl_zigbee_sdk/zigbee/zcl/security_safety/zcl_ias_zone_attr.o

.PHONY: clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-security_safety

