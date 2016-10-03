#!/bin/bash

PWD=`pwd`
OUT_DIR=$PWD/out
TARGET_FILES_DIR=$OUT_DIR/target_files
TARGET_FILES_SYS_DIR=$TARGET_FILES_DIR/SYSTEM

#rm h2os themes
if [[ -d "$TARGET_FILES_SYS_DIR/media/themes" ]]; then
  echo "rm $TARGET_FILES_SYS_DIR/media/themes"
  rm -rf $TARGET_FILES_SYS_DIR/media/themes
fi
