# bootanimation
PRODUCT_COPY_FILES += \
	device/lge/geeb/extras/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# general properties
PRODUCT_PROPERTY_OVERRIDES += \
	keyguard.no_require_sim=true \
	persist.sys.root_access=1

# enable ADB authentication if not on eng build
ifneq ($(TARGET_BUILD_VARIANT),eng)
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1
endif

# Backup Tool
PRODUCT_COPY_FILES += \
    device/lge/geeb/extras/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
    device/lge/geeb/extras/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
    device/lge/geeb/extras/prebuilt/bin/50-hosts.sh:system/addon.d/50-hosts.sh \
    device/lge/geeb/extras/prebuilt/bin/blacklist:system/addon.d/blacklist

# init.d support
PRODUCT_COPY_FILES += \
	device/lge/geeb/extras/prebuilt/etc/init.d/00banner:system/etc/init.d/00banner \
	device/lge/geeb/extras/prebuilt/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    device/lge/geeb/extras/prebuilt/etc/init.d/90userinit:system/etc/init.d/90userinit

# Init script file with extras
PRODUCT_COPY_FILES += \
    device/lge/geeb/extras/prebuilt/etc/init.local.rc:root/init.samuaz.rc
