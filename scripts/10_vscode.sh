#!/bin/sh

echo "Installing VSCode configuration..."

## Extensions
echo "\nInstalling Extensions..."
echo "- Code Spell Checker"
code --install-extension streetsidesoftware.code-spell-checker
echo "- Debugger for Chrome"
code --install-extension msjsdiag.debugger-for-chrome
echo "- Docker"
code --install-extension peterjausovec.vscode-docker
echo "- ESLint"
code --install-extension dbaeumer.vscode-eslint
echo "- GitLens"
code --install-extension eamodio.gitlens
echo "- Jest"
code --install-extension orta.vscode-jest
echo "- Markdown All in One"
code --install-extension yzhang.markdown-all-in-one
echo "- Prettier"
code --install-extension esbenp.prettier-vscode
echo "- Prettify JSON"
code --install-extension mohsen1.prettify-json
echo "- Project Manager"
code --install-extension alefragnani.project-manager
echo "- Ruby"
code --install-extension rebornix.ruby

# Open file seen on `preview` with VSCode
echo 'export FZF_DEFAULT_OPTS="--bind='"'"'ctrl-o:execute(code {})+abort'"'"'"' >> ~/.exports
