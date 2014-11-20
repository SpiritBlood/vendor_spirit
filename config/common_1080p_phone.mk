# Inherit common stuff
$(call inherit-product, vendor/spirit/config/common.mk)

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

# Proprietary libmmcamera_interface.so because of green bar bug
PRODUCT_COPY_FILES += \
    vendor/optipop/prebuilt/lib/libmmcamera_interface.so:system/lib/libmmcamera_interface.so

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/spirit/prebuilt/common/bootanimation/1080.zip:system/media/bootanimation.zip
endif

$(call inherit-product, vendor/spirit/config/telephony.mk)
