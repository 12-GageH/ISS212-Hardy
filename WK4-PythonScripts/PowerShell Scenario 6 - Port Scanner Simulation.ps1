# ISS 212 CS Scripting - WK 4 - Scenario 6 Port Scanner
# Reference: ISS 212 WK4-Walkthrough

#prompts user for input
$ip = Read-Host "Enter IP Address"
$ports = @(22, 80, 443) #defines ports
foreach ($port in $ports){ #Determines which ports in the array are open or closed
    $result = Test-NetConnection -ComputerName $ip -Port $port -WarningAction SilentlyContinue
    if($result.TcpTestSucceeded)
    {
        Write-Host "Port $port :  OPEN"
    } else {
        Write-Host "Port $port : CLOSED"
    }
}