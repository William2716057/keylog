$Host.UI.RawUI.FlushInputBuffer()

Write-Host "Press any key to see its output. Press ESC to exit."

while ($true) {
    $key = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown").VirtualKeyCode
    
    if ($key -eq 27) { # ESC key
        Write-Host "Exiting..."
        break
    }
    
    Write-Host "Key Pressed: $([char]$key) (Code: $key)"
}
