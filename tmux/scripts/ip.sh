#!/bin/bash

if ip=$(dig +short myip.opendns.com); then
		echo "$ip "
fi
