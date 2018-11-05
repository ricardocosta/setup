#!/bin/sh

echo "Setting up global gitignore..."
:> ~/.gitignore_global

echo "### macOS ###" >> ~/.gitignore_global
echo "# General" >> ~/.gitignore_global
echo ".DS_Store" >> ~/.gitignore_global

echo "\n# Files that might appear in the root of a volume" >> ~/.gitignore_global
echo ".DocumentRevisions-V100" >> ~/.gitignore_global
echo ".fseventsd" >> ~/.gitignore_global
echo ".Spotlight-V100" >> ~/.gitignore_global
echo ".TemporaryItems" >> ~/.gitignore_global
echo ".Trashes" >> ~/.gitignore_global
echo ".VolumeIcon.icns" >> ~/.gitignore_global
echo ".com.apple.timemachine.donotpresent" >> ~/.gitignore_global

echo "\n### Git ###" >> ~/.gitignore_global
echo "*.orig" >> ~/.gitignore_global

echo "\n### Intellij ###" >> ~/.gitignore_global
echo ".idea" >> ~/.gitignore_global
echo "out/" >> ~/.gitignore_global

echo "\n### Java ###" >> ~/.gitignore_global
echo "*.class" >> ~/.gitignore_global

echo "\n### Node ###" >> ~/.gitignore_global
echo "# Logs" >> ~/.gitignore_global
echo "logs" >> ~/.gitignore_global
echo "npm-debug.log*" >> ~/.gitignore_global
echo "yarn-debug.log*" >> ~/.gitignore_global
echo "yarn-error.log*" >> ~/.gitignore_global

echo "\n# Dependency directories" >> ~/.gitignore_global
echo "node_modules/" >> ~/.gitignore_global

echo "\n### VisualStudioCode ###" >> ~/.gitignore_global
echo ".vscode/*" >> ~/.gitignore_global
echo "!.vscode/settings.json" >> ~/.gitignore_global
echo "!.vscode/tasks.json" >> ~/.gitignore_global
echo "!.vscode/launch.json" >> ~/.gitignore_global
echo "!.vscode/extensions.json" >> ~/.gitignore_global

echo "\nSetting up global configuration:"

echo "- core.excludesFile \t ~/.gitignore_global"
git config --global core.excludesFile "~/.gitignore_global"

echo "- core.editor \t nvim"
git config --global core.editor nvim

echo "- core.pager \t diff-so-fancy | less --tabs=1,5"
git config --global core.pager "diff-so-fancy | less --tabs=1,5"

echo "- color.ui \t true"
git config --global color.ui true

echo "- color.diff-highlight.oldNormal \t red bold"
git config --global color.diff-highlight.oldNormal "red bold"

echo "- color.diff-highlight.oldHighlight \t red bold 52"
git config --global color.diff-highlight.oldHighlight "red bold 52"

echo "- color.diff-highlight.newNormal \t green bold"
git config --global color.diff-highlight.newNormal "green bold"

echo "- color.diff-highlight.newHighlight \t green bold 22"
git config --global color.diff-highlight.newHighlight "green bold 22"

echo "- color.diff.meta \t yellow"
git config --global color.diff.meta "yellow"

echo "- color.diff.frag \t magenta bold"
git config --global color.diff.frag "magenta bold"

echo "- color.diff.commit \t yellow bold"
git config --global color.diff.commit "yellow bold"

echo "- color.diff.old \t red bold"
git config --global color.diff.old "red bold"

echo "- color.diff.new \t green bold"
git config --global color.diff.new "green bold"

echo "- color.diff.whitespace \t red reverse"
git config --global color.diff.whitespace "red reverse"

echo "- commit.gpgSign \t true"
git config --global commit.gpgSign true

echo "- credential.helper \t osxkeychain"
git config --global credential.helper osxkeychain

echo "- format.pretty \t format:%C(auto,yellow)%h%C(auto,magenta)% G? %C(auto,blue)%>(25,trunc)%ad %C(auto,green)%<(15,trunc)%aN%C(auto,reset)%s%C(auto,red)% gD% D"
git config --global format.pretty "format:%C(auto,yellow)%h%C(auto,magenta)% G? %C(auto,blue)%>(25,trunc)%ad %C(auto,green)%<(15,trunc)%aN%C(auto,reset)%s%C(auto,red)% gD% D"

echo "- log.date \t iso8601"
git config --global log.date iso8601

echo "- rebase.autoSquash \t true"
git config --global rebase.autoSquash true

echo "- rebase.missingCommitsCheck \t warn"
git config --global rebase.missingCommitsCheck "warn"

echo "- rebase.abbreviateCommands \t true"
git config --global rebase.abbreviateCommands true

echo "- gpg.program \t gpg"
git config --global gpg.program gpg

echo "\nSetup your user email with:"
echo "git config --global user.email <email>"

echo "\nSetup your user name with:"
echo 'git config --global user.name "<name>"'

echo "\nSetup your commit signing key with:"
echo 'git config --global user.signingkey <KEY ID>'
echo "Use the output of 'gpg --list-secret-keys --keyid-format LONG' to know the KEY ID (it comes after rsaXXXX/)"
