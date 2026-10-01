#!/bin/bash
# register.sh - collect details for a new lab account

#for user input we use the bash command read
#read -p = shows prompt in the same line
#read -s = hides what is typed
#syntax structure = read "prompt" variable

read -p "Enter Username:" username
read -p "Enter Section:" section
read -s -p "Enter Password:" password

echo "Account Request: $username ($section)"
echo "Password Length: ${#password} characters"
