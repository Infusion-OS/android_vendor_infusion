#
# This policy configuration will be used by all products that
# inherit from Lpop
#

BOARD_SEPOLICY_DIRS += \
    vendor/lpop/sepolicy

BOARD_SEPOLICY_UNION += \
    app.te \
    bootanim.te \
    file.te \
    file_contexts \
    mediaserver.te \
    service_contexts \
    system.te \
    zygote.te
