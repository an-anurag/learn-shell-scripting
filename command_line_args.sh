#!/usr/bin/env bash

#The command-line arguments $1, $2, $3, ...$9 are positional parameters,
#with $0 pointing to the actual command, program, shell script,
#or function and $1, $2, $3, ...$9 as the arguments to the command.

echo "File Name: $0"
echo "First Parameter : $1"
echo "Second Parameter : $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Number of Parameters : $#"

#Special Parameters $* and $@

#There are special parameters that allow accessing all the command-line arguments at once. $* and $@ both will act
#the same unless they are enclosed in double quotes, "". Both the parameters specify the command-line arguments.
#However, the "$*" special parameter takes the entire list as one argument with spaces between and the "$@" special
#parameter takes the entire list and separates it into separate arguments.
#We can write the shell script as shown below to process an unknown number of commandline arguments with either
#the $* or $@ special parameters

for TOKEN in $*
do
   echo $TOKEN
done

#Exit Status
#The $? variable represents the exit status of the previous command.
#Exit status is a numerical value returned by every command upon its completion. As a rule, most commands return
#an exit status of 0 if they were successful, and 1 if they were unsuccessful.
#Some commands return additional exit statuses for particular reasons. For example, some commands differentiate
#between kinds of errors and will return various exit values depending on the specific type of failure.

