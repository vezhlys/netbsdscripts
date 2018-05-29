#!/bin/sh

cd /usr/pkgsrc &&
sudo fossil open /usr/pkgsrc/pkgsrc.fossil &&
sudo fossil pull &&
sudo fossil update --latest &&
sudo fossil close

