# Small language pack only
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_small.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# proprietary side of the device
$(call inherit-product-if-exists, vendor/huawei/u8860/u8860-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8860/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/huawei/u8860/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_PACKAGES += \
	make-ext4fs \
	gralloc.msm7x30 \
	hwcomposer.default \
	audio.a2dp.default \
	DSPManager \
	MusicFX \
	setup_fs \
	libOmxCore \
	libOmxVidEnc \
	libmm-omxcore \
	libstagefrighthw \
	libgenlock \
	liboverlay \
	libtilerenderer \
	libQcomUI

# Vold config

PRODUCT_COPY_FILES += \
	device/huawei/u8860/vold.fstab:system/etc/vold.fstab

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_u8860
PRODUCT_DEVICE := u8860
