setopt prompt_subst

# Git info via vcs_info
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats       '%b'
zstyle ':vcs_info:git:*' actionformats '%b|%a'   # e.g. master|rebase

# Colors
color_default="215" # Yellow
color_host="110"    # Blue
color_branch="109"  # Teal
color_error="167"   # Red

precmd () {
    vcs_info
    left_prompt
    right_prompt
}

# Draws the left prompt
left_prompt() {
    PROMPT=""

    # If connected through ssh
    if [[ -n $SSH_CONNECTION ]]; then
        PROMPT+="%F{$color_default}@%F{$color_host}%m%f "
    fi

    # Git branch
    if [[ -n $vcs_info_msg_0_ ]]; then
        PROMPT+="%F{$color_branch} ${vcs_info_msg_0_}%f "
    fi

    # Arrow: yellow, red if the last command failed
    PROMPT+="%(?.%F{$color_default}.%F{$color_error})❯%f "
}

# Draws the right prompt
right_prompt() {
    RPROMPT="%F{$color_default}%~%f"
}
