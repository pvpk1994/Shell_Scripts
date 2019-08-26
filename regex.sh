#!/bin/bash

# Aim: To provide one word/sentence as an arg to the script. In that sentence will be an IP addr,
# Find out, if that Ip address is reachable or not.

# Uses Regular Expressions

# Arg needed: one 

if [ $# -ne 1 ]; then
	echo "Provide exactly one argument"
	exit 1
fi

VAR=$1

# Ip address regular expression 127.0.0.1
REGEX="[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[[:digit:]]{1,3}"

# Regex error check

if ! [[ $VAR =~ $REGEX ]]; then
 	echo "No IP address provided"
	exit 2
fi

IP=${BASH_REMATCH[0]} # rematches the entire string

# find if IP address is reachable or not
ping -c4 $IP # c: means number of packets

if [ $? -eq 0 ]; then
	STATUS="ALIVE"
else
	STATUS="DEAD"
fi

echo "IP Found: $IP ($STATUS)"

