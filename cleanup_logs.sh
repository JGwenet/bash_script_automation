#!/bin/bash

# Directory containing log files
LOG_DIR="/var/log"
# Number of days to keep log files
DAYS_TO_KEEP=7

# Find and remove log files older than specified days
find "$LOG_DIR" -type f -name "*.log" -mtime +$DAYS_TO_KEEP -exec rm -f {} \;

echo "Log cleanup completed. Removed log files older than $DAYS_TO_KEEP days from $LOG_DIR."