# Product specific compile-time definitions

LOCAL_PATH := $(call my-dir)

COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DTARGET7x30 -DTARGET_MSM7x30 -DREFRESH_RATE=60

TARGET_SPECIFIC_HEADER_PATH += device/huawei/u8860/include

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/huawei/u8860/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOARD_PLATFORM := msm7x30
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_BOOTLOADER_BOARD_NAME := u8860
TARGET_OTA_ASSERT_DEVICE := u8860,U8860,honor,Honor

BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=huawei
BOARD_KERNEL_BASE := 0x00208000
BOARD_KERNEL_PAGESIZE := 4096

BOARD_HAS_DOWNLOAD_MODE := true

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

BOARD_HAS_SDCARD_INTERNAL := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
# BOARD_BOOT_DEVICE := /dev/block/mmcblk0p1
# BOARD_RECOVERY_DEVICE := /dev/block/mmcblk0p1
# BOARD_BOOT_DEVICE := /.cust_backup/image/boot.img
# BOARD_RECOVERY_DEVICE := /.cust_backup/image/recovery.img
BOARD_DATA_DEVICE := /dev/block/mmcblk0p13
BOARD_DATA_FILESYSTEM := ext4
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p12
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p6
BOARD_CACHE_FILESYSTEM := ext4
# BOARD_HAS_NO_MISC_PARTITION := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk0p14
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p1

# Fix this up by examining fdisk /dev/block/mmcblk0 on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE     := 5242880
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 7864320
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 545259520
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1447034880
BOARD_CACHEIMAGE_PARTITION_SIZE    := 104857600
BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_USES_MMCUTILS := true

TARGET_PREBUILT_KERNEL := device/huawei/u8860/kernel
TARGET_RECOVERY_INITRC := device/huawei/u8860/recovery/recovery.rc

TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/huawei/u8860/releasetools/ota_from_target_files

# All the defines for /bootable/recovery (2012-07-24)
#
# BOARD_TOUCH_RECOVERY := true
BOARD_HAS_NO_SELECT_BUTTON := true
#
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"
# BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/u8860/recovery/u8860_recovery_ui.c
# BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/u8860/recovery/graphics.c
# BOARD_RECOVERY_RFS_CHECK :=
#
# BOARD_RECOVERY_ALWAYS_WIPES := true
# BOARD_RECOVERY_HANDLES_MOUNT := true
# BOARD_USES_BML_OVER_MTD := true
# BOARD_BML_BOOT := true
# BOARD_BML_RECOVERY := true
# BOARD_CUSTOM_GRAPHICS :=
# BOARD_RECOVERY_RFS_CHECK :=
# TARGET_RECOVERY_PIXEL_FORMAT := ("RGBX_8888" | "BGRA_8888")
