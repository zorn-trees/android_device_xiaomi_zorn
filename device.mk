#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# API
PRODUCT_SHIPPING_API_LEVEL := 35

# Camera
$(call inherit-product-if-exists, device/xiaomi/zorn-miuicamera/device.mk)

# Display
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/displayconfig/display_id_4630946540531149187.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630946540531149187.xml

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.allocator@1.0-service \
    hwservicemanager

# Init
PRODUCT_PACKAGES += \
    init.zorn.rc

# Keymint
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hal_uuid_map.xml:$(TARGET_COPY_OUT_VENDOR)/etc/hal_uuid_map_zorn.xml

# Overlays
PRODUCT_PACKAGES += \
    ApertureOverlayZorn \
    FrameworkOverlayZorn \
    SettingsOverlayZorn \
    SettingsProviderOverlayZornPOCO \
    SettingsProviderOverlayZornRedmi \
    SystemUIOverlayZorn \
    WifiOverlayZorn \
    WifiOverlayZornPOCO \
    WifiOverlayZornRedmi

# SKU
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/props/odm_CN.prop:$(TARGET_COPY_OUT_ODM)/etc/odm_CN.prop \
    $(LOCAL_PATH)/props/odm_GL.prop:$(TARGET_COPY_OUT_ODM)/etc/odm_GL.prop

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/xiaomi/sm8650-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/xiaomi/zorn/zorn-vendor.mk)
