#!/bin/bash

set -x 
# to access the argmax

if [[ $# -eq 0 ]] 
then
       echo "No arguments passed"	
	exit 1
fi

echo "First Argument is $1 "
echo "Second Argument is $2 "

echo "All the arguments are - $@ "
echo "Number of arguments are -$# "

# For loop to access the values from the arguments

for filename in $@ 
do
    echo "Copying File - $filename"
done
