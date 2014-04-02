#!/bin/bash

empty=$(find /var/up2date/sys -maxdepth 0 -empty -exec echo empty \;)

if [ "$empty" == "empty" ];
then
	echo "No up2dates available | up2date=no"
	exit 0
else
	echo "There are up2dates available! | up2date=yes"
	exit 1
fi
