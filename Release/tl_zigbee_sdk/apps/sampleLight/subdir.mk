################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/apps/sampleLight/app_ui.c \
../tl_zigbee_sdk/apps/sampleLight/sampleLight.c \
../tl_zigbee_sdk/apps/sampleLight/sampleLightCtrl.c \
../tl_zigbee_sdk/apps/sampleLight/sampleLightEpCfg.c \
../tl_zigbee_sdk/apps/sampleLight/zb_afTestCb.c \
../tl_zigbee_sdk/apps/sampleLight/zb_appCb.c \
../tl_zigbee_sdk/apps/sampleLight/zcl_colorCtrlCb.c \
../tl_zigbee_sdk/apps/sampleLight/zcl_levelCb.c \
../tl_zigbee_sdk/apps/sampleLight/zcl_onOffCb.c \
../tl_zigbee_sdk/apps/sampleLight/zcl_sampleLightCb.c \
../tl_zigbee_sdk/apps/sampleLight/zcl_sceneCb.c 

C_DEPS += \
./tl_zigbee_sdk/apps/sampleLight/app_ui.d \
./tl_zigbee_sdk/apps/sampleLight/sampleLight.d \
./tl_zigbee_sdk/apps/sampleLight/sampleLightCtrl.d \
./tl_zigbee_sdk/apps/sampleLight/sampleLightEpCfg.d \
./tl_zigbee_sdk/apps/sampleLight/zb_afTestCb.d \
./tl_zigbee_sdk/apps/sampleLight/zb_appCb.d \
./tl_zigbee_sdk/apps/sampleLight/zcl_colorCtrlCb.d \
./tl_zigbee_sdk/apps/sampleLight/zcl_levelCb.d \
./tl_zigbee_sdk/apps/sampleLight/zcl_onOffCb.d \
./tl_zigbee_sdk/apps/sampleLight/zcl_sampleLightCb.d \
./tl_zigbee_sdk/apps/sampleLight/zcl_sceneCb.d 

OBJS += \
./tl_zigbee_sdk/apps/sampleLight/app_ui.o \
./tl_zigbee_sdk/apps/sampleLight/sampleLight.o \
./tl_zigbee_sdk/apps/sampleLight/sampleLightCtrl.o \
./tl_zigbee_sdk/apps/sampleLight/sampleLightEpCfg.o \
./tl_zigbee_sdk/apps/sampleLight/zb_afTestCb.o \
./tl_zigbee_sdk/apps/sampleLight/zb_appCb.o \
./tl_zigbee_sdk/apps/sampleLight/zcl_colorCtrlCb.o \
./tl_zigbee_sdk/apps/sampleLight/zcl_levelCb.o \
./tl_zigbee_sdk/apps/sampleLight/zcl_onOffCb.o \
./tl_zigbee_sdk/apps/sampleLight/zcl_sampleLightCb.o \
./tl_zigbee_sdk/apps/sampleLight/zcl_sceneCb.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/apps/sampleLight/%.o: ../tl_zigbee_sdk/apps/sampleLight/%.c tl_zigbee_sdk/apps/sampleLight/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-apps-2f-sampleLight

clean-tl_zigbee_sdk-2f-apps-2f-sampleLight:
	-$(RM) ./tl_zigbee_sdk/apps/sampleLight/app_ui.d ./tl_zigbee_sdk/apps/sampleLight/app_ui.o ./tl_zigbee_sdk/apps/sampleLight/sampleLight.d ./tl_zigbee_sdk/apps/sampleLight/sampleLight.o ./tl_zigbee_sdk/apps/sampleLight/sampleLightCtrl.d ./tl_zigbee_sdk/apps/sampleLight/sampleLightCtrl.o ./tl_zigbee_sdk/apps/sampleLight/sampleLightEpCfg.d ./tl_zigbee_sdk/apps/sampleLight/sampleLightEpCfg.o ./tl_zigbee_sdk/apps/sampleLight/zb_afTestCb.d ./tl_zigbee_sdk/apps/sampleLight/zb_afTestCb.o ./tl_zigbee_sdk/apps/sampleLight/zb_appCb.d ./tl_zigbee_sdk/apps/sampleLight/zb_appCb.o ./tl_zigbee_sdk/apps/sampleLight/zcl_colorCtrlCb.d ./tl_zigbee_sdk/apps/sampleLight/zcl_colorCtrlCb.o ./tl_zigbee_sdk/apps/sampleLight/zcl_levelCb.d ./tl_zigbee_sdk/apps/sampleLight/zcl_levelCb.o ./tl_zigbee_sdk/apps/sampleLight/zcl_onOffCb.d ./tl_zigbee_sdk/apps/sampleLight/zcl_onOffCb.o ./tl_zigbee_sdk/apps/sampleLight/zcl_sampleLightCb.d ./tl_zigbee_sdk/apps/sampleLight/zcl_sampleLightCb.o ./tl_zigbee_sdk/apps/sampleLight/zcl_sceneCb.d ./tl_zigbee_sdk/apps/sampleLight/zcl_sceneCb.o

.PHONY: clean-tl_zigbee_sdk-2f-apps-2f-sampleLight

