# SCOOP
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

scoop install git 
scoop install ripgrep
scoop install fzf

scoop bucket add extras
scoop install googlechrome
scoop install vscode
scoop install signal
scoop install discord
scoop install steam
scoop install obs-studio-small

# CHOCO
Set-ExecutionPolicy Bypass -Scope Process
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')
choco feature enable -n allowGlobalConfirmation

choco install spotify
choco install steelseries-engine
