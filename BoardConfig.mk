#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

include device/amlogic/gx-common/BoardConfigCommon.mk

DEVICE_PATH := device/amlogic/q6x

## Bootloader
TARGET_BOOTLOADER_BOARD_NAME := q6x

## Kernel
TARGET_DTB_NAME := gxl_p281_1g gxl_p281_2g

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
