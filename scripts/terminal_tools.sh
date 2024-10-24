#!/bin/sh

source "${BASH_SOURCE%/*}/functions.lib"

readonly TERMINAL_TOOLS=(
    "autojump"
    "bat"
    "diff-so-fancy"
    "fd"
    "fzf"
    "htop"
    "jq"
    "ncdu"
    "tldr"
)

echo "Installing terminal tools..."

install "${TERMINAL_TOOLS[@]}"

$(brew --prefix)/opt/fzf/install --no-bash --no-fish --key-bindings --completion --update-rc
