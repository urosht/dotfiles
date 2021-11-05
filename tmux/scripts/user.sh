#!/bin/bash

# #h is tmux-specific for host, will not work when executed as plain shell script
if user=$(echo $USER@#h); then
		echo "$user "
fi
