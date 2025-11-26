################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/platform/chip_b92/flash/flash_common.c \
../tl_zigbee_sdk/platform/chip_b92/flash/flash_mid146085.c \
../tl_zigbee_sdk/platform/chip_b92/flash/flash_mid1460c8.c \
../tl_zigbee_sdk/platform/chip_b92/flash/flash_mid156085.c \
../tl_zigbee_sdk/platform/chip_b92/flash/flash_mid1560c8.c \
../tl_zigbee_sdk/platform/chip_b92/flash/flash_mid166085.c \
../tl_zigbee_sdk/platform/chip_b92/flash/flash_mid1660c8.c 

C_DEPS += \
./tl_zigbee_sdk/platform/chip_b92/flash/flash_common.d \
./tl_zigbee_sdk/platform/chip_b92/flash/flash_mid146085.d \
./tl_zigbee_sdk/platform/chip_b92/flash/flash_mid1460c8.d \
./tl_zigbee_sdk/platform/chip_b92/flash/flash_mid156085.d \
./tl_zigbee_sdk/platform/chip_b92/flash/flash_mid1560c8.d \
./tl_zigbee_sdk/platform/chip_b92/flash/flash_mid166085.d \
./tl_zigbee_sdk/platform/chip_b92/flash/flash_mid1660c8.d 

OBJS += \
./tl_zigbee_sdk/platform/chip_b92/flash/flash_common.o \
./tl_zigbee_sdk/platform/chip_b92/flash/flash_mid146085.o \
./tl_zigbee_sdk/platform/chip_b92/flash/flash_mid1460c8.o \
./tl_zigbee_sdk/platform/chip_b92/flash/flash_mid156085.o \
./tl_zigbee_sdk/platform/chip_b92/flash/flash_mid1560c8.o \
./tl_zigbee_sdk/platform/chip_b92/flash/flash_mid166085.o \
./tl_zigbee_sdk/platform/chip_b92/flash/flash_mid1660c8.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/platform/chip_b92/flash/%.o: ../tl_zigbee_sdk/platform/chip_b92/flash/%.c tl_zigbee_sdk/platform/chip_b92/flash/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-platform-2f-chip_b92-2f-flash

clean-tl_zigbee_sdk-2f-platform-2f-chip_b92-2f-flash:
	-$(RM) ./tl_zigbee_sdk/platform/chip_b92/flash/flash_common.d ./tl_zigbee_sdk/platform/chip_b92/flash/flash_common.o ./tl_zigbee_sdk/platform/chip_b92/flash/flash_mid146085.d ./tl_zigbee_sdk/platform/chip_b92/flash/flash_mid146085.o ./tl_zigbee_sdk/platform/chip_b92/flash/flash_mid1460c8.d ./tl_zigbee_sdk/platform/chip_b92/flash/flash_mid1460c8.o ./tl_zigbee_sdk/platform/chip_b92/flash/flash_mid156085.d ./tl_zigbee_sdk/platform/chip_b92/flash/flash_mid156085.o ./tl_zigbee_sdk/platform/chip_b92/flash/flash_mid1560c8.d ./tl_zigbee_sdk/platform/chip_b92/flash/flash_mid1560c8.o ./tl_zigbee_sdk/platform/chip_b92/flash/flash_mid166085.d ./tl_zigbee_sdk/platform/chip_b92/flash/flash_mid166085.o ./tl_zigbee_sdk/platform/chip_b92/flash/flash_mid1660c8.d ./tl_zigbee_sdk/platform/chip_b92/flash/flash_mid1660c8.o

.PHONY: clean-tl_zigbee_sdk-2f-platform-2f-chip_b92-2f-flash

