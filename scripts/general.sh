#!/bin/sh

source "${BASH_SOURCE%/*}/functions.lib"

readonly GENERAL_PURPOSE=(
    "1password"
    "appcleaner"
    "calibre"
    "handbrake"
    "jordanbaird-ice"
    "microsoft-edge"
    "onlyoffice"
    "qlstephen"
    "raycast"
    "rocket"
    "shottr"
    "slack"
    "signal"
    "spotify"
    "the-unarchiver"
    "vlc"
    "whatsapp"
)

echo "Installing general purpose applications..."

install "${GENERAL_PURPOSE[@]}"

exit 0
