#!/bin/bash
args="-j$(nproc --all) \
O=out \
ARCH=arm64 \
CLANG_TRIPLE=aarch64-linux-gnu- \
CROSS_COMPILE=/home/runner/Clang/bin/aarch64-linux-gnu- \
CC=/home/runner/bin/clang \
CROSS_COMPILE_ARM32=/home/runner/bin/arm-linux-gnueabi- "
make ${args} lmi_defconfig
make ${args}
