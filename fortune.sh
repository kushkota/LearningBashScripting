#!/usr/bin/env bash

# A fortune telling game

# Challenge
# Compose a script that uses control structures to show random replies
# Examples include a quote viewer, a dice roll, or  a card draw

echo -e "\t\tWelcome to the "

redtext="\033[31m"
greentext="\033[32m"
yellowtext="\033[33m"
bold="\033[1m"
normal="\033[0m"

# echo -e "\033[1m\033[31mbold_redtext\033[0m"

echo -e $bold$greentext"\t\tMyStIcAL sPhErE"$normal
echo

waitingnumber=$(( $RANDOM % 4 ))


mysterynumber=$(( $RANDOM % 11 ))
declare -a fortunes=(
"You are likely to achieve the outcome you seek."
"Today is not a good day to do that."
"While it might seem unlikely, your chances are good."
"If you believe you will be successful, that's half the battle."
"If you cared enough to ask, you care enough to make it happen."
"I think you already know the answer to that."
"Stop wondering and start doing!"
"Yes, sure, whatever, I'm busy."
"Next Thursday might be a better day to do that."
"Sure, but what will the neighbors think?"
"Who knows how long gazing into the future can take?"
)

case $waitingnumber in
    0) sleep 1; echo "One moment please..."; sleep 1;;
    1) sleep 1; echo "Your fortune will be along shortly..."; sleep 2;;
    2) sleep 1; echo "Preparing your fate..."; sleep 1;;
    3) sleep 1; echo "The veil of mystery is dark today..."; sleep 3;;
esac

echo
echo ${fortunes[$mysterynumber]}
echo
