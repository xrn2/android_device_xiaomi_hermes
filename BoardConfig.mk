
# mt6795 platform boardconfig
LOCAL_PATH := device/xiaomi/hermes
-include vendor/xiaomi/hermes/BoardConfigVendor.mk

# Device specific headers
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

USE_CAMERA_STUB := true

# Target & Board
TARGET_BOARD_PLATFORM := mt6795
# Platform
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOARD_PLATFORM := mt6795
TARGET_NO_BOOTLOADER := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_NO_FACTORYIMAGE := true

TARGET_LDPRELOAD += libxlog.so

TARGET_KMODULES := true

# Assert
TARGET_OTA_ASSERT_DEVICE := hermes

# CPU
TARGET_BOOTLOADER_BOARD_NAME := mt6795

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

TARGET_CPU_CORTEX_A53 := true

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_USES_LEGACY_MTK_AV_BLOB := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL -DDISABLE_ASHMEM_TRACKING
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_USES_MTK_AUDIO := true

# Kernel
TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := true
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --base 0x40078000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --second_offset 0x00e88000 --tags_offset 0x0df88000 --board Bule
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
BOARD_CUSTOM_BOOTIMG := true

# Ramdisk
TARGET_PROVIDES_INIT_RC := true

BLOCK_BASED_OTA := false



# Display
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# Flags
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# LightHAL
TARGET_PROVIDES_LIBLIGHT := true

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true


# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# GPS
BOARD_GPS_LIBRARIES :=true
BOARD_CONNECTIVITY_MODULE := MT6630 
BOARD_MEDIATEK_USES_GPS := true

# Consumerir
MTK_IRTX_SUPPORT :=true

# WIFI
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := "/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_P2P := P2P

# Image
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 20971520
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13474725888
BOARD_CACHEIMAGE_PARTITION_SIZE := 402653184
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

# Recovery
BOARD_RECOVERY_SWIPE := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

TARGET_DISABLE_TRIPLE_BUFFERING := false

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# System.prop
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# SELinux
BOARD_SEPOLICY_DIRS := \
       device/xiaomi/hermes/sepolicy

##POLICYVERS := 29

# Kernel OBJ WorkAround for build
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
