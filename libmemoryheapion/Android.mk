LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    MemoryHeapIon.cpp \

LOCAL_C_INCLUDES:= \
	$(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include/video

LOCAL_SHARED_LIBRARIES :=       \
        libutils                \
        libcutils               \
        liblog

LOCAL_MODULE := libmemoryheapion
LOCAL_MODULE_TAGS := optional
LOCAL_ADDITIONAL_DEPENDENCIES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include/video

include $(BUILD_SHARED_LIBRARY)
