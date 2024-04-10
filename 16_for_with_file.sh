#!/bin/bash

# getting values from the file

FILE="/mnt/c/Users/Asus/Desktop/Shell Scripting/names.txt"


for name in $( cat "$FILE" )
do
	echo "Name is $name"
done


