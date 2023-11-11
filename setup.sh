#!/bin/bash

bash ./setup-folders.sh
bash ./setup-packages.sh
bash ./setup-resources.sh

if [[ "$*" == *--vscode* ]]; then
    echo "Setting up VSCode..."
    bash ./setup-vscode.sh
fi
