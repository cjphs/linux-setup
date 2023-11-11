#!/bin/bash

sudo apt update && sudo apt full-upgrade -y

# Development
sudo apt install git -y
sudo apt install neovim -y
sudo apt install nodejs -y
sudo apt install npm -y
sudo apt install gh -y

# Java
sudo apt install default-jre -y
sudo apt install default-jdk -y
sudo apt install openjdk-17-jdk -y

# Python
sudo apt install pip -y
sudo apt install python3 -y

# Media
sudo apt install feh -y
sudo apt install vlc -y
# https://github.com/yt-dlp/yt-dlp
sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp

# Editing
sudo apt install gimp -y
sudo apt install kdenlive -y

# Environment
sudo apt install dmenu -y
sudo apt install gdebi -y
sudo apt install plasma-workspace-wayland -y
sudo apt install yakuake -y

sudo curl -L "https://discord.com/api/download?platform=linux&format=deb" -o discord.deb && sudo gdebi discord.deb -n
sudo rm discord.deb

# Misc
sudo apt install lolcat -y
sudo apt install neofetch -y

sudo apt upgrade -y
sudo apt autoremove -y
