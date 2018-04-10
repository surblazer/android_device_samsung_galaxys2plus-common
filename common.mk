# Get non-open-source parts
$(call inherit-product, vendor/samsung/galaxys2plus-common/galaxys2plus-common-vendor.mk)

# Include path
COMMON_PATH := device/samsung/galaxys2plus-common

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(COMMON_PATH)/overlay

# Boot animation
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800

# Init files
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/fstab.capri:root/fstab.capri \
    $(COMMON_PATH)/rootdir/init.bcm281x5.usb.rc:root/init.bcm281x5.usb.rc \
    $(COMMON_PATH)/rootdir/init.capri.rc:root/init.capri.rc \
    $(COMMON_PATH)/rootdir/init.log.rc:root/init.log.rc \
    $(COMMON_PATH)/rootdir/init.recovery.capri.rc:root/init.recovery.capri.rc \
    $(COMMON_PATH)/rootdir/ueventd.capri.rc:root/ueventd.capri.rc \
    $(COMMON_PATH)/rootdir/rild.rc:system/etc/init/rild.rc

# Wi-Fi
PRODUCT_PACKAGES += \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

$(call inherit-product, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)

# Stlport
PRODUCT_PACKAGES += \
    libstlport

# GPS
PRODUCT_PACKAGES += \
    libglgps-compat

# Shims
PRODUCT_PACKAGES += \
    libsamsung_symbols

# HIDL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/manifest.xml:system/vendor/manifest.xml

# Audio modules
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default

# Audio configuration
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

USE_CUSTOM_AUDIO_POLICY := 1

# Audio HAL
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.soundtrigger@2.0-impl

# Keymaster HAL
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl

# Light HAL
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl

# Power HAL
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl

# graphics HIDL interfaces
PRODUCT_PACKAGES += \
android.hardware.graphics.bufferqueue@1.0_hal \
android.hardware.configstore@1.0_hal \
android.hardware.configstore@1.0-service \
android.hardware.configstore-utils \
android.hardware.graphics.allocator@2.0-impl \
android.hardware.graphics.allocator@2.0-service \
android.hardware.graphics.mapper@2.0-impl

# Memtrack HAL
PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-impl

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# Bluetooth HAL
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
    libbt-vendor

# Camera HAL
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl-legacy \
    android.hardware.camera.device@1.0-impl-legacy

# Usb HAL
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

# WIFI HAL
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    wificond

# Vibrator HAL
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl

# DRM HAL
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl

# Media
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(COMMON_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml

# Prebuilt kl keymaps
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/keylayouts/bcm_headset.kl:system/usr/keylayout/bcm_headset.kl \
    $(COMMON_PATH)/keylayouts/bcm_keypad_v2.kl:system/usr/keylayout/bcm_keypad_v2.kl \
    $(COMMON_PATH)/keylayouts/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(COMMON_PATH)/keylayouts/samsung-keypad.kl:system/usr/keylayout/samsung-keypad.kl \
    $(COMMON_PATH)/keylayouts/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
    $(COMMON_PATH)/keylayouts/sii9234_rcp.kl:system/usr/keylayout/sii9234_rcp.kl

# Packages
PRODUCT_PACKAGES += \
    charger_res_images \
    SamsungDoze \
    SamsungServiceMode \
    Snap

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# System properties
$(call inherit-product, $(COMMON_PATH)/system_prop.mk)

# Build GO
$(call inherit-product, build/make/target/product/go_defaults_512.mk)

# Include debugging props
$(call inherit-product, $(LOCAL_PATH)/system_prop_debug.mk)

# Dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
