#!/bin/bash

FILEPATH="/mnt/c/Users/Asus/Desktop/Shell Scripting/names.txt"

if [[ -f $FILEPATH  ]]
then 
	echo "File Exists"
else
	echo "File not exit "
	exit 1
fi

