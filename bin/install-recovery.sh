#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:16194760:af04f048baded0e79ade870a8b081674554bd2f7; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:10300612:bed86889253f4cd72edecd957fb46bc591705103 EMMC:/dev/block/bootdevice/by-name/recovery af04f048baded0e79ade870a8b081674554bd2f7 16194760 bed86889253f4cd72edecd957fb46bc591705103:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
