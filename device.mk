$(call inherit-product, device/nvidia/foster/device.mk)



PRODUCT_AAPT_CONFIG := normal large xlarge
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_AAPT_PREBUILT_DPI := xhdpi

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/comms/bt_vendor.conf:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth/bt_vendor.conf \
    $(LOCAL_PATH)/comms/BCM4350C0.hcd:$(TARGET_COPY_OUT_VENDOR)/firmware/bcm4350.hcd \
    $(LOCAL_PATH)/comms/bpmp.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/tegra210/bpmp.bin \
    $(LOCAL_PATH)/comms/bpmp.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/bpmp.bin \
    $(LOCAL_PATH)/comms/bpmp.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/tegra21x/bpmp.bin \
    $(LOCAL_PATH)/comms/tegra_lp0_resume.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/tegra210/tegra_lp0_resume.fw \
    $(LOCAL_PATH)/comms/nvram_smaug_4354.txt:$(TARGET_COPY_OUT_VENDOR)/firmware/nvram_smaug_4354.txt

DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# for dragon keypad
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dragon-keypad.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/dragon-keypad.kl

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.device_admin.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.device_admin.xml \
    frameworks/native/data/etc/android.software.managed_users.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.managed_users.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/tablet_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \

# for audio dragon
#PRODUCT_COPY_FILES += \
#    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
#    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
#    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
#    $(LOCAL_PATH)/media/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
#    $(LOCAL_PATH)/media/audio_policy_volumes_drc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes_drc.xml \
#    $(LOCAL_PATH)/media/mixer_paths_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_0.xml \
#    $(LOCAL_PATH)/media/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
#    $(LOCAL_PATH)/media/speakerdsp.ini:$(TARGET_COPY_OUT_VENDOR)/etc/cras/speakerdsp.ini


# for audio NV
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/media/dragon_nvaudio_conf.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dragon_nvaudio_conf.xml

# for audio dragon
#PRODUCT_PACKAGES += \
#    audio.primary.dragon \
#    sound_trigger.primary.dragon \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/libnvoicefx.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libnvoicefx.so \
    $(LOCAL_PATH)/audio/nvadma_tx.elf:$(TARGET_COPY_OUT_VENDOR)/firmware/nvadma_tx.elf \
    $(LOCAL_PATH)/audio/nvadma.elf:$(TARGET_COPY_OUT_VENDOR)/firmware/nvadma.elf \
    $(LOCAL_PATH)/audio/nvaacdec.elf:$(TARGET_COPY_OUT_VENDOR)/firmware/nvaacdec.elf \
    $(LOCAL_PATH)/audio/nvsrc.elf:$(TARGET_COPY_OUT_VENDOR)/firmware/nvsrc.elf \
    $(LOCAL_PATH)/audio/nvspkprot.elf:$(TARGET_COPY_OUT_VENDOR)/firmware/nvspkprot.elf \
    $(LOCAL_PATH)/audio/nvapm.elf:$(TARGET_COPY_OUT_VENDOR)/firmware/nvapm.elf \
    $(LOCAL_PATH)/audio/nvoice.elf:$(TARGET_COPY_OUT_VENDOR)/firmware/nvoice.elf \
    $(LOCAL_PATH)/audio/nvmp3dec.elf:$(TARGET_COPY_OUT_VENDOR)/firmware/nvmp3dec.elf \
    $(LOCAL_PATH)/audio/libnvaecfx.elf:$(TARGET_COPY_OUT_VENDOR)/firmware/libnvaecfx.elf

# System properties
include $(LOCAL_PATH)/system_prop.mk

$(call inherit-product, build/target/product/vboot.mk)
