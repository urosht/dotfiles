setopt prompt_subst
autoload -Uz vcs_info

zstyle ":vcs_info:*" enable git   # Enable git
zstyle ":vcs_info:*" formats "%b" # Load git branch ($vcs_info_msg_0_)



precmd () {

    vcs_info
    left_prompt
#    right_prompt

}


# Draws the left prompt
left_prompt() {

# Colors
# SET COLORS HERE

   # Show exclamation mark if running with admin privileges
    PROMPT="%F{167}%(!. .)%f"


    # If in a git repository
    if [[ -n ${vcs_info_msg_0_} ]]; then

        # Git status dirty
        git_status=$(command git status --porcelain 2> /dev/null | tail -n1)
        if [[ -n $git_status ]]; then
            color_branch="215" # Yellow
        fi

        PROMPT+="%F{$color_branch}$vcs_info_msg_0_%f "

    fi


    # If connected through ssh
    if [[ -n $SSH_CONNECTION ]]; then
        PROMPT+="@%F{$color_host}$(hostname)%f "
    fi


    PROMPT+="%(?.%F{$color_ok}.%F{$color_error})❯%f "


}


