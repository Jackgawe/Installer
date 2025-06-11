$link = "https://github.com/Simcord/Installer/releases/latest/download/SimcordInstallerCli.exe"

$outfile = "$env:TEMP\SimcordInstallerCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
