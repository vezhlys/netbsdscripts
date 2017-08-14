#!/bin/sh
export KERNEL=VT-310DP
cd ~/netbsd-src/sys/arch/i386/conf
config $KERNEL && cd ../compile/$KERNEL && make clean && make depend && make && cp netbsd ~/netbsd-kernels/i386

