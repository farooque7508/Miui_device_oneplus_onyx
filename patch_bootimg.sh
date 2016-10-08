#!/bin/bash

BOOTIMG=$1

rm -rf $TARGET_BOOT_DIR
mkdir -p $TARGET_BOOT_DIR
$UNPACKBOOTIMG -i $BOOTIMG -o $TARGET_BOOT_DIR > /dev/null

OLDCMDLINE=$(cat $TARGET_BOOT_DIR/boot.img-cmdline)
NEWCMDLINE="androidboot.selinux=permissive"
for prop in $OLDCMDLINE
do
  echo $prop | grep "androidboot.selinux=" > /dev/null
  if [ $? -eq 0 ];then
    continue
  fi
  NEWCMDLINE="$NEWCMDLINE $prop"
done

echo "NEWCMDLINE: $NEWCMDLINE"

BASEADDR=$(cat $TARGET_BOOT_DIR/boot.img-base)
PAGESIZE=$(cat $TARGET_BOOT_DIR/boot.img-pagesize)
RAMDISKOFFSET=$(cat $TARGET_BOOT_DIR/boot.img-ramdisk_offset)
TAGSOFFSET=$(cat $TARGET_BOOT_DIR/boot.img-tags_offset)

$MKBOOTIMG --kernel $TARGET_BOOT_DIR/boot.img-zImage --ramdisk $TARGET_BOOT_DIR/boot.img-ramdisk.gz --dt $TARGET_BOOT_DIR/boot.img-dt --base "$BASEADDR" --pagesize "$PAGESIZE" --ramdisk_offset "$RAMDISKOFFSET" --tags_offset "$TAGSOFFSET" --cmdline "$NEWCMDLINE" -o $BOOTIMG
