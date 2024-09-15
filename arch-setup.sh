#!/bin/bash

#Install yay
echo "Installing yay..."
sudo pacman -Sy --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
source ~/.bashrc
#Install GNU Stow
echo "Installing GNU Stow..."
sudo pacman -Sy stow
#Install zsh && oh-my-zsh
echo "Installing Zsh..."
sudo pacman -Sy zsh
chsh -s /usr/bin/zsh
echo "Installing other packages..."
yay -Sy oh-my-posh oh-my-zsh kitty neovim ranger zoxide fzf bat vesktop lazygit
#Oh-my-zsh plugins
echo "Installing zsh plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "Downloading config from https://github.com/dead-inside0/dotfiles"
git clone git@github.com:dead-inside0/dotfiles.git
cd dotfiles
rm -rf ~/.zshrc && stow .
