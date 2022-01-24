#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from BaikalOS
$(call inherit-product, vendor/baikalos/config/common_full_phone.mk)

# Inherit from olives device
$(call inherit-product, device/xiaomi/olives/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := olives
PRODUCT_NAME := baikalos_olives
PRODUCT_MODEL := Redmi 8 Series
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi
BOARD_VENDOR := Xiaomi

# Some build flags
TARGET_BOOT_ANIMATION_RES := 720
TARGET_FACE_UNLOCK := true
TARGET_USES_BLUR := true
TARGET_USES_AOSP_CHARGER := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_INCLUDE_STOCK_ARCORE := false

DEVICE_MAINTAINER := skittels15

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/olive/olive:10/QKQ1.191014.001/V12.5.5.0.QCNCNXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="olive-user 10 QKQ1.191014.001 V12.5.5.0.QCNCNXM release-keys"
