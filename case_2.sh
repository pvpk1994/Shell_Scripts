#!/bin/bash
# ----------  AIM 2 ---------
# A script that will work with the paramters
# -f or --file that will provide info about the number of lines words and characters
# -h or --help will provide info usage message

while [ $# -gt 0 ]
do
   case "$1" in 
	  "-h"|"--help" )
		echo "Usage $0 [-h] [--help] [-file] [--file file]"
		shift # throw away parameter
		exit 1
		;;
          "-f"|"--file" )
		FILE=$2
		if ! [ -f "$FILE" ]; then
			echo "File does not exist"
			exit 2
		fi
		
		LINE=`cat "$FILE" | wc -l`
		WORDS=`cat "$FILE" | wc -w`
		CHAR=`cat "$FILE" | wc -m`
             
		echo "----- FILE INFO ------"
		echo "Lines: $LINE"
		echo "Words: $WORDS"
		echo "Characters: $CHAR"
		shift # throw away paramters argument
		shift # throw away parameter's value 
		;;

	* )
		echo "Usage $0 [-h] [--help] [-file] [--file file]"
		exit 1
		;;
   esac
done
