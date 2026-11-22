#!/bin/bash

command -v terraform &> /dev/null || exit 0

if tf=$(terraform --version 2>/dev/null | head -n 1); then
    echo "$tf "
fi
