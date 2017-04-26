#!/bin/sh

is_apache=`dpkg -l | grep apache2 | head -1`

if [ "$is_apache" == "" ]; then
	eval "sudo apt-get install apache2"
else
	echo "Apache Yes"
fi
