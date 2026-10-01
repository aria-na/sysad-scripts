#!/bin/bash
# lab_seats.sh - Command Substitution and Aritmetic Operations
#              - Compute how many lab PCs are usable today

total_pcs=35
defective=3

#Arithmetic operations uses $(()), arithmetic does not consider decimals

working=$(( total_pcs - defective))
percent=$((working * 100 / total_pcs))

#Command Subtitution uses $(), this is for storing command output to var

today=$(date +%Y-%m-%d)
scripts=$(ls ~/sysad-scripts/*.sh | wc -l)

echo "Report Date    :$today"
echo "Working PCs    :$working of $total_pcs"
echo "Availability   :${percent}%"
echo "Total Scripts  :$scripts"
