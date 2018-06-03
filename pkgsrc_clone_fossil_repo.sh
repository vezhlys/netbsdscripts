#!/bin/sh
#
# Clones fossil pkgsrc repo https://pkgsrc.fossil.netbsd.org/. 
# It is assumed that fossil scm is installed already and /usr/pkgscr folder is created.

fossil clone https://pkgsrc.fossil.netbsd.org /usr/pkgsrc/pkgsrc.fossil &&
cd /usr/pkgsrc &&
fossil open /usr/pkgsrc/pkgsrc.fossil &&
fossil checkout --latest &&
fossil close

