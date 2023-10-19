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

# Assert
TARGET_OTA_ASSERT_DEVICE := renoir,renoir_global,renoir_jp,renoir_ru,renoir_eea_global

# Board
TARGET_BOOTLOADER_BOARD_NAME := renoir

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/hidl/manifest.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(DEVICE_PATH)/hidl/framework_compatibility_matrix.xml

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_renoir
TARGET_RECOVERY_DEVICE_MODULES := libinit_renoir

# Kernel
TARGET_KERNEL_CONFIG += renoir_defconfig

# Kernel modules
BOOT_KERNEL_MODULES := \
    focaltech_touch.ko \
    goodix_core.ko \
    hwid.ko \
    xiaomi_touch.ko
    
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(BOOT_KERNEL_MODULES)

BOARD_VENDOR_KERNEL_MODULES += \
	$(KERNEL_MODULES_OUT)/adsp_loader_dlkm.ko \
	$(KERNEL_MODULES_OUT)/apr_dlkm.ko \
	$(KERNEL_MODULES_OUT)/bolero_cdc_dlkm.ko \
	$(KERNEL_MODULES_OUT)/bt_fm_slim.ko \
	$(KERNEL_MODULES_OUT)/btpower.ko \
	$(KERNEL_MODULES_OUT)/camera.ko \
	$(KERNEL_MODULES_OUT)/cnss2.ko \
	$(KERNEL_MODULES_OUT)/e4000.ko \
	$(KERNEL_MODULES_OUT)/fc0011.ko \
	$(KERNEL_MODULES_OUT)/fc0012.ko \
	$(KERNEL_MODULES_OUT)/fc0013.ko \
	$(KERNEL_MODULES_OUT)/fc2580.ko \
	$(KERNEL_MODULES_OUT)/focaltech_touch.ko \
	$(KERNEL_MODULES_OUT)/fpc1020_tee.ko \
	$(KERNEL_MODULES_OUT)/goodix_core.ko \
	$(KERNEL_MODULES_OUT)/goodix_ts_gesture.ko \
	$(KERNEL_MODULES_OUT)/goodix_ts_tools.ko \
	$(KERNEL_MODULES_OUT)/hdmi_dlkm.ko \
	$(KERNEL_MODULES_OUT)/hid-aksys.ko \
	$(KERNEL_MODULES_OUT)/hwid.ko \
	$(KERNEL_MODULES_OUT)/icnss2.ko \
	$(KERNEL_MODULES_OUT)/ir-spi.ko \
	$(KERNEL_MODULES_OUT)/it913x.ko \
	$(KERNEL_MODULES_OUT)/leds-qti-flash.ko \
	$(KERNEL_MODULES_OUT)/llcc_perfmon.ko \
	$(KERNEL_MODULES_OUT)/m88rs6000t.ko \
	$(KERNEL_MODULES_OUT)/machine_dlkm.ko \
	$(KERNEL_MODULES_OUT)/max2165.ko \
	$(KERNEL_MODULES_OUT)/mbhc_dlkm.ko \
	$(KERNEL_MODULES_OUT)/mc44s803.ko \
	$(KERNEL_MODULES_OUT)/mi_thermal_interface.ko \
	$(KERNEL_MODULES_OUT)/msi001.ko \
	$(KERNEL_MODULES_OUT)/mt2060.ko \
	$(KERNEL_MODULES_OUT)/mt2063.ko \
	$(KERNEL_MODULES_OUT)/mt20xx.ko \
	$(KERNEL_MODULES_OUT)/mt2131.ko \
	$(KERNEL_MODULES_OUT)/mt2266.ko \
	$(KERNEL_MODULES_OUT)/mxl301rf.ko \
	$(KERNEL_MODULES_OUT)/mxl5005s.ko \
	$(KERNEL_MODULES_OUT)/mxl5007t.ko \
	$(KERNEL_MODULES_OUT)/native_dlkm.ko \
	$(KERNEL_MODULES_OUT)/pinctrl_lpi_dlkm.ko \
	$(KERNEL_MODULES_OUT)/pinctrl_wcd_dlkm.ko \
	$(KERNEL_MODULES_OUT)/platform_dlkm.ko \
	$(KERNEL_MODULES_OUT)/q6_dlkm.ko \
	$(KERNEL_MODULES_OUT)/q6_notifier_dlkm.ko \
	$(KERNEL_MODULES_OUT)/q6_pdr_dlkm.ko \
	$(KERNEL_MODULES_OUT)/qcom-hv-haptics.ko \
	$(KERNEL_MODULES_OUT)/qm1d1b0004.ko \
	$(KERNEL_MODULES_OUT)/qm1d1c0042.ko \
	$(KERNEL_MODULES_OUT)/qt1010.ko \
	$(KERNEL_MODULES_OUT)/qti_battery_charger_main.ko \
	$(KERNEL_MODULES_OUT)/r820t.ko \
	$(KERNEL_MODULES_OUT)/radio-i2c-rtc6226-qca.ko \
	$(KERNEL_MODULES_OUT)/rdbg.ko \
	$(KERNEL_MODULES_OUT)/rmnet_core.ko \
	$(KERNEL_MODULES_OUT)/rmnet_ctl.ko \
	$(KERNEL_MODULES_OUT)/rmnet_offload.ko \
	$(KERNEL_MODULES_OUT)/rmnet_shs.ko \
	$(KERNEL_MODULES_OUT)/rx_macro_dlkm.ko \
	$(KERNEL_MODULES_OUT)/si2157.ko \
	$(KERNEL_MODULES_OUT)/slimbus.ko \
	$(KERNEL_MODULES_OUT)/slimbus-ngd.ko \
	$(KERNEL_MODULES_OUT)/snd_event_dlkm.ko \
	$(KERNEL_MODULES_OUT)/stub_dlkm.ko \
	$(KERNEL_MODULES_OUT)/swr_ctrl_dlkm.ko \
	$(KERNEL_MODULES_OUT)/swr_dlkm.ko \
	$(KERNEL_MODULES_OUT)/swr_dmic_dlkm.ko \
	$(KERNEL_MODULES_OUT)/swr_haptics_dlkm.ko \
	$(KERNEL_MODULES_OUT)/tda18212.ko \
	$(KERNEL_MODULES_OUT)/tda18218.ko \
	$(KERNEL_MODULES_OUT)/tda18250.ko \
	$(KERNEL_MODULES_OUT)/tda9887.ko \
	$(KERNEL_MODULES_OUT)/tea5761.ko \
	$(KERNEL_MODULES_OUT)/tea5767.ko \
	$(KERNEL_MODULES_OUT)/tfa98xx_dlkm.ko \
	$(KERNEL_MODULES_OUT)/tua9001.ko \
	$(KERNEL_MODULES_OUT)/tuner-simple.ko \
	$(KERNEL_MODULES_OUT)/tuner-types.ko \
	$(KERNEL_MODULES_OUT)/tuner-xc2028.ko \
	$(KERNEL_MODULES_OUT)/tx_macro_dlkm.ko \
	$(KERNEL_MODULES_OUT)/us_prox_iio.ko \
	$(KERNEL_MODULES_OUT)/va_macro_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wcd937x_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wcd937x_slave_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wcd938x_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wcd938x_slave_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wcd9xxx_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wcd_core_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wlan.ko \
	$(KERNEL_MODULES_OUT)/wsa883x_dlkm.ko \
	$(KERNEL_MODULES_OUT)/wsa_macro_dlkm.ko \
	$(KERNEL_MODULES_OUT)/xc4000.ko \
	$(KERNEL_MODULES_OUT)/xc5000.ko \
	$(KERNEL_MODULES_OUT)/xiaomi_touch.ko

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 114001162240

# Vibrator
SOONG_CONFIG_xiaomiSm8350Vars_vibrator_use_effect_stream := true

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Include proprietary files
include vendor/xiaomi/renoir/BoardConfigVendor.mk
