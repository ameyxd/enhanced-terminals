#!/bin/bash

# Project: enhanced-terminals
# Author: ameyxd
# Copyright (c) 2023 Amey Ambade
# Description: bash script for visual and usage improvements

# Install required packages
sudo apt-get update
sudo apt-get install -y git zsh fonts-powerline fzf

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install the powerlevel10k theme for oh-my-zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/themes/powerlevel10k

# Install zsh-autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/plugins/zsh-autosuggestions

# Install zsh-syntax-highlighting plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/plugins/zsh-syntax-highlighting

# Modify .zshrc file to enable theme and plugins
sed -i 's/^ZSH_THEME=.*$/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc
echo "plugins=(git zsh-autosuggestions zsh-syntax-highlighting)" >> ~/.zshrc
echo "source ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
echo "source ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

# Set Zsh as default shell
chsh -s $(which zsh)

echo "Installation and configuration completed successfully. Please restart your terminal session for the changes to take effect."

# #    Run the script in the terminal:
# #    chmod +x install-profile-ubuntu.sh
# #    #./install-profile-ubuntu.sh

# # Explain Shell here:
# # https://explainshell.com/explain?cmd=echo+%22plugins%3D%28git+zsh-autosuggestions+zsh-syntax-highlighting%29%22+%3E%3E+%7E%2F.zshrc