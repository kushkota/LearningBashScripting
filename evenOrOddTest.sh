#!/usr/bin/env bash

# Even or odd
# Verify if a number is even
# if number is even, function returns "true"
# if number is odd, function returns "false"
# the input must be an integer

# Debugging Scripts
# Reports usage of an unset variable
# Set or unset values of shell options and positional parameters
# -u  Treat unset variables as an error when substituting.
set -u 

# typeset
# A synonym for `declare'.
# to make the `integer' attribute
# Ensuring a integer reponse
declare -i INPUT

echo "Enter a number: "

read INPUT  # -s do not echo input coming from a terminal (e.g. password)

echo -n "Is the number even? "
if (( $INPUT % 2 == 0 )); then echo -n 'true'; else echo -n 'false'; 

fi
echo

# Debugging script with -x and -u options

#  -x        Print  commands and their arguments as they are executed.
# bash -x <script>
