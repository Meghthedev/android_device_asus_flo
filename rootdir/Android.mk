LOCAL_PATH := $(call my-dir)

# Device init scripts

ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),flo)
# deb also has fstab.flo and init.flo.rc
include $(CLEAR_VARS)
LOCAL_MODULE := fstab.flo
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := etc/fstab.flo
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.flo.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := etc/init.flo.rc
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

endif

include $(CLEAR_VARS)
LOCAL_MODULE := init.flo.power.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := etc/init.flo.power.rc
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.recovery.flo.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := etc/init.flo.power.rc
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := init.flo.usb.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := etc/init.flo.usb.rc
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ueventd.flo.rc
LOCAL_MODULE_STEM := ueventd.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := etc/ueventd.flo.rc
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)
