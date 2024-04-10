#!/bin/bash

# To create a user, provide username and description

echo "Creating user"
echo "Username is $1"

# what if the args are Tushar Test user for team
# description is Test user for team we can use "Test user for team"
# else use shift
shift
# shift removees the first argument 

echo "Description is $@"

