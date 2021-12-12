#!/bin/sh

source "${BASH_SOURCE%/*}/functions.lib"

readonly KOTLIN_DEV=(
    "oracle-jdk"
    "kotlin"
    "intellij-idea-ce"
)

echo "Installing Kotlin development apps..."

install "${KOTLIN_DEV[@]}"

echo "Installing Kotlin extension in VSCode"
code --install-extension mathiasfrohlich.Kotlin
