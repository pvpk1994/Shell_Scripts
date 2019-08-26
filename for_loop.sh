#!/bin/sh

# for_loop.sh .txt files in the current directory add a new line with the currrent date and 
# first 5 lines of ps command

for FILE in *.txt
  do
	echo $(date) >> $FILE
	ps -ef | head -5 >> $FILE
	echo  ================= >> $FILE
  done


# Go through all the arguments and print them all 

COUNT=1

for ARG in "$@"
do
	echo "$COUNT. argument: $ARG"
	let COUNT++;
done

