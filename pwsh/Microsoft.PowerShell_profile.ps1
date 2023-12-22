oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/zash.omp.json" | Invoke-Expression

Import-Module -Name Terminal-Icons

Set-Alias -Name touch -Value "C:\Program Files\Git\usr\bin\touch.exe"
Set-Alias -Name rm -Value "C:\Program Files\Git\usr\bin\rm.exe"
Set-Alias -Name mv -Value "C:\Program Files\Git\usr\bin\mv.exe"
Set-Alias -Name chmod -Value "C:\Program Files\Git\usr\bin\chmod.exe"
Set-Alias -Name sh -Value "C:\Program Files\Git\usr\bin\sh.exe"
