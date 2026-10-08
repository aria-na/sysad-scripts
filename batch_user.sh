#!/bin/bash
# previews which account the roster would create

roster="${1:-roster.csv}"

if [ ! -f "$roster" ]; then
	echo "Roster file '$roster' does not exists"
	exit 1
fi

count=0

while IFS=, read -r fullname username; do

	if id "$username" &> /dev/null; then
		echo "SKIP	$username (already exists)"
	else
		echo "CREATE	$username ($fullname)"
		count=$((count + 1))
	fi

done < "$roster"

echo "$count account(s) would be created."
