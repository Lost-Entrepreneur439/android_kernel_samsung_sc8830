#!/bin/bash


export CROSS_COMPILE=../../../prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/arm-eabi-
export ARCH=arm

make clean && make mrproper
make lineage_goyavewifi_defconfig
make -j20



