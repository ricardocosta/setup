#!/bin/sh

source "${BASH_SOURCE%/*}/functions.lib"

print_start cask iterm2
install cask iterm2

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo 'Installing spaceship prompt'
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

cp ../dotfiles/.theme ~/.theme
echo 'source ~/.theme' >> ~/.zshrc

cp ../dotfiles/.exports ~/.exports
echo 'source ~/.exports' >> ~/.zshrc

cp ../dotfiles/.aliases ~/.aliases
echo 'source ~/.aliases' >> ~/.zshrc
