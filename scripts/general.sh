#!/bin/sh

source "${BASH_SOURCE%/*}/functions.lib"

readonly GENERAL_PURPOSE=(
    "alfred"
    "appcleaner"
    "1password"
    "marta"
    "microsoft-edge"
    "notion"
    "onlyoffice"
    "rectangle"
    "slack"
    "signal"
    "spotify"
    "vlc"
    "whatsapp"
)

echo "Installing general purpose applications..."

install "${GENERAL_PURPOSE[@]}"

exit 0
