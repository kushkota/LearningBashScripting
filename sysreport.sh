#!/usr/bin/env bash

# A script to output a brief summary of system information

# Challenge
# Compose a script to show some system information
# Use some standard tools like, df, free, or others
# Use awk or sed to extract text from output, if you know them
# Use formatted text
# Set aside 20 minutes for this task


freespace=$(df -h /mnt/c/ | awk 'NR==2 {print $4}')
freemem=$(free -h /mnt/c/ | awk 'NR==2 {print $4}')

redtext="\033[31m"
greentext="\033[32m"
yellowtext="\033[33m"
bold="\033[1m"
normal="\033[0m"

printf -v logdate "%(%Y-%m-%d)T"


echo -e $bold"Quick system report for "$greentext"$HOSTNAME"$normal


printf "\tKernel Release:\t%s\n" $(uname -r)

# %q quote the argument in a way that can be reused as shell input
# Bash Version:   5.0.17\(1\)-release

# %s quote 
# Bash Version:   5.0.17(1)-release

printf "\tBash Version: \t%s\n" $BASH_VERSION
printf "\tFree Storage:\t%s\n" $freespace
printf "\tFree Memory: \t%s\n" $freemem
printf "\tFiles in pwd: \t%s\n" $(ls | wc -l)
printf "\tGenerated on: \t%s\n" $logdate

# printf (1)           - format and print data
#  -v var    assign the output to shell variable VAR rather than
# display it on the standard output

# %(fmt)T   output the date-time string resulting from using FMT as a format

#  Gi = gibibyte

