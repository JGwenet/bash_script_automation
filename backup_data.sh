#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -lt 2 ]; then
    echo "Usage: $0 BACKUP_DIR SOURCE_DIR1 [SOURCE_DIR2 ...]"
    exit 1
fi

# Backup destination
BACKUP_DIR="$1"
shift

# Directories to back up
SOURCE_DIRS=("$@")

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Loop through each source directory
for DIR in "${SOURCE_DIRS[@]}"; do
    # Check if the source directory exists
    if [ -d "$DIR" ]; then
        # Get the base name of the directory
        BASENAME=$(basename "$DIR")
        # Copy the directory to the backup location
        cp -r "$DIR" "$BACKUP_DIR/$BASENAME"
        echo "Backed up $DIR to $BACKUP_DIR/$BASENAME"
    else
        echo "Source directory $DIR does not exist. Skipping."
    fi
done