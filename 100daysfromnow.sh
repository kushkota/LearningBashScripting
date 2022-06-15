#!/usr/bin/env bash

# Create a program that tells us
# what day it is 100 days from today

virtual() {
    sleep 1
    echo -n .
    sleep 1
    echo -n .
    sleep 1
    echo -n .
    echo -n " "
}

echo -n "100 days from now is "
virtual
 
date -d "100 days" +'%Y-%m-%d'
