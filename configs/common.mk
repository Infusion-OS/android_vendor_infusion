# Brand
PRODUCT_BRAND ?= infusion

# Local path for prebuilts
LOCAL_PATH:= vendor/infusion/prebuilts/common/system

# Common build prop overrides 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.setupwizard.network_required=false \
    ro.setupwizard.gservices_delay=-1 \
    keyguard.no_require_sim=true \
    ro.facelock.black_timeout=400 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=600 \
    ro.facelock.use_intro_anim=false \
    ro.ril.enable.amr.wideband=1 \
    net.tethering.noprovisioning=true \
    persist.sys.dun.override=0 \
    keyguard.no_require_sim=true \
    drm.service.enabled=true \
    dalvik.vm.image-dex2oat-filter=everything \
    dalvik.vm.dex2oat-filter=everything

# Disable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0

# Common overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/infusion/overlays/common

# Needed Packages
PRODUCT_PACKAGES += \
AudioFX \
Eleven \
LockClock \
Trebuchet \
ScreenRecorder \
libscreenrecorder

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
libstagefright_soft_ffmpegadec \
libstagefright_soft_ffmpegvdec \
libFFmpegExtractor \
media_codecs_ffmpeg.xml

# Proprietary latinime lib needed for swyping
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Enable sip+voip on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Blobs for media effects
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    $(LOCAL_PATH)/vendor/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd

# Backuptool support
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/addon.d/50-backuptool.sh:system/addon.d/50-backuptool.sh \
    $(LOCAL_PATH)/bin/backuptool.functions:install/bin/backuptool.functions \
    $(LOCAL_PATH)/bin/backuptool.sh:install/bin/backuptool.sh \
    $(LOCAL_PATH)/bin/blacklist:system/addon.d/blacklist

# Signature compatibility validation
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bin/otasigcheck.sh:install/bin/otasigcheck.sh
   
# init.d support
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/init.d/00banner:system/etc/init.d/00banner \
    $(LOCAL_PATH)/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/init.d/90userinit:system/etc/init.d/90userinit

# Bootanimation support
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/bootanimation.zip:system/media/bootanimation.zip

# mounts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bin/sysrw:system/bin/sysrw \
    $(LOCAL_PATH)/bin/sysro:system/bin/sysro \
    $(LOCAL_PATH)/bin/rootrw:system/bin/rootrw \
    $(LOCAL_PATH)/bin/rootro:system/bin/rootro

 # Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/mkshrc:system/etc/mkshrc

#Add shamu audio files
# Alarms
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/audio/alarms/Argon.ogg:system/media/audio/alarms/Argon.ogg \
    $(LOCAL_PATH)/media/audio/alarms/Carbon.ogg:system/media/audio/alarms/Carbon.ogg \
    $(LOCAL_PATH)/media/audio/alarms/Helium.ogg:system/media/audio/alarms/Helium.ogg \
    $(LOCAL_PATH)/media/audio/alarms/Krypton.ogg:system/media/audio/alarms/Krypton.ogg \
    $(LOCAL_PATH)/media/audio/alarms/Neon.ogg:system/media/audio/alarms/Neon.ogg \
    $(LOCAL_PATH)/media/audio/alarms/Osmium.ogg:system/media/audio/alarms/Osmium.ogg \
    $(LOCAL_PATH)/media/audio/alarms/Oxygen.ogg:system/media/audio/alarms/Oxygen.ogg \
    $(LOCAL_PATH)/media/audio/alarms/Platinum.ogg:system/media/audio/alarms/Platinum.ogg
   
# Notifications
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/audio/notifications/Ariel.ogg:system/media/audio/notifications/Ariel.ogg \
    $(LOCAL_PATH)/media/audio/notifications/Carme.ogg:system/media/audio/notifications/Carme.ogg \
    $(LOCAL_PATH)/media/audio/notifications/Ceres.ogg:system/media/audio/notifications/Ceres.ogg \
    $(LOCAL_PATH)/media/audio/notifications/Elara.ogg:system/media/audio/notifications/Elara.ogg \
    $(LOCAL_PATH)/media/audio/notifications/Europa.ogg:system/media/audio/notifications/Europa.ogg \
    $(LOCAL_PATH)/media/audio/notifications/Iapetus.ogg:system/media/audio/notifications/Iapetus.ogg \
    $(LOCAL_PATH)/media/audio/notifications/Io.ogg:system/media/audio/notifications/Io.ogg \
    $(LOCAL_PATH)/media/audio/notifications/Rhea.ogg:system/media/audio/notifications/Rhea.ogg \
    $(LOCAL_PATH)/media/audio/notifications/Salacia.ogg:system/media/audio/notifications/Salacia.ogg \
    $(LOCAL_PATH)/media/audio/notifications/Tethys.ogg:system/media/audio/notifications/Tethys.ogg \
    $(LOCAL_PATH)/media/audio/notifications/Titan.ogg:system/media/audio/notifications/Titan.ogg

# Ringtones
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/audio/ringtones/Atria.ogg:system/media/audio/ringtones/Atria.ogg \
    $(LOCAL_PATH)/media/audio/ringtones/Callisto.ogg:system/media/audio/ringtones/Callisto.ogg \
    $(LOCAL_PATH)/media/audio/ringtones/Dione.ogg:system/media/audio/ringtones/Dione.ogg \
    $(LOCAL_PATH)/media/audio/ringtones/Ganymede.ogg:system/media/audio/ringtones/GanyMede.ogg \
    $(LOCAL_PATH)/media/audio/ringtones/Luna.ogg:system/media/audio/ringtones/Luna.ogg \
    $(LOCAL_PATH)/media/audio/ringtones/Oberon.ogg:system/media/audio/ringtones/Oberon.ogg \
    $(LOCAL_PATH)/media/audio/ringtones/Phobos.ogg:system/media/audio/ringtones/Phobos.ogg \
    $(LOCAL_PATH)/media/audio/ringtones/Pyxis.ogg:system/media/audio/ringtones/Pyxis.ogg \
    $(LOCAL_PATH)/media/audio/ringtones/Sedna.ogg:system/media/audio/ringtones/Sedna.ogg \
    $(LOCAL_PATH)/media/audio/ringtones/Titania.ogg:system/media/audio/ringtones/Titania.ogg \
    $(LOCAL_PATH)/media/audio/ringtones/Triton.ogg:system/media/audio/ringtones/Triton.ogg \
    $(LOCAL_PATH)/media/audio/ringtones/Umbriel.ogg:system/media/audio/ringtones/Umbriel.ogg

# Ui
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/audio/ui/audio_end.ogg:system/media/audio/ui/audio_end.ogg \
    $(LOCAL_PATH)/media/audio/ui/audio_initiate.ogg:system/media/audio/ui/audio_initiate.ogg \
    $(LOCAL_PATH)/media/audio/ui/camera_click.ogg:system/media/audio/ui/camera_click.ogg \
    $(LOCAL_PATH)/media/audio/ui/camera_focus.ogg:system/media/audio/ui/camera_focus.ogg \
    $(LOCAL_PATH)/media/audio/ui/Dock.ogg:system/media/audio/ui/Dock.ogg \
    $(LOCAL_PATH)/media/audio/ui/Effect_Tick.ogg:system/media/audio/ui/Effect_Tick.ogg \
    $(LOCAL_PATH)/media/audio/ui/KeypressDelete.ogg:system/media/audio/ui/KeypressDelete.ogg \
    $(LOCAL_PATH)/media/audio/ui/KeypressInvalid.ogg:system/media/audio/ui/KeypressInvalid.ogg \
    $(LOCAL_PATH)/media/audio/ui/KeypressReturn.ogg:system/media/audio/ui/KeypressReturn.ogg \
    $(LOCAL_PATH)/media/audio/ui/KeypressSpacebar.ogg:system/media/audio/ui/KeypressSpacebar.ogg \
    $(LOCAL_PATH)/media/audio/ui/KeypressStandard.ogg:system/media/audio/ui/KeypressStandard.ogg \
    $(LOCAL_PATH)/media/audio/ui/Lock.ogg:system/media/audio/ui/Lock.ogg \
    $(LOCAL_PATH)/media/audio/ui/LowBattery.ogg:system/media/audio/ui/LowBattery.ogg \
    $(LOCAL_PATH)/media/audio/ui/NFCFailure.ogg:system/media/audio/ui/NFCFailure.ogg \
    $(LOCAL_PATH)/media/audio/ui/NFCInitiated.ogg:system/media/audio/ui/NFCInitiated.ogg \
    $(LOCAL_PATH)/media/audio/ui/NFCSuccess.ogg:system/media/audio/ui/NFCSuccess.ogg \
    $(LOCAL_PATH)/media/audio/ui/NFCTransferComplete.ogg:system/media/audio/ui/NFCTransferComplete.ogg \
    $(LOCAL_PATH)/media/audio/ui/NFCTransferInitiated.ogg:system/media/audio/ui/NFCTransferInitiated.ogg \
    $(LOCAL_PATH)/media/audio/ui/Trusted.ogg:system/media/audio/ui/Trusted.ogg \
    $(LOCAL_PATH)/media/audio/ui/Undock.ogg:system/media/audio/ui/Undock.ogg \
    $(LOCAL_PATH)/media/audio/ui/Unlock.ogg:system/media/audio/ui/Unlock.ogg \
    $(LOCAL_PATH)/media/audio/ui/VideoRecord.ogg:system/media/audio/ui/VideoRecord.ogg \
    $(LOCAL_PATH)/media/audio/ui/VideoStop.ogg:system/media/audio/ui/VideoStop.ogg \
    $(LOCAL_PATH)/media/audio/ui/WirelessChargingStarted.ogg:system/media/audio/ui/WirelessChargingStarted.ogg
        
# DRM
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/lib/libwvdrm_L1.so:/system/vendor/lib/libwvdrm_L1.so \
    $(LOCAL_PATH)/vendor/lib/libwvm.so:/system/vendor/lib/libwvm.so \
    $(LOCAL_PATH)/lib/drm/libfwdlockengine.so:/system/lib/drm/libfwdlockengine.so \
    $(LOCAL_PATH)/vendor/lib/mediadrm/libdrmclearkeyplugin.so:/system/vendor/lib/mediadrm/libdrmclearkeyplugin.so \
    $(LOCAL_PATH)/vendor/lib/libWVStreamControlAPI_L1.so:/system/vendor/lib/libWVStreamControlAPI_L1.so \
    $(LOCAL_PATH)/vendor/lib/drm/libdrmwvmplugin.so:/system/vendor/lib/drm/libdrmwvmplugin.so \
    $(LOCAL_PATH)/vendor/lib/mediadrm/libwvdrmengine.so:/system/vendor/lib/mediadrm/libwvdrmengine.so \

include vendor/infusion/configs/themes_common.mk
