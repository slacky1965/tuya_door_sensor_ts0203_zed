################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/apps/sampleContactSensor/app_ui.c \
../tl_zigbee_sdk/apps/sampleContactSensor/sampleSensor.c \
../tl_zigbee_sdk/apps/sampleContactSensor/sampleSensorEpCfg.c \
../tl_zigbee_sdk/apps/sampleContactSensor/zb_appCb.c \
../tl_zigbee_sdk/apps/sampleContactSensor/zcl_sampleSensorCb.c 

C_DEPS += \
./tl_zigbee_sdk/apps/sampleContactSensor/app_ui.d \
./tl_zigbee_sdk/apps/sampleContactSensor/sampleSensor.d \
./tl_zigbee_sdk/apps/sampleContactSensor/sampleSensorEpCfg.d \
./tl_zigbee_sdk/apps/sampleContactSensor/zb_appCb.d \
./tl_zigbee_sdk/apps/sampleContactSensor/zcl_sampleSensorCb.d 

OBJS += \
./tl_zigbee_sdk/apps/sampleContactSensor/app_ui.o \
./tl_zigbee_sdk/apps/sampleContactSensor/sampleSensor.o \
./tl_zigbee_sdk/apps/sampleContactSensor/sampleSensorEpCfg.o \
./tl_zigbee_sdk/apps/sampleContactSensor/zb_appCb.o \
./tl_zigbee_sdk/apps/sampleContactSensor/zcl_sampleSensorCb.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/apps/sampleContactSensor/%.o: ../tl_zigbee_sdk/apps/sampleContactSensor/%.c tl_zigbee_sdk/apps/sampleContactSensor/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-apps-2f-sampleContactSensor

clean-tl_zigbee_sdk-2f-apps-2f-sampleContactSensor:
	-$(RM) ./tl_zigbee_sdk/apps/sampleContactSensor/app_ui.d ./tl_zigbee_sdk/apps/sampleContactSensor/app_ui.o ./tl_zigbee_sdk/apps/sampleContactSensor/sampleSensor.d ./tl_zigbee_sdk/apps/sampleContactSensor/sampleSensor.o ./tl_zigbee_sdk/apps/sampleContactSensor/sampleSensorEpCfg.d ./tl_zigbee_sdk/apps/sampleContactSensor/sampleSensorEpCfg.o ./tl_zigbee_sdk/apps/sampleContactSensor/zb_appCb.d ./tl_zigbee_sdk/apps/sampleContactSensor/zb_appCb.o ./tl_zigbee_sdk/apps/sampleContactSensor/zcl_sampleSensorCb.d ./tl_zigbee_sdk/apps/sampleContactSensor/zcl_sampleSensorCb.o

.PHONY: clean-tl_zigbee_sdk-2f-apps-2f-sampleContactSensor

