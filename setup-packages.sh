#!/bin/bash

cd "$(dirname "$0")"
source ./setup-setup.sh

sudo apt update && sudo apt full-upgrade -y

# Development
echoMsg "Installing development tools"
sudo apt install git -y
sudo apt install neovim -y
sudo apt install nodejs -y
sudo apt install npm -y
sudo apt install gh -y

# Java
echoMsg "Installing Java"
sudo apt install default-jre -y
sudo apt install default-jdk -y
sudo apt install openjdk-17-jdk -y

# Python
echoMsg "Installing Python"
sudo apt install pip -y
sudo apt install python3 -y

# Media
echoMsg "Installing media packages"
sudo apt install feh -y
sudo apt install vlc -y
xdg-mime default vlc.desktop audio/*
xdg-mime default vlc.desktop video/*
# https://github.com/yt-dlp/yt-dlp
sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp

# Environment
echoMsg "Installing environment packages"
sudo apt install btop -y
sudo apt install dmenu -y
sudo apt install gdebi -y
sudo apt install plasma-workspace-wayland -y
sudo apt install yakuake -y

# Misc
echoMsg "Installing misc packages"
sudo apt install lolcat -y
sudo apt install neofetch -y

if [[ "$*" == *--lite* ]]; then
    sudo apt upgrade -y
    sudo apt autoremove -y
    
    exit 1
else
    # Editing
    echoMsg "Installing image/video processing packages"
    sudo apt install gimp -y
    sudo apt install kdenlive -y

    echoMsg "Installing Steam and Discord"
    mkdir -p tmp
    sudo curl -L "https://cdn.akamai.steamstatic.com/client/installer/steam.deb" -o tmp/steam.deb && sudo gdebi tmp/steam.deb -n
    sudo curl -L "https://discord.com/api/download?platform=linux&format=deb" -o tmp/discord.deb && sudo gdebi tmp/discord.deb -n
    sudo rm tmp/discord.deb tmp/steam.deb
    sudo rm -f tmp

    sudo apt upgrade -y
    sudo apt autoremove -y
fi