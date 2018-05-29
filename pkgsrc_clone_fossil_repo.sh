#!/bin/sh
#
# Clones fossil pkgsrc repo https://pkgsrc.fossil.netbsd.org/. 
# It is assumed thatfossil scm is installed already and /usr/pkgscr folder is created.

sudo fossil clone https://pkgsrc.fossil.netbsd.org /usr/pkgsrc/pkgsrc.fossil &&
sudo fossil open /usr/pkgsrc/pkgsrc.fossil
cd /usr/pkgsrc &&
sudo fossil checkout --latest &&
sudo fossil close

