#!/bin/bash

STR1="hello Pav"
STR2="Hello Pav"

if [[ $STR1 = $STR2 ]]; then
	echo "Equal"
else
	echo "Not Equal"
fi


# to  show 3 lines of ls command only to root User
WHOAMI=$(whoami)

if [ "$WHOAMI" != "root" ]; then
	echo "You are not the root user,Sorry!"
	exit 1
fi

ls -l | head -3 # with this we ensure we only print first 3 lines of ls -l 
