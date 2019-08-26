#!/bin/sh

source "${BASH_SOURCE%/*}/functions.lib"

print_start chruby
install chruby

print_start ruby-install
install ruby-install

echo "Installing Ruby extension in VSCode"
code --install-extension rebornix.ruby
