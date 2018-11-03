#!/bin/sh

source "${BASH_SOURCE%/*}/functions.lib"

print_start git
install git

print_start docker
install docker

print_start neovim
install neovim

print_start cask visual-studio-code
install cask visual-studio-code

print_start postgresql
install postgresql

print_start cask postman
install cask postman

print_start cask tableplus
install cask tableplus

echo "\nTo install the 'code' command:"
echo "- Launch VS Code."
echo "- Open the Command Palette > Shell Command: Install 'code' command in PATH"
echo "More details: https://code.visualstudio.com/docs/setup/mac"
