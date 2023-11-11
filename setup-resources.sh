#!/bin/bash

CUSTOM_ICONS=/usr/share/icons/custom
WALLPAPERS=~/Pictures/Wallpapers

sudo mkdir -p "$CUSTOM_ICONS"
sudo cp ./resources/icons/aperture.png "$CUSTOM_ICONS"
sudo mkdir -p "$WALLPAPERS"
sudo cp -rv ./resources/Wallpapers ~/Pictures

plasma-apply-wallpaperimage "$(realpath $WALLPAPERS/cyberia.png)"