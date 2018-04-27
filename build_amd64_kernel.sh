#!/bin/sh
export KERNEL=GENERIC
cd ~/netbsd-src/sys/arch/amd64/conf
config $KERNEL && cd ../compile/$KERNEL && make clean && make depend && make -j2 && cp netbsd ~/netbsd-kernels/amd64

