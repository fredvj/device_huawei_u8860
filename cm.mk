# Release name
PRODUCT_RELEASE_NAME := HURZ

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/u8860/device_u8860.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_u8860
PRODUCT_BRAND := huawei
PRODUCT_DEVICE := u8860
PRODUCT_MODEL := U8860
PRODUCT_MANUFACTURER := Huawei
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=u8860 BUILD_ID=2012-05 BUILD_FINGERPRINT=u8860:4.0.4/2012-05/release-keys PRIVATE_BUILD_DESC="Add desc. here"

