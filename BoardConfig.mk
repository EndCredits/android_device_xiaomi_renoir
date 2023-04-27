#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/renoir

# Inherit from sm8350-common
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

# Firmware
-include vendor/xiaomi-firmware/renoir/BoardConfigVendor.mk

# Board
TARGET_BOOTLOADER_BOARD_NAME := renoir

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_renoir
TARGET_RECOVERY_DEVICE_MODULES := libinit_renoir

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/hidl/manifest.xml

DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(DEVICE_PATH)/hidl/framework_compatibility_matrix.xml

# Kernel
TARGET_KERNEL_CONFIG += vendor/renoir_QGKI.config

# Kernel modules
BOOT_KERNEL_MODULES := \
    focaltech_touch.ko \
    goodix_core.ko \
    hwid.ko \
    xiaomi_touch.ko
    
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(BOOT_KERNEL_MODULES)

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 114001162240

# Vibrator
SOONG_CONFIG_xiaomiSm8350Vars_vibrator_use_effect_stream := true

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Include proprietary files
include vendor/xiaomi/renoir/BoardConfigVendor.mk
