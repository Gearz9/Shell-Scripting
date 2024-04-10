#!/bin/bash


# This will also print the first line 
# while IFS="," read a b c
# do
# 	echo " id is : $a"
# 	echo " name is : $b"
# 	echo " age is : $c"
# done < test.csv




cat test.csv | awk 'NR!=1 {print}' | while IFS="," read a b c
do
	echo " id is : $a"
	echo " name is : $b"
	echo " age is : $c"
done