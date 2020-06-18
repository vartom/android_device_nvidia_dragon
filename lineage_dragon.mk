# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit device configuration for icosa.
$(call inherit-product, device/nvidia/dragon/full_dragon.mk)

PRODUCT_NAME := lineage_dragon
PRODUCT_DEVICE := dragon
