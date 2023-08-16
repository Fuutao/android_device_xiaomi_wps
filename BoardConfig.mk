# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += device/xiaomi/wps/compatibility_matrix.xml

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += device/xiaomi/wps/sepolicy

# Inherit the proprietary files
include vendor/xiaomi/wps/BoardConfigVendor.mk
