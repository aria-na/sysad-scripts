#!/bin/bash
# args_demo.sh - to show what the script receives

echo "Script Name        : $0" #$0 = current file
echo "First Argument     : $1" #numbered passed data in the terminal
echo "Second Argument    : $2"
echo "Argument Count     : $#" # $# = count
echo "All Arguments      : $@" # $@ = all
