#!/bin/sh

cd /usr/pkgsrc &&
fossil open pkgsrc.fossil &&
fossil update -v &&
fossil clean -f -v &&
fossil close

