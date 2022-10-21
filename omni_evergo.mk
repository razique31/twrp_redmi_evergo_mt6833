#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from evergo device
$(call inherit-product, device/xiaomi/evergo/device.mk)

PRODUCT_DEVICE := evergo
PRODUCT_NAME := omni_evergo
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := evergo
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="evergo-user 12 SP1A.210812.016 V13.0.5.0.SGBINXM release-keys"

BUILD_FINGERPRINT := Redmi/evergo_in/evergo:12/SP1A.210812.016/V13.0.5.0.SGBINXM:user/release-keys
