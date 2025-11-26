################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/zigbee/zcl/zll_commissioning/zcl_toucklink_security.c \
../tl_zigbee_sdk/zigbee/zcl/zll_commissioning/zcl_zllTouchLinkDiscovery.c \
../tl_zigbee_sdk/zigbee/zcl/zll_commissioning/zcl_zllTouchLinkJoinOrStart.c \
../tl_zigbee_sdk/zigbee/zcl/zll_commissioning/zcl_zll_commissioning.c 

C_DEPS += \
./tl_zigbee_sdk/zigbee/zcl/zll_commissioning/zcl_toucklink_security.d \
./tl_zigbee_sdk/zigbee/zcl/zll_commissioning/zcl_zllTouchLinkDiscovery.d \
./tl_zigbee_sdk/zigbee/zcl/zll_commissioning/zcl_zllTouchLinkJoinOrStart.d \
./tl_zigbee_sdk/zigbee/zcl/zll_commissioning/zcl_zll_commissioning.d 

OBJS += \
./tl_zigbee_sdk/zigbee/zcl/zll_commissioning/zcl_toucklink_security.o \
./tl_zigbee_sdk/zigbee/zcl/zll_commissioning/zcl_zllTouchLinkDiscovery.o \
./tl_zigbee_sdk/zigbee/zcl/zll_commissioning/zcl_zllTouchLinkJoinOrStart.o \
./tl_zigbee_sdk/zigbee/zcl/zll_commissioning/zcl_zll_commissioning.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/zigbee/zcl/zll_commissioning/%.o: ../tl_zigbee_sdk/zigbee/zcl/zll_commissioning/%.c tl_zigbee_sdk/zigbee/zcl/zll_commissioning/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-zll_commissioning

clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-zll_commissioning:
	-$(RM) ./tl_zigbee_sdk/zigbee/zcl/zll_commissioning/zcl_toucklink_security.d ./tl_zigbee_sdk/zigbee/zcl/zll_commissioning/zcl_toucklink_security.o ./tl_zigbee_sdk/zigbee/zcl/zll_commissioning/zcl_zllTouchLinkDiscovery.d ./tl_zigbee_sdk/zigbee/zcl/zll_commissioning/zcl_zllTouchLinkDiscovery.o ./tl_zigbee_sdk/zigbee/zcl/zll_commissioning/zcl_zllTouchLinkJoinOrStart.d ./tl_zigbee_sdk/zigbee/zcl/zll_commissioning/zcl_zllTouchLinkJoinOrStart.o ./tl_zigbee_sdk/zigbee/zcl/zll_commissioning/zcl_zll_commissioning.d ./tl_zigbee_sdk/zigbee/zcl/zll_commissioning/zcl_zll_commissioning.o

.PHONY: clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-zll_commissioning

