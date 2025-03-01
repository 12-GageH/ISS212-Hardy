# ISS 212 CS Scripting - WK 4 - Scenario 3 Execution Policy Check
# Reference: ISS 212 WK4-Walkthrough

#Prompts user for input
Write-Host "Current Execution Policy: $(Get-ExecutionPolicy)"
if ((Get-ExecutionPolicy) -in "Unrestricted", "Bypass"){  #scans input for specific values
    Write-Host "WARNING: Your execution policy allows all scripts to run. Ensure you trust the source."
} elseif ((Get-ExecutionPolicy) -eq "Restricted"){
    Write-Host "Scripts cannot be executed on this system."
}