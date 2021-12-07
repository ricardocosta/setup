#!/bin/sh

source "${BASH_SOURCE%/*}/functions.lib"

install cask oracle-jdk

print_start kotlin
install kotlin

print_start cask intellij-idea-ce
install cask intellij-idea-ce

echo "Installing Kotlin extension in VSCode"
code --install-extension mathiasfrohlich.Kotlin
