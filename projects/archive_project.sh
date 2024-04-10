#!/bin/bash
#$Revision:001$
#$Saturday, April 6, 2024 10:07:46 AM

# This script will compress and move files in archive folder, of sizes >20MB 

# Variables
BASE="/mnt/c/Users/Asus/Desktop/Shell Scripting/projects"
DAYS=10
DEPTH=1
RUN=0

# Check if the directory is present or not
if [[ ! -d "$BASE" ]]; then
    echo "Directory does not exist: $BASE"
    exit 1
fi

# Create 'archive' folder if not present
if [[ ! -d "$BASE/archive" ]]; then 
    mkdir -p "$BASE/archive" || exit 1
fi

# Find the list of files larger than 20MB
for i in $(find "$BASE" -maxdepth "$DEPTH" -type f -size +20M); do
    if [[ $RUN -eq 0 ]]; then
        echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $BASE/archive"
        gzip "$i" || exit 1
        mv "$i.gz" "$BASE/archive" || exit 1
    fi
done


# CRONTAB to automate or SCRIPT

# crontab -e
# 05 01 * * * /mnt/c/Users/Asus/Desktop/Shell\ Scripting/projects/archive_project.sh
