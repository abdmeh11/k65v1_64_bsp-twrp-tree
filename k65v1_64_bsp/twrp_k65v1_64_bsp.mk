#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from k65v1_64_bsp device
$(call inherit-product, device/alps/k65v1_64_bsp/device.mk)

PRODUCT_DEVICE := k65v1_64_bsp
PRODUCT_NAME := twrp_k65v1_64_bsp
PRODUCT_BRAND := alps
PRODUCT_MODEL := k65v1_64_bsp
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-generic

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k65v1_64_bsp-user 9 PPR1.180610.011 282 test-keys"

BUILD_FINGERPRINT := alps/full_k65v1_64_bsp/k65v1_64_bsp:9/PPR1.180610.011/282:user/test-keys

