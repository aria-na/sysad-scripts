#!/bin/bash
# this scripts checks whether if a user exist in the server

# The comparatives
# -eq = equal
# -ne = not equal
# -gt = greater than
# -ge = greater than/equal
# -lt = less than
# -le = less than/equal

# File testers
# -e = if a file exist
# -f = if it's a regular file
# -d = if it's a directory
# -r = if it's readable
# -w = if it's writtable
# -x = if it's executable
# -s = if it's not empty
# -L = if it's a symlink
# -z = if it's an empty string
# -n = non empty string

#=======================================================================================

# if [condition];then
#       body
# elif [condition];then
#       another body
# else
#       default
# fi

if [ $# -ne 1 ]; then
	echo "Usage: $0 <username_here>"
	exit 1
fi

if id "$1" &> /dev/null ; then
	echo "User '$1' exists"
else
	echo "User '$1' does not exist"
fi

