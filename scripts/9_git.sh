#!/bin/sh

echo "Setting up global gitignore..."
cp ../dotfiles/.gitignore_global ~/.gitignore_global

echo "\nSetting up global configuration:"
cp ../dotfiles/.gitconfig ~/.gitconfig

echo "\nSetup your user email with:"
echo "git config --global user.email <email>"

echo "\nSetup your user name with:"
echo 'git config --global user.name "<name>"'

echo "\nSetup your commit signing key with:"
echo 'git config --global user.signingkey <KEY ID>'
echo "Use the output of 'gpg --list-secret-keys --keyid-format LONG' to know the KEY ID (it comes after rsaXXXX/)"
