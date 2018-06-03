#!/bin/sh

cd /usr/pkgsrc &&
fossil open pkgsrc.fossil &&
fossil pull -v &&
fossil update -v &&
fossil close

