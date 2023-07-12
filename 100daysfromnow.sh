#!/usr/bin/env bash

# Create a program that tells us
# what day it is 100 days from today

# Tested on Linux and macOS operating system
echo -n "100 days from now is... "
if [ "$(uname -s)" == "Linux" ]; then
date -u -d "100 days" +'%Y-%m-%d'
else
date -u -v+100d +%Y-%m-%d
fi
