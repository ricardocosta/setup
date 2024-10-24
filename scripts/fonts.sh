#!/bin/sh

source "${BASH_SOURCE%/*}/functions.lib"

readonly FONTS=(
    "font-fira-code"
    "font-hack-nerd-font"
    "font-inconsolata"
    "font-jetbrains-mono"
)

echo "Installing fonts..."

install "${FONTS[@]}"

