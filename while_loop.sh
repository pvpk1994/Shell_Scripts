#!/bin/sh

# AIM: Create a script for printing files, which will display also line numbers
# Also check if provided argument is a file 

if [ $# -ne 1 ]; then
	echo "Exactly one argument"
	exit 1
fi
 

FILENAME=$1

if ! [ -f "$FILENAME" ]; then
	echo "There is no such file"
	exit 2
fi 

COUNT=1 # A counter for counting the numbers

cat "$FILENAME" |
while read line
do
	echo "$COUNT: $line"
	let COUNT++
done
# done < "$FILENAME"

