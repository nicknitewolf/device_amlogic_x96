#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/amlogic/x96w

$(call inherit-product, vendor/amlogic/x96w/x96w-vendor.mk)

$(call inherit-product, device/amlogic/g12-common/g12.mk)

## Factory
PRODUCT_HOST_PACKAGES += \
    aml_image_packer

## Init-Files
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/init-files/init.amlogic.wifi_buildin.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.wifi_buildin.rc

# Inherit temp DNM configuration
$(call inherit-product, $(LOCAL_PATH)/temp.mk)

# Wi-Fi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf
