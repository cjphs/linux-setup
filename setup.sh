#!/bin/bash

bash ./setup-folders.sh

mode=
if [[ "$*" == *--lite* ]]; then
    mode=--lite
fi

bash ./setup-packages.sh $mode
if [[ "$*" == *--vscode* ]]; then
    echo "Setting up VSCode..."
    bash ./setup-vscode.sh
fi
bash ./setup-configs.sh

bash ./setup-resources.sh