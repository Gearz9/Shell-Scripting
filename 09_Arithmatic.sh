#!/bin/bash

# Maths Calculation

x=10
y=2

multa=$x*$y

let a=$x*$y

echo "without using let keyword :  ${multa}"

echo "Using let keyword Varaiable a is : ${a}"


let a=$x+$y
echo "variable aginn a is : ${a}"

echo "Subtraction is $(($x-$y))"


echo "watch the code for the difference in syntax"
