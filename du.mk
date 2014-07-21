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

# Get the long list of APNs
$(call inherit-product, vendor/du/config/cdma.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/du/config/common.mk)

# Inherit from m7spr device
$(call inherit-product, device/htc/m7spr/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := du_m7spr
PRODUCT_DEVICE := m7spr
PRODUCT_BRAND := htc
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := One

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sprint_wwe \
    BUILD_FINGERPRINT="htc/sprint_wwe/m7wls:4.4.2/KOT49H/303687.4:user/release-keys" \
    PRIVATE_BUILD_DESC="4.06.651.4 CL303687 release-keys"
