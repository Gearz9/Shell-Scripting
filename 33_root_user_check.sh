#!/bin/bash

# check if the usesr is root or not

if [[ $UID -eq 0 ]]
then 
	echo "User is Root User"
else 
	echo "User is not root user"
fi


