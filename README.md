### How to use?

1. Clone this repo to `device/xiaomi/wps`

2. Inherit it from `device.mk` in device tree:

```
$(call inherit-product-if-exists, device/xiaomi/wps/config.mk)
```

3. Inherit it from `BoardConfig.mk` in device tree:

```
include device/xiaomi/wps/BoardConfig.mk
```
