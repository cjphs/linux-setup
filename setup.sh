#!/bin/bash

bash ./setup-folders.sh

bash ./setup-packages.sh
if [[ "$*" == *--vscode* ]]; then
    echo "Setting up VSCode..."
    bash ./setup-vscode.sh
fi
bash ./setup-configs.sh

bash ./setup-resources.sh
