#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

INFINITY_MAINTAINER := ❥Rahul
TARGET_HAS_UDFPS := true
WITH_GAPPS := true

TARGET_ENABLE_BLUR := true
MISTOS_MAINTAINER := ❥Rahul
WITH_GMS := true

# Inherit from lemonades device
$(call inherit-product, device/oneplus/kebab/device.mk)

PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.hbmservice_support=true

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# ViPER4Android
$(call inherit-product, vendor/viper/viper.mk)

PRODUCT_NAME := lineage_kebab
PRODUCT_DEVICE := kebab
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := KB2001

# Lunaris specific properties
LUNARIS_MAINTAINER := ❥Rahul
LUNARIS_BUILD_TYPE := UNOFFICIAL
WITH_GMS := true
TARGET_OPTIMIZED_DEXOPT := true
TARGET_CUSTOM_UDFPS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120
SURFACE_FLINGER_BOOST := true
TARGET_NEEDS_VULKAN_MEDIA_FIX := true

# RisingOS Revived Flags
PRODUCT_BUILD_PROP_OVERRIDES +=
     RisingChipset="Snapdragon 865"
     RisingMaintainer="❥Rahul"

RISING_MAINTAINER := ❥Rahul

# CORE build flags
WITH_GMS := true

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus8T-user 14 UKQ1.230924.001 R.1a46c89-1_1 release-keys" \
    BuildFingerprint=OnePlus/OnePlus8T/OnePlus8T:14/UKQ1.230924.001/R.1a46c89-1_1:user/release-keys \
    DeviceName=OnePlus8T \
    DeviceProduct=OnePlus8T \
    SystemDevice=OnePlus8T \
    SystemName=OnePlus8T
