#!/bin/bash

# &&-and || - or

read -p "What is your country ? " country

read -p "What is your age? : " age

if [[ $age -ge 18  ]] && [[ $country == "India"  ]] 
then
	echo "You can Vote"
else 
	echo "You cannot vote"
fi

num=15

[[ $num -ge 18 ]] && echo "Adult" || echo "Minor"
