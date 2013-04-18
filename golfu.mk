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
PRODUCT_LOCALES := en_GB
PRODUCT_LOCALES += mdpi

PRODUCT_COPY_FILES += \
    device/htc/golfu/prebuilt/bin/clockd:system/bin/clockd \
    device/htc/golfu/prebuilt/bin/netsharing:system/bin/netsharing \
    device/htc/golfu/prebuilt/bin/rild:system/bin/rild \
    device/htc/golfu/prebuilt/bin/rmt_storage:system/bin/rmt_storage \
    device/htc/golfu/prebuilt/bin/sdptool:system/bin/sdptool \
    device/htc/golfu/prebuilt/bin/zcb:system/bin/zcb \
    device/htc/golfu/prebuilt/bin/zchgd:system/bin/zchgd \
    device/htc/golfu/prebuilt/bin/zimmer:system/bin/zimmer \
    device/htc/golfu/prebuilt/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
    device/htc/golfu/prebuilt/bin/hciattach:system/bin/hciattach \
    device/htc/golfu/prebuilt/xbin/wireless_modem:system/xbin/wireless_modem \
    device/htc/golfu/prebuilt/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/htc/golfu/vold.fstab:system/etc/vold.fstab \
    device/common/gps/gps.conf_US:system/etc/gps.conf \
    vendor/cm/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/htc/golfu/prebuilt/root/logo.rle:root/logo.rle

# Kernel modules
PRODUCT_COPY_FILES += \
    device/htc/golfu/prebuilt/lib/modules/ath6kl_sdio.ko:system/lib/modules/ath6kl_sdio.ko \
    device/htc/golfu/prebuilt/lib/modules/cfg80211.ko:system/lib/modules/cfg80211.ko \
    device/htc/golfu/prebuilt/lib/modules/compat.ko:system/lib/modules/compat.ko \
    device/htc/golfu/prebuilt/lib/modules/kineto_gan.ko:system/lib/modules/kineto_gan.ko

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/htc/golfu/prebuilt/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Prebuilt Modules
PRODUCT_COPY_FILES += \
    device/htc/golfu/prebuilt/lib/libqc-opt.so:system/lib/libqc-opt.so \
    device/htc/golfu/prebuilt/lib/libgsl.so:system/lib/libgsl.so \
    device/htc/golfu/prebuilt/lib/libOpenVG.so:system/lib/libOpenVG.so \
    device/htc/golfu/prebuilt/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    device/htc/golfu/prebuilt/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/htc/golfu/prebuilt/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/htc/golfu/prebuilt/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
    device/htc/golfu/prebuilt/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/htc/golfu/prebuilt/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/htc/golfu/prebuilt/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/htc/golfu/prebuilt/etc/firmware/ath6k:system/etc/firmware/ath6k \
    device/htc/golfu/prebuilt/etc/firmware/ath6k/AR6003:system/etc/firmware/ath6k/AR6003 \
    device/htc/golfu/prebuilt/etc/firmware/ath6k/AR6003/hw2.1.1:system/etc/firmware/ath6k/AR6003/hw2.1.1 \
    device/htc/golfu/prebuilt/etc/firmware/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin \
    device/htc/golfu/prebuilt/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin \
    device/htc/golfu/prebuilt/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin1:system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin1 \
    device/htc/golfu/prebuilt/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin2:system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin2 \
    device/htc/golfu/prebuilt/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin3:system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin3 \
    device/htc/golfu/prebuilt/etc/firmware/ath6k/AR6003/hw2.1.1/fw-3.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/fw-3.bin \
    device/htc/golfu/prebuilt/etc/firmware/ath6k/AR6003/hw2.1.1/nullTestFlow.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/nullTestFlow.bin \
    device/htc/golfu/prebuilt/etc/firmware/ath6k/AR6003/hw2.1.1/utf.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/utf.bin \
    device/htc/golfu/prebuilt/etc/firmware/bahama.txt:system/etc/firmware/bahama.txt \
    device/htc/golfu/prebuilt/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/htc/golfu/prebuilt/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    vendor/cm/prebuilt/common/bootanimation/vertical-320x480.zip:system/media/bootanimation.zip

$(call inherit-product, build/target/product/full_base_telephony.mk)

PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
