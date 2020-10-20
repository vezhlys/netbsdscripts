#!/bin/sh

export SQLITE_TMPDIR=$HOME
cd /usr/pkgsrc &&
fossil open --force pkgsrc.fossil &&
fossil update &&
fossil clean --keep distfiles/*,packages/*  -f &&
fossil close

