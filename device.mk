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
    $(COMMON_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_policy_configuration.xml \
    $(COMMON_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_shima_qssi/audio_policy_configuration.xml

# Display Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/display/display_id_4630946480857061762.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/display_id_4630946480857061762.xml \
    $(LOCAL_PATH)/configs/display/display_id_4630946545580055170.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/display_id_4630946545580055170.xml

# Kernel
KERNEL_MODULES_INSTALL := dlkm
KERNEL_MODULES_OUT := $(OUT_DIR)/target/product/renoir/$(KERNEL_MODULES_INSTALL)/lib/modules

# Overlays
PRODUCT_PACKAGES += \
    AOSPARenoirFramerowksResOverlay \
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
