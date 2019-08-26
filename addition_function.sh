#!/bin/bash

# Perform addition of 2 numbers through function 

function add {
 FIRST=$1 # As first is not having local tag, its update is visible outside the scope
local SEC=$2
let RES=FIRST+SEC
echo "RES: $RES"
let FIRST++
let SEC++
}

echo -n "Enter 1st number"
read FIRST
echo -n "Enter 2nd number"
read SEC
add $FIRST $SEC
echo "Printing Variables:"
echo "FIRST: $FIRST"
echo "SEC: $SEC"

