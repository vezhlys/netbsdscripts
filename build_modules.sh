#!/bin/sh
#
# Builds kernel modules.

~/netbsd-src/./build.sh -j2 -T ../tools -O ../obj -uU modules
