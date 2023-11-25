#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Bluetooth (or lack thereof)
TARGET_HAVE_BLUETOOTH := false

## Factory
PRODUCT_HOST_PACKAGES += \
    aml_image_packer

## Platform
TARGET_AMLOGIC_SOC := gxl

## WiFi
TARGET_HAVE_WIFIHAL := false

PRODUCT_PACKAGES += \
    ssv6051

PRODUCT_COPY_FILES += \
    hardware/amlogic/kernel-modules/icomm/ssv6051/ssv6051-wifi.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/ssv6051/ssv6051-wifi.cfg \
    hardware/amlogic/kernel-modules/icomm/ssv6051/image/ssv6051-sw.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/ssv6051/ssv6051-sw.bin

## Common Tree
$(call inherit-product, device/amlogic/gx-common/gx.mk)

## Vendor
$(call inherit-product, vendor/amlogic/q6x/q6x-vendor.mk)
