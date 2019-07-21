#!/bin/sh

export SQLITE_TMPDIR=$HOME
cd $HOME/netbsd-src &&
fossil open netbsd-src.fossil &&
fossil pull -v &&
fossil update -v &&
fossil close

