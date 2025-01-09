#!/bin/bash

# Directory containing log files
LOG_DIR=$1
# Number of days to keep log files
DAYS_TO_KEEP=$2

# Check if both arguments are provided
if [ -z "$LOG_DIR" ] || [ -z "$DAYS_TO_KEEP" ]; then
    echo "Usage: $0 <log_directory> <days_to_keep>"
    exit 1
fi

# Find and remove log files older than specified days
find "$LOG_DIR" -type f -name "*.log" -mtime +$DAYS_TO_KEEP -exec rm -f {} \;

echo "Log cleanup completed. Removed log files older than $DAYS_TO_KEEP days from $LOG_DIR."