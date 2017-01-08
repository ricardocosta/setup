#!/bin/sh

# Homebrew Script for OSX
# To execute: save and `chmod +x ./brew_installations.sh` then `./brew_installations.sh`

# Productivity
echo "Installing Productivity Tools..."
brew install Caskroom/cask/alfred
brew install autojump
brew install jq
brew install the_silver_searcher
brew install unrar

# Quick Look
echo "Installing Quick Look plugins..."
brew install Caskroom/cask/qlcolorcode
brew install Caskroom/cask/qlstephen
brew install Caskroom/cask/qlmarkdown
brew install Caskroom/cask/quicklook-json
brew install Caskroom/cask/quicklook-csv
brew install Caskroom/cask/betterzipql

# Dev Tools
echo "Installing Dev Tools..."
brew install Caskroom/cask/docker
brew install git
brew install Caskroom/cask/google-chrome
brew install httpie
brew install vim
mkdir ~/.vim/colors
cp ../config/solarized.vim ~/.vim/colors/solarized.vim
cp ../config/.vimrc ~/.vimrc

brew install Caskroom/cask/visual-studio-code

# Programming Languages
echo "Installing Programming Languages..."
brew install chruby
brew install ruby-install

# Tools
echo "Installing Monitoring Tools..."
brew install htop

# Applications
echo "Installing Applications..."
brew install Caskroom/cask/pixlr
brew install Caskroom/cask/rocket
brew install Caskroom/cask/slack
brew install Caskroom/cask/spectacle
brew install Caskroom/cask/spotify
brew install Caskroom/cask/spotify-notifications
brew install Caskroom/cask/vlc

reload-zshconfig

echo "You still have to manually install the following:"
echo "* Bear (via MacStore)"
echo "* LastPass"

echo "Configuration..."
echo "Do not forget to configure the following:"
echo "* Alfred (https://github.com/ricardocosta89/setup/configurations/alfred.md)"
echo "* Visual Studio Code (https://github.com/ricardocosta89/setup/configurations/vscode.md)"
