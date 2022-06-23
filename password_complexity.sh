#!/usr/bin/env bash

# Create a function
# Verification of password:
# Must have at least six characters
# Must have one uppercase letter
# Must have one lowercase letter
# Must have one number

# Function needs
# String as input
# Boolean output - indicates if password is complex enough

redtext="\033[31m"
greentext="\033[32m"
bold="\033[1m"
normal="\033[0m"

isPasswordComplex() {
    
    echo -e "\nIs password complex enough?"
    
    # Accessing variable length

    # Arithmetic tests
    # arg1 less-than arg2
    
    # regular expressions
    if [[ ! ${#input} -lt 6 && $input =~ [A-Z] && $input =~ [a-z] && $input =~ [0-9] ]]; 
    then
        echo -e $bold$greentext"Success"$normal
    else
        echo -e $bold$redtext"Failure"$normal
        
    fi
}

echo -e "\nEnter your password: "

# do not echo input coming from a terminal
read -s input

isPasswordComplex
echo
