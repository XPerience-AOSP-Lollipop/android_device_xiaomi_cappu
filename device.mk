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

PRODUCT_PACKAGES += \
   libmtk_symbols \
   libstlport

