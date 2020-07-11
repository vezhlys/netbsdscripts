#!/bin/sh

export SQLITE_TMPDIR=$HOME
cd $HOME/netbsd-src &&
fossil open netbsd-src.fossil &&
fossil update &&
fossil clean -f -v &&
fossil close

