#!/bin/bash

function hello 
{
  name=$1
  echo "Name: $name"
}
echo "Enter your name"
read name
hello Peter
echo $name
