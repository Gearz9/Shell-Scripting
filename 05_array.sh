#!/bin/bash

myArray=(1 21 "my name is Tushar" 2 3 10.20 hi)

echo "Array 2nd element ${myArray[1]}"

echo "All values in the array are: ${myArray[*]} "

#how to print size of an array 
echo "Size of the array is ${#myArray[*]}"

# how to print specific values
echo "Values from index 2:3 ${myArray[*]:2:2}"

# updating array with new values
myArray+=( a 100 200)
echo "All values in the array are: ${myArray[*]} "

