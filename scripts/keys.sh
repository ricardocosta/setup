#!/bin/sh

source "${BASH_SOURCE%/*}/functions.lib"

readonly SIGNING_TOOLS=(
    "gnupg"
    "pinentry-mac"
)

echo "Installing tools for signing commits..."

install "${SIGNING_TOOLS[@]}"

echo "\nImport public GPG key with 'gpg --import public_key.asc'"
echo "\nImport private GPG key with 'gpg --import private_key.asc'"

echo "\nGiven the KEYID (e.g FA0339620046E260) from the output:"
echo "'gpg --edit-key {KEY} trust quit'"
echo "# enter 5<RETURN>"
echo "# enter y<RETURN>"

echo "\nFinally, verify that key is now trusted with [ultimate] instead of [unknown]"
echo 'gpg --list-keys'

echo "\Copy your public and private keys to ~/.ssh"
echo "Follow the instructions in the following link to add your key to the ssh-agent"
echo "https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/"
