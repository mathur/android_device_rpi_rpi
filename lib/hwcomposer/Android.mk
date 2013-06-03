LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)


LOCAL_CFLAGS += $(USERLAND_CFLAGS)
LOCAL_C_INCLUDES += $(USERLAND_INCLUDES)
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../host_applications/linux/libs/bcm_host/include

LOCAL_MODULE := hwcomposer.$(TARGET_BOARD_PLATFORM)
LOCAL_SRC_FILES := hwcomposer.cpp
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_SHARED_LIBRARIES := libbcm_host libvchostif libvcos libvchiq_arm liblog libEGL libm libGLESv2 libhardware
LOCAL_CFLAGS:= -DLOG_TAG=\"$(TARGET_BOARD_PLATFORM).hwcomposer\"
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
