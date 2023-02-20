ifeq ($(K9_SEPOLICY_INCLUDED),)

BOARD_VENDOR_SEPOLICY_DIRS += \
    device/xiaomi/renoir/audio/vendor \
    device/xiaomi/renoir/batterysecret/vendor \
    device/xiaomi/renoir/power/vendor \
    device/xiaomi/renoir/camera/vendor \
    device/xiaomi/renoir/ir/vendor \
    device/xiaomi/renoir/fingerprint/vendor \
    device/xiaomi/renoir/qcom-extra/vendor \
    device/xiaomi/renoir/thermal/vendor \
    device/xiaomi/renoir/sensors/vendor \
    device/xiaomi/renoir/display/vendor \
    device/xiaomi/renoir/nfc/vendor

K9_SEPOLICY_INCLUDED := true
endif
