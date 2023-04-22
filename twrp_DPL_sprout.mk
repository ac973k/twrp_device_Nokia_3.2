#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from DPL_sprout device
$(call inherit-product, device/hmd/DPL_sprout/device.mk)

PRODUCT_DEVICE := DPL_sprout
PRODUCT_NAME := twrp_DPL_sprout
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 3.2
PRODUCT_MANUFACTURER := hmd

PRODUCT_GMS_CLIENTID_BASE := android-hmd-rev2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Deadpool_00WW-user 11 RKQ1.200928.002 00WW_3_23B release-keys"

BUILD_FINGERPRINT := Nokia/Deadpool_00WW/DPL_sprout:11/RKQ1.200928.002/00WW_3_23B:user/release-keys
