#!/bin/bash

# Description: This script automates the process of updating 
# multiple servers sequentially after user confirmation.

read -p "Do you want to update servers? (y/n): " f

if [ "$f" == "y" ]; then
    echo "Welcome, starting updates..."
    mkdir -p server_updates
    
    for server in 1 2 3
    do
        echo "Updating server number: $server"
        sleep 1
    done
    echo "All servers updated successfully."
else
    echo "Update cancelled. Not welcome."
    exit 1
fi
