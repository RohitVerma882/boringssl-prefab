APP_ABI := arm64-v8a armeabi-v7a x86 x86_64
APP_PROJECT_PATH := $(call my-dir)/../../boringssl-source
APP_CFLAGS := -Wall -Werror -Wno-unused-parameter -fvisibility=hidden
# APP_CFLAGS += -Wno-builtin-macro-redefined -D__FILE__=__FILE_NAME__
APP_CONLYFLAGS := -std=c11
APP_PLATFORM := android-21
APP_STL := c++_static

APP_SHORT_COMMANDS := true
