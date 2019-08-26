


#!/bin/bash

# Task is to make a backup of files from source: /Users/pavankumarpaluri/Documents/shell_programming/wildcards
# to  Destination: /Users/pavankumarpaluri/Documents/shell_programming/backup

# Also, script must take only one Argument i.e., /backup which is not yet created

SRC=/Users/pavankumarpaluri/Documents/shell_programming/wildcards

# Argument error check
if [ $# -ne 1 ]; then
	echo "Only one Argument Needed, run $0 destination-path"
	exit 1
fi

# Destination Path check
DEST=$1

if [[ $DEST != */backup ]]; then
	echo "Wrong Destination Path, Destination Path has to end with /backup"
	exit 2
fi

# Create Destination Folder
DATE=$(date +%Y-%m-%d_%H_%M_%S)
mkdir -p $DEST/$DATE

# copy from SRC TO DEST NOW
cp $SRC/*.pdf $DEST/$DATE

# test exit status 
if [ $? -eq 0 ]; then
	echo "Backup-Success"
else
	echo "Backup Failure"
fi

 
