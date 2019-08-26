#!/bin/sh

source "${BASH_SOURCE%/*}/functions.lib"

print_start cask java
install cask java

echo 'export JAVA_HOME=$(/usr/libexec/java_home)' >> ~/.exports

print_start kotlin
install kotlin

print_start cask intellij-idea-ce
install cask intellij-idea-ce

echo "Installing Kotlin extension in VSCode"
code --install-extension mathiasfrohlich.Kotlin
