#!/bin/sh
#
# Clones fossil pkgsrc repo https://pkgsrc.fossil.netbsd.org/. 
# It is assumed that fossil scm is installed already and /usr/pkgsrc folder already exists. Script should be executed using sudo.

export SQLITE_TMPDIR=$HOME
fossil clone https://pkgsrc.fossil.netbsd.org /usr/pkgsrc/pkgsrc.fossil &&
cd /usr/pkgsrc &&
fossil open /usr/pkgsrc/pkgsrc.fossil &&
fossil checkout --latest &&
fossil close

