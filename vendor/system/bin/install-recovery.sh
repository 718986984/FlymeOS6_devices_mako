#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 9123840 945ff620bcd7f34a0783c89aa67557bf44e466ae 6748160 e211a9233133e86641ba1417adb3aa6858e23e01
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9123840:945ff620bcd7f34a0783c89aa67557bf44e466ae; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:6748160:e211a9233133e86641ba1417adb3aa6858e23e01 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 945ff620bcd7f34a0783c89aa67557bf44e466ae 9123840 e211a9233133e86641ba1417adb3aa6858e23e01:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
