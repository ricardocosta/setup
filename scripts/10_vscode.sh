#!/bin/sh

echo "Installing VSCode configuration..."

## Extensions
echo "\nInstalling Extensions..."
echo "- Code Runner"
code --install-extension formulahendry.code-runner
echo "- Code Spell Checker"
code --install-extension streetsidesoftware.code-spell-checker
echo "- Debugger for Chrome"
code --install-extension msjsdiag.debugger-for-chrome
echo "- Docker"
code --install-extension ms-azuretools.vscode-docker
echo "- ESLint"
code --install-extension dbaeumer.vscode-eslint
echo "- GitLens"
code --install-extension eamodio.gitlens
echo "- Jest"
code --install-extension orta.vscode-jest
echo "- Markdown All in One"
code --install-extension yzhang.markdown-all-in-one
echo "- Path Intellisense"
code --install-extension christian-kohler.path-intellisense
echo "- Prettier"
code --install-extension esbenp.prettier-vscode
echo "- Prettify JSON"
code --install-extension mohsen1.prettify-json
echo "- Project Manager"
code --install-extension alefragnani.project-manager
echo "- TSLint"
code --install-extension ms-vscode.vscode-typescript-tslint-plugin

## Themes & Icons
echo "- One Dark Pro"
code --install-extension zhuangtongfa.Material-theme
echo "- Ayu"
code --install-extension teabyii.ayu
echo "- Material Icon Theme"
code --install-extension PKief.material-icon-theme

# Open file seen on `preview` with VSCode
echo 'export FZF_DEFAULT_OPTS="--bind='"'"'ctrl-o:execute(code {})+abort'"'"'"' >> ~/.exports
