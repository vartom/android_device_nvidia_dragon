# gpu
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.locale=en-US \
    ro.boot.wificountrycode=US

#PRODUCT_PROPERTY_OVERRIDES += \
#    persist.vendor.tegra.gamma_correction=disabled \
#    persist.vendor.tegra.composite.policy=composite-yuv
#    persist.vendor.tegra.composite.policy=composite-always \
#    persist.vendor.tegra.compositor=surfaceflinger \
#    persist.vendor.tegra.composite.range=Auto
#    debug.sf.latch_unsignaled=1 \
#    debug.sf.disable_backpressure=1 \

# gpu     debug.composition.type=gpu \

#PRODUCT_PROPERTY_OVERRIDES += \
#    debug.sf.latch_unsignaled=1 \
#    debug.sf.disable_backpressure=1 \
#    persist.tegra.compositor=gldrawtexture \
#    persist.tegra.composite.policy=composite-yuv

  #  setprop persist.tegra.compression off
   # setprop persist.tegra.decompression disabled

  #  setprop persist.vendor.tegra.composite.policy composite-always
  #  setprop persist.vendor.tegra.compositor surfaceflinger
  #  setprop persist.vendor.tegra.composite.range Auto
#    debug.composition.type=gpu \

PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.tegra.composite.policy=composite-always \
    persist.vendor.tegra.compositor=surfaceflinger \
    persist.vendor.tegra.composite.range=Auto

