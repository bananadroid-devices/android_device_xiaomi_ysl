#
# Copyright (C) 2017-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common BananaDroid stuff.
$(call inherit-product, vendor/evolution/config/common.mk)

# Inherit some Banana build stuff.
TARGET_BOOT_ANIMATION_RES := 1080
EVOLUTION_MAINTAINER := krishnaspeace

# Inherit Gapps stuff
WITH_GAPPS := true
BUILD_CORE_GAPPS := true

# Inherit some AOSP stuffs
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_EXCLUDE_MATLOG := true
TARGER_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_BLUR := true
# Inherit from ysl device
$(call inherit-product, device/xiaomi/ysl/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ysl
PRODUCT_NAME := evolution_ysl
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi S2
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ysl-user 9 PKQ1.181203.001 V12.0.2.0.PEFMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "google/cheetah/cheetah:13/TQ2A.230305.008.C1/9619669:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
