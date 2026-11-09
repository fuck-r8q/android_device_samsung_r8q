#
# Copyright (C) 2024-2025 The LineageOS Project
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

DEVICE_PATH := device/samsung/r8q

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE := 629145600
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 82694144
BOARD_SUPER_PARTITION_SIZE := 10292822016

include device/samsung/sm8250-common/BoardConfigCommon.mk

BUILD_BROKEN_DUP_RULES := true

# Display
TARGET_SCREEN_DENSITY := 420

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_samsung_r8q

# Kernel
BOARD_NAME := SRPUB26A007
TARGET_PREBUILT_KERNEL := device/samsung/r8q-kernel/Image
TARGET_COMPILE_WITH_MSM_KERNEL := false
BOARD_PREBUILT_DTBIMAGE_DIR := device/samsung/r8q-kernel/dtb
BOARD_PREBUILT_DTBOIMAGE := device/samsung/r8q-kernel/dtbo.img

# OTA assert
TARGET_OTA_ASSERT_DEVICE := r8q
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# PowerShare
TARGET_POWERSHARE_NODE := /sys/class/power_supply/battery/wc_tx_en

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# VINTF
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest.xml
