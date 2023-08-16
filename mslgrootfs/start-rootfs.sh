#! /vendor/bin/sh
rm -rf /data/vendor/mslg/rootfs/home/xiaomi/core
export TMPDIR=/dev/msl/rdp
/vendor/bin/chroot /data/vendor/mslg/rootfs /bin/su - root <<EOF
/bin/MSLGd
EOF
