#!/bin/bash
#ISS 212 CS Scripting - WK 3 - Assignment 3 File Permission Script
#Reference: WK3 - Fileperm.sh

echo "Scanning for files with world-writable permissions "
for file in *; do #checks all files
  if [ -f "$file" ]; then
    perms=$(ls -l "$file" | awk '{print $1}') #lists all files to iterate through
    #Scans through files, and determines if they have writable permissions
    if [[ "$perms" == *"w"* && "$perms" == *"rw-"* ]]; then
      echo "Warning: $file has writable permissions ($perms)." #prints if file has perms
    fi
  fi
done