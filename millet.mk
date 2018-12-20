# Copyright (C) 2015 The CyanogenMod Project
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

# inherit from common msm8226
-include device/samsung/msm8226-common/msm8226.mk

LOCAL_PATH := device/samsung/millet-common

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
PRODUCT_CHARACTERISTICS := tablet

# System properties
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop
-include $(LOCAL_PATH)/system_prop.mk

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl \
    $(LOCAL_PATH)/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.target.rc

PRODUCT_PACKAGES += \
    lights.msm8226

# WCNSS
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:$(TARGET_OUT_ETC)/system/etc/wifi/WCNSS_qcom_cfg.ini \
	$(LOCAL_PATH)/wifi/WCNSS_cfg.dat:$(TARGET_OUT_ETC)/system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
	$(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:$(TARGET_OUT_ETC)/system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/wifi/hostapd_default.conf:$(TARGET_OUT_ETC)/system/etc/hostapd/hostapd_default.conf \
$(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:$(TARGET_OUT_ETC)/system/etc/wifi/p2p_supplicant_overlay.conf \
$(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_OUT_ETC)/system/etc/wifi/wpa_supplicant_overlay.conf \
$(LOCAL_PATH)/wifi/wpa_supplicant_ath6kl.conf:$(TARGET_OUT_ETC)/system/etc/wifi/wpa_supplicant_ath6kl.conf \
$(LOCAL_PATH)/wifi/nvram_net.txt_a0:$(TARGET_OUT_ETC)/system/etc/wifi/nvram_net.txt_a0 \
$(LOCAL_PATH)/wifi/nvram_net.txt:$(TARGET_OUT_ETC)/system/etc/wifi/nvram_net.txt \
$(LOCAL_PATH)/wifi/nvram_mfg.txt_a0:$(TARGET_OUT_ETC)/system/etc/wifi/nvram_mfg.txt_a0 \
$(LOCAL_PATH)/wifi/cred.conf:$(TARGET_OUT_ETC)/system/etc/wifi/cred.conf \
$(LOCAL_PATH)/wifi/bcmdhd_sta.bin:$(TARGET_OUT_ETC)/system/etc/wifi/bcmdhd_sta.bin \
$(LOCAL_PATH)/wifi/bcmdhd_mfg.bin:$(TARGET_OUT_ETC)/system/etc/wifi/bcmdhd_mfg.bin \
$(LOCAL_PATH)/wifi/bcmdhd_apsta.bin:$(TARGET_OUT_ETC)/system/etc/wifi/bcmdhd_apsta.bin \
$(LOCAL_PATH)/wifi/bcmdhd_ibss.bin:$(TARGET_OUT_ETC)/system/etc/wifi/bcmdhd_ibss.bin \
$(LOCAL_PATH)/wifi/hostapd.accept:$(TARGET_OUT_ETC)/system/etc/hotpad/hostapd.accept \
$(LOCAL_PATH)/wifi/hostapd.deny:$(TARGET_OUT_ETC)/system/etc/hotpad/hostapd.deny \
$(LOCAL_PATH)/wifi/hostapd_default.conf:$(TARGET_OUT_ETC)/system/etc/hotpad/hostapd_default.conf

# Wifi
PRODUCT_PACKAGES += \
	hostapd \
	libqsap_sdk \
	libQWiFiSoftApCfg \
	libwcnss_qmi \
	libwpa_client \
	bcmdhd \
	wcnss_service \
	wpa_supplicant \
	wpa_supplicant.conf

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/wifi/hostapd_default.conf:$(TARGET_OUT_ETC)/system/etc/hostapd/hostapd_default.conf \
	$(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:$(TARGET_OUT_ETC)/system/etc/wifi/p2p_supplicant_overlay.conf \
	$(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_OUT_ETC)/system/etc/wifi/wpa_supplicant_overlay.conf \
	$(LOCAL_PATH)/wifi/wpa_supplicant_ath6kl.conf:$(TARGET_OUT_ETC)/system/etc/wifi/wpa_supplicant_ath6kl.conf \
	$(LOCAL_PATH)/wifi/nvram_net.txt_a0:$(TARGET_OUT_ETC)/system/etc/wifi/nvram_net.txt_a0 \
	$(LOCAL_PATH)/wifi/nvram_net.txt:$(TARGET_OUT_ETC)/system/etc/wifi/nvram_net.txt \
	$(LOCAL_PATH)/wifi/nvram_mfg.txt_a0:$(TARGET_OUT_ETC)/system/etc/wifi/nvram_mfg.txt_a0 \
	$(LOCAL_PATH)/wifi/cred.conf:$(TARGET_OUT_ETC)/system/etc/wifi/cred.conf \
	$(LOCAL_PATH)/wifi/bcmdhd_sta.bin:$(TARGET_OUT_ETC)/system/etc/wifi/bcmdhd_sta.bin \
	$(LOCAL_PATH)/wifi/bcmdhd_mfg.bin:$(TARGET_OUT_ETC)/system/etc/wifi/bcmdhd_mfg.bin \
	$(LOCAL_PATH)/wifi/bcmdhd_apsta.bin:$(TARGET_OUT_ETC)/system/etc/wifi/bcmdhd_apsta.bin \
	$(LOCAL_PATH)/wifi/bcmdhd_ibss.bin:$(TARGET_OUT_ETC)/system/etc/wifi/bcmdhd_ibss.bin \
	$(LOCAL_PATH)/wifi/hostapd.accept:$(TARGET_OUT_ETC)/system/etc/hotpad/hostapd.accept \
	$(LOCAL_PATH)/wifi/hostapd.deny:$(TARGET_OUT_ETC)/system/etc/hotpad/hostapd.deny \
	$(LOCAL_PATH)/wifi/hostapd_default.conf:$(TARGET_OUT_ETC)/system/etc/hotpad/hostapd_default.conf

# Proprietary files
$(call inherit-product, vendor/samsung/millet-common/millet-common-vendor.mk)
