#
# Copyright (C) 2017 The LineageOS Project
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
#

$(call inherit-product, device/xiaomi/cappu/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/XPe/config/common_full_tablet_wifionly.mk)

PRODUCT_PROPERTY_OVERRIDES := \
    ro.carrier=wifi-only

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_NAME := xpe_cappu
PRODUCT_DEVICE := cappu
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Xiaomi/cappu/cappu:7.0/NRD90M/7.6.8:user/release-keys" \
    PRIVATE_BUILD_DESC="Xiaomi/cappu/cappu:7.0/NRD90M/7.6.8:user/release-keys"
