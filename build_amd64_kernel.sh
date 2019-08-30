#!/bin/sh
export KERNEL=GENERIC
exe="./save_nr_of_cpus.sh"
NR_OF_CPUS=`$exe`
cd ~/netbsd-src/sys/arch/amd64/conf
config $KERNEL && cd ../compile/$KERNEL && make clean && make depend && make -j$NR_OF_CPUS && cp netbsd ~/netbsd-kernels/amd64

