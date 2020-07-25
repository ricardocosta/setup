# Setup

This repository contains a set of scripts and configurations I use after performing a clean install of MacOS in order to have applications up and running faster. It installs and then uses [Homebrew](http://brew.sh/) for all other installations.

Feel free to fork and adjust the scripts and documentation to your needs.

* [Installed Applications](./docs/applications.md)
* [Git configuration](./docs/git.md)
* [Aliases](./docs/aliases.md)
* [Google Chrome](./docs/chrome.md)
* [iTerm2](./docs/iterm2.md)

## Installing

### Pre-Requisites

Since Homebrew depends on XCode Command Line Tools, it's better to have those dependencies installed manually first. For that, run:

```shell
xcode-select --install
```

When it finishes, follow [Homebrew's instructions](http://brew.sh/):

```shell
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

You may also need to make sure the scripts are executable by running:

```shell
find . -iname \*.sh | xargs chmod +x
```

### Scripts

Several scripts are available in the `scripts` directory. These scripts will install or configure applications for different purposes, and they were separated on purpose so that it's easier to add/remove scripts without affecting the others.

* `./scripts/1_general.sh`: General purpose applications for daily use.
* `./scripts/2_dev_general.sh`: General development tools.
* `./scripts/3_terminal_config.sh`: Terminal configuration.
* `./scripts/4_keys.sh`: Instructions to configure SSH and GPG keys.
* `./scripts/5_terminal_tools.sh`: Tools to help boosting productivity within the Terminal.
* `./scripts/6_dev_frontend.sh`: Tools for frontend development.
* `./scripts/7_dev_kotlin.sh`: Tools for Kotlin development.
* `./scripts/8_dev_ruby.sh`: Tools for Ruby development.
* `./scripts/9_git.sh`: Apply git global configuration.
* `./scripts/10_vscode.sh`: Setup VSCode extensions (Make sure you have `code` available in `PATH`).
* `./scripts/11_fonts.sh`: Install fonts.

### Finishing

When all applications are installed, make sure to run `brew doctor` so that Homebrew validates everything is okay. You should also run `brew cleanup` to reclaim the disk space taken by installers during the installation process.
