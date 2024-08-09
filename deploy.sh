#!/bin/bash

# Define the source and destination directories
SOURCE_DIR="root"
DEST_DIR="/mnt/hdd-alpha"

# Check if the destination directory exists
if [ ! -d "$DEST_DIR" ]; then
  echo "Error: Destination directory $DEST_DIR does not exist."
  exit 1
fi

# Copy the directory structure (but not the files) from SOURCE_DIR to DEST_DIR
find "$SOURCE_DIR" -type d | while read dir; do
  mkdir -p "${DEST_DIR}${dir#$SOURCE_DIR}"
done

echo "Directory structure copied to $DEST_DIR"
