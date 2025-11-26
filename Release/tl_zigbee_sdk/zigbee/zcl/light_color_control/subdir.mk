################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/zigbee/zcl/light_color_control/zcl_light_colorCtrl.c \
../tl_zigbee_sdk/zigbee/zcl/light_color_control/zcl_light_colorCtrl_attr.c 

C_DEPS += \
./tl_zigbee_sdk/zigbee/zcl/light_color_control/zcl_light_colorCtrl.d \
./tl_zigbee_sdk/zigbee/zcl/light_color_control/zcl_light_colorCtrl_attr.d 

OBJS += \
./tl_zigbee_sdk/zigbee/zcl/light_color_control/zcl_light_colorCtrl.o \
./tl_zigbee_sdk/zigbee/zcl/light_color_control/zcl_light_colorCtrl_attr.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/zigbee/zcl/light_color_control/%.o: ../tl_zigbee_sdk/zigbee/zcl/light_color_control/%.c tl_zigbee_sdk/zigbee/zcl/light_color_control/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-light_color_control

clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-light_color_control:
	-$(RM) ./tl_zigbee_sdk/zigbee/zcl/light_color_control/zcl_light_colorCtrl.d ./tl_zigbee_sdk/zigbee/zcl/light_color_control/zcl_light_colorCtrl.o ./tl_zigbee_sdk/zigbee/zcl/light_color_control/zcl_light_colorCtrl_attr.d ./tl_zigbee_sdk/zigbee/zcl/light_color_control/zcl_light_colorCtrl_attr.o

.PHONY: clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-light_color_control

