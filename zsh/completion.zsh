# Completion

zstyle ':completion:*' menu select       # Menu selection
bindkey '^[[Z' reverse-menu-complete     # SHIFT + TAB for previous selection

autoload -Uz compinit && compinit
