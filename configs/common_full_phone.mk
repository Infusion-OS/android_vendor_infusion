# Inherit common lpop stuff
$(call inherit-product, vendor/lpop/configs/common_full.mk)

# World APN list
PRODUCT_COPY_FILES += \
    vendor/lpop/prebuilts/common/system/etc/apns-conf.xml:system/etc/apns-conf.xml

# World SPN overrides list
PRODUCT_COPY_FILES += \
    vendor/lpop/prebuilts/common/system/etc/spn-conf.xml:system/etc/spn-conf.xml

# Selective SPN list for operator number who has the problem.
PRODUCT_COPY_FILES += \
    vendor/lpop/prebuilts/common/system/etc/selective-spn-conf.xml:system/etc/selective-spn-conf.xml

# Telephony packages
PRODUCT_PACKAGES += \
    Mms \
    Stk \
    CellBroadcastReceiver
