# Inherit from common
include device/samsung/gte-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/gt58ltedo

# Include board config fragments
include device/samsung/gt58ltedo/board/*.mk

# Asserts
TARGET_OTA_ASSERT_DEVICE := gt58lte,gt58ltexx,SM-T355,gt58ltedo,SM-T355Y

TARGET_PROCESS_SDK_VERSION_OVERRIDE := \
    /vendor/lib/hw/audio.primary.msm8916.so=25 \
    /vendor/lib/hw/camera.vendor.msm8916.so=25 \
    /vendor/lib/hw/sensors.vendor.msm8916.so=25

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_gt58lte_aus_defconfig

TARGET_PROVIDES_KEYMASTER := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Partition sizes
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3145728000
//ToDo: USERDATA Value (Obtained using `parted /dev/block/mmcblk0 unit B print`)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12138295296


