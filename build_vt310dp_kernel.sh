#!/bin/sh
#export KERNEL=VT-310DP
export KERNEL=GENERIC
export KERNEL_HOME=$HOME/netbsd-kernels/i386
cd $HOME/netbsd-src/sys/arch/i386/conf
logtime > $KERNEL_HOME/starttime.txt
config $KERNEL && cd ../compile/$KERNEL && make clean && make depend && make -j2 && cp netbsd $KERNEL_HOME
logtime > $KERNEL_HOME/stoptime.txt
