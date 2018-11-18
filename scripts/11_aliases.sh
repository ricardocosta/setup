#!/bin/sh

echo "alias cat='bat'" >> ~/.aliases
echo 'alias preview="fzf --preview '"'"'bat --color \"always\" {}'"'"'"' >> ~/.aliases
echo 'alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"' >> ~/.aliases
echo "alias help='tldr'" >> ~/.aliases
echo "alias ls='ls -G'" >> ~/.aliases
echo 'alias reload-cfg="source ~/.zshrc"' >> ~/.aliases
echo "alias local-pg='psql postgres'" >> ~/.aliases
echo "alias vim='nvim'" >> ~/.aliases