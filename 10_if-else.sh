#!/bin/bash

read -p "Enter Your Marks : " marks

# double square bracker [[]] instead of single square brackets [] is an enhanced version. so use double square brackets

if [[ $marks -gt 80 ]]
then
	echo "You are Passed"
elif [[ $marks -gt 70  ]]
then
	echo "Second Division"
else
	echo "You are Failed"
fi

