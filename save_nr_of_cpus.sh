#!/bin/sh
#
# Saves number of CPUS in NR_OF_CPUS variable.

NR_OF_CPUS=$(sysctl -a |grep hw\.ncpuonline|sed 's/[^0-9]*//g')
echo $NR_OF_CPUS
