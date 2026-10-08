#!/bin/bash
# compresses every .log file in the logs folder

cd ~/sysad-scripts/logs || exit 1

for f in *.log; do
	gzip "$f"
	echo "Compressed $f -> $f.gz"
	sleep .5
done

