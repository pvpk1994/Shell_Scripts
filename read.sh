#!/bin/sh

# if read -p is used, then everything will be displayed in one line
# if read -sp is used, then what we are inputting is not visible, very useful 
# while typing passwords

read -p "Your Name:" NAME
read -sp "Your Age:" AGE

echo
echo "Name: $NAME, Age: $AGE"

# not a desired result, printing the first commented line of /etc/hosts file,
# need to address it
read HOSTNAME < /etc/hosts

echo "Hostname: $HOSTNAME"

# To do command substitutions 
CURRENT_DIR=$(pwd)

# Another way of command subs
CUR_DIR=`pwd`
echo "Script is run from: $CURRENT_DIR"
echo "New: $CUR_DIR"
