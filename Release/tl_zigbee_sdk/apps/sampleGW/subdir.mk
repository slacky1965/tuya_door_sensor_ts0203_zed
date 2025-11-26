################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/apps/sampleGW/app_ui.c \
../tl_zigbee_sdk/apps/sampleGW/sampleGateway.c \
../tl_zigbee_sdk/apps/sampleGW/sampleGatewayEpCfg.c \
../tl_zigbee_sdk/apps/sampleGW/zb_afTestCb.c \
../tl_zigbee_sdk/apps/sampleGW/zb_appCb.c \
../tl_zigbee_sdk/apps/sampleGW/zcl_sampleGatewayCb.c 

C_DEPS += \
./tl_zigbee_sdk/apps/sampleGW/app_ui.d \
./tl_zigbee_sdk/apps/sampleGW/sampleGateway.d \
./tl_zigbee_sdk/apps/sampleGW/sampleGatewayEpCfg.d \
./tl_zigbee_sdk/apps/sampleGW/zb_afTestCb.d \
./tl_zigbee_sdk/apps/sampleGW/zb_appCb.d \
./tl_zigbee_sdk/apps/sampleGW/zcl_sampleGatewayCb.d 

OBJS += \
./tl_zigbee_sdk/apps/sampleGW/app_ui.o \
./tl_zigbee_sdk/apps/sampleGW/sampleGateway.o \
./tl_zigbee_sdk/apps/sampleGW/sampleGatewayEpCfg.o \
./tl_zigbee_sdk/apps/sampleGW/zb_afTestCb.o \
./tl_zigbee_sdk/apps/sampleGW/zb_appCb.o \
./tl_zigbee_sdk/apps/sampleGW/zcl_sampleGatewayCb.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/apps/sampleGW/%.o: ../tl_zigbee_sdk/apps/sampleGW/%.c tl_zigbee_sdk/apps/sampleGW/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-apps-2f-sampleGW

clean-tl_zigbee_sdk-2f-apps-2f-sampleGW:
	-$(RM) ./tl_zigbee_sdk/apps/sampleGW/app_ui.d ./tl_zigbee_sdk/apps/sampleGW/app_ui.o ./tl_zigbee_sdk/apps/sampleGW/sampleGateway.d ./tl_zigbee_sdk/apps/sampleGW/sampleGateway.o ./tl_zigbee_sdk/apps/sampleGW/sampleGatewayEpCfg.d ./tl_zigbee_sdk/apps/sampleGW/sampleGatewayEpCfg.o ./tl_zigbee_sdk/apps/sampleGW/zb_afTestCb.d ./tl_zigbee_sdk/apps/sampleGW/zb_afTestCb.o ./tl_zigbee_sdk/apps/sampleGW/zb_appCb.d ./tl_zigbee_sdk/apps/sampleGW/zb_appCb.o ./tl_zigbee_sdk/apps/sampleGW/zcl_sampleGatewayCb.d ./tl_zigbee_sdk/apps/sampleGW/zcl_sampleGatewayCb.o

.PHONY: clean-tl_zigbee_sdk-2f-apps-2f-sampleGW

