#!/bin/sh

set -e
set -u
set -x

echo "Start demo script"
uname -s

if [ "$(uname -s)" != "Linux" ]; then
	echo "OS not supported"
	exit 1
fi

if [ -f /etc/os-release ]; then
	. /etc/os-release
else
	echo "Linux info not found"
	exit 1
fi

if [ "$ID" != "centos" ]; then
	echo "Distro $ID not supported"
	exit 1
fi

echo 
