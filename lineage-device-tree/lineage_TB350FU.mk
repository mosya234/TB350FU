#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from TB350FU device
$(call inherit-product, device/lenovo/TB350FU/device.mk)

PRODUCT_DEVICE := TB350FU
PRODUCT_NAME := lineage_TB350FU
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := TB350FU
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_mssi_t_64_cn_armv82_wifi_row-user 13 TP1A.220624.014 124 release-keys"

BUILD_FINGERPRINT := Lenovo/TB350FU/TB350FU:13/TP1A.220624.014/S130343_240113_ROW:user/release-keys
