# TWRP device tree for Meizu 21Pro

Meizu 21Pro (codenamed _"m2481"_) is a high-end smartphone from Meizu.

It was announced & released on January 2024.

## Device specifications

Basic   | Spec Sheet
-------:|:-------------------------
SoC     | Snapdragon® 8 Gen 3 (SM8650)
CPU     | Octa-core CPU with 1x Cortex-X4 & 5x Cortex-A720 & 2x Cortex-A520
GPU     | Qualcomm® Adreno™ 750
Memory  | 12/16GB RAM (LPDDR5X)
Shipped Android Version | 14.0 with Flyme 10
Storage | 256/512GB
Battery | 5050mAh(typ), non-removable
Display | 1368x3192, 6.79", AMOLED, 1-120Hz dynamic, 1250nits peak brightness
Camera  | 50MP (main), 10MP (floating telephoto), 13MP (ultra-wide), 32MP (front)

## Features
Not works:
You tell me.

Works:
- [X] ADB
- [X] Display
- [X] Vibrator
- [X] Flashing
- [X] Sideload
- [X] Fasbootd
- [X] MTP
- [X] USB OTG
- [X] Decryption

## Build it yourself
```
mkdir twrp && cd twrp
repo init --depth=1 -u https://github.com/TWRP-Test/platform_manifest_twrp_aosp.git -b twrp-16.0
repo sync
git clone --depth=1 https://github.com/adontoo/device_meizu_m2481-TWRP device/meizu/m2481
```

Fix touch screen mapping -> [commit](https://github.com/adontoo/android_bootable_recovery_twrp-14.1/commit/262b9affa0d40ebae92c1878a69005a7269aca06)

```
source build/envsetup.sh
lunch twrp_m2481
m recoveryimage
```

If there is no error, recovery.img will be found in out/target/product/m2481/recovery.img

## How to use it

```
fastboot flash recovery_a out/target/product/m2481/recovery.img
fastboot flash recovery_b out/target/product/m2481/recovery.img
```

## Device picture

![Meizu 21Pro](https://fms.res.meizu.com/dms/2024/02/29/7d591b01-952f-4819-846d-379603a22221.png)

## Donate Link(This device tree is modify from YukongA dada )
https://afdian.com/a/YuKongA
