#!/usr/bin/env zsh

# Make a directory and cd into it
mkcd() {
	mkdir -p $1 && cd $_
}

jqp() {
	jq -R -r '. as $line | try fromjson catch $line'
}
