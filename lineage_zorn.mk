#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from zorn device
$(call inherit-product, device/xiaomi/zorn/device.mk)

# Evolution X
EVO_BUILD_TYPE := Unofficial
WITH_GMS := true
TARGET_INCLUDE_BOOT_ANIMATIONS := true
TARGET_SCREEN_WIDTH := 1440
TARGET_SCREEN_HEIGHT := 3200
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_NAME := lineage_zorn
PRODUCT_DEVICE := zorn
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 24117RK2CG

PRODUCT_SYSTEM_NAME := zorn_global
PRODUCT_SYSTEM_DEVICE := zorn

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="zorn_global-user 16 BP2A.250605.031.A3 16OS3.1.261022.200509756.QCPEGL.S release-keys" \
    BuildFingerprint=POCO/zorn_global/zorn:16/BP2A.250605.031.A3/16OS3.1.261022.200509756.QCPEGL.S:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
