# Release name
PRODUCT_RELEASE_NAME := rpi

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/rpi/rpi/device_rpi.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := rpi
PRODUCT_NAME := cm_rpi
PRODUCT_BRAND := rpi
PRODUCT_MODEL := Raspberry Pi
PRODUCT_MANUFACTURER := rpi

-include vendor/cm/config/common_versions.mk

