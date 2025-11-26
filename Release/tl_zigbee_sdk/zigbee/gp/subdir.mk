################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/zigbee/gp/gp.c \
../tl_zigbee_sdk/zigbee/gp/gpEpCfg.c \
../tl_zigbee_sdk/zigbee/gp/gp_proxy.c \
../tl_zigbee_sdk/zigbee/gp/gp_proxyTab.c \
../tl_zigbee_sdk/zigbee/gp/gp_sink.c \
../tl_zigbee_sdk/zigbee/gp/gp_sinkTab.c \
../tl_zigbee_sdk/zigbee/gp/gp_trans.c \
../tl_zigbee_sdk/zigbee/gp/gp_transCfg.c 

C_DEPS += \
./tl_zigbee_sdk/zigbee/gp/gp.d \
./tl_zigbee_sdk/zigbee/gp/gpEpCfg.d \
./tl_zigbee_sdk/zigbee/gp/gp_proxy.d \
./tl_zigbee_sdk/zigbee/gp/gp_proxyTab.d \
./tl_zigbee_sdk/zigbee/gp/gp_sink.d \
./tl_zigbee_sdk/zigbee/gp/gp_sinkTab.d \
./tl_zigbee_sdk/zigbee/gp/gp_trans.d \
./tl_zigbee_sdk/zigbee/gp/gp_transCfg.d 

OBJS += \
./tl_zigbee_sdk/zigbee/gp/gp.o \
./tl_zigbee_sdk/zigbee/gp/gpEpCfg.o \
./tl_zigbee_sdk/zigbee/gp/gp_proxy.o \
./tl_zigbee_sdk/zigbee/gp/gp_proxyTab.o \
./tl_zigbee_sdk/zigbee/gp/gp_sink.o \
./tl_zigbee_sdk/zigbee/gp/gp_sinkTab.o \
./tl_zigbee_sdk/zigbee/gp/gp_trans.o \
./tl_zigbee_sdk/zigbee/gp/gp_transCfg.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/zigbee/gp/%.o: ../tl_zigbee_sdk/zigbee/gp/%.c tl_zigbee_sdk/zigbee/gp/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-zigbee-2f-gp

clean-tl_zigbee_sdk-2f-zigbee-2f-gp:
	-$(RM) ./tl_zigbee_sdk/zigbee/gp/gp.d ./tl_zigbee_sdk/zigbee/gp/gp.o ./tl_zigbee_sdk/zigbee/gp/gpEpCfg.d ./tl_zigbee_sdk/zigbee/gp/gpEpCfg.o ./tl_zigbee_sdk/zigbee/gp/gp_proxy.d ./tl_zigbee_sdk/zigbee/gp/gp_proxy.o ./tl_zigbee_sdk/zigbee/gp/gp_proxyTab.d ./tl_zigbee_sdk/zigbee/gp/gp_proxyTab.o ./tl_zigbee_sdk/zigbee/gp/gp_sink.d ./tl_zigbee_sdk/zigbee/gp/gp_sink.o ./tl_zigbee_sdk/zigbee/gp/gp_sinkTab.d ./tl_zigbee_sdk/zigbee/gp/gp_sinkTab.o ./tl_zigbee_sdk/zigbee/gp/gp_trans.d ./tl_zigbee_sdk/zigbee/gp/gp_trans.o ./tl_zigbee_sdk/zigbee/gp/gp_transCfg.d ./tl_zigbee_sdk/zigbee/gp/gp_transCfg.o

.PHONY: clean-tl_zigbee_sdk-2f-zigbee-2f-gp

