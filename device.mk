#
# Copyright (C) 2017 The Android Open Source Project
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
#

# Crypto
PRODUCT_PACKAGES += \
    qcom_decrypt

PRODUCT_COPY_FILES += \
    $(OUT_DIR)/target/product/$(PRODUCT_RELEASE_NAME)/obj/SHARED_LIBRARIES/libcryptfs_hw_intermediates/libcryptfs_hw.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libcryptfs_hw.so

# Keymaster
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=msm8937

# Utils
PRODUCT_PACKAGES += \
    blksetro.mi8937

$(call inherit-product-if-exists, vendor/extras/product.mk)
