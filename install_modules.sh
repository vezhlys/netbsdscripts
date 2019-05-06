#!/bin/sh
#
# Install kernel modules. Assumption to run with sudo -E.


echo $HOME && cd $HOME/netbsd-src && ./build.sh -O ../obj -T ../tools -U installmodules=/
