# iTerm2

## Oh My Zsh Theme

1. Install font [`Droid Sans Mono Awesome`](https://github.com/gabrielelana/awesome-terminal-fonts/tree/patching-strategy/patched)

2. Add to `~/.zshrc`:
```
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status chruby time)
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S \uE868  %d.%m.%y}"
POWERLEVEL9K_TIME_BACKGROUND="004"
POWERLEVEL9K_TIME_FOREGROUND="007"
```

3. Import iTerm2 settings in `Preferences` > `General` > `Preferences`
  * Check `Load preferences from custom folder or URL`
  * Browse to folder where `com.googlecode.iterm2.plist` is saved

4. Run `reload-zshconfig`