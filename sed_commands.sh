#!/bin/bash
# sed commands

# to view contents from table.txt ending with "IT"
sed -n '/IT/p' table.txt # command p prints the text

# To remove lines containing IT and display the rest of the text
sed '/[[:space:]]IT/d' table.txt # d is for deleting the line(s) containing "IT"

# Mac Problems...

# to change / hide information in the txt
# sed '' '/IT/c Hidden Information for IT' table.txt # c - changes the info (Doesnt work in Mac)


# sed '/Name/e echo -n "Date: "; date' table.txt # e is used here to enable passing more commands

# SED-S (Substitute)
# s/regexpr/replacement/[flags]
# Search for string that match regular-expression. If found, replace matched string with replacement.

# Example: echo "one five three" | sed 's/five/two/'
echo "one five three" | sed 's/five/two/' # Replace five with two => one two three

echo "Anns is 50 years old" | sed 's/[[:digit:]]\+/***/' # Anns is *** years old

# sed substitute replaces only first occurrence leaving the others unmodified
echo "02905" | sed 's/0/1/' # expected: 1 2 9 0 5

# To apply the changes globally
echo "0 2 0 9 5" | sed 's/0/1/g' # g=> global tag

# Replace Aman with Siddharth using sed
sed '5s/Aman/Siddharth/' table.txt # Replace Aman in Line 5 by Siddharth

# To scan the whole table, find Arvindh and replace him with Nivedha
sed '1,$s/Arvindh/Nivedha/' table.txt # Replace Arvindh by Nivedha by scanning all the rows and cols

# To make inline changes to the input txt itself. use sed -i option
sed -i '1,$s/Agroo/Manvitha/' table.txt

# To hide persons age >=30 & <=99
sed 's/[3-9][[:digit:]]/***/' table.txt # Replaces age >=30 by ***

# To print a string with unknown chars multiple times
sed 's/CS/& & &/' table.txt # print CS 3 times every time it is encountered


