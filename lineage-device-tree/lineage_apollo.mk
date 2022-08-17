#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from apollo device
$(call inherit-product, device/xiaomi/apollo/device.mk)

PRODUCT_DEVICE := apollo
PRODUCT_NAME := lineage_apollo
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2007J3SC
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="apollo-user 12 RKQ1.211001.001 V13.0.5.1.59.DEV release-keys"

BUILD_FINGERPRINT := Redmi/apollo/apollo:12/RKQ1.211001.001/V13.0.5.1.59.DEV:user/release-keys
