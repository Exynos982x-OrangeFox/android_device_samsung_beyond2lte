#
# Copyright (C) 2026 The OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, vendor/twrp/config/common.mk)
$(call inherit-product, device/samsung/beyond2lte/device.mk)

PRODUCT_DEVICE := beyond2lte
PRODUCT_NAME := twrp_beyond2lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G975F
PRODUCT_MANUFACTURER := samsung
