################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include tl_zigbee_sdk/zigbee/zdo/subdir.mk
-include tl_zigbee_sdk/zigbee/zcl/zll_commissioning/subdir.mk
-include tl_zigbee_sdk/zigbee/zcl/zcl_wwah/subdir.mk
-include tl_zigbee_sdk/zigbee/zcl/smart_energy/subdir.mk
-include tl_zigbee_sdk/zigbee/zcl/security_safety/subdir.mk
-include tl_zigbee_sdk/zigbee/zcl/ota_upgrading/subdir.mk
-include tl_zigbee_sdk/zigbee/zcl/measument_sensing/subdir.mk
-include tl_zigbee_sdk/zigbee/zcl/light_color_control/subdir.mk
-include tl_zigbee_sdk/zigbee/zcl/hvac/subdir.mk
-include tl_zigbee_sdk/zigbee/zcl/general/subdir.mk
-include tl_zigbee_sdk/zigbee/zcl/commissioning/subdir.mk
-include tl_zigbee_sdk/zigbee/zcl/closures/subdir.mk
-include tl_zigbee_sdk/zigbee/zcl/subdir.mk
-include tl_zigbee_sdk/zigbee/wwah/subdir.mk
-include tl_zigbee_sdk/zigbee/ss/subdir.mk
-include tl_zigbee_sdk/zigbee/ota/subdir.mk
-include tl_zigbee_sdk/zigbee/mac/subdir.mk
-include tl_zigbee_sdk/zigbee/gp/subdir.mk
-include tl_zigbee_sdk/zigbee/common/subdir.mk
-include tl_zigbee_sdk/zigbee/bdb/subdir.mk
-include tl_zigbee_sdk/zigbee/aps/subdir.mk
-include tl_zigbee_sdk/zigbee/af/subdir.mk
-include tl_zigbee_sdk/zbhci/usbPrint/subdir.mk
-include tl_zigbee_sdk/zbhci/usbHID/subdir.mk
-include tl_zigbee_sdk/zbhci/usbCDC/subdir.mk
-include tl_zigbee_sdk/zbhci/uart/subdir.mk
-include tl_zigbee_sdk/zbhci/subdir.mk
-include tl_zigbee_sdk/proj/os/subdir.mk
-include tl_zigbee_sdk/proj/drivers/usb/app/subdir.mk
-include tl_zigbee_sdk/proj/drivers/usb/subdir.mk
-include tl_zigbee_sdk/proj/drivers/subdir.mk
-include tl_zigbee_sdk/proj/common/subdir.mk
-include tl_zigbee_sdk/platform/tc32/subdir.mk
-include tl_zigbee_sdk/platform/services/tl721x/subdir.mk
-include tl_zigbee_sdk/platform/services/tl321x/subdir.mk
-include tl_zigbee_sdk/platform/services/b92/subdir.mk
-include tl_zigbee_sdk/platform/services/b91/subdir.mk
-include tl_zigbee_sdk/platform/services/b85m/subdir.mk
-include tl_zigbee_sdk/platform/chip_tl721x/flash/subdir.mk
-include tl_zigbee_sdk/platform/chip_tl721x/error_handler/subdir.mk
-include tl_zigbee_sdk/platform/chip_tl321x/flash/subdir.mk
-include tl_zigbee_sdk/platform/chip_tl321x/error_handler/subdir.mk
-include tl_zigbee_sdk/platform/chip_b92/flash/subdir.mk
-include tl_zigbee_sdk/platform/chip_b92/error_handler/subdir.mk
-include tl_zigbee_sdk/platform/chip_b91/flash/internal_flash/subdir.mk
-include tl_zigbee_sdk/platform/chip_b91/flash/external_flash/subdir.mk
-include tl_zigbee_sdk/platform/chip_b91/flash/subdir.mk
-include tl_zigbee_sdk/platform/chip_b91/error_handler/subdir.mk
-include tl_zigbee_sdk/platform/chip_8278/flash/subdir.mk
-include tl_zigbee_sdk/platform/chip_8278/subdir.mk
-include tl_zigbee_sdk/platform/chip_826x/subdir.mk
-include tl_zigbee_sdk/platform/chip_8258/flash/subdir.mk
-include tl_zigbee_sdk/platform/chip_8258/subdir.mk
-include tl_zigbee_sdk/platform/boot/tl721x/subdir.mk
-include tl_zigbee_sdk/platform/boot/tl321x/subdir.mk
-include tl_zigbee_sdk/platform/boot/b92/subdir.mk
-include tl_zigbee_sdk/platform/boot/b91/subdir.mk
-include tl_zigbee_sdk/platform/boot/8278/subdir.mk
-include tl_zigbee_sdk/platform/boot/826x/subdir.mk
-include tl_zigbee_sdk/platform/boot/8258/subdir.mk
-include tl_zigbee_sdk/platform/boot/subdir.mk
-include tl_zigbee_sdk/apps/sampleSwitch/subdir.mk
-include tl_zigbee_sdk/apps/sampleLight/subdir.mk
-include tl_zigbee_sdk/apps/sampleGW/subdir.mk
-include tl_zigbee_sdk/apps/sampleContactSensor/subdir.mk
-include tl_zigbee_sdk/apps/common/subdir.mk
-include tl_zigbee_sdk/apps/bootLoader/subdir.mk
-include src/zcl/subdir.mk
-include src/common/subdir.mk
-include src/subdir.mk
ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := tuya_door_sensor_ts0203_zed
BUILD_ARTIFACT_EXTENSION :=
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: main-build

# Main-build Target
main-build: tuya_door_sensor_ts0203_zed

# Tool invocations
tuya_door_sensor_ts0203_zed: $(OBJS) $(USER_OBJS) makefile $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cross GCC Linker'
	gcc  -o "tuya_door_sensor_ts0203_zed" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) tuya_door_sensor_ts0203_zed
	-@echo ' '

.PHONY: all clean dependents main-build

-include ../makefile.targets
