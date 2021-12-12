#!/bin/sh

source "${BASH_SOURCE%/*}/functions.lib"

readonly GENERAL_DEV=(
    "git"
    "homebrew/cask/docker"
    "neovim"
    "visual-studio-code"
    "postgresql"
    "postman"
    "tableplus"
)

echo "Installing general development applications..."

install "${GENERAL_DEV[@]}"

# sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
#    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "${_YELLOW}Open vim and run PlugUpdate to install the plugins.${_NC}"

exit 0