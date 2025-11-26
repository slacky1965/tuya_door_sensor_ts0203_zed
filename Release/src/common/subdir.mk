################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/common/factory_reset.c \
../src/common/firmwareEncryptChk.c \
../src/common/flash.c \
../src/common/main.c 

C_DEPS += \
./src/common/factory_reset.d \
./src/common/firmwareEncryptChk.d \
./src/common/flash.d \
./src/common/main.d 

OBJS += \
./src/common/factory_reset.o \
./src/common/firmwareEncryptChk.o \
./src/common/flash.o \
./src/common/main.o 


# Each subdirectory must supply rules for building sources it contributes
src/common/%.o: ../src/common/%.c src/common/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-src-2f-common

clean-src-2f-common:
	-$(RM) ./src/common/factory_reset.d ./src/common/factory_reset.o ./src/common/firmwareEncryptChk.d ./src/common/firmwareEncryptChk.o ./src/common/flash.d ./src/common/flash.o ./src/common/main.d ./src/common/main.o

.PHONY: clean-src-2f-common

