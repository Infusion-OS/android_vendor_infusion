#
# This policy configuration will be used by all products that
# inherit from Lpop
#

BOARD_SEPOLICY_DIRS += \
    vendor/lpop/sepolicy

BOARD_SEPOLICY_UNION += \
service_contexts \
system.te
  

