#!/bin/bash

if ip=$(dig +short myip.opendns.com @resolver1.opendns.com); then
		echo "$ip "
fi
