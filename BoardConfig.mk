#
# Copyright (C) 2021,2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6115-common
include device/xiaomi/sm6115-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/lime

BUILD_BROKEN_DUP_RULES := true

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Display
TARGET_SCREEN_DENSITY := 420

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_lime
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_lime

# Kernel
TARGET_KERNEL_CONFIG += vendor/xiaomi/lime.config

# OTA assert
TARGET_OTA_ASSERT_DEVICE := lemon,lime,pomelo

# Inherit from the proprietary version
include vendor/xiaomi/lime/BoardConfigVendor.mk
