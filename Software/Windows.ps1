Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
New-Item ~\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
choco feature enable -n allowGlobalConfirmation
choco upgrade chocolatey --force
refreshenv
choco install 7zip --pre 
choco install vivaldi office-tool vlc files imageglass microsoft-windows-terminal
