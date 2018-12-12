# General configuration

setopt nobeep              # Disable beep on errors
setopt autocd              # Writing a directory name will cd into it
setopt extendedglob        # Enables extra file matchig patterns
setopt multios             # Allows redirecting output to multiple files
setopt correct             # Prompt misspelled command correction
setopt interactivecomments # Allow comments in the shell

# Use CTRL + arrow keys to jump one word, like in bash
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

# Use arrow keys to search history matching the current buffer
autoload -U history-search-end

zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

bindkey '\e[A' history-beginning-search-backward-end
bindkey '\e[B' history-beginning-search-forward-end

# OSX
CLICOLOR=1
