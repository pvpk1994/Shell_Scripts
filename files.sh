#!/bin/bash

# ./files.sh [-l location] [--location location] [-e extension] [--extension extension] [-h] [--help]

function usage() {
	echo "USAGE: $0 [-l location] [--location location] [-e extension] [--extension extension] [-h] [--help]"
	echo "Examples:"
	echo "$0 -l /etc/ -e txt -s"
	echo "$0 -e img --stats"
	echo
	exit 1
}

LOC_SET=0 # 0 -> location not set, use current location | 1->location set by the user
STATS=0   # 0 -> do not display stats | 1-> display stats

while [ $# -gt 0 ]
do
	case $1 in
		-l|--location )
			LOCATION="$2"
			if ! [ -d "$LOCATION" ]; then
				usage
			fi
            LOC_SET=1
			shift
			shift
			;;

		-e|--extension )
			EXT="$2"
			shift
			shift
			;;

		-s|--stats )
			shift
			;;

		-h|--help )
			shift #throw away the argument 
			usage
			;;
		* )
			usage
			;;
	esac
done

if [ $LOC_SET -ne 1 ]; then
    # if location not specified -> use current directory
    LOCATION=$(pwd)
fi

echo "Location: $LOCATION"

# check if extension is present in the search
if [ "$EXT" != "" ]; then
    ls -l $LOCATION | awk '/^-/' | grep "\.$EXT$" &>/dev/null # want no output on screen, therefore redirect stdout to /dev/null
    if [ $? -ne 0 ]; then
        echo "No file with extension $EXT found"
        exit 2 # return with exit status 2
    fi
fi




