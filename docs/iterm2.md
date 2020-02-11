# iTerm2

This page details customizations I usually do on iTerm2 to have it more useful for me.

## Keys

I use keyboard navigation a lot, with `⌘` and `⌥` keys. Unfortunately, iTerm2 doesn't have that kind of navigation configured by default. This is what I usually do:

1. Open `Preferences` (`⌘` + `,`) > `Keys`
2. Add the following Global Shortcut Keys:

| Keyboard combination | Action        | Code        |
| :------------------- | :------------ | :---------- |
| `⌥` + `←`            | Send Hex Code | `0x1b 0x62` |
| `⌥` + `→`            | Send Hex Code | `0x1b 0x66` |
| `⌘` + `←`            | Send Hex Code | `0x01`      |
| `⌘` + `→`            | Send Hex Code | `0x05`      |
| `⌥` + `←Delete`      | Send Hex Code | `0x1b 0x08` |
| `⌘` + `←Delete`      | Send Hex Code | `0x15`      |
| `⌘` + `z`            | Send Hex Code | `0x1f`      |

Don't forget to remove the **previous bindings**:

1. Open the `Profiles` tab
2. Click the sub-tab `Keys`
3. Remove the mappings for key combinations `⌥` + `←` and `⌥` + `→`

## Color Scheme

A couple of ideas for color schemes to use in iTerm2:

- [Material Shell Oceanic](https://github.com/carloscuesta/materialshell)
- A lot more are available [here](https://github.com/mbadolato/iTerm2-Color-Schemes).

## Fonts

I like to configure the zshell prompt using [Spaceship Prompt](https://github.com/denysdovhan/spaceship-prompt). It states [Powerline Font](https://github.com/powerline/fonts) as a requirement, but I usually install a [Nerd Font](https://github.com/ryanoasis/nerd-fonts) using Homebrew:

```
brew tap homebrew/cask-fonts
brew cask install <font>
```

These are the fonts I install:
- `font-hack-nerd-font`
- `font-jetbrains-mono`
- `font-inconsolata`
- `font-source-code-pro`
