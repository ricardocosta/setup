#!/bin/sh

source "${BASH_SOURCE%/*}/functions.lib"

readonly EXTENSIONS=(
    # Extensions
    "formulahendry.code-runner:Code Runner"
    "streetsidesoftware.code-spell-checker:Code Spell Checker"
    "msjsdiag.debugger-for-chrome:Debugger for Chrome"
    "ms-azuretools.vscode-docker:Docker"
    "dbaeumer.vscode-eslint:ESLint"
    "eamodio.gitlens:GitLens"
    "mathiasfrohlich.kotlin:Kotlin Language"
    "yzhang.markdown-all-in-one:Markdown All in One"
    "christian-kohler.path-intellisense:Path Intellisense"
    "esbenp.prettier-vscode:Prettier"
    "mohsen1.prettify-json:Prettify JSON"
    "alefragnani.project-manager:Project Manager"
    "visualstudioexptteam.vscodeintellicode"
    # Themes & Icons
    "zhuangtongfa.Material-theme:One Dark Pro"
    "PKief.material-icon-theme:Material Icon Theme"
)

function install_extensions() {
    printf "  Installing Extensions...\n"

    for ext in "${EXTENSIONS[@]}"; do
        KEY=${ext%:*}
        VALUE=${ext#*:}

        printf "${_GREEN}    - %s\n${_NC}" "$VALUE"
        code --install-extension "$KEY"
    done
}

function configure_keybindings() {
    # Open file seen on `preview` with VSCode
    grep "FZF_DEFAULT_OPTS" ~/.exports
    if [ $? -eq 1 ]; then
        echo 'export FZF_DEFAULT_OPTS="--bind='"'"'ctrl-o:execute(code {})+abort'"'"'"' >> ~/.exports
    fi
}

printf "Installing VSCode configuration...\n"
install_extensions
configure_keybindings

exit 0
