#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:15841280:26e0bfee7420541db7457dac6c4333abc7a36626; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:11397120:13d614308f74892b849ce72a6d8f6a6a62d6642b EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 26e0bfee7420541db7457dac6c4333abc7a36626 15841280 13d614308f74892b849ce72a6d8f6a6a62d6642b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
