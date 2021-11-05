#!/bin/bash

if tf=$(terraform --version | head -n 1); then
		echo "$tf "
fi
