#!/bin/sh

export SQLITE_TMPDIR=$HOME
cd $HOME/netbsd-xsrc &&
fossil open netbsd-xsrc.fossil &&
fossil update -v &&
fossil clean -fv &&
fossil close

