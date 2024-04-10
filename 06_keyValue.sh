#/bin/bash

# How to store key value pairs

declare -A map
map=([name]="Tushar Maurya" [age]=28 [city]="Nashik")

echo "key-valur pair : ${map[name]} "