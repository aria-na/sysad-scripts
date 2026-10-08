#!/bin/bash
# determines the type of day

case "$1" in
	mon|tue|wed|thu|fri) echo "weekday" ;;
	sat|sun)	     echo "weekend" ;;
	*)		     echo "invalid day"
	exit 1;;
esac
