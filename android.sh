#!/bin/sh
# 
# Builds libraries for Android
# Written by Jiunn Haur Lim <jim@jh-lim.com>

export PATH="${NDK_ROOT}/toolchains/arm-linux-androideabi-4.4.3/prebuilt/darwin-x86/bin/:${PATH}"

SYS_ROOT="${NDK_ROOT}/platforms/android-8/arch-arm"
PREF="arm-linux-androideabi-"
export LD="${PREF}ld  --sysroot=${SYS_ROOT}"

./genMakefiles android
make

exit 0