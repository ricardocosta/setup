#!/bin/sh

source "${BASH_SOURCE%/*}/functions.lib"

echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash

print_start yarn
install yarn

print_start cask firefox
install cask firefox

print_start cask google-chrome
install cask google-chrome
