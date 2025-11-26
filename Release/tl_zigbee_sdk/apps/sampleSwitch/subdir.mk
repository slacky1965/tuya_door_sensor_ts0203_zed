################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/apps/sampleSwitch/app_ui.c \
../tl_zigbee_sdk/apps/sampleSwitch/sampleSwitch.c \
../tl_zigbee_sdk/apps/sampleSwitch/sampleSwitchEpCfg.c \
../tl_zigbee_sdk/apps/sampleSwitch/zb_appCb.c \
../tl_zigbee_sdk/apps/sampleSwitch/zcl_sampleSwitchCb.c 

C_DEPS += \
./tl_zigbee_sdk/apps/sampleSwitch/app_ui.d \
./tl_zigbee_sdk/apps/sampleSwitch/sampleSwitch.d \
./tl_zigbee_sdk/apps/sampleSwitch/sampleSwitchEpCfg.d \
./tl_zigbee_sdk/apps/sampleSwitch/zb_appCb.d \
./tl_zigbee_sdk/apps/sampleSwitch/zcl_sampleSwitchCb.d 

OBJS += \
./tl_zigbee_sdk/apps/sampleSwitch/app_ui.o \
./tl_zigbee_sdk/apps/sampleSwitch/sampleSwitch.o \
./tl_zigbee_sdk/apps/sampleSwitch/sampleSwitchEpCfg.o \
./tl_zigbee_sdk/apps/sampleSwitch/zb_appCb.o \
./tl_zigbee_sdk/apps/sampleSwitch/zcl_sampleSwitchCb.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/apps/sampleSwitch/%.o: ../tl_zigbee_sdk/apps/sampleSwitch/%.c tl_zigbee_sdk/apps/sampleSwitch/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-apps-2f-sampleSwitch

clean-tl_zigbee_sdk-2f-apps-2f-sampleSwitch:
	-$(RM) ./tl_zigbee_sdk/apps/sampleSwitch/app_ui.d ./tl_zigbee_sdk/apps/sampleSwitch/app_ui.o ./tl_zigbee_sdk/apps/sampleSwitch/sampleSwitch.d ./tl_zigbee_sdk/apps/sampleSwitch/sampleSwitch.o ./tl_zigbee_sdk/apps/sampleSwitch/sampleSwitchEpCfg.d ./tl_zigbee_sdk/apps/sampleSwitch/sampleSwitchEpCfg.o ./tl_zigbee_sdk/apps/sampleSwitch/zb_appCb.d ./tl_zigbee_sdk/apps/sampleSwitch/zb_appCb.o ./tl_zigbee_sdk/apps/sampleSwitch/zcl_sampleSwitchCb.d ./tl_zigbee_sdk/apps/sampleSwitch/zcl_sampleSwitchCb.o

.PHONY: clean-tl_zigbee_sdk-2f-apps-2f-sampleSwitch

