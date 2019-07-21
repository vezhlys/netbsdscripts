#!/bin/sh
export KERNEL=GENERIC
cd ~/netbsd-src/sys/arch/amd64/conf
NR_OF_CPUS=$(sysctl -a |grep hw\.ncpuonline|sed 's/[^0-9]*//g')
config $KERNEL && cd ../compile/$KERNEL && make clean && make depend && make -j$NR_OF_CPUS && cp netbsd ~/netbsd-kernels/amd64

