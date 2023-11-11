#!/bin/bash

cd "$(dirname "$0")"
source ./setup-setup.sh

CUSTOM_ICONS=/usr/share/icons/custom
WALLPAPERS=~/Pictures/Wallpapers

sudo mkdir -p "$CUSTOM_ICONS"
sudo cp ./resources/icons/aperture.png "$CUSTOM_ICONS"
sudo mkdir -p "$WALLPAPERS"
sudo cp -r ./resources/Wallpapers ~/Pictures

echoMsg "Applying wallpaper"
echoMsg "\"It's a new club thay plays really great hardcore techno for a really hip young crowd!\""
plasma-apply-wallpaperimage "$(realpath $WALLPAPERS/cyberia.png)"
