################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/proj/common/list.c \
../tl_zigbee_sdk/proj/common/mempool.c \
../tl_zigbee_sdk/proj/common/ringbuffer.c \
../tl_zigbee_sdk/proj/common/string.c \
../tl_zigbee_sdk/proj/common/tlPrintf.c \
../tl_zigbee_sdk/proj/common/utility.c 

C_DEPS += \
./tl_zigbee_sdk/proj/common/list.d \
./tl_zigbee_sdk/proj/common/mempool.d \
./tl_zigbee_sdk/proj/common/ringbuffer.d \
./tl_zigbee_sdk/proj/common/string.d \
./tl_zigbee_sdk/proj/common/tlPrintf.d \
./tl_zigbee_sdk/proj/common/utility.d 

OBJS += \
./tl_zigbee_sdk/proj/common/list.o \
./tl_zigbee_sdk/proj/common/mempool.o \
./tl_zigbee_sdk/proj/common/ringbuffer.o \
./tl_zigbee_sdk/proj/common/string.o \
./tl_zigbee_sdk/proj/common/tlPrintf.o \
./tl_zigbee_sdk/proj/common/utility.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/proj/common/%.o: ../tl_zigbee_sdk/proj/common/%.c tl_zigbee_sdk/proj/common/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-proj-2f-common

clean-tl_zigbee_sdk-2f-proj-2f-common:
	-$(RM) ./tl_zigbee_sdk/proj/common/list.d ./tl_zigbee_sdk/proj/common/list.o ./tl_zigbee_sdk/proj/common/mempool.d ./tl_zigbee_sdk/proj/common/mempool.o ./tl_zigbee_sdk/proj/common/ringbuffer.d ./tl_zigbee_sdk/proj/common/ringbuffer.o ./tl_zigbee_sdk/proj/common/string.d ./tl_zigbee_sdk/proj/common/string.o ./tl_zigbee_sdk/proj/common/tlPrintf.d ./tl_zigbee_sdk/proj/common/tlPrintf.o ./tl_zigbee_sdk/proj/common/utility.d ./tl_zigbee_sdk/proj/common/utility.o

.PHONY: clean-tl_zigbee_sdk-2f-proj-2f-common

