# Alias
Set-Alias -Name open -Value "explorer"
Set-Alias -Name vim -Value "nvim"
Set-Alias -Name code -Value "codium"

Set-Alias -Name touch -Value "C:\Program Files\Git\usr\bin\touch.exe"
Set-Alias -Name rm -Value "C:\Program Files\Git\usr\bin\rm.exe"
Set-Alias -Name mv -Value "C:\Program Files\Git\usr\bin\mv.exe"
Set-Alias -Name chmod -Value "C:\Program Files\Git\usr\bin\chmod.exe"
Set-Alias -Name sh -Value "C:\Program Files\Git\usr\bin\sh.exe"

# Variables
Set-Variable -Name vimrc -Value "C:\Users\morgan\AppData\Local\nvim"

# Prompt
function prompt {
    $currentUser = $env:USERNAME
    $currentHost = ($env:COMPUTERNAME).ToLower()

    $sep = [regex]::Escape([IO.Path]::DirectorySeparatorChar)
    $currentDirectory = $PWD.Path -replace ".*$sep"

    if ($PWD.Path -eq $HOME) {
        $currentDirectory = "~"
    }

        return "$currentHost" + ":" + "$currentDirectory $currentUser$ "
}

# PSReadLine
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History -EditMode Emacs
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
