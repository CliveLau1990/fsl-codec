LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

include $(BUILD_MULTI_PREBUILT)

MAJOR_VERSION := $(shell echo $(PLATFORM_VERSION) | cut -d "." -f1)
ANDROID_VERSION_GE_O := $(shell if [ $(MAJOR_VERSION) -ge 8 ];then echo "true";fi)

ifeq ($(ANDROID_VERSION_GE_O), true)
    FSL_CODEC_OUT_PATH := $(TARGET_OUT_VENDOR)
else
    FSL_CODEC_OUT_PATH := $(TARGET_OUT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := lib_nb_amr_dec_v2_arm9_elinux
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
ifeq ($(ANDROID_VERSION_GE_O), true)
LOCAL_VENDOR_MODULE := true
endif
ifeq ($(TARGET_ARCH),arm64)
LOCAL_MULTILIB := both
LOCAL_MODULE_PATH_64 := $(FSL_CODEC_OUT_PATH)/lib64/
LOCAL_SRC_FILES_64 := ./lib64/lib_nb_amr_dec_arm_android.so
LOCAL_MODULE_PATH_32 := $(FSL_CODEC_OUT_PATH)/lib/
LOCAL_SRC_FILES_32 := ./lib/lib_nb_amr_dec_v2_arm9_elinux.so
else
LOCAL_MODULE_PATH := $(FSL_CODEC_OUT_PATH)/lib
LOCAL_SRC_FILES := lib/lib_nb_amr_dec_v2_arm9_elinux.so
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := lib_wb_amr_dec_arm9_elinux
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
ifeq ($(ANDROID_VERSION_GE_O), true)
LOCAL_VENDOR_MODULE := true
endif
ifeq ($(TARGET_ARCH),arm64)
LOCAL_MULTILIB := both
LOCAL_MODULE_PATH_64 := $(FSL_CODEC_OUT_PATH)/lib64/
LOCAL_SRC_FILES_64 := lib64/lib_wb_amr_dec_arm_android.so
LOCAL_MODULE_PATH_32 := $(FSL_CODEC_OUT_PATH)/lib/
LOCAL_SRC_FILES_32 := lib/lib_wb_amr_dec_arm9_elinux.so
else
LOCAL_MODULE_PATH := $(FSL_CODEC_OUT_PATH)/lib
LOCAL_SRC_FILES := lib/lib_wb_amr_dec_arm9_elinux.so
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := lib_flac_dec_v2_arm11_elinux
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
ifeq ($(ANDROID_VERSION_GE_O), true)
LOCAL_VENDOR_MODULE := true
endif
ifeq ($(TARGET_ARCH),arm64)
LOCAL_MULTILIB := both
LOCAL_MODULE_PATH_64 := $(FSL_CODEC_OUT_PATH)/lib64/
LOCAL_SRC_FILES_64 := lib64/lib_flac_dec_arm_android.so
LOCAL_MODULE_PATH_32 := $(FSL_CODEC_OUT_PATH)/lib/
LOCAL_SRC_FILES_32 := lib/lib_flac_dec_v2_arm11_elinux.so
else
LOCAL_MODULE_PATH := $(FSL_CODEC_OUT_PATH)/lib
LOCAL_SRC_FILES := lib/lib_flac_dec_v2_arm11_elinux.so
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := lib_H263_dec_v2_arm11_elinux
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
ifeq ($(ANDROID_VERSION_GE_O), true)
LOCAL_VENDOR_MODULE := true
endif
ifeq ($(TARGET_ARCH),arm64)
LOCAL_MULTILIB := 32
LOCAL_MODULE_PATH_32 := $(FSL_CODEC_OUT_PATH)/lib/
LOCAL_SRC_FILES_32 := lib/lib_H263_dec_v2_arm11_elinux.so
else
LOCAL_MODULE_PATH := $(FSL_CODEC_OUT_PATH)/lib
LOCAL_SRC_FILES := lib/lib_H263_dec_v2_arm11_elinux.so
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := lib_peq_v2_arm11_elinux
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
ifeq ($(ANDROID_VERSION_GE_O), true)
LOCAL_VENDOR_MODULE := true
endif
ifeq ($(TARGET_ARCH),arm64)
LOCAL_MULTILIB := 32
LOCAL_MODULE_PATH_32 := $(FSL_CODEC_OUT_PATH)/lib/
LOCAL_SRC_FILES_32 := lib/lib_peq_v2_arm11_elinux.so
else
LOCAL_MODULE_PATH := $(FSL_CODEC_OUT_PATH)/lib
LOCAL_SRC_FILES := lib/lib_peq_v2_arm11_elinux.so
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := lib_mp3_parser_v2_arm11_elinux
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
ifeq ($(ANDROID_VERSION_GE_O), true)
LOCAL_VENDOR_MODULE := true
endif
ifeq ($(TARGET_ARCH),arm64)
LOCAL_MULTILIB := both
LOCAL_MODULE_PATH_64 := $(FSL_CODEC_OUT_PATH)/lib64/
LOCAL_SRC_FILES_64 := lib64/lib_mp3_parser_v2_arm11_elinux.so
LOCAL_MODULE_PATH_32 := $(FSL_CODEC_OUT_PATH)/lib/
LOCAL_SRC_FILES_32 := lib/lib_mp3_parser_v2_arm11_elinux.so
else
LOCAL_MODULE_PATH := $(FSL_CODEC_OUT_PATH)/lib
LOCAL_SRC_FILES := lib/lib_mp3_parser_v2_arm11_elinux.so
endif
include $(BUILD_PREBUILT)

