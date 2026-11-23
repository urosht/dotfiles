# Fish-like inline suggestions from history

autosuggestions=/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
[[ -f $autosuggestions ]] && source $autosuggestions
unset autosuggestions

bindkey '^ ' autosuggest-accept   # CTRL + SPACE accepts the suggestion
