#!/usr/bin/env bash

# A three-in-one game app

# The game descriptions

guess() {
    # Local variables can only be used within a function; they are visible 
    # only to the function where they are defined and its children.
    
    # typeset -i mynumber
    # A synonym for `declare'.  See `help declare'.
    
    # Declare variables and give them attributes.
    # -i        to make NAMEs have the `integer' attribute
    # When used in a function, `declare' makes NAMEs local, as with the `local'command
    local -i mynumber=$(( 1 + $RANDOM % 10 ))

    # -p prompt output the string PROMPT without a trailing newline before
    # attempting to rea
    read -p "I'm thinking of a number between 1 and 10. What do you think it is?" theguess

    if (( theguess == mynumber )); then
        echo "You got it! Great Job!"; echo
    else
        echo "Nope. I was thiking of $mynumber. Try again!"; echo
    fi
    sleep 1
    choosegame
}

flip() {
    local -i mynumber=$(( 1 + $RANDOM % 2 ))

    if (( mynumber == 1 )); then
        local face="HEADS"
    else
        local face="TAILS"
    fi

    printf "I flipped a coin and it was: %s\n\n" $face
    sleep 1
    choosegame
}

dice() {
    local -i mynumber=$(( 1 + $RANDOM % 6 ))
    local -i mynumber2=$(( 1 + $RANDOM % 6 ))
    printf "I rolled two dice and the results are: %s and %s.\n\n" $mynumber $mynumber2
    sleep 1
    choosegame
}


# The game chooser
choosegame() {
    # help select
    # select NAME [in WORDS ... ;] do COMMANDS; done
    # Select words from a list and execute commands.

    select game in "Guessing Game" "Flip a Coin" "Dice Roll" "Exit"
    do
        case $game in 
            "Guessing Game") guess;;
            "Flip a Coin") flip;;
            "Dice Roll") dice;;
            "Exit") exit;;
                *) echo "Please choose from the menu.";;
            esac
        done
    }


# If there's an argument provided, just right to that game. Otherwise, show the game choose

case $1 in 
    "guess") guess;;
    "flip") flip;;
    "dice") dice;;
    *) choosegame;;
esac


