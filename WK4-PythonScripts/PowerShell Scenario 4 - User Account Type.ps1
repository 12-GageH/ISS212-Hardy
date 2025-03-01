# ISS 212 CS Scripting - WK 4 - Scenario 4 User Account Type
# Reference: ISS 212 WK4-Walkthrough

#Identifies if script is running with admin privileges
if (([System.Security.Principal.WindowsIdentity]::GetCurrent()).Groups -contains "S-1-5-32-544"){
    Write-Host "Administrator Privileges: Yes"
} else {
    Write-Host "Administrator Privileges: No"
}