#!/bin/sh

source "${BASH_SOURCE%/*}/functions.lib"

readonly GENERAL_PURPOSE=(
    "1password"
    "appcleaner"
    "handbrake"
    "jordanbaird-ice"
    "microsoft-edge"
    "notion"
    "onlyoffice"
    "raycast"
    "rocket"
    "shottr"
    "slack"
    "signal"
    "spotify"
    "vlc"
    "whatsapp"
)

echo "Installing general purpose applications..."

install "${GENERAL_PURPOSE[@]}"

exit 0
