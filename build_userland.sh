#!/bin/sh

exe="./save_nr_of_cpus.sh"
NR_OF_CPUS=`$exe`
cd ~/netbsd-src/
logtime > ~/netbsdscripts/userland_start.txt
./build.sh -r -j$NR_OF_CPUS -O ../obj -T ../tools -U distribution
logtime > ~/netbsdscripts/userland_stop.txt
