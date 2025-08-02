$date = Get-Date -Format "MM/dd/yyyy HH:mm:ss"
Add-Content -Path "C:\Scripts\log.txt" -Value "Task ran at $date"
