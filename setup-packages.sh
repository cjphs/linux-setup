#!/bin/bash

cd "$(dirname "$0")"
source ./setup-setup.sh

sudo apt update && sudo apt full-upgrade -y

aptInstall() {
    sudo apt install "$1" -y
}
upgradeAndClean() {
    sudo apt upgrade -y
    sudo apt autoremove -y
}

installEnvironment() {
    echoMsg "Installing environment packages"
    aptInstall btop
    aptInstall gdebi
    aptInstall plasma-workspace-wayland
    aptInstall yakuake
}
installDevelopment() {
    echoMsg "Installing development tools"
    aptInstall git
    aptInstall neovim
    aptInstall gh
}
installNode() {
    echoMsg "Installing Node"
    aptInstall nodejs
    aptInstall npm
}
installJava() {
    echoMsg "Installing Java"
    aptInstall default-jre
    aptInstall default-jdk
    aptInstall openjdk-17-jdk
}
installPython() {
    # Python
    echoMsg "Installing Python"
    aptInstall pip
    aptInstall python3
    alias python="python3"
}
installMedia() {
    echoMsg "Installing media packages"
    aptInstall feh
    aptInstall vlc
    xdg-mime default vlc.desktop audio/*
    xdg-mime default vlc.desktop video/*
    # https://github.com/yt-dlp/yt-dlp
    sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
    sudo chmod a+rx /usr/local/bin/yt-dlp
}
installMisc() {
    echoMsg "Installing misc packages"
    aptInstall lolcat
    aptInstall neofetch
}
installEditingTools() {
    echoMsg "Installing image/video processing packages"
    aptInstall gimp
    aptInstall kdenlive
}
installFun() {
    echoMsg "Installing Steam and Discord"
    mkdir -p tmp
    sudo curl -L "https://cdn.akamai.steamstatic.com/client/installer/steam.deb" -o tmp/steam.deb && sudo gdebi tmp/steam.deb -n
    sudo curl -L "https://discord.com/api/download?platform=linux&format=deb" -o tmp/discord.deb && sudo gdebi tmp/discord.deb -n
    sudo rm tmp/discord.deb tmp/steam.deb
    sudo rm -rf tmp
}

installEnvironment
installDevelopment
installNode
installJava
installPython
installMedia
installMisc

if [[ "$*" != *--lite* ]]; then
    installEditingTools
    installFun
fi

upgradeAndClean
