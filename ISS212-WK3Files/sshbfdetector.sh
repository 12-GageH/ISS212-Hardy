#!/bin/bash

#ISS 212 CS Scripting - WK 3 - Assignment 3 SSH Brute-Force Log Analysis
#Reference: WK3-sshbfdetector.sh

log_file="sim_auth.log"
#creates list of sus ips
suspicious_ips=("199.203.100.13" "10.0.0.35" "192.168.1.50")

#Reads each line in the file
while IFS= read -r line; do
  for suspicious_ips in "${suspicious_ips[@]}"; do
    #Compares line to list of sus ips and returns line if a match
    if [[ "$line" == *"$suspicious_ips"* ]]; then
      echo "Suspicious activity detected: $line"
    fi #close if statement
  done
done < "$log_file"