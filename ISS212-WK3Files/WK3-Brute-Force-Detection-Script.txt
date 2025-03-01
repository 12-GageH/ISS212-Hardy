#ISS 212 CS Scripting - WK 3 - Assignment 3 Brute Force Detection Script
#Reference: ISS 212 - WK3-susaccess.py

def analyze_logs(log_file):
        suspicious_ips = {}
        #opens file for read and reads each line separately
        with open(log_file, 'r') as file:
            for line in file:
                if "401 - Failed login attempt" in line or "Suspicious activity detected" in line:
                    #Searches for suspicious activity, and separates each ip into its own entity
                    ip = line.split()[0]
                    #every occurence of a sus ip is recorded and summed up
                    suspicious_ips[ip] = suspicious_ips.get(ip, 0) + 1
        #Prints number of instances of a suspicious ip
        for ip, count in suspicious_ips.items():
            print(f"Suspicious Activity detected from {ip}: {count} occurences")

#sets sim_access.log as a variable to open
log_file = "sim_access.log"
analyze_logs(log_file)