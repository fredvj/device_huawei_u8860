# Release name
PRODUCT_RELEASE_NAME := u8860

# Inherit some common CM stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit GSM phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/u8860/device_u8860.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

## Device identifier
PRODUCT_DEVICE := u8860
PRODUCT_NAME := cm_u8860
PRODUCT_BRAND := huawei
PRODUCT_MODEL := u8860
PRODUCT_MANUFACTURER := huawei
