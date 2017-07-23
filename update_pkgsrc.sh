#!/bin/sh

export CVS_RSH="ssh" && cd /usr/pkgsrc && cvs update -dP
