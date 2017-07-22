#!/bin/sh
export KERNEL=GENERIC
cd ~/netbsd-src/sys/arch/amd64/conf
config $KERNEL && cd ../compile/$KERNEL && make depend && make && cp netbsd ~/netbsd-kernels/amd64

