# ISS 212 CS Scripting - WK 3 - Assignment 3 sample script
#
# Be sure to cite your sources!

def analyze_logs(log_file):
    suspicious_ips = {}
    
    with open(log_file, 'r') as file:
        for line in file:
            if "401 - Failed login attempt" in line or "Suspicious activity detected" in line:
                ip = line.split()[0]
                suspicious_ips[ip] = suspicious_ips.get(ip, 0) + 1
    
    for ip, count in suspicious_ips.items():
        print(f"Suspicious activity detected from {ip}: {count} occurrences")

# Example usage
log_file = "sim_access.log"  # Replace with actual log file path if you make your own.
analyze_logs(log_file)
