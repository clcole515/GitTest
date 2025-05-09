# Check for the notepad.exe process and stop it if running
$notepadProcess = Get-Process -Name "notepad" -ErrorAction SilentlyContinue
if ($notepadProcess) {
    Stop-Process -Name "notepad" -Force
    Write-Host "Notepad process stopped."
} else {
    Write-Host "Notepad process not running."
}

# Create a file called myfile.txt with a short story
$story = @"
Once upon a time in a small village, there lived a kind old man who loved to tell stories. 
Every evening, children from the village would gather around him to listen to his tales of adventure and wonder.
One day, he told them about a magical forest where dreams came true, inspiring them to always believe in the power of imagination.
"@
$filePath = "myfile.txt"
Set-Content -Path $filePath -Value $story
Write-Host "File 'myfile.txt' created with a short story."

# Open the myfile.txt in Notepad
Start-Process -FilePath "notepad.exe" -ArgumentList $filePath
Write-Host "Opened 'myfile.txt' in Notepad."