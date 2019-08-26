#!/bin/bash

NUM=5

#do the number +5

# 1. Let showcase
let RES=NUM+5 #no spaces between any variable
echo "Result from let: $RES"

# 2. (())
RES=$(( NUM + 5 )) #spaces as specified has to be provided
echo "Result from brackets: $RES"

# 3. [ ]
RES=$[ NUM + 5 ] #spaces as specified 
echo "Result from sq brackets: $RES"

# 4. expr
RES=$(expr $NUM + 5)
echo "Result from expr: $RES"

# 5. bc - can operate floating points
RES=`echo "$NUM * 1.9" | bc`
echo "Result from Floating pt: $RES"

#--------------------------------------------------------

# PERFORM LITTLE TEDIOUS MATH OPERATIONS

#------------------------------------

echo -n "Enter First Number:" # -n means in the same line 
read FIRST

echo -n "Enter Second Number"
read SEC

# Let operation
let RES=FIRST+SEC
echo "Sum Res: $RES"

# bc operation - also supports floating point operations 
RES=`echo "$FIRST^$SEC" | bc`
echo "Result: $RES"


# ***** TO check exit statuses **** 
VAR=1

let VAR++
let VAR++
echo "var: $VAR"

let VAR++
let VAR++
echo "var: $VAR"
exit 1

let VAR++
let VAR++
echo "var: $VAR"


