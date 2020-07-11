#!/bin/sh

cd /usr/pkgsrc &&
fossil open pkgsrc.fossil &&
fossil update &&
fossil clean --keep distfiles/*,packages/*  -f &&
fossil close

