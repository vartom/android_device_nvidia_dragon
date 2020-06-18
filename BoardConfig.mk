#
# Copyright (C) 2019 The LineageOS Project
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
include device/nvidia/foster/BoardConfig.mk

WITHOUT_CHECK_API   := true
NV_ANDROID_FRAMEWORK_ENHANCEMENTS := true

BOARD_FLASH_BLOCK_SIZE             := 4096
BOARD_BOOTIMAGE_PARTITION_SIZE     := 32738688
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 32767360
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3758096384
BOARD_SYSTEMIMAGE_JOURNAL_SIZE := 0
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 10099646976
BOARD_VENDORIMAGE_PARTITION_SIZE   := 268435456
TARGET_USERIMAGES_USE_EXT4         := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE  := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR             := vendor
BOARD_BUILD_SYSTEM_ROOT_IMAGE      := true

TARGET_BOARD_INFO_FILE := device/nvidia/dragon/board-info.txt
TARGET_BOOTLOADER_BOARD_NAME := dragon

# Bluetooth
BOARD_CUSTOM_BT_CONFIG := device/nvidia/dragon/comms/vnd_dragon.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/nvidia/dragon/comms
BOARD_HAVE_BLUETOOTH_BCM := true

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
KERNEL_TOOLCHAIN        := $(shell pwd)/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-gnu-6.4.1/bin
KERNEL_TOOLCHAIN_PREFIX := aarch64-linux-gnu-
TARGET_KERNEL_SOURCE    := kernel/nvidia/linux-4.9/kernel/kernel-4.9
TARGET_KERNEL_CONFIG    := smaug_android_defconfig
BOARD_KERNEL_IMAGE_NAME := Image.fit

#PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0
#VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
#SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000

# sensors
#BOARD_VENDOR_USE_SENSOR_HAL := sensor_hub


