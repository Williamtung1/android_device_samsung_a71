#
# Copyright (C) 2023 The LineageOS Project
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

include device/samsung/sm6150-common/BoardConfigCommon.mk

BUILD_BROKEN_VENDOR_PROPERTY_NAMESPACE := true

DEVICE_PATH := device/samsung/a71

# Assert
TARGET_OTA_ASSERT_DEVICE := a71

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Board
TARGET_BOARD_NAME := SRPSF18B003

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_a71
TARGET_RECOVERY_DEVICE_MODULES := libinit_a71

# Kernel
BOARD_HEADER_VERSION := 2
TARGET_KERNEL_CONFIG := a71_defconfig

# Get non-open-source specific aspects
include vendor/samsung/a71/BoardConfigVendor.mk
