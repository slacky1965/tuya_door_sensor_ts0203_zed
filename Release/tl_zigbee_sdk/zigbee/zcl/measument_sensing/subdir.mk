################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_electrical_measurement.c \
../tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_electrical_measurement_attr.c \
../tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_illuminance_measurement.c \
../tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_illuminance_measurement_attr.c \
../tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_occupancy_sensing.c \
../tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_occupancy_sensing_attr.c \
../tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_temperature_measurement.c \
../tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_temperature_measurement_attr.c 

C_DEPS += \
./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_electrical_measurement.d \
./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_electrical_measurement_attr.d \
./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_illuminance_measurement.d \
./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_illuminance_measurement_attr.d \
./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_occupancy_sensing.d \
./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_occupancy_sensing_attr.d \
./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_temperature_measurement.d \
./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_temperature_measurement_attr.d 

OBJS += \
./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_electrical_measurement.o \
./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_electrical_measurement_attr.o \
./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_illuminance_measurement.o \
./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_illuminance_measurement_attr.o \
./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_occupancy_sensing.o \
./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_occupancy_sensing_attr.o \
./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_temperature_measurement.o \
./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_temperature_measurement_attr.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/zigbee/zcl/measument_sensing/%.o: ../tl_zigbee_sdk/zigbee/zcl/measument_sensing/%.c tl_zigbee_sdk/zigbee/zcl/measument_sensing/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-measument_sensing

clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-measument_sensing:
	-$(RM) ./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_electrical_measurement.d ./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_electrical_measurement.o ./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_electrical_measurement_attr.d ./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_electrical_measurement_attr.o ./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_illuminance_measurement.d ./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_illuminance_measurement.o ./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_illuminance_measurement_attr.d ./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_illuminance_measurement_attr.o ./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_occupancy_sensing.d ./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_occupancy_sensing.o ./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_occupancy_sensing_attr.d ./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_occupancy_sensing_attr.o ./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_temperature_measurement.d ./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_temperature_measurement.o ./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_temperature_measurement_attr.d ./tl_zigbee_sdk/zigbee/zcl/measument_sensing/zcl_temperature_measurement_attr.o

.PHONY: clean-tl_zigbee_sdk-2f-zigbee-2f-zcl-2f-measument_sensing

