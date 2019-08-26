#!/bin/sh

#start time measurement from here

START=$(date +%s)
CURRENT_DIR=$(pwd)
sleep 2 #sleeps 2 seconds
END=$(date +%s)

# end time measurement
DIFF=$(( END - START ))

echo # this echo is for extra line 
echo Time Elapsed: $DIFF seconds.
