#!/bin/bash

# break in a loop same as c++/java

for i in {1..10}
do 
	if [[ $i -eq 7  ]]
	then
		echo "Number Found"
		break
	fi

	echo " $i "
done

