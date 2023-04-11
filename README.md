# enhanced-terminals
For 
- Windows PowerShell Customization
- bash for raspberry pi 

This repository contains a PowerShell profile that enhances and customizes the Windows PowerShell experience. The profile includes various modules to improve functionality, aesthetics, and productivity in the terminal.

## Installation Instructions

To install and configure the modules and settings provided in this profile, follow these steps:

1. Open a PowerShell session with administrator privileges.
2. Install the required modules by running the following commands:
   ```powershell
   Install-Module oh-my-posh -Scope CurrentUser
   Install-Module posh-git -Scope CurrentUser
   Install-Module PSReadLine -MinimumVersion 2.1.0 -Scope CurrentUser
   Install-Module PSFzf -Scope CurrentUser
   Install-Module Get-ChildItemColor -Scope CurrentUser
   Install-Module posh-docker -Scope CurrentUser
   ```

3. Open your PowerShell profile file in a text editor (e.g., Notepad) with the following command:
    ```powershell
    notepad $PROFILE
    ```
4. Copy the contents of the Microsoft.PowerShell_profile.ps1 file from this repository into your profile file. Save and close the file.

5. Restart the PowerShell session for the changes to take effect.


# Modules and Customizations
## oh-my-posh

- **Description**: oh-my-posh is a prompt theme engine that provides a customizable and feature-rich terminal experience.

- **Usage**: The profile sets the oh-my-posh theme to "powerlevel10k_classic" by default. You can uncomment and use other theme options such as "agnoster" or "paradox" as per your preference.

- **Benefits**: Enhances the aesthetics of the PowerShell prompt and provides visual information about the current session (e.g., Git status, path, etc.).


## posh-git

- **Description**: posh-git is a PowerShell module that provides Git status information in the prompt and tab completion for Git commands.

- **Usage**: Automatically displays Git status information in the prompt when in a Git repository.

- **Benefits**: Improves productivity by providing instant Git repository information and tab completion for Git commands.

## PSReadLine

- **Description**: PSReadLine is a module that provides syntax highlighting, predictive IntelliSense, and advanced editing capabilities in the PowerShell command-line environment.

- **Usage**: Enables syntax highlighting, predictive text based on command history, and menu-based autocompletion.

- **Benefits**: Enhances readability, reduces typing errors, and speeds up command entry by providing autocompletion suggestions.

## PSFzf

- **Description**: PSFzf is a fuzzy finder for PowerShell that allows interactive search for files, directories, command history, Git branches, and more.

- **Usage**: Use the fzf command to interactively search for files or directories, and use Invoke-FuzzyHistory to search command history.

- **Benefits**: Streamlines navigation and command entry by providing an interactive fuzzy search interface.

## Get-ChildItemColor

- **Description**: Get-ChildItemColor provides colorization for the output of the Get-ChildItem cmdlet (similar to the ls command in Unix-like systems).

- **Usage**: Use the Get-ChildItemColor or its alias ls to list items with colorization.

- **Benefits**: Improves readability and usability by color-coding different item types in directory listings.

## posh-docker

- **Description**: posh-docker provides tab completion for Docker commands in PowerShell.

- **Usage**: Start typing a Docker command and use the Tab key to autocomplete. For example, typing `docker i` and pressing Tab will autocomplete to `docker images`.
- **Benefits**: Improves efficiency when working with Docker commands by providing tab completion for command names, options, and arguments.

## Additional Customizations

- The `Set-PSReadLineOption` cmdlet is used to customize syntax highlighting colors in PSReadLine. Colors for string literals, command names, operators, parameters, and comments are defined.
- The `Set-PSReadLineOption -PredictionSource History` option enables predictive IntelliSense based on command history.
- The `Set-PSReadLineOption -Colors @{ InlinePrediction = [System.ConsoleColor]::Cyan }` option sets the color for predictive text. You can experiment with different colors to suit your preference.


## Summary

This profile enhances the Windows PowerShell experience by integrating several useful modules and customizations. The combination of oh-my-posh themes, posh-git integration, predictive IntelliSense, fuzzy searching, colored directory listings, and Docker command autocompletion results in a powerful and enjoyable command-line environment. Feel free to further customize the profile to suit your own workflow and preferences.

## Files

The script `Install-Profile.ps1` performs the following actions:

1. Installs the required modules using Install-Module cmdlets.
2. Defines the content to be added to the PowerShell profile file, including module imports and configurations.
3. Ensures the profile directory exists by checking and creating it if necessary.
4. Writes the defined content to the PowerShell profile file.
5. Displays a message indicating that the installation and configuration are complete and prompts the user to restart the PowerShell session.


## Windows Setup

To execute the PowerShell script that automates the installation of modules and sets up the profile configurations, follow these steps:

1. Save the script content to a `.ps1` file (e.g., `Install-Profile.ps1`).

2. Open a PowerShell session with administrator privileges. You can do this by searching for "PowerShell" in the Start menu, right-clicking on "Windows PowerShell," and selecting "Run as administrator."

3. Change the directory to the location where the `Install-Profile.ps1` file is saved. For example, if the file is saved in the `C:\Scripts` directory, use the following command:
   ```powershell
   cd C:\Scripts
   ```
4. Before running the script, you need to update the execution policy to allow scripts to run. Use the following command to set the execution policy to "RemoteSigned" (you can change it back later if needed):

   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope Process -Force
   ```
5. Execute the script using the following command:

   ```powershell
   .\Install-Profile.ps1
   ```
6. Once the script completes, you will see a message indicating that the installation and configuration were completed successfully. Close and restart your PowerShell session for the changes to take effect.


Note: This script will overwrite any existing content in your PowerShell profile file ($PROFILE). Make sure to back up the existing profile file before running the script if you have customizations you want to keep.

## Restoring the Execution Policy (Optional)

After successfully running the script, you may want to restore the execution policy to its original setting (e.g., "Restricted"). You can do this by running the following command:

```powershell
Set-ExecutionPolicy Restricted -Scope Process -Force
```

This will set the execution policy for the current PowerShell session back to "Restricted," which is the default setting that prevents running scripts. You can replace "Restricted" with any other execution policy setting based on your preference.

That's it! You have now automated the installation of modules and setup of profile configurations using the PowerShell script. Enjoy your enhanced and customized PowerShell experience!

> :warning: **_Warning:_** Restoring the execution policy is an optional security measure that helps prevent unauthorized and potentially malicious PowerShell scripts from running on your system. The default execution policy setting, "Restricted," does not allow running scripts. By restoring this setting, you limit the ability of scripts to execute without your explicit consent, which reduces the risk of inadvertently running harmful scripts. It's a best practice to use the least permissive execution policy that still allows you to perform your tasks. If you don't need to run unsigned scripts regularly, you may want to restore the execution policy to its original setting after running the installation script.

## Raspberry Pi OS (formerly Raspbian) Setup

For users of Raspberry Pi OS, we provide an equivalent Bash script to achieve similar customizations with `oh-my-zsh`, `powerlevel10k`, and other relevant tools.

### How to Set Up

1. Save the Raspberry Pi script content to a `.sh` file (e.g., `install-profile-pi.sh`).
2. Open a terminal session and navigate to the location where the `install-profile-pi.sh` file is saved.
3. Execute the script using the following command:
   ```bash
   chmod +x install-profile-pi.sh
   ./install-profile-pi.sh
   ```
4. Restart your terminal session for the changes to take effect.

### Modules and Customizations
- **oh-my-zsh**: A framework for managing your Zsh configuration. Provides themes and plugins for an enhanced terminal experience.
- **powerlevel10k**: A fast and customizable Zsh theme. It enhances the aesthetics of the prompt and provides visual information about the session.
- **zsh-autosuggestions**: A Zsh plugin that suggests commands based on your command history as you type.
- **zsh-syntax-highlighting**: A Zsh plugin that provides syntax highlighting for the command you're typing in the terminal.

## Ubuntu 20.04 Setup

For users of Ubuntu 20.04, we provide an equivalent Bash script to achieve similar customizations with `oh-my-zsh`, `powerlevel10k`, and other relevant tools.

### How to Set Up

1. Save the Ubuntu script content to a `.sh` file (e.g., `install-profile-ubuntu.sh`).
2. Open a terminal session and navigate to the location where the `install-profile-ubuntu.sh` file is saved.
3. Execute the script using the following command:
   ```bash
   chmod +x install-profile-ubuntu.sh
   ./install-profile-ubuntu.sh
   ```
4. Restart your terminal session for the changes to take effect.

## Modules and Customizations

- **oh-my-zsh**: A framework for managing your Zsh configuration. Provides themes and plugins for an enhanced terminal experience.
- **powerlevel10k**: A fast and customizable Zsh theme. It enhances the aesthetics of the prompt and provides visual information about the session.
- **zsh-autosuggestions**: A Zsh plugin that suggests commands based on your command history as you type.
- **zsh-syntax-highlighting**: A Zsh plugin that provides syntax highlighting for the command you're typing in the terminal.
