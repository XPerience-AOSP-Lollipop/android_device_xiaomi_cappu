#
# Copyright (C) 2017 The XPerience Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := device/xiaomi/cappu

# Screen density
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_CONFIG := normal

# Dalvik/HWUI
$(call inherit-product, frameworks/native/build/tablet-7in-xhdpi-2048-dalvik-heap.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
   $(LOCAL_KERNEL):prebuilt/kernel


# Bluetooth                            
PRODUCT_PACKAGES += \
    audio.a2dp.default 
PRODUCT_PACKAGES += \
    libbt-vendor

# Audio
PRODUCT_PACKAGES += \
    audio_policy.default \
    audio_policy.stub \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    tinymix \
    libtinyalsa
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/a2dp_audio_policy_configuration.xml:system/etc/a2dp_audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_effects.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_policy_volumes.xml:system/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/audio/Conf_MultipleTest.ini:system/etc/Conf_MultipleTest.ini \
    $(LOCAL_PATH)/audio/Conf_MultipleTest_0x01.ini:system/etc/Conf_MultipleTest_0x01.ini \
    $(LOCAL_PATH)/audio/Conf_MultipleTest_0x02:system/etc/Conf_MultipleTest_0x02 \
    $(LOCAL_PATH)/audio/default_volume_tables.xml:system/etc/default_volume_tables.xml \
    $(LOCAL_PATH)/audio/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/audio/media_codecs_mediatek_audio.xml:system/etc/media_codecs_mediatek_audio.xml \
    $(LOCAL_PATH)/audio/media_codecs_mediatek_video.xml:system/etc/media_codecs_mediatek_videos.xml \
    $(LOCAL_PATH)/audio/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/audio/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/audio/r_submix_audio_policy_configuration.xml:system/etc/r_submix_audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/usb_audio_policy_configuration.xml:system/etc/usb_audio_policy_configuration.xml

#some rc files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init/atrace.rc:system/etc/init/atrace.rc \
    $(LOCAL_PATH)/init/audioserver.rc:system/etc/init/audioserver.rc \
    $(LOCAL_PATH)/init/bootanim.rc:system/etc/init/bootanim.rc \
    $(LOCAL_PATH)/init/bootstat.rc:system/etc/init/bootstat.rc \
    $(LOCAL_PATH)/init/cameraserver.rc:system/etc/init/cameraserver.rc \
    $(LOCAL_PATH)/init/debuggerd.rc:system/etc/init/debuggerd.rc \
    $(LOCAL_PATH)/init/debuggerd64.rc:system/etc/init/debuggerd64.rc \
    $(LOCAL_PATH)/init/drmserver.rc:system/etc/init/drmserver.rc \
    $(LOCAL_PATH)/init/dumpstate.rc:system/etc/init/dumpstate.rc \
    $(LOCAL_PATH)/init/gatekeeperd.rc:system/etc/init/gatekeeperd.rc \
    $(LOCAL_PATH)/init/installd.rc:system/etc/init/installd.rc \
    $(LOCAL_PATH)/init/keystore.rc:system/etc/init/keystore.rc \
    $(LOCAL_PATH)/init/lmkd.rc:system/etc/init/lmkd.rc \
    $(LOCAL_PATH)/init/logd.rc:system/etc/init/logd.rc \
    $(LOCAL_PATH)/init/mdnsd.rc:system/etc/init/mdnsd.rc \
    $(LOCAL_PATH)/init/mediacodec.rc:system/etc/init/mediacodec.rc \
    $(LOCAL_PATH)/init/mediadrmserver.rc:system/etc/init/mediadrmserver.rc \
    $(LOCAL_PATH)/init/mediaextractor.rc:system/etc/init/mediaextractor.rc \
    $(LOCAL_PATH)/init/mediaserver.rc:system/etc/init/mediaserver.rc \
    $(LOCAL_PATH)/init/mtpd.rc:system/etc/init/mtpd.rc \
    $(LOCAL_PATH)/init/netd.rc:system/etc/init/netd.rc \
    $(LOCAL_PATH)/init/racoon.rc:system/etc/init/racoon.rc \
    $(LOCAL_PATH)/init/servicemanager.rc:system/etc/init/servicemanager.rc \
    $(LOCAL_PATH)/init/surfaceflinger.rc:system/etc/init/surfaceflinger.rc \
    $(LOCAL_PATH)/init/uncrypt.rc:system/etc/init/uncrypt.rc \
    $(LOCAL_PATH)/init/vdc.rc:system/etc/init/vdc.rc \
    $(LOCAL_PATH)/init/vold.rc:system/etc/init/vold.rc

PRODUCT_PACKAGES += \
   libmtk_symbols \
   libstlport

