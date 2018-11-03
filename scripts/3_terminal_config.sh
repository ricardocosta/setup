#!/bin/sh

source "${BASH_SOURCE%/*}/functions.lib"

print_start cask iterm2
install cask iterm2

print_start zsh
install zsh

echo "Setting zsh as default SHELL"
chsh -s $(which zsh)

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

:> ~/.exports
echo "source ~/.exports" >> ~/.zshrc

:> ~/.aliases
echo "source ~/.aliases" >> ~/.zshrc

:> ~/.theme
echo "source ~/.theme" >> ~/.zshrc

echo "You should close and reopen the Terminal. Since iTerm2 is now installed, you might as well start using it now."
echo "Use ~/.theme for terminal's theme variable exports."
