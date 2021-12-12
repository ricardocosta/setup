#!/bin/sh

cp .aliases ~
echo 'source ~/.aliases' >> ~/.zshrc

cp .exports ~
echo 'source ~/.exports' >> ~/.zshrc

cp .gitconfig ~
cp .gitignore_global ~

cp .theme ~
echo 'source ~/.theme' >> ~/.zshrc

cp -r .config ~
cp -r .ssh ~
cp -r .gnupg ~