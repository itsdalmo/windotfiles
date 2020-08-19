# windotfiles

My setup for Windows.

## Installation

Run the installer from Powershell (with admin rights) then reboot:
```powershell
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://raw.github.com/itsdalmo/windotfiles/master/install.ps1')
```

After rebooting, complete the following manual steps:
- Open VS Code, install [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync) and configure it with personal access token (with `gist` scope) to sync.
- Install [Battle.net](https://www.blizzard.com/en-us/apps/battle.net/desktop).
