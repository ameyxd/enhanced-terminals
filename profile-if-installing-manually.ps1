Import-Module oh-my-posh
Import-Module posh-git
Import-Module PSReadLine

Import-Module PSFzf

# Import the 'Get-ChildItemColor' module and create an alias for convenience
Import-Module Get-ChildItemColor
Set-Alias ls Get-ChildItemColor

Import-Module posh-docker


# # Set the oh-my-posh theme (uncomment one of the theme options below)
# Set-PoshPrompt -Theme agnoster
# Set-PoshPrompt -Theme paradox
Set-PoshPrompt -Theme powerlevel10k_classic
# Set-PoshPrompt -Theme agnoster


# Customize syntax highlighting colors in PSReadLine
Set-PSReadLineOption -Colors @{
    String       = 'Magenta' # String literals
    Command      = 'Cyan'    # Command names
    Operator     = 'Yellow'  # Operators
    Parameter    = 'Green'   # Command parameters
    Comment      = 'Gray'    # Comments
}

Import-Module PSReadLine -MinimumVersion 2.1.0

Set-PSReadLineOption -PredictionSource History


# Additional PSReadLine options, such as enabling menu-based autocompletion
Set-PSReadLineOption -EditMode Windows -ShowToolTips

# # Predictive Complete Color
# Set-PSReadLineOption -Colors @{ InlinePrediction = [System.ConsoleColor]::Gray }
Set-PSReadLineOption -Colors @{ InlinePrediction = [System.ConsoleColor]::Cyan }
# Set-PSReadLineOption -Colors @{ InlinePrediction = [System.ConsoleColor]::Yellow }
