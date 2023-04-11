# Project: enhanced-terminals
# Author: ameyxd
# Copyright (c) 2023 Amey Ambade
# Description: PowerShell script for visual and usage improvements

# Install required modules
Install-Module oh-my-posh -Scope CurrentUser
Install-Module posh-git -Scope CurrentUser
Install-Module PSReadLine -MinimumVersion 2.1.0 -Scope CurrentUser
Install-Module PSFzf -Scope CurrentUser
Install-Module Get-ChildItemColor -Scope CurrentUser
Install-Module posh-docker -Scope CurrentUser

# Define the content to be added to the PowerShell profile file
$ProfileContent = @"
Import-Module oh-my-posh
Import-Module posh-git
Import-Module PSReadLine

Import-Module PSFzf

# Import the 'Get-ChildItemColor' module and create an alias for convenience
Import-Module Get-ChildItemColor
Set-Alias ls Get-ChildItemColor

Import-Module posh-docker

Set-PoshPrompt -Theme powerlevel10k_classic

# Customize syntax highlighting colors in PSReadLine
Set-PSReadLineOption -Colors @{
    String       = 'Magenta'
    Command      = 'Cyan'
    Operator     = 'Yellow'
    Parameter    = 'Green'
    Comment      = 'Gray'
}

Import-Module PSReadLine -MinimumVersion 2.1.0

Set-PSReadLineOption -PredictionSource History

# Additional PSReadLine options, such as enabling menu-based autocompletion
Set-PSReadLineOption -EditMode Windows -ShowToolTips

# Predictive Complete Color
Set-PSReadLineOption -Colors @{ InlinePrediction = [System.ConsoleColor]::Cyan }
"@

# Ensure the profile directory exists
$ProfileDirectory = Split-Path -Path $PROFILE -Parent
if (-not (Test-Path $ProfileDirectory)) {
    New-Item -ItemType Directory -Path $ProfileDirectory | Out-Null
}

# Write the content to the PowerShell profile file
Set-Content -Path $PROFILE -Value $ProfileContent

Write-Output "Installation and configuration completed successfully. Please restart your PowerShell session for the changes to take effect."
