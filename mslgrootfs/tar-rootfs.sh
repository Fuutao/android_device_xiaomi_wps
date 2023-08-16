#! /vendor/bin/sh
if [ -e "/data/vendor/mslg/rootfs/home/xiaomi/.config/Kingsoft/Office.conf" ]; then
mv /data/vendor/mslg/rootfs/home/xiaomi/.config/Kingsoft/Office.conf /data/vendor/mslg/rootfs/home/xiaomi/.config/Kingsoft/Office.conf_used
fi
if [ -e "/data/vendor/mslg/rootfs/home/xiaomi/.config/Kingsoft/WPSCloud.conf" ]; then
mv /data/vendor/mslg/rootfs/home/xiaomi/.config/Kingsoft/WPSCloud.conf /data/vendor/mslg/rootfs/home/xiaomi/.config/Kingsoft/WPSCloud.conf_used
fi

tar -xvf  /vendor/etc/assets/$1 -C /data/vendor/mslg/rootfs

if [ -e "/data/vendor/mslg/rootfs/home/xiaomi/.config/Kingsoft/Office.conf_used" ]; then
mv /data/vendor/mslg/rootfs/home/xiaomi/.config/Kingsoft/Office.conf_used /data/vendor/mslg/rootfs/home/xiaomi/.config/Kingsoft/Office.conf
fi
if [ -e "/data/vendor/mslg/rootfs/home/xiaomi/.config/Kingsoft/WPSCloud.conf_used" ]; then
mv /data/vendor/mslg/rootfs/home/xiaomi/.config/Kingsoft/WPSCloud.conf_used /data/vendor/mslg/rootfs/home/xiaomi/.config/Kingsoft/WPSCloud.conf
fi

setprop persist.vendor.unzip.mslgrootfs disable
