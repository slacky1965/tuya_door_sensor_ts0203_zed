################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tl_zigbee_sdk/proj/os/ev.c \
../tl_zigbee_sdk/proj/os/ev_buffer.c \
../tl_zigbee_sdk/proj/os/ev_poll.c \
../tl_zigbee_sdk/proj/os/ev_queue.c \
../tl_zigbee_sdk/proj/os/ev_rtc.c \
../tl_zigbee_sdk/proj/os/ev_timer.c 

C_DEPS += \
./tl_zigbee_sdk/proj/os/ev.d \
./tl_zigbee_sdk/proj/os/ev_buffer.d \
./tl_zigbee_sdk/proj/os/ev_poll.d \
./tl_zigbee_sdk/proj/os/ev_queue.d \
./tl_zigbee_sdk/proj/os/ev_rtc.d \
./tl_zigbee_sdk/proj/os/ev_timer.d 

OBJS += \
./tl_zigbee_sdk/proj/os/ev.o \
./tl_zigbee_sdk/proj/os/ev_buffer.o \
./tl_zigbee_sdk/proj/os/ev_poll.o \
./tl_zigbee_sdk/proj/os/ev_queue.o \
./tl_zigbee_sdk/proj/os/ev_rtc.o \
./tl_zigbee_sdk/proj/os/ev_timer.o 


# Each subdirectory must supply rules for building sources it contributes
tl_zigbee_sdk/proj/os/%.o: ../tl_zigbee_sdk/proj/os/%.c tl_zigbee_sdk/proj/os/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tl_zigbee_sdk-2f-proj-2f-os

clean-tl_zigbee_sdk-2f-proj-2f-os:
	-$(RM) ./tl_zigbee_sdk/proj/os/ev.d ./tl_zigbee_sdk/proj/os/ev.o ./tl_zigbee_sdk/proj/os/ev_buffer.d ./tl_zigbee_sdk/proj/os/ev_buffer.o ./tl_zigbee_sdk/proj/os/ev_poll.d ./tl_zigbee_sdk/proj/os/ev_poll.o ./tl_zigbee_sdk/proj/os/ev_queue.d ./tl_zigbee_sdk/proj/os/ev_queue.o ./tl_zigbee_sdk/proj/os/ev_rtc.d ./tl_zigbee_sdk/proj/os/ev_rtc.o ./tl_zigbee_sdk/proj/os/ev_timer.d ./tl_zigbee_sdk/proj/os/ev_timer.o

.PHONY: clean-tl_zigbee_sdk-2f-proj-2f-os

