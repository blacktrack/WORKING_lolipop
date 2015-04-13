#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9879552:6c3380cb349b7c9115bd7af992d05ea2ea50f516; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:9144320:82a9918a890e3af3760d954856865c94381221e8 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 6c3380cb349b7c9115bd7af992d05ea2ea50f516 9879552 82a9918a890e3af3760d954856865c94381221e8:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
