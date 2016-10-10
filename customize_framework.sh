#!/bin/bash

OUT_MIUI_FRAMEWORK_DIR=$1
OUT_FRAMEWORK_DIR=$2

if [ "$OUT_FRAMEWORK_DIR" == "out/framework" ]; then
  rm -rf $OUT_FRAMEWORK_DIR/smali/android/widget/Editor*
  cp overlay/Editor/Editor*.smali $OUT_FRAMEWORK_DIR/smali/android/widget/
fi
