#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from renoir device
$(call inherit-product, device/xiaomi/renoir/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := renoir
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := M2101K9C
PRODUCT_NAME := aospa_renoir

# AOSPA Stuffs
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_SYSTEM_NAME := renoir
PRODUCT_SYSTEM_DEVICE := renoir

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
