setopt prompt_subst


precmd () {

    left_prompt
    right_prompt
}

# Colors
color_default="215" # Yellow
color_host="110" # Blue

# Draws the left prompt
left_prompt() {

# Show exclamation mark if running with admin privileges
  PROMPT="%F{167}%(!. .)%f"

# If connected through ssh
  if [[ -n $SSH_CONNECTION ]]; then
    PROMPT+="%F{$color_default}@%F{$color_host}$(hostname)%f "
  fi

  PROMPT+="%F{$color_default}❯%f "

}


# Draws the right prompt
right_prompt() {

    RPROMPT='%F{$color_default}%~'

}

