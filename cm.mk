# Boot animation
TARGET_SCREEN_HEIGHT := 320
TARGET_SCREEN_WIDTH  := 480

# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/golfu/overlay

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Inherit device configuration
$(call inherit-product, device/htc/golfu/golfu.mk)

# Product name
PRODUCT_NAME := cm_golfu
PRODUCT_BRAND := htc_europe
PRODUCT_DEVICE := golfu
PRODUCT_MODEL := HTC desire c
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=golfu BUILD_ID=JZO54K BUILD_FINGERPRINT=htc_europe/htc_golfu/golfu:2.3.5/GRJ90/207463.1:user/release-keys
PRIVATE_BUILD_DESC="1.28.401.1 CL207463 release-keys"
