#!/bin/sh

source "${BASH_SOURCE%/*}/functions.lib"

readonly FRONTEND_DEV=(
    "firefox"
    "google-chrome"
)

echo "Installing frontend development tools..."

install "${FRONTEND_DEV[@]}"

echo "Installing nvm..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
