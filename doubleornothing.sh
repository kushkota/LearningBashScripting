#!/usr/bin/env bash

# Create a Double or Nothing Game
# User starts with 10 points
# User can take a chance to double their points
# If user takes the chance, randomnesss decides if they
# receive double or loses all

redtext="\033[31m"
greentext="\033[32m"
yellowtext="\033[33m"
bluetext="\033[34m"
normal="\033[0m"
bold="\033[1m"

initialpoint=10

double() {
    rand=$RANDOM
    if (( $rand % 2 == 0 ));
    then
        let initialpoint=$(( $rand / 100 + $initialpoint ))
        play
    else
        nothing
    fi


}
nothing() {
    echo -e $bold$redtext"\nYou have Lose!"$normal
}

nothing_first() {
    echo -e $bold$greentext"\nYou win!!!\t\t\t\t$bold$yellowtext$Total \$$initialpoint"$normal
}

play() {
    echo -e $bold$greentext"\nDouble" $bold$bluetext" or " $bold$redtext"Nothing?\t\t\t"$bold$yellowtext"Total: \$$initialpoint"$normal
    echo -e "\nEnter YES to continue"
    
    declare -u input
    read input
    
    if [[ $input = YES ]];
    then
        double
    else
        nothing_first
    fi
}
play
echo

