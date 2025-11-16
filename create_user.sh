#!/bin/bash 

#Used for onboarding automation, managing Linux users.
USER=$1

if id "$USER" &>/dev/null; then
	echo "User $USER already exists."
else 
	sudo useradd "$USER"
	echo "User $USER created successfully."
fi 
