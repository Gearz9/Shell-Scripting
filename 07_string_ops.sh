#!/bin/bash

myVar="Hey what's up  bro"

echo "length of myVar is ${#myVar}"

echo "Upper Case is ------ ${myVar^^}"
echo "Lower Case is ------ ${myVar,,}"

# to replace String
newVar=${myVar/Hey/Hello}
echo "newVar with replace string ------ ${newVar} "

# slciing
slice=${myVar:0:3}
echo "slice string ----- ${slice}"