#!/bin/bash
#
#Reference: WK3-portscanner.sh
#Asks user for input
read -p "Enter Target IP address: " target_ip
read -p "Enter starting port:" start_port
read -p "Enter ending port:" end_port
#takes inputted values to scan
echo "Scanning open ports on $target_ip from $start_port to $end_port..."
for port in $(seq $start_port $end_port); do
    #calls on powershell
    result=$(pwsh -Command "((New-Object System.Net.Sockets.TcpClient).Connect")
    if [[ "4result" == "open" ]]; then #determines if any ports are open
      echo "Port $port is open"
    fi
done