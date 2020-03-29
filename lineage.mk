#
# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from chaozuu device
$(call inherit-product, device/bq/chaozu/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := bq
PRODUCT_DEVICE := chaozu
PRODUCT_NAME := lineage_chaozu
PRODUCT_BRAND := bq
PRODUCT_MODEL := Aquaris U
PRODUCT_MANUFACTURER := bq

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_GMS_CLIENTID_BASE := android-bq

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="bq/chaozu/chaozu:6.0.1/MMB29M/1487334980:user/release-keys" \
    PRIVATE_BUILD_DESC="bq/chaozu/chaozu:6.0.1/MMB29M/1487334980:user/release-keys"
