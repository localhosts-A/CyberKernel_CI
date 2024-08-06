#!/bin/bash
args="-j$(nproc --all) \
O=out \
ARCH=arm64 \
CLANG_TRIPLE=aarch64-linux-gnu- \
CROSS_COMPILE=~/Clang/bin/aarch64-linux-gnu- \
CC=~/Clang/bin/clang \
CROSS_COMPILE_ARM32=~/Clang/bin/arm-linux-gnueabi- "
make ${args} lmi_defconfig
make ${args}
