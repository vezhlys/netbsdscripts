#!/bin/sh
#
# Builds VT-310DP kernel configuration (should be copied from the same repo to sys/arch/i386/conf
# 

export KERNEL=VT-310DP
export KERNEL_HOME=$HOME/netbsd-kernels/i386
exe="./save_nr_of_cpus.sh"
NR_OF_CPUS=`$exe`
cd $HOME/netbsd-src/sys/arch/i386/conf
logtime > $KERNEL_HOME/starttime.txt
config $KERNEL && cd ../compile/$KERNEL && make clean && make depend && make -j$NR_OF_CPUS && cp netbsd $KERNEL_HOME
logtime > $KERNEL_HOME/stoptime.txt
