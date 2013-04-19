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
    device/htc/golfu/init.golfu.rc:root/init.golfu.rc \
    device/htc/golfu/ueventd.rc:root/ueventd.rc \
    device/htc/golfu/init.golfu.usb.rc:root/init.golfu.usb.rc \
    device/htc/golfu/ueventd.golfu.rc:root/ueventd.golfu.rc

# Camera
PRODUCT_COPY_FILES += \
 device/htc/golfu/proprietary/lib/hw/camera.default.so:system/lib/hw/camera.default.so \
 device/htc/golfu/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
 device/htc/golfu/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
 device/htc/golfu/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
 device/htc/golfu/proprietary/lib/libcameraface.so:system/lib/libcameraface.so \
 device/htc/golfu/proprietary/lib/libcamerapp.so:system/lib/libcamerapp.so \
 device/htc/golfu/proprietary/lib/libchromatix_mt9t013_default_video.so:system/lib/libchromatix_mt9t013_default_video.so \
 device/htc/golfu/proprietary/lib/libchromatix_mt9t013_preview.so:system/lib/libchromatix_mt9t013_preview.so \
 device/htc/golfu/proprietary/bin/awb_camera:system/bin/awb_camera \
 device/htc/golfu/proprietary/bin/lsc_camera:system/bin/lsc_camera \
 device/htc/golfu/proprietary/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
 device/htc/golfu/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
 device/htc/golfu/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml
 
# OMX
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    device/htc/golfu/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    device/htc/golfu/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    device/htc/golfu/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    device/htc/golfu/proprietary/lib/libmmosal.so:system/lib/libmmosal.so \
    device/htc/golfu/proprietary/lib/libmmparser.so:system/lib/libmmparser.so \
    device/htc/golfu/proprietary/lib/libmmparser_divxdrmlib.so:system/lib/libmmparser_divxdrmlib.so \
    device/htc/golfu/proprietary/lib/libdivxdrmdecrypt.so:system/lib/libdivxdrmdecrypt.so

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
    device/htc/golfu/proprietary/etc/vold.fstab:system/etc/vold.fstab

# Kernel modules
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/lib/modules/ath6kl_sdio.ko:system/lib/modules/ath6kl_sdio.ko \
    device/htc/golfu/proprietary/lib/modules/cfg80211.ko:system/lib/modules/cfg80211.ko \
    device/htc/golfu/proprietary/lib/modules/compat.ko:system/lib/modules/compat.ko \
    device/htc/golfu/proprietary/lib/modules/kineto_gan.ko:system/lib/modules/kineto_gan.ko

PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/bin/clockd:system/bin/clockd \
    device/htc/golfu/proprietary/bin/netsharing:system/bin/netsharing \
    device/htc/golfu/proprietary/bin/rild:system/bin/rild \
    device/htc/golfu/proprietary/bin/rmt_storage:system/bin/rmt_storage \
    device/htc/golfu/proprietary/bin/sdptool:system/bin/sdptool \
    device/htc/golfu/proprietary/bin/zcb:system/bin/zcb \
    device/htc/golfu/proprietary/bin/zchgd:system/bin/zchgd \
    device/htc/golfu/proprietary/bin/zimmer:system/bin/zimmer \
    device/htc/golfu/proprietary/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
    device/htc/golfu/proprietary/bin/hciattach:system/bin/hciattach \
    device/htc/golfu/proprietary/xbin/wireless_modem:system/xbin/wireless_modem \
    device/htc/golfu/proprietary/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/common/gps/gps.conf_US:system/etc/gps.conf \
    vendor/cm/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/htc/golfu/proprietary/root/logo.rle:root/logo.rle

# Wifi
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/etc/firmware/ath6k:system/etc/firmware/ath6k \
    device/htc/golfu/proprietary/etc/firmware/ath6k/AR6003:system/etc/firmware/ath6k/AR6003 \
    device/htc/golfu/proprietary/etc/firmware/ath6k/AR6003/hw2.1.1:system/etc/firmware/ath6k/AR6003/hw2.1.1 \
    device/htc/golfu/proprietary/etc/firmware/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin \
    device/htc/golfu/proprietary/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin \
    device/htc/golfu/proprietary/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin1:system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin1 \
    device/htc/golfu/proprietary/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin2:system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin2 \
    device/htc/golfu/proprietary/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin3:system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin3 \
    device/htc/golfu/proprietary/etc/firmware/ath6k/AR6003/hw2.1.1/fw-3.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/fw-3.bin \
    device/htc/golfu/proprietary/etc/firmware/ath6k/AR6003/hw2.1.1/nullTestFlow.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/nullTestFlow.bin \
    device/htc/golfu/proprietary/etc/firmware/ath6k/AR6003/hw2.1.1/utf.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/utf.bin \
    device/htc/golfu/proprietary/etc/firmware/bahama.txt:system/etc/firmware/bahama.txt \
    device/htc/golfu/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/htc/golfu/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \

# Audio
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/htc/golfu/proprietary/etc/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/golfu/proprietary/etc/AudioPara4.csv:system/etc/AudioPara4.csv \
    device/htc/goflu/proprietary/etc/AudioPara4_WB.csv:system/etc/AudioPara4_WB.csv \
    device/htc/golfu/proprietary/etc/AudioPreProcess.csv:system/etc/AudioPreProcess.csv \

# Sensors
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/lib/hw/sensors.golfu.so:system/lib/hw/sensors.golfu.so \

# RIL
PRODUCT_COPY_FILES += \
    device/htc/golfu/prebuilt/lib/libhtc_ril.so:system/lib/libhtc_ril.so \
    device/htc/golfu/prebuilt/lib/libqc-opt.so:system/lib/libqc-opt.so

# 3D(Early JB Blobs)
PRODUCT_COPY_FILES += \
   device/htc/golfu/proprietary/lib/libgsl.so:system/lib/libgsl.so \
    device/htc/golfu/proprietary/lib/libOpenVG.so:system/lib/libOpenVG.so \
    device/htc/golfu/proprietary/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    device/htc/golfu/proprietary/lib/libC2D2.so:system/lib/libC2D2.so \
    device/htc/golfu/proprietary/lib/libc2d2_z180.so:system/lib/libc2d2_z180.so \
    device/htc/golfu/proprietary/lib/egl/libGLESv2S3D_adreno200.so:system/lib/egl/libGLESv2S3D_adreno200.so \
    device/htc/golfu/proprietary/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/htc/golfu/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/htc/golfu/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/htc/golfu/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/htc/golfu/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \

# Audio DSP Profiles
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/etc/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg \
    device/htc/golfu/proprietary/etc/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/golfu/proprietary/etc/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/golfu/proprietary/etc/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/golfu/proprietary/etc/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    device/htc/golfu/proprietary/etc/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/golfu/proprietary/etc/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg

# Keylayouts
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/usr/keylayout/golfu-keypad.kl:system/usr/keylayout/golfu-keypad.kl \
    device/htc/golfu/proprietary/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/golfu/proprietary/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
    device/htc/golfu/proprietary/usr/keylayout/himax-touchscreen.kl:system/usr/keylayout/himax-touchscreen.kl

# Input device calibration files
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/htc/golfu/proprietary/usr/idc/himax-touchscreen.idc:system/usr/idc/himax-touchscreen.idc

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=2.3_r3 \
    dalvik.vm.lockprof.threshold=500 \
    ro.setupwizard.enable_bypass=1 \
    ro.telephony.call_ring.multiple=false \
    persist.sys.use_dithering=2 \
    ro.vold.umsdirtyratio=50 \
      ro.ril.ecc.VODA-Africa-South=112,911,999 \
    ro.ril.ecc.HTC-GCC=999,112,997 \
    ro.ril.ecc.HTC-WWE=999 \
    ro.ril.ecc.HTC-Dutch=112 \
    ro.ril.ecc.HTC-SPA=112, 911,112, 911 \
    ro.ril.ecc.HTC-FRA=112,911 \
    ro.ril.ecc.HTC-ITA=112,911 \
    ro.ril.ecc.HTC-EastEurope=112 \
    ro.ril.enable.a52.HTC-ITA=1 \
    ro.ril.enable.a53.HTC-ITA=1 \
    ro.ril.enable.a52=0 \
    ro.ril.enable.a53=1 \
    ro.ril.hsdpa.category=8 \
    ro.ril.hsxpa=1 \
    ro.ril.fast.dormancy.rule=1 \
    ro.ril.disable.fd.plmn.prefix=23402,23410,23411,23420,27202 \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.enable.sdr=1 \
    ro.ril.enable.amr.wideband=1 \
    ro.ril.enable.r8fd=0 \
    ro.com.google.clientidbase=android-htc-rev \
    ro.ril.vmail.23415=1571,BT,121,VDF UK \
    ro.ril.vmail.27203=171 \
    ro.ril.vmail.65502=181 \
    ro.ril.vmail.27211=171 \
    ro.ril.vmail.65510=100 \
    ro.ril.vmail.22299=4133,3ITA \
    ro.ril.vmail.23410=901,O2 UK,905,TESCO,443,giffgaff \
    ro.ril.vmail.22201=41901,I TIM \
    ro.ril.vmail.22210=42020,Vodafone IT \
    ro.ril.vmail.22288=4200,I WIND \
    ro.config.htc.enableCOTA=1 \
    ro.ril.enable.pre_r8fd=1 \
    ro.ril.fd.pre_r8_tout.scr_off=2 \
    ro.ril.fd.pre_r8_tout.scr_on=3 \
    ro.ril.fd.r8_tout.scr_off=0 \
    ro.ril.fd.r8_tout.scr_on=0 \
    rild.libpath=/system/lib/libhtc_ril.so \
    rild.libargs=-d /dev/smd0 \
    persist.radio.adb_log_on=1 \
    ro.baseband.arch = msm \
    rild.libpath.ganlite=/system/lib/librilswitch.so \
    rilswitch.vendorlibpath=/system/lib/libhtc_ril.so \
    rilswitch.ganlibpath=/system/lib/libganril.so \
    ro.ril.hep = 1 \
    ro.ril.enable.dtm = 0 \
    ro.ril.hsdpa.category = 8 \
    ro.ril.htcmaskw1.bitmask = 4294967295 \
    ro.ril.htcmaskw1 = 14449 \
    mobiledata.interfaces=rmnet0,rmnet1,rmnet2,gprs,ppp0 \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \
    ro.sf.lcd_density=160 \
    ro.opengles.version=131072 \
    ro.telephony.ril.v3=signalstrength \
    ro.htc.camerahack=msm7k \
    ro.product.processor=600MHz \
    ro.product.ram=512MB \
    ro.product.display_resolution = 3.5 inch HVGA resolution \
    ro.product.main_camera=5M \
    ro.product.front_camera=NA \
    ro.product.bluetooth= 4.0 \
    ro.product.wifi = 802.11 b/g/n \
    ro.product.nled_off = 1 \
    ro.ril.update.acoustic.table = 1


## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects
PRODUCT_PROPERTY_OVERRIDES += \
    settings.display.autobacklight=1 \
    settings.display.brightness=143 \
    persist.service.mount.playsnd=0 \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enable_bypass=1 \
    ro.media.dec.aud.wma.enabled=1 \
    ro.media.dec.vid.wmv.enabled=1 \
    dalvik.vm.dexopt-flags=m=y \
    ro.config.sync=yes \
    persist.sys.usb.config=mass_storage,adb \
    dalvik.vm.dexopt-data-only=1 \
    debug.sf.hw=1 \
    debug.qctwa.preservebuf=1 \
    com.qc.hardware=true \
    com.qc.hdmi_out=false \
    debug.camcorder.disablemeta=1 \
    ro.media.enc.jpeg.quality=100 \
    ro.media.dec.jpeg.memcap=20000000 \
    debug.composition.type=mdp \
    ro.framework.gestureservice=0 \
    ro.vendor.extension_library=/system/lib/libqc-opt.so \
    ro.ext4fs = 1 \
    htc.audio.alc.enable = 1 \
    htc.audio.swalt.enable = 1 \
    lpa.decode = false \
    lpa.use-stagefright = false \
    htc.audio.global.state = 0 \
    htc.audio.global.profile = 0 \
    htc.audio.beats.state = 1 \
    htc.audio.beats.config = 1 \
    persist.htc.audio.pcm.samplerate=44100 \
    persist.htc.audio.pcm.channels=2
#    debug.egl.swapinterval=-1 \
#    debug.performance.tuning=1 \
#    video.accelerate.hw=1 \
#    linuxmgr.max_events_per_sec=150 \
#    persist.sys.use_dithering=1 \
#    persist.sys.purgeable_assets=1 \
#    ro.config.nocheckin=1 \
#    dalvik.vm.checkjni=false \
#    ro.media.enc.hprof.vid.bps=8000000
#    debug.qctwa.statusbar=1 \
#    debug.composition.type=dyn \
#    dev.pm.dyn_samplingrate=1
#    debug.composition.type=mdp \
#    debug.gr.calcfps=1 \
#    ro.sf.compbypass.enable=1

# Override /proc/sys/vm/dirty_ratio on UMS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vold.umsdirtyratio=20
# This is a 512MB device, so 32mb heapsize
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapsize=64m \
    dalvik.vm.heapgrowthlimit=32m


$(call inherit-product, build/target/product/full_base_telephony.mk)

PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
