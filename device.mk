#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/amlogic/q6x

$(call inherit-product, device/amlogic/gx-common/gx.mk)

$(call inherit-product, vendor/amlogic/q6x/q6x-vendor.mk)

## Factory
PRODUCT_HOST_PACKAGES += \
    aml_image_packer
