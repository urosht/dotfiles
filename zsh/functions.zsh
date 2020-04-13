#!/usr/bin/env zsh

# Make a directory and cd into it
mkcd() {
	mkdir -p $1 && cd $_
}

# Parse input as JSON
jqp() {
	jq -R -r '. as $line | try fromjson catch $line'
}

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'
