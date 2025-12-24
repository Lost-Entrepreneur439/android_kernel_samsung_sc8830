#!/bin/bash

export CROSS_COMPILE=../gcc4.8/bin/arm-eabi-
export ARCH=arm

make clean && make mrproper
clear
make lineage_goyavewifi_defconfig
make -s V=0 -j$(nproc)
cp arch/arm/boot/zImage /mnt/c/Users/murat/Downloads/Android\ Image\ Kitchen/split_img/boot.img-kernel
