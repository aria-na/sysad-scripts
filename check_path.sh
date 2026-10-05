#!/bin/bash
# check_path.sh describes where a path points to

target="$1"

if [ -d $target]; then
	echo "$target is a directory"
elif [ -f $target]; then
	echo "$target is a regular file"
else
	echo "$target does not exists"
fi
