#!/bin/sh

cd /usr/pkgsrc &&
fossil open pkgsrc.fossil &&
fossil update -v &&
fossil clean --keep distfiles/*,packages/*  -f -v &&
fossil close

