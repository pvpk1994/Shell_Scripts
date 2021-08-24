#!/bin/bash

#  sed_script.sh
#  
#
#  Created by Pavan Kumar  Paluri  on 8/24/21.
#  
# ./sed_script.sh [file-path] [-f|--fix] [-h|--help]

function usage() {
    echo "Usage: $0 [file-path] [-f|--fix] [-h|--help]"
    exit 1
}

FIX=0 # if so, do not perform fix

if [ $# -eq 0 ]; then
    usage
fi

while [ $# -gt 0 ]
do
    case "$1" in
        -f | --fix )
            FIX=1
            shift # throw the arg for now.
            ;;
        -h | --help )
            usage
            shift
            ;;
        * )
            if [ -f "$1" ]; then
                FILE=$1
                shift
            else
                usage
            fi
            ;;
    esac
done

if [ $FIX -eq 1 ] && [ -f "$FILE" ]; then
    echo "Fixing Spaces and Tabs at the beginning and at the end"
    sed -i "s/[[:blank:]]\+$//" "$FILE" # Fix spaces at the end
    sed -i "s/^[[:blank:]]\+//" "$FILE" # Fix spaces in the beginning
    echo "DONE"
fi
            
# To display graphically spaced errors
if [ -f "$FILE" ]; then
    while IFS= read -r line # internal field separator
    do
    # If there is no space/tab issue, print the line
    # If space/tabs found at the beginning of the line, exit with status 7
    # if space/tabs found at the end of the line, exit with status 9
    echo "$line" | sed -e '/[[:blank:]]\+$/q9' -e '/^[[:blank:]]\+/q7' >/dev/null # No output, redirect to /dev/null
    
    # If no errors, print the line
    if [ $? -eq 0 ]; then
        echo "$line"
        continue # read next line
    fi
    
    done < "$FILE"
fi
