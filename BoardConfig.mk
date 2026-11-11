#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/zorn

# Partitions
BOARD_SUPER_PARTITION_SIZE := 11804868608

# Inherit from the common OEM chipset BoardConfig.
include device/xiaomi/sm8650-common/BoardConfigCommon.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := zorn

# Display
TARGET_SCREEN_DENSITY := 600

# Kernel
TARGET_KERNEL_CONFIG += vendor/zorn_GKI.config
TARGET_KERNEL_ADDITIONAL_FLAGS += CONFIG_ZORN_DTB=y

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/props/odm.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/props/vendor.prop

# Camera
-include device/xiaomi/zorn-miuicamera/BoardConfig.mk

# Include the proprietary files BoardConfig.
include vendor/xiaomi/zorn/BoardConfigVendor.mk
