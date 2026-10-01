#!/bin/bash
#quote_demo.sh - Why quoting vars matters

mkdir -p quote_test && cd quote_test
file="lab report.txt"

touch "$file"
echo "With quotes touch created"
ls -1

rm -rf -- *

touch $file
echo "Without quotes touch created"
ls -1

cd .. && rm -rf quote_test
