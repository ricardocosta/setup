#!/bin/sh

source "${BASH_SOURCE%/*}/functions.lib"

print_start git
install git

print_start cask discord
install cask discord

print_start cask docker
install cask docker

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
