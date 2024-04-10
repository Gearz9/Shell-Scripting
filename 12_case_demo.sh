#!/bin/bash

echo "Provide an option"
echo "a for print date"
echo "b for list of scripts"
echo "c for current option"

read choice

case $choice in 
	a)
		echo "Today's Date is : "
		date
		echo "Ending ...."
		;;
		#in this way we can perfrom multiple things for a case
	b)ls;;
	c)pwd;;
	*) echo "Please provide a value";;
esac


