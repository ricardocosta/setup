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
    "orta.vscode-jest:Jest"
    "yzhang.markdown-all-in-one:Markdown All in One"
    "christian-kohler.path-intellisense:Path Intellisense"
    "esbenp.prettier-vscode:Prettier"
    "mohsen1.prettify-json:Prettify JSON"
    "alefragnani.project-manager:Project Manager"
    "ms-vscode.vscode-typescript-tslint-plugin:TSLint"
    # Themes & Icons
    "zhuangtongfa.Material-theme:One Dark Pro"
    "teabyii.ayu:Ayu"
    "PKief.material-icon-theme:Material Icon Theme"
)

readonly CONFIGS=(
    "workbench.colorTheme:One Dark Pro Vivid"
    "workbench.iconTheme:material-icon-theme"
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

function add_configuration() {
    printf "  Setting Configuration...\n"
    FILE='Library/Application Support/Code/User/settings.json'

    for cfg in "${CONFIGS[@]}"; do
        KEY=${cfg%:*}
        VALUE=${cfg#*:}

        printf "${_GREEN}    - %s = %s\n${_NC}" "$KEY" "$VALUE"
        OUT=`(cat ~/"$FILE" | jq ". + { \""$KEY"\": \"""$VALUE""\"}")`
        echo $OUT | jq . > ~/"$FILE"
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
add_configuration
configure_keybindings

exit 0
