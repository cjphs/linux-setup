#!/bin/bash

bash ./setup-folders.sh
bash ./setup-packages.sh
bash ./setup-resources.sh

# only do this if --vscode is present in the arguments
if [[ "$*" == *--vscode* ]]; then
    echo "Setting up VSCode..."
    bash ./setup-vscode.sh
fi