#!/bin/bash
#bash script to create user and group

echo "Enter new user Name"
read -p "New User :" user
useradd $user

echo "Enter new Group Name"
read -p "New User :" group
useradd $group

variable="abcd"


