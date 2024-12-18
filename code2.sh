#!/bin/bash

# Prompt for the group name
read -p "Enter group name: " group

# Create the group
sudo groupadd "$group"

# Prompt for the username
read -p "Enter username: " user

# Create the user and add the user to the specified group
sudo useradd -m -G "$group" "$user"

# Set a password for the user (optional)
sudo passwd "$user"

echo "User '$user' created and added to group '$group'."

list= cat /etc/passwd | grep $user
echo $list
