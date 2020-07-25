#!/bin/sh

source "${BASH_SOURCE%/*}/functions.lib"

echo "Installing fonts"

brew tap homebrew/cask-fonts

print_start cask font-hack-nerd-font
install cask font-hack-nerd-font

print_start cask font-jetbrains-mono
install cask font-jetbrains-mono

print_start cask font-inconsolata
install cask font-inconsolata

print_start cask font-source-code-pro
install cask font-source-code-pro
