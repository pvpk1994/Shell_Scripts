#!/bin/bash

# AIM: to iterate through the list of files and print all the text files in 
# directory and print besides them the number of characters of the file name
#  
ARRAY=($(ls *.txt))

COUNTER=0 # to keep track of the number
echo -e "FILE \t \t WRITEABLE"

for FILE in "${ARRAY[@]}" #includes all the files 
do
	echo -n $FILE
	echo -n "[${#ARRAY[$COUNTER]}]"
	# to check if the file is writable 
	if [ -w "$FILE" ]; then
		echo -e "\t YES"
	else
		echo -e "\t NO" 
	fi
let COUNTER++
done

