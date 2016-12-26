#!/bin/sh

# Homebrew Script for OSX
# To execute: save and `chmod +x ./brew_installations.sh` then `./brew_installations.sh`

echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Productivity
echo "Installing Productivity Tools..."
brew install Caskroom/cask/alfred
brew install autojump
brew install Caskroom/cask/iterm2
brew install jq
brew install the_silver_searcher
brew install unrar
brew install zsh zsh-completions

# Quick Look
echo "Installing Quick Look plugins..."
brew install qlcolorcode
brew install qlstephen
brew install qlmarkdown
brew install quicklook-json
brew install quicklook-csv
brew install betterzipql

# Dev Tools
echo "Installing Dev Tools..."
brew install docker
brew install git
brew install Caskroom/cask/google-chrome
brew install httpie
brew install vim
brew install Caskroom/cask/visual-studio-code

# Programming Languages
echo "Installing Programming Languages..."
brew install chruby
brew install ruby-install
brew install yarn

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

echo "You still have to manually install the following:"
echo "* Bear (via MacStore)"
echo "* LastPass"
echo "* RubyMine"

echo "Configuration..."
echo "Do not forget to configure the following:"
echo "* Alfred (https://github.com/ricardocosta89/setup/configurations/alfred.md)"
echo "* Visual Studio Code (https://github.com/ricardocosta89/setup/configurations/vscode.md)"