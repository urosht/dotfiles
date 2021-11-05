#!/bin/bash

context="$(kubectl config current-context)"
namespace="$(kubectl config view --minify --output 'jsonpath={..namespace}')"
if [[ $context != "minikube" && $context != "" ]]; then
    echo "k8s:$context [$namespace] "
fi
