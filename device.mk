#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gt58ltedo/gt58ltedo-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/gte-common/device-common.mk)

LOCAL_PATH := device/samsung/gt58ltedo

# Include package config fragments
include $(LOCAL_PATH)/product/*.mk

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/gt58ltedo/overlay
