LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    arcore \
    AndroidAutoStubPrebuilt \
    Chrome-Stub \
    GoogleTTS \
    LocationHistoryPrebuilt \
    GooglePrintRecommendationService \
    GoogleRestorePrebuilt \
    MarkupGoogle \
    MusicFX \
    ScribePrebuilt \
    SoundAmplifierPrebuilt \
    RecorderPrebuilt \
    SafetyHubPrebuilt \
    talkback \
    TrichromeLibrary-Stub \
    WellbeingPrebuilt \
    Velvet

LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)