#!/bin/sh

source "${BASH_SOURCE%/*}/functions.lib"

print_start cask iterm2
install cask iterm2

print_start zsh
install zsh

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cp ../dotfiles/.exports ~/.exports
echo 'source ~/.exports' >> ~/.zshrc

cp ../dotfiles/.aliases ~/.aliases
echo 'source ~/.aliases' >> ~/.zshrc

cp ../dotfiles/.theme ~/.theme
echo 'source ~/.theme' >> ~/.zshrc

echo "You should close and reopen the Terminal. Since iTerm2 is now installed, you might as well start using it now."
echo "Use ~/.theme for terminal's theme variable exports."
