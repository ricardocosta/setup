#!/bin/sh

# Homebrew Script for OSX
# To execute: save and `chmod +x ./pre.sh` then `./pre.sh`

echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing Zsh"
brew install zsh zsh-completions

echo "Installing Oh-My-Zsh"
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

echo "Installing powerlevel9k theme"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

echo "Setting Default Shell"
chsh -s /usr/local/bin/zsh

echo "Setting custom-config.sh"
cp ../config/custom-config.sh ~/custom-config.sh
echo "" >> ~/.zshrc
echo "# Custom Config" >> ~/.zshrc
echo "source ~/custom-config.sh" >> ~/.zshrc

"Installing iTerm"
brew install Caskroom/cask/iterm2

echo "You still need to configure iTerm2 (https://github.com/ricardocosta89/setup/configurations/iTerm.md)"
echo "You should restart your system before continuing with installations."

