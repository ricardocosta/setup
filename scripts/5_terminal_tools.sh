#!/bin/sh

source "${BASH_SOURCE%/*}/functions.lib"

print_start autojump
install autojump

print_start bat
install bat

print_start csvkit
install csvkit

print_start diff-so-fancy
install diff-so-fancy

print_start dive
install dive

print_start fd
install fd

print_start htop
install htop

print_start httpie
install httpie

print_start jq
install jq

print_start ncdu
install ncdu

print_start noti
install noti

print_start q
install q

print_start the_silver_searcher
install the_silver_searcher

print_start tldr
install tldr

print_start vegeta
install vegeta

print_start unrar
install unrar

print_start fzf
install fzf
$(brew --prefix)/opt/fzf/install
