USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/huawei/s7/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true

TARGET_BOARD_PLATFORM := qsd8k
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon

TARGET_BOOTLOADER_BOARD_NAME := s7

# Wifi related defines
#BOARD_WPA_SUPPLICANT_DRIVER := WEXT
#WPA_SUPPLICANT_VERSION      := VER_0_6_X
#BOARD_WLAN_DEVICE           := bcm4329
#WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
#WIFI_DRIVER_FW_STA_PATH     := "/system/etc/firmware/fw_bcm4329.bin"
#WIFI_DRIVER_FW_AP_PATH      := "/system/etc/firmware/fw_bcm4329_apsta.bin"
#WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/firmware/fw_bcm4329.bin nvram_path=/proc/calibration"
#WIFI_DRIVER_MODULE_NAME     := "bcm4329"

BOARD_USES_GENERIC_AUDIO := false

BOARD_KERNEL_CMDLINE := console=ttyMSM2,115200n8 androidboot.hardware=qsd8k_s7
BOARD_KERNEL_BASE := 0x20000000
BOARD_PAGE_SIZE := 0x00000800

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

BOARD_EGL_CFG := device/huawei/s7/egl.cfg

# fix this up by examining /proc/mtd on a running device
# cat /proc/mtd
#dev:  size     erasesize name
#mtd0: 00500000 00020000 "boot"
#mtd1: 0a000000 00020000 "system"
#mtd2: 00500000 00020000 "recovery"
#mtd3: 00060000 00020000 "splash"
#mtd4: 06000000 00020000 "cache"
#mtd5: 0af00000 00020000 "userdata"
#mtd6: 00500000 00020000 "logo"
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0a000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0af00000
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_MISC_PARTITION := true

TARGET_PREBUILT_KERNEL := device/huawei/s7/kernel

BOARD_DATA_DEVICE := /dev/block/mtdblock5
BOARD_DATA_FILESYSTEM := yaffs2
BOARD_SYSTEM_DEVICE := /dev/block/mtdblock1
BOARD_SYSTEM_FILESYSTEM := yaffs2

