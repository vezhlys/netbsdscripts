#!/bin/sh
#
# Clones fossil NetBSD repo https://src.fossil.netbsd.org/. 
# It is assumed that fossil scm is installed already.

export NETBSD_SRC_HOME=$HOME/netbsd-src
export SQLITE_TMPDIR=$HOME
mkdir -p $NETBSD_SRC_HOME
fossil clone https://src.fossil.netbsd.org $NETBSD_SRC_HOME/netbsd-src.fossil &&
cd $NETBSD_SRC_HOME &&
fossil open netbsd-src.fossil &&
fossil checkout --latest &&
fossil close

