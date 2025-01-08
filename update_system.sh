#!/bin/bash

# This script automates system updates.

# Function to check for updates and install them
update_system() {
    echo "Checking for system updates..."

    # Update package list
    if command -v apt-get > /dev/null; then
        sudo apt-get update
        echo "Updating packages..."
        sudo apt-get upgrade -y
    elif command -v yum > /dev/null; then
        sudo yum check-update
        echo "Updating packages..."
        sudo yum update -y
    else
        echo "No supported package manager found. Please update your system manually."
        exit 1
    fi

    echo "System update completed."
}

# Execute the update function
update_system