$DOTFILES_PATH = "$HOME/code/github.com/itsdalmo/dotfiles"
$DOTFILES_REPO = "git@github.com:itsdalmo/dotfiles.git"

Write-Host "Setting up scoop..."
if (-Not ( Get-Command scoop -errorAction SilentlyContinue)) {
    Set-ExecutionPolicy RemoteSigned -scope CurrentUser
    Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
    scoop bucket add extras
}

scoop install git 
scoop install ripgrep
scoop install fzf
scoop install googlechrome
scoop install vscode
scoop install signal
scoop install discord
scoop install steam
scoop install obs-studio-small

Write-Host "Setting up chocolatey..."
if (-Not ( Get-Command choco -errorAction SilentlyContinue)) {
    Set-ExecutionPolicy Bypass -Scope Process
    Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')
    choco feature enable -n allowGlobalConfirmation
}

choco install spotify
choco install steelseries-engine --limit-output
choco install twitch
choco install tukui

Write-Host "Configuring dotfiles.."
if (-Not ( Test-Path $DOTFILES_PATH -PathType Container)) {
    git clone $DOTFILES_REPO $DOTFILES_PATH
}

$dotfiles = @(".gitconfig", ".vimrc", ".gnupg/gpg.conf", ".gnupg/gpg-agent.conf")
foreach ($file in $dotfiles) {
    New-Item -ItemType SymbolicLink -Path "$HOME/$file" -Target "$DOTFILES_PATH/files/$file" -Force
}
