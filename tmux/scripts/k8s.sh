#!/bin/bash

command -v kubectl &> /dev/null || exit 0

context="$(kubectl config current-context 2>/dev/null)"
namespace="$(kubectl config view --minify --output 'jsonpath={..namespace}' 2>/dev/null)"
if [[ $context != "minikube" && $context != "" ]]; then
    echo "$context[$namespace] "
fi
