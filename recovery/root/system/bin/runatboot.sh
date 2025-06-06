#!/system/bin/sh
setprop sys.usb.config mtp,adb
setenforce 0
mount /dev/block/bootdevice/by-name/mzlogfs /mzlogfs
mkdir -p /tmp/mz
mount /dev/block/bootdevice/by-name/mzlogfs /tmp/mz
logcat -f /mzlogfs/logcat.txt
dmesg -w > /mzlogfs/dmesg.txt
exit 0