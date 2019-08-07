#!/bin/sh

source "${BASH_SOURCE%/*}/functions.lib"

echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

print_start yarn
install yarn

print_start cask firefox
install cask firefox

print_start cask homebrew/cask-versions/microsoft-edge-dev
install cask homebrew/cask-versions/microsoft-edge-dev
