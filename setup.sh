#!/bin/bash

cd "$(dirname "$0")"
source ./setup-setup.sh

mode=
if [[ "$*" == *--lite* ]]; then
    mode=--lite
    echoTitle "Choosing lite install"
fi

echoTitle "Setting up folders"
bash ./setup-folders.sh

echoTitle "Setting up packages"
bash ./setup-packages.sh $mode
if [[ "$*" == *--vscode* ]]; then
    echoTitle "Setting up VSCode"
    bash ./setup-vscode.sh
fi

echoTitle "Copying configs"
bash ./setup-configs.sh

echoTitle "Setting up resources"
bash ./setup-resources.sh
