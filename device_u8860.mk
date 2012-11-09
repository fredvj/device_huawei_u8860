# Small language pack only
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_small.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# proprietary side of the device
$(call inherit-product-if-exists, vendor/huawei/u8860/u8860-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8860/overlay

# Inherit dalvik parameters
$(call inherit-product, frameworks/base/build/phone-hdpi-512-dalvik-heap.mk)


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/huawei/u8860/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif
 
PRODUCT_COPY_FILES += \
	$(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full_base_telephony.mk)

PRODUCT_PACKAGES += \
	make-ext4fs \
	lights.msm7x30 \
	DSPManager \
	MusicFX \
	setup_fs

# Graphics
PRODUCT_PACKAGES += \
        gralloc.msm7x30 \
        copybit.msm7x30 \
        hwcomposer.msm7x30 \
	libgenlock \
	libQcomUI \
	libtilerenderer \
	libmemalloc \
	liboverlay

# QCOM OMX
PRODUCT_PACKAGES += \
	libstagefrighthw \
        libOmxCore \
        libOmxVdec \
        libOmxVenc \
        libmm-omxcore \
        libdivxdrmdecrypt

# Audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.primary.msm7x30 \
	audio_policy.msm7x30 \
	libaudioutils

# GPS
PRODUCT_PACKAGES += \
	gps.msm7x30

# Wireless AP
PRODUCT_PACKAGES += \
	hostapd_cli \
	hostapd

# USB accessory
PRODUCT_PACKAGES += \
        com.android.future.usb.accessory


# Vold config, boot logo & init scripts

PRODUCT_COPY_FILES += \
	device/huawei/u8860/configuration/vold.fstab:system/etc/vold.fstab \
	device/huawei/u8860/prebuilt/boot-u8860.rle:root/initlogo.rle \
	device/huawei/u8860/prebuilt/u8860.iso:system/etc/u8860.iso \
	device/huawei/u8860/configuration/init.huawei.rc:root/init.huawei.rc \
	device/huawei/u8860/configuration/init.huawei.usb.rc:root/init.huawei.usb.rc \
	device/huawei/u8860/configuration/init.huawei.usb.sh:root/init.huawei.usb.sh \
	device/huawei/u8860/configuration/init.huawei.wifi.sh:system/etc/init.huawei.wifi.sh \
	device/huawei/u8860/configuration/init.bcm.bt.sh:system/etc/bluetooth/init.bcm.bt.sh \
	device/huawei/u8860/configuration/init.target.rc:root/init.target.rc \
	device/huawei/u8860/configuration/ueventd.huawei.rc:root/ueventd.huawei.rc \
	device/huawei/u8860/configuration/media_profiles.xml:system/etc/media_profiles.xml

# WLAN modules

PRODUCT_COPY_FILES += \
	device/huawei/u8860/prebuilt/dhd.ko:system/lib/modules/dhd.ko \
	device/huawei/u8860/prebuilt/nvram.txt:vendor/firmware/nvram.txt

# Camera HAL

PRODUCT_COPY_FILES += \
	device/huawei/u8860/prebuilt/camera.msm7630_surf.so:system/lib/hw/camera.msm7x30.so

# Bluetooth config

PRODUCT_COPY_FILES += \
	system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

# Permissions

PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/base/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
	frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/base/data/etc/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_u8860
PRODUCT_DEVICE := u8860
PRODUCT_BRAND := huawei
PRODUCT_MODEL := u8860
PRODUCT_MANUFACTURER := Huawei

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

