#! /vendor/bin/sh
optimg=$(getprop vendor.mslg.mslgoptimg)
if [[ $optimg == "/dev/block/loop"* ]]; then
  echo "has already losetup, nothing to do"
  exit 1
else
  optimgloop=`losetup -f`

  while  [[ $optimgloop != "/dev/block/loop"* ]]
  do
    sleep 1
    optimgloop=`losetup -f`
  done

  losetup -r $optimgloop /vendor/etc/assets/mslgoptimg
  setprop vendor.mslg.mslgoptimg $optimgloop

  usrimgloop=`losetup -f`
  while  [[ $usrimgloop != "/dev/block/loop"* ]]
  do
    sleep 1
    usrimgloop=`losetup -f`
  done

  losetup -r $usrimgloop /vendor/etc/assets/mslgusrimg
  setprop vendor.mslg.mslgusrimg $usrimgloop

fi
