#!/bin/bash

sudo apt update && sudo apt full-upgrade -y

# Development
sudo apt install git -y
sudo apt install neovim -y
sudo apt install nodejs -y
sudo apt install npm -y
bash ./install_vscode.sh

# Media
sudo apt install vlc -y

# Editing
sudo apt install gimp -y
sudo apt install kdenlive -y

# Environment
sudo apt install dmenu -y
sudo apt install yakuake -y

# Misc
sudo apt install neofetch -y
sudo apt install lolcat -y

sudo apt upgrade -y
sudo apt autoremove -y
