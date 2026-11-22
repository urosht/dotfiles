# General configuration

setopt nobeep              # Disable beep on errors
setopt autocd              # Writing a directory name will cd into it
setopt interactivecomments # Allow comments in the shell

# Arrow keys search history matching the current buffer
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey '\e[A' history-beginning-search-backward-end
bindkey '\e[B' history-beginning-search-forward-end
