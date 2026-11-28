#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the kebab device.
$(call inherit-product, device/oneplus/kebab/device.mk)

# AxionOS device configuration.
TARGET_DISABLE_EPPE := true
AXION_CAMERA_REAR_INFO := 48,16,5,2
AXION_CAMERA_FRONT_INFO := 16
AXION_MAINTAINER := ❥Rahul
AXION_PROCESSOR := Snapdragon_865
LINEAGE_BUILDTYPE=COMMUNITY

# Inherit common Lineage/Axion phone configuration.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# ViPER4Android
$(call inherit-product, vendor/viper/viper.mk)

PRODUCT_NAME := lineage_kebab
PRODUCT_DEVICE := kebab
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := KB2001

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus8T-user 14 UKQ1.230924.001 R.1a46c89-1_1 release-keys" \
    BuildFingerprint=OnePlus/OnePlus8T/OnePlus8T:14/UKQ1.230924.001/R.1a46c89-1_1:user/release-keys \
    DeviceName=OnePlus8T \
    DeviceProduct=OnePlus8T \
    SystemDevice=OnePlus8T \
    SystemName=OnePlus8T
