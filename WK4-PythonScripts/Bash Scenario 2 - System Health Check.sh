#!/bin/bash
# ISS 212 CS Scripting - WK 4 - Scenario 2 System Health check
# Reference: ISS 212 WK4-Walkthrough

echo "System Uptime: $(uptime -p)" #returns system uptime
echo "Available Disk Space:"
df -h | grep '^/'
echo "Available RAM:"
free -m |awk 'NR==2{print $7 "MB free"}' #formats available ram return value