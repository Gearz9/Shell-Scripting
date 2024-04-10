#!/bin/bash

# the script make user

# Script should be execute with sudo/root access
if [[ "${UID}" -ne 0  ]]
then 
	echo "Please run it with sudo or root."
	exit 1
fi

# User should provide atleast one argument as username else guide them
if [[ $# -lt 1 ]]
then
	echo "Usage: ${0} USER_NAME [COMMENT]..."
	echo "Create a user with name USER_NAME and comments field of COMMENT"
	exit 1
fi

#Store first argument as User Name
USER_NAME=$1

# In case of more than one argument, store it as account comments
shift
COMMENT="$@"

#Create a password
PASSWORD = $(date +%s%N)

#Create the User
useradd -c "$COMMENT" -m $USER_NAME

#Check if user is successfully created or not
if [[ $? -ne 0 ]]
then
	echo "The Account could not be created"
	exit 1 
fi

#Set password for the user
#passwd $PASSWORD $USER_NAME
echo $PASSWORD | passwd --stdin $USER_NAME

#Check if password successfully or not
if [[ $? -ne 0 ]]
then
	echo "Password could not be set"
	exit 1
fi

#Force password cahnge on first login.
passwd -e $USER_NAME
# -e flag -expires

#Display the username, password and the  host where the user was created
echo
echo "Username : $USER_NAME"
echo
echo "Password : $PASSWORD"
echo
echo "Hostname : $(hostname)"


