#!/bin/bash
# repeats an action in a fix number of times

attempt=1

while [ $attempt -le 3 ]; do
	echo "Attempt $attempt of 3: checking the backup..."
	attempt=$((attempt + 1))
	sleep .5
done

echo "Finished Checking"
