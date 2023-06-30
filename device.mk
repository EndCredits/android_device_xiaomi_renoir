#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8350-common
$(call inherit-product, device/xiaomi/sm8350-common/common.mk)

COMMON_PATH := device/xiaomi/sm8350-common

# Audio
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_shima_qssi/audio_policy_configuration.xml

# Display Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/display/display_id_4630946480857061762.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/display_id_4630946480857061762.xml \
    $(LOCAL_PATH)/configs/display/display_id_4630946545580055170.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/display_id_4630946545580055170.xml

# Kernel
TARGET_KERNEL_DIR ?= device/xiaomi/renoir-kernel
LOCAL_KERNEL := $(TARGET_KERNEL_DIR)/kernel

PRODUCT_COPY_FILES += $(LOCAL_KERNEL):kernel

# Kernel Headers
PRODUCT_VENDOR_KERNEL_HEADERS := $(TARGET_KERNEL_DIR)/kernel-headers

# Overlays
PRODUCT_PACKAGES += \
    DerpSettingsResOverlayRenoir \
    FrameworksResOverlayRenoir \
    SettingsProviderResOverlayRenoir \
    SettingsResOverlayRenoir \
    SystemUIResOverlayRenoir \
    WifiResOverlayRenoir

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Call the proprietary setup
$(call inherit-product, vendor/xiaomi/renoir/renoir-vendor.mk)
