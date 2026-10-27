# OrangeFox Recovery device tree for the Samsung Galaxy S10+ (beyond2lte)

| Device | Samsung Galaxy S10+ |
| :-- | :-- |
| Codename | beyond2lte |
| Models | SM-G975F, SM-G975F/DS, SM-G975N |
| SoC | Exynos 9820 |

Common tree: [android_device_samsung_exynos9820-common](https://github.com/Exynos982x-OrangeFox/android_device_samsung_exynos9820-common)

## Kernel

The prebuilt `Image` and `dtbo.img` are extracted from the official LineageOS 23.2 `recovery.img` of
2026-10-24 (sha256 `7965374982954e00a33cd95414d3310e73c85b2c6ad1827582d317667931dc01`), built from
[android_kernel_samsung_exynos9820](https://github.com/LineageOS/android_kernel_samsung_exynos9820/tree/a412cfaf86b980ce35cae96a35f678c8ea551575)
with `exynos9820-beyond2lte_defconfig`.

## Building

```sh
git clone https://gitlab.com/OrangeFox/sync.git
cd sync
./orangefox_sync.sh --branch 12.1 --path ~/fox_12.1

cd ~/fox_12.1
git clone -b fox_12.1 https://github.com/Exynos982x-OrangeFox/android_device_samsung_beyond2lte device/samsung/beyond2lte
git clone -b fox_12.1 https://github.com/Exynos982x-OrangeFox/android_device_samsung_exynos9820-common device/samsung/exynos9820-common

export FOX_BUILD_DEVICE=beyond2lte
source build/envsetup.sh
lunch twrp_beyond2lte-eng
mka adbd recoveryimage
```

The recovery image is written to `out/target/product/beyond2lte/`, along with an Odin-flashable `.tar`.
