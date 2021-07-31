# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2018 The LineageOS Project
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

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l.mk)

# Boot animation
BOOT_ANIMATION_SIZE := xga

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_gt58ltedo
PRODUCT_DEVICE := gt58ltedo
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T355Y
PRODUCT_MANUFACTURER := samsung
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gt58ltedo-user 7.1.1 NMF26X T355YDOU1CRB3 release-keys"

BUILD_FINGERPRINT := "samsung/gt58ltedo/gt58lte:7.1.1/NMF26X/T355YDOU1CRB3:user/release-keys"

$(call inherit-product, device/samsung/gt58ltedo/device.mk)
$(call inherit-product-if-exists, vendor/samsung/gt58ltedo/gt58ltedo-vendor.mk)

