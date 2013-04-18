# Copyright (C) 2011 The Android Open Source Project
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

# proprietary side of the device
# Inherit from those products. Most specific first

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/golfu/overlay

# Video decoding
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libstagefrighthw \
    libOmxCore \
    libI420colorconvert
    
# Graphics 
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    libtilerenderer \
    libQcomUI \
    liboverlay
    
# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7x27a \
    audio_policy.msm7x27a \
    audio.a2dp.default \
    audio_policy.conf \
    libaudioutils \
    audio.usb.default

# Other
PRODUCT_PACKAGES += \
    dexpreopt \
    lights.golfu \
    sensors.msm7x27a \
    gps.golfu \
    power.msm7x27a
       
# Camera
PRODUCT_PACKAGES += \
    camera.default
    
# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Hardware properties 
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

# Init
PRODUCT_COPY_FILES += \
    device/htc/golfu/files/init.golfu.rc:root/init.golfu.rc \
    device/htc/golfu/files/ueventd.golfu.rc:root/ueventd.golfu.rc \
    device/htc/golfu/files/init.golfu.usb.rc:root/init.golfu.usb.rc
    
# Camera
PRODUCT_COPY_FILES += \
    vendor/htc/golfu/proprietary/lib/hw/camera.default.so:system/lib/hw/camera.default.so \
    vendor/htc/golfu/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
    vendor/htc/golfu/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
    vendor/htc/golfu/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    vendor/htc/golfu/proprietary/lib/libcameraface.so:system/lib/libcameraface.so \
    vendor/htc/golfu/proprietary/lib/libcamerapp.so:system/lib/libcamerapp.so \
    vendor/htc/golfu/proprietary/lib/libOlaEngine.so:system/lib/libOlaEngine.so \
    vendor/htc/golfu/proprietary/lib/libchromatix_mt9t013_default_video.so:system/lib/libchromatix_mt9t013_default_video.so \
    vendor/htc/golfu/proprietary/lib/libchromatix_mt9t013_preview.so:system/lib/libchromatix_mt9t013_preview.so \
    vendor/htc/golfu/proprietary/bin/awb_camera:system/bin/awb_camera \
    vendor/htc/golfu/proprietary/bin/lsc_camera:system/bin/lsc_camera \
    vendor/htc/golfu/proprietary/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    device/htc/golfu/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/htc/golfu/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml
    
# OMX
PRODUCT_COPY_FILES += \
    device/htc/golfu/prebuilt/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    vendor/htc/golfu/proprietary/lib/libmmosal.so:system/lib/libmmosal.so \
    vendor/htc/golfu/proprietary/lib/libmmparser.so:system/lib/libmmparser.so \
    device/htc/golfu/prebuilt/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    device/htc/golfu/prebuilt/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    device/htc/golfu/prebuilt/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    vendor/htc/golfu/proprietary/lib/libmmparser_divxdrmlib.so:system/lib/libmmparser_divxdrmlib.so \
    vendor/htc/golfu/proprietary/lib/libdivxdrmdecrypt.so:system/lib/libdivxdrmdecrypt.so
    
# Set usb type
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=mass_storage \
    persist.service.adb.enable=1

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml
 
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni
# Vold 
PRODUCT_COPY_FILES += \
    device/htc/golfu/files/etc/vold.fstab:system/etc/vold.fstab
    
# Wifi
PRODUCT_COPY_FILES += \
    device/htc/golfu/files/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/htc/golfu/files/etc/dhcpd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/htc/golfu/files/etc/wifi/hostapd.conf:system/etc/wifi/hostapd.conf
    
# Audio
PRODUCT_COPY_FILES += \
    device/htc/golfu/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/htc/golfu/prebuilt/etc/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/golfu/prebuilt/etc/AudioPara4.csv:system/etc/AudioPara4.csv \
    device/htc/golfu/prebuilt/etc/AudioPara4_WB.csv:system/etc/AudioPara4_WB.csv \
    device/htc/golfu/prebuilt/etc/AudioPreProcess.csv:system/etc/AudioPreProcess.csv \
    device/htc/golfu/prebuilt/etc/AudioFilter_HP.csv:system/etc/AudioFilter_HP.csv \
    vendor/htc/golfu/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so \
    vendor/htc/golfu/proprietary/lib/libhtc_acoustic.so:system/lib/libhtc_acoustic.so

# Sensors
PRODUCT_COPY_FILES += \
    vendor/htc/golfu/proprietary/lib/hw/sensors.golfu.so:system/lib/hw/sensors.golfu.so \

# 3D(Early JB Blobs)
PRODUCT_COPY_FILES += \
    vendor/htc/golfu/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    vendor/htc/golfu/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    device/htc/golfu/prebuilt/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/htc/golfu/prebuilt/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    vendor/htc/golfu/proprietary/lib/libgsl.so:system/lib/libgsl.so \
    vendor/htc/golfu/proprietary/lib/libOpenVG.so:system/lib/libOpenVG.so \
    vendor/htc/golfu/proprietary/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    vendor/htc/golfu/proprietary/lib/libC2D2.so:system/lib/libC2D2.so \
    vendor/htc/golfu/proprietary/lib/libc2d2_z180.so:system/lib/libc2d2_z180.so \
    vendor/htc/golfu/proprietary/lib/egl/libGLESv2S3D_adreno200.so:system/lib/egl/libGLESv2S3D_adreno200.so \
    vendor/htc/golfu/proprietary/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    vendor/htc/golfu/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    vendor/htc/golfu/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    vendor/htc/golfu/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    vendor/htc/golfu/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so

# RIL
PRODUCT_COPY_FILES += \
    device/htc/golfu/prebuilt/lib/libhtc_ril.so:system/lib/libhtc_ril.so \
    device/htc/golfu/prebuilt/lib/libqc-opt.so:system/lib/libqc-opt.so
    
# Audio DSP Profiles
PRODUCT_COPY_FILES += \
    device/htc/golfu/prebuilt/etc/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg \
    device/htc/golfu/prebuilt/etc/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/golfu/prebuilt/etc/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/golfu/prebuilt/etc/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/golfu/prebuilt/etc/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    device/htc/golfu/prebuilt/etc/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/golfu/prebuilt/etc/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg


# Keylayouts
PRODUCT_COPY_FILES += \
    device/htc/golfu/prebuilt/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/htc/golfu/prebuilt/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/htc/golfu/prebuilt/usr/keychars/golfu-keypad.kcm.bin:system/usr/keychars/golfu-keypad.kcm.bin \
    device/htc/golfu/prebuilt/usr/keychars/BT_HID.kcm.bin:system/usr/keychars/BT_HID.kcm.bin \
    device/htc/golfu/prebuilt/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/golfu/prebuilt/usr/keylayout/BT_HID.kl:system/usr/keylayout/BT_HID.kl \
    device/htc/golfu/prebuilt/usr/keylayout/golfu-keypad.kl:system/usr/keylayout/golfu-keypad.kl \
    device/htc/golfu/prebuilt/usr/keylayout/himax-touchscreen.kl:system/usr/keylayout/himax-touchscreen.kl \
    device/htc/golfu/prebuilt/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
    device/htc/golfu/prebuilt/usr/idc/himax-touchscreen.idc:system/usr/idc/himax-touchscreen.idc \
    device/htc/golfu/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/htc/golfu/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/golfu/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl
    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=2.3_r3 \
    dalvik.vm.lockprof.threshold=500 \
    ro.setupwizard.enable_bypass=1 \
    ro.telephony.call_ring.multiple=false \
    persist.sys.use_dithering=2 \
    ro.vold.umsdirtyratio=50

PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0