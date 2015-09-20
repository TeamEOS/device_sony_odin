# Boot animation
PRODUCT_COPY_FILES += \
vendor/eos/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# Inherit some common EOS stuff
$(call inherit-product, vendor/eos/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/eos/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/sony/odin/full_odin.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := odin
PRODUCT_NAME := eos_odin
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia ZL
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=C6503 \
    BUILD_FINGERPRINT=Sony/C6503/C6503:5.1.1/10.7.A.0.222/4076033025:user/release-keys \
    PRIVATE_BUILD_DESC="C6503-user 5.1.1 10.7.A.0.222 4076033025 release-keys"
