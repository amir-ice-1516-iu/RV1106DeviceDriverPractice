# Name of the module
CFLAGS=-I/home/luckfox/luckfox-pico/sysdrv/source/buildroot/buildroot-2023.02.6/output/host/arm-buildroot-linux-uclibcgnueabihf/sysroot/usr/include
CPPFLAGS="$CFLAGS"
obj-m += hello.o

# Kernel directory and build directory
KDIR := /home/luckfox/luckfox-pico/sysdrv/source/kernel
PWD := $(shell pwd)

# Build the kernel module
all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules
	@echo "Module built in directory: $(PWD)"

# Clean the build artifacts
clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
	rm -f *.ko *.o *.mod *.mod.o *.mod.c *.symvers *.order
