# Setup

This repository contains a set of scripts and configurations I use after performing a clean install of MacOS.
It relies heavily on [Homebrew](http://brew.sh/).

Feel free to fork and adjust the scripts and documentation to your needs.

## Installing

### Homebrew

Install Homebrew, as it is required for pretty much everything.

```shell
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Installation of Command Line Tools (CLT) for Xcode will be prompted during Homebrew install.

### Dotfiles

I have a few dotfiles for:
- SSH configuration
- GPG configuration
- NVim configuration
- Aliases
- Exports
- Git configuration
- Shell theming

To copy the dotfiles to their intended destination run the following command:

```shell
sh ./dotfiles/install.sh
```

### Scripts

The `scripts` directory contains several scripts that will install or configure applications for different purposes. They split so that it's easier to add/remove scripts without affecting the others.

* `./scripts/general.sh`: General purpose applications for daily use.
* `./scripts/dev_general.sh`: General development tools.
* `./scripts/terminal_config.sh`: Terminal configuration.
* `./scripts/keys.sh`: Instructions to configure SSH and GPG keys.
* `./scripts/terminal_tools.sh`: Tools to help boosting productivity within the Terminal.
* `./scripts/dev_frontend.sh`: Tools for frontend development.
* `./scripts/dev_kotlin.sh`: Tools for Kotlin development.
* `./scripts/git.sh`: Git global configuration that should not be public.
* `./scripts/vscode.sh`: Setup VSCode extensions.
  * Make sure you have added `code` to `PATH` beforehand.
* `./scripts/fonts.sh`: Install fonts.

### Manual configurations

* [Browser Extensions](./docs/extensions.md): Browser extensions cannot be installed automatically, so you'll have to install them manually.
* [iTerm2](./docs/iterm2.md): iTerm2 configuration, from theming to keyboard shortcuts.

### Finishing

When all applications are installed, make sure to run `brew doctor` so that Homebrew validates everything is okay. You should also run `brew cleanup` to reclaim the disk space taken by installers during the installation process.
