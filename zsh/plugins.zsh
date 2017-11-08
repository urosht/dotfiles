# Antigen

source $HOME/.zsh/antigen/antigen.zsh


antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

# --- Config ---


# Autosuggest
bindkey '^ '   autosuggest-accept  # Bind CTRL + Space to accept the curretn suggestion
bindkey '^[^M' autosuggest-execute # Bind ALT  + Enter to execute the current suggestion

# Syntax Highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
