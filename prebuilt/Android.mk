ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),u8860)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

$(info $(shell (mkisofs -o $(LOCAL_PATH)/u8860.iso -J -R $(LOCAL_PATH)/iso)))

LOCAL_MODULE := u8860.iso
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := APPS
# include $(BUILD_PREBUILT)

endif
