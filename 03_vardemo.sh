#!/bin/bash


#Script to show variables


a=10
name="Tushar Maurya"
age=28
echo "$name"

hostname=$(hostname)

echo "Name of the host machine is $hostname"

readonly const="constant variable "

echo "${const}"