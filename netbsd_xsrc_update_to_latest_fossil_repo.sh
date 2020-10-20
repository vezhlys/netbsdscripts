#!/bin/sh

export SQLITE_TMPDIR=$HOME
cd $HOME/netbsd-xsrc &&
fossil open --force netbsd-xsrc.fossil &&
fossil update -v &&
fossil clean -f -v &&
fossil close

