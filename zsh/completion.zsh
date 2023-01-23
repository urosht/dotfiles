
# Enable Kubernetes completion
if [ $commands[kubectl] ]; then
  source <(kubectl completion zsh)
fi

# Enable completion menu selection
zstyle ':completion:*' menu select

# Bind SHIFT + TAB for previous selection
bindkey '^[[Z' reverse-menu-complete

# Enable completion
autoload -Uz compinit && compinit
