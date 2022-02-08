#Write-Host "`nTLS Protocol"
#[Net.ServicePointManager]::SecurityProtocol

Write-Host "`nHost Info"
Get-Host

Write-Host "`nDownloading File"
Invoke-RestMethod -Method Get -Uri "https://appv-test-public-101.s3.us-west-004.backblazeb2.com/Ubuntu_1804.2019.522.0_x64.zip" -OutFile $env:temp\wsl-ubuntu.zip

Get-Item $env:temp\*.zip

# Remove temp file for next execution
Remove-Item $env:temp\*.zip