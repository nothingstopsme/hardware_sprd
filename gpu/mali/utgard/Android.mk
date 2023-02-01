ifneq ($(TARGET_SIMULATOR),true)
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libGLES_mali.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_RELATIVE_PATH := egl
ifneq ($(strip $(TARGET_BUILD_VARIANT)), user)
LOCAL_SRC_FILES := debug/libGLES_mali.so
else
LOCAL_SRC_FILES := usr/libGLES_mali.so
endif

#LOCAL_REQUIRED_MODULES := libboost.so

include $(BUILD_PREBUILT)

ifeq ($(TARGET_USE_PREBUILT_GRALLOC),true)
#hw
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional


ifeq ($(strip $(TARGET_BOARD_PLATFORM)),)
LOCAL_MODULE := gralloc.default.so
else
LOCAL_MODULE := gralloc.$(TARGET_BOARD_PLATFORM).so
endif

LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_RELATIVE_PATH := hw
ifeq ($(strip $(TARGET_BUILD_VARIANT)), user)
LOCAL_SRC_FILES :=  usr/gralloc.utgard.so
else
LOCAL_SRC_FILES :=  debug/gralloc.utgard.so
endif

include $(BUILD_PREBUILT)
endif #ifeq ($(TARGET_USE_PREBUILT_GRALLOC),true)


endif
