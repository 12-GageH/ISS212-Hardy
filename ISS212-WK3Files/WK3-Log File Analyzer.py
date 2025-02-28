# #ISS 212 CS Scripting - WK 3 - Assignment 3 Log File Analyzer
#References: ISS 212 - WK3-logfileanalyzer.py

def analyze_logs(file_path, suspicious_ips):
    #Opens file
    with open(file_path, 'r') as file:
        #reads each line in the file
        for line in file:
            #Separates each Ip into separate entities
            for ip in suspicious_ips:
                #If listed suspicious IP found in line, returns the ip address and line with suspicious IP
                if ip in line:
                    print(f"Suspicious activity detected from {ip}: {line.strip()}")


#Sets list of suspicious ip addresses
suspicious_ips = ["199.203.100.13", "10.0.0.35", "192.168.1.50"]
log_file = "sim_auth.log"  #assigns file to a variable
analyze_logs(log_file, suspicious_ips)
