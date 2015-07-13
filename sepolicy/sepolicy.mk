#
# This policy configuration will be used by all products that
# inherit from Infusion
#

BOARD_SEPOLICY_DIRS += \
    vendor/infusion/sepolicy

BOARD_SEPOLICY_UNION += \
    app.te \
    bootanim.te \
    file.te \
    file_contexts \
    mediaserver.te \
    service_contexts \
    system.te \
    zygote.te