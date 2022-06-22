#!/usr/bin/env bash

# Create a program that tells us
# what day it is 100 days from today

echo -n "100 days from now is... "
 
date -d "100 days" +'%Y-%m-%d'
