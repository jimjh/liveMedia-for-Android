#!/bin/sh

export PATH="${NDK_ROOT}/toolchains/arm-linux-androideabi-4.4.3/prebuilt/darwin-x86/bin/:${PATH}"

SYS_ROOT="${NDK_ROOT}/platforms/android-8/arch-arm"
PREF="arm-linux-androideabi-"
export LD="${PREF}ld  --sysroot=${SYS_ROOT}"

./genMakefiles android
make

# SYS_ROOT="${NDK_ROOT}/platforms/android-8/arch-arm"
# PREF="arm-linux-androideabi-"
# 
# OUT_DIR="`pwd`/android-build"
# C_FLAGS="-lstdc++ -lsupc++ \
#         -I${NDK_ROOT}/sources/cxx-stl/gnu-libstdc++/include \
#         -I${NDK_ROOT}/sources/cxx-stl/gnu-libstdc++/libs/armeabi/include \
#         -L${NDK_ROOT}/sources/cxx-stl/gnu-libstdc++/libs/armeabi"
# 
# set -e
# 
# export CC="${PREF}gcc  --sysroot=${SYS_ROOT}"
# export CXX="${PREF}g++  --sysroot=${SYS_ROOT}"
# export LD="${PREF}ld  --sysroot=${SYS_ROOT}"
# export CPP="${PREF}cpp  --sysroot=${SYS_ROOT}"
# export AS="${PREF}as  --sysroot=${SYS_ROOT}"
# export OBJCOPY="${PREF}objcopy"
# export OBJDUMP="${PREF}objdump"
# export STRIP="${PREF}strip"
# export RANLIB="${PREF}ranlib"
# export CCLD="${PREF}gcc  --sysroot=${SYS_ROOT}"
# export AR="${PREF}ar"
# 
# cmake	\
# 		-DCMAKE_SYSTEM_NAME="Generic" \
#         -DCMAKE_CXX_FLAGS="${C_FLAGS}"\
# 		-DCMAKE_FIND_ROOT_PATH="${SYS_ROOT}" \
# 		-DCMAKE_INSTALL_PREFIX="${OUT_DIR}" . && \
# 		
# make && \
# make install
# 
# cd ${OUT_DIR}/lib && \
# ${AR} -x libjthread.a && \
# ${CXX} ${C_FLAGS} -shared -Wl,-soname,libjthread.so -o libjthread.so  *.obj && \
# rm *.obj

exit 0