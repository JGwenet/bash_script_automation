#!/bin/bash

# Directories to back up
SOURCE_DIRS=("/path/to/important/data1" "/path/to/important/data2")
# Backup destination
BACKUP_DIR="/path/to/backup/location"

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