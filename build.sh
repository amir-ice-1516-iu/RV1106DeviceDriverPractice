export PATH=/home/luckfox/luckfox-pico/sysdrv/source/buildroot/buildroot-2023.02.6/output/host/bin:$PATH
export CROSS_COMPILE=arm-rockchip830-linux-uclibcgnueabihf-
export SYSROOT=/home/luckfox/luckfox-pico/sysdrv/source/buildroot/buildroot-2023.02.6/output/host/arm-buildroot-linux-uclibcgnueabihf/sysroot
export CFLAGS="--sysroot=$SYSROOT -I$SYSROOT/usr/include"
export CPPFLAGS="$CFLAGS"

make all