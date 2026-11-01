#
# Copyright (C) 2024-2025 The LineageOS Project
# Copyright (C) 2026 The (not) Organization
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

## Rom identifier. This must come before all inclusions
ifeq ($(TARGET_IS_PIXELOS),true)
ROM := custom
endif
ifeq ($(TARGET_IS_LINEAGEOS),true)
ROM := lineage
endif

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from r8q device
$(call inherit-product, device/samsung/r8q/device.mk)

# Inherit from rom vendor
$(call inherit-product, vendor/$(ROM)/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

## Device identifier. This must come after all inclusions
PRODUCT_NAME := $(ROM)_r8q
PRODUCT_DEVICE := r8q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G780G
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="r8qxx-user 13 TP1A.220624.014 G780GXXSHEYJ1 release-keys" \
    BuildFingerprint=samsung/r8qxx/r8q:11/RP1A.200720.012/G780GXXSHEYJ1:user/release-keys \
    DeviceProduct=r8qxx \
    SystemName=r8qxx
