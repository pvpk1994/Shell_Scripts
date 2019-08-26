#!/bin/sh

# AIM: read data from users and give them options to recheck if the provided 
#	data is correct


# ----------  AIM 2 ---------
# A script that will work with the paramters
# -f or --file that will provide info about the number of lines words and characters
# -h or --help will provide info usage message



echo -n "ENter your Name"
read NAME
echo -n "Enter your Age"
read AGE
echo -n "Enter your Department"
read DEPT

echo "You have entered the following:"
echo "Name: $NAME"
echo "Age: $AGE"
echo "Department: $DEPT"
CHECK=0
while [ $CHECK -eq 0 ]
do

echo -n "Are the details correct? [Y/N]"
read ANSWER

case "$ANSWER" in
   "Y"|"y" ) # Y or y is allowed 
		echo "Name: $NAME" 
		echo "Age: $AGE"
		echo "Department: $DEPT"
		echo "----------------"
		echo "Data has been saved"
		CHECK=1  # breaking out of the loop
		;;
  "N"|"n" )
		echo "Data is not saved"
		echo "----------------"
		CHECK=1 # breaking out of the loop
		;;
  * )
		echo "Only Y/y or N/n is allowed"
		echo "-------------------------"
		;;
esac

done
