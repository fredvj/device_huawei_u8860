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

$(call inherit-product, build/target/product/full_base_telephony.mk)

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

# Vold config, boot logo & init scripts

PRODUCT_COPY_FILES += \
	device/huawei/u8860/vold.fstab:system/etc/vold.fstab \
	device/huawei/u8860/boot-u8860.rle:root/initlogo.rle \
	device/huawei/u8860/init.huawei.rc:root/init.huawei.rc \
	device/huawei/u8860/init.target.rc:root/init.target.rc \
	device/huawei/u8860/ueventd.huawei.rc:root/ueventd.huawei.rc \
	device/huawei/u8860/sysinit:system/bin/sysinit

# Recovery magic

PRODUCT_COPY_FILES += \
	device/huawei/u8860/recovery/linker:root/sbin/linker \
	device/huawei/u8860/recovery/rmt_storage:root/sbin/rmt_storage \
	device/huawei/u8860/recovery/strace:root/sbin/strace \
	device/huawei/u8860/recovery/libc.so:root/vendor/lib/libc.so \
	device/huawei/u8860/recovery/libcutils.so:root/vendor/lib/libcutils.so \
	device/huawei/u8860/recovery/libfotaagent.so:root/vendor/lib/libfotaagent.so \
	device/huawei/u8860/recovery/liblog.so:root/vendor/lib/liblog.so \
	device/huawei/u8860/recovery/libm.so:root/vendor/lib/libm.so \
	device/huawei/u8860/recovery/libstdc++.so:root/vendor/lib/libstdc++.so \
	device/huawei/u8860/recovery/libz.so:root/vendor/lib/libz.so

# Permissions

PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
	frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_u8860
PRODUCT_DEVICE := u8860
PRODUCT_BRAND := huawei
PRODUCT_MODEL := u8860
PRODUCT_MANUFACTURER := Huawei

# LCD density
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

