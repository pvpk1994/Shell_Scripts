#!/bin/bash

# exit the script if there is more or less than the exact 2 args
if [ ! $# -eq 2 ]
  then
	echo "2 Args needed"
	exit 1
fi

FIRST=$1
SEC=$2

let RES=FIRST*SEC
if [ $? -ne 0 ]; then
	echo "Integers needed"
	exit 2
else
	echo "Result is:$RES"
fi
  


