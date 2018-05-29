#!/bin/sh

cd /usr/pkgsrc &&
sudo fossil open pkgsrc.fossil &&
sudo fossil pull &&
sudo fossil update --latest &&
sudo fossil close -f

