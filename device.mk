#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Rootdir
PRODUCT_PACKAGES += \
    init.qcom.post_boot.sh \
    init.qcom.early_boot.sh \
    init.qcom.sdio.sh \
    init.qti.media.sh \
    init.qcom.sh \
    init.qti.qcv.sh \
    install-recovery.sh \
    setwlansarhigh.sh \
    init.class_main.sh \
    init.crda.sh \
    init.qcom.coex.sh \
    getwlansar.sh \
    init.qcom.efs.sync.sh \
    qca6234-service.sh \
    setwlansarlow.sh \
    init.qcom.sensors.sh \
    init.mdm.sh \
    init.qti.dcvs.sh \
    init.qcom.usb.sh \
    init.mi.usb.sh \
    init.qcom.class_core.sh \
    init.qti.chg_policy.sh \

PRODUCT_PACKAGES += \
    fstab.emmc \
    init.qcom.factory.rc \
    init.stnfc.rc \
    init.target.rc \
    init.qcom.rc \
    init.qti.ufs.rc \
    init.qcom.usb.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.emmc:$(TARGET_COPY_OUT_RAMDISK)/fstab.emmc

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/lime/lime-vendor.mk)
