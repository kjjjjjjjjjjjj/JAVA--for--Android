#!/bin/bash
set -e
if [ "$BUILD_IOS" == "1" ]; then
  export TARGET=aarch64-apple-ios
else
  export TARGET=aarch64-linux-android
fi
export TARGET_JDK=aarch64
export NDK_PREBUILT_ARCH=aarch64

bash ci_build_global.sh

