#!/bin/sh

export SQLITE_TMPDIR=$HOME
cd $HOME/netbsd-src &&
fossil open netbsd-src.fossil &&
fossil update -v &&
fossil clean -fv &&
fossil close

