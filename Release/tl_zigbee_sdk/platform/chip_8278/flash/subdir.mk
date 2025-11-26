################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/platform/chip_8278/flash/flash_common.c \
../tl_zigbee_sdk/platform/chip_8278/flash/flash_mid11325e.c \
../tl_zigbee_sdk/platform/chip_8278/flash/flash_mid1160c8.c \
../tl_zigbee_sdk/platform/chip_8278/flash/flash_mid13325e.c \
../tl_zigbee_sdk/platform/chip_8278/flash/flash_mid1360c8.c \
../tl_zigbee_sdk/platform/chip_8278/flash/flash_mid14325e.c \
../tl_zigbee_sdk/platform/chip_8278/flash/flash_mid146085.c \
../tl_zigbee_sdk/platform/chip_8278/flash/flash_mid1460c8.c \
../tl_zigbee_sdk/platform/chip_8278/flash/flash_mid1570cd.c 

C_DEPS += \
./tl_zigbee_sdk/platform/chip_8278/flash/flash_common.d \
./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid11325e.d \
./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid1160c8.d \
./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid13325e.d \
./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid1360c8.d \
./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid14325e.d \
./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid146085.d \
./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid1460c8.d \
./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid1570cd.d 

OBJS += \
./tl_zigbee_sdk/platform/chip_8278/flash/flash_common.o \
./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid11325e.o \
./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid1160c8.o \
./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid13325e.o \
./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid1360c8.o \
./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid14325e.o \
./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid146085.o \
./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid1460c8.o \
./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid1570cd.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/platform/chip_8278/flash/%.o: ../tl_zigbee_sdk/platform/chip_8278/flash/%.c tl_zigbee_sdk/platform/chip_8278/flash/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-platform-2f-chip_8278-2f-flash

clean-tl_zigbee_sdk-2f-platform-2f-chip_8278-2f-flash:
	-$(RM) ./tl_zigbee_sdk/platform/chip_8278/flash/flash_common.d ./tl_zigbee_sdk/platform/chip_8278/flash/flash_common.o ./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid11325e.d ./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid11325e.o ./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid1160c8.d ./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid1160c8.o ./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid13325e.d ./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid13325e.o ./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid1360c8.d ./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid1360c8.o ./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid14325e.d ./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid14325e.o ./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid146085.d ./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid146085.o ./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid1460c8.d ./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid1460c8.o ./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid1570cd.d ./tl_zigbee_sdk/platform/chip_8278/flash/flash_mid1570cd.o

.PHONY: clean-tl_zigbee_sdk-2f-platform-2f-chip_8278-2f-flash

