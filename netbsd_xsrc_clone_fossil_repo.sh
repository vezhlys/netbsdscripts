#!/bin/sh
#
# Clones fossil NetBSD xsrc repo https://xsrc.fossil.netbsd.org/. 
# It is assumed that fossil scm is installed already.

export NETBSD_XSRC_HOME=$HOME/netbsd-xsrc
export SQLITE_TMPDIR=$HOME
mkdir -p $NETBSD_XSRC_HOME
fossil clone https://xsrc.fossil.netbsd.org $NETBSD_XSRC_HOME/netbsd-xsrc.fossil &&
cd $NETBSD_XSRC_HOME &&
fossil open netbsd-xsrc.fossil &&
fossil checkout --latest &&
fossil close

