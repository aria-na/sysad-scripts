#!/bin/bash
#turn sh files into executables

TARGET_DIR=${1:-.}

for file in "$TARGET_DIR"/*.sh; do

	[ -f "$file" ] || continue

	if [ -x "$file" ]; then
		echo "Skipped: $file is already an executable"
	else
		chmod +x "$file"
	fi
done
