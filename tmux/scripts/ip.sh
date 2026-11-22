#!/bin/bash

command -v dig &> /dev/null || exit 0

if ip=$(dig +short myip.opendns.com @resolver1.opendns.com 2>/dev/null); then
    echo "$ip "
fi
