#!/bin/sh
#
# see security(7) - Protection against NULL pointer dereferences for more info. 

sysctl -w vm.user_va0_disable=0
