#!/bin/bash

sudo apt update && sudo apt full-upgrade -y

# Development
sudo apt install git -y
sudo apt install neovim -y
sudo apt install nodejs -y
sudo apt install npm -y
bash ./install-vscode.sh

# Java
sudo apt install default-jre -y
sudo apt install default-jdk -y
sudo apt install openjdk-17-jdk -y

# Python
sudo apt install python3 -y
sudo apt install pip -y

# Media
sudo apt install vlc -y
# https://github.com/yt-dlp/yt-dlp
sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp

# Editing
sudo apt install gimp -y
sudo apt install kdenlive -y

# Environment
sudo apt install dmenu -y
sudo apt install yakuake -y

# Misc
sudo apt install feh -y
sudo apt install neofetch -y
sudo apt install lolcat -y

sudo apt upgrade -y
sudo apt autoremove -y
