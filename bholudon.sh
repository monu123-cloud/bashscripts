#!/bin/bash
#list user and delete specific user

#!/bin/bash

# Display a list of all users on the system
echo "Listing all users:"
awk -F: '{ print $1 }' /etc/passwd

# Prompt for the username to delete
read -p "Enter the username you want to delete: " user

# Check if the user exists
if id "$user" &>/dev/null; then
    # Delete the user
    sudo userdel -r "$user"
    if [ $? -eq 0 ]; then
        echo "User '$user' has been deleted successfully."
    else
        echo "Failed to delete user '$user'."
    fi
else
    echo "User '$user' does not exist."
fi

