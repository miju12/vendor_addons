# Copyright (C) 2017-2020 crDroid Android Project
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
LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

DEVICE_PACKAGE_OVERLAYS += vendor/addons/overlay/common
ifeq ($(EXTRA_FOD_ANIMATIONS),true)
DEVICE_PACKAGE_OVERLAYS += vendor/addons/overlay/fod
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/addons/overlay/fod
endif

# Offline charger
ifeq ($(pixel_charging),true)
PRODUCT_PACKAGES += \
    charger_res_images \
    product_charger_res_images
endif
