#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# experimental flags
#ENABLE_WEBGL := true
#TARGET_FORCE_CPU_UPLOAD := true
#TARGET_USES_QCOM_COMPRESSED_AUDIO := true
#TARGET_DISPLAY_USE_RETIRE_FENCE := true
#COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_BSP
#TARGET_USES_QCOM_BSP := true
#TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
#BOARD_USES_QCOM_HARDWARE := true

TARGET_PROVIDES_LIBLIGHT := true
#TARGET_PROVIDES_POWERHAL := true
#TARGET_USES_INTERACTION_BOOST := true
USE_DEVICE_SPECIFIC_CAMERA := true
BOARD_HAVE_LOW_LATENCY_AUDIO := true

#TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp
#TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mtune=cortex-a15 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mtune=cortex-a15 -mfloat-abi=softfp
TARGET_EXTRA_CFLAGS := -mtune=cortex-a15 -mcpu=cortex-a15
TARGET_ARCH_VARIANT_CPU := cortex-a15
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_ARMV7A := true
TARGET_CPU_VARIANT := krait

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64
ARCH_ARM_HAVE_TLS_REGISTER := true

# Compiler Optimizations
ARCH_ARM_HIGH_OPTIMIZATION := true

# Enable various prefetch optimizations
COMMON_GLOBAL_CFLAGS += -D__ARM_USE_PLD -D__ARM_CACHE_LINE_SIZE=64

TARGET_NO_BOOTLOADER := true

BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=geeb lpj=67677 user_debug=31
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01600000

TARGET_KERNEL_CONFIG := geeb_defconfig
TARGET_VARIANT_CONFIG := geeb_defconfig
TARGET_SELINUX_CONFIG := geeb_defconfig
TARGET_KERNEL_SOURCE := kernel/lge/gee
TARGET_OTA_ASSERT_DEVICE := geeb,gee_a,e970,gee,geebus

BOARD_USES_ALSA_AUDIO:= true
BOARD_USES_LEGACY_ALSA_AUDIO:= false
BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOOTLOADER_BOARD_NAME := GEE
TARGET_BOOTLOADER_NAME=gee
TARGET_BOARD_INFO_FILE := device/lge/geeb/board-info.txt

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/geeb/bluetooth

# FIXME: HOSTAPD-derived wifi driver
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP  := "ap"

#gpu config
BOARD_EGL_CFG := device/lge/geeb/egl.cfg
#BOARD_USES_HGL := true
#BOARD_USES_OVERLAY := true
#TARGET_USES_OVERLAY := true
#TARGET_USES_SF_BYPASS := true
#TARGET_USES_C2D_COMPOSITON := true
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000

TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_UI_LIB := librecovery_ui_geeb

TARGET_RECOVERY_FSTAB = device/lge/geeb/fstab.geeb
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 23068672 # 22M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 23068672 # 22M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 880803840 # 840M

BOARD_USERDATAIMAGE_PARTITION_SIZE := 6189744128 # 5.9G
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

BOARD_USES_SECURE_SERVICES := true

BOARD_USES_EXTRA_THERMAL_SENSOR := true
BOARD_USES_CAMERA_FAST_AUTOFOCUS := true

BOARD_HAL_STATIC_LIBRARIES := libdumpstate.geeb

BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
TARGET_NO_RPC := true
TARGET_PROVIDES_GPS_LOC_API := true

TARGET_RELEASETOOLS_EXTENSIONS := device/lge/geeb

BOARD_SEPOLICY_DIRS := \
       device/lge/geeb/sepolicy

BOARD_SEPOLICY_UNION += \
       app.te \
       bluetooth_loader.te \
       bridge.te \
       camera.te \
       conn_init.te \
       device.te \
       file.te \
       file_contexts \
       kickstart.te \
       mediaserver.te \
       mpdecision.te \
       netmgrd.te \
       qmux.te \
       rild.te \
       rmt.te \
       sensors.te \
       surfaceflinger.te \
       system_server.te \
       tee.te \
       te_macros \
       thermald.te \
       ueventd.te

BOARD_CHARGER_ENABLE_SUSPEND := true

USE_DEVICE_SPECIFIC_QCOM_PROPRIETARY:= true

OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

HAVE_ADRENO_SOURCE:= false

-include vendor/lge/gee/BoardConfigVendor.mk

BOARD_HAS_NO_SELECT_BUTTON := true

#TWRP config
DEVICE_RESOLUTION := 720x1280
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_REAL_SDCARD := true
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
TW_INCLUDE_JB_CRYPTO := true
TW_FLASH_FROM_STORAGE := true
TW_NO_USB_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/usb-otg"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "usb-otg"