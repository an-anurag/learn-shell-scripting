#!/bin/bash
#pwd

#A shell variable is capable enough to hold a single value. These variables are called scalar variables.

#Variable Types
#When a shell is running, three main types of variables are present −
#
#Local Variables −
#A local variable is a variable that is present within the current instance of the shell. It is not available to
#programs that are started by the shell. They are set at the command prompt.
#
#Environment Variables −
#An environment variable is available to any child process of the shell. Some programs need environment variables in
#order to function correctly. Usually, a shell script defines only those environment variables that are needed by the programs that it runs.
#
#Shell Variables −
#A shell variable is a special variable that is set by the shell and is required by the shell in order to function
#correctly. Some of these variables are environment variables whereas others are local variables.


# by convention variable names are in uppercase
CURRENT_DIR=pwd
echo $CURRENT_DIR
VAR_1='Anurag Gundappa'
# to access the variable value prefix its name with $
echo $VAR_1

# making variables read-only
NAME="Zara Ali"
readonly NAME
# error readonly variable cannot be modified
#NAME='Anurag'

# Unsetting variables
PHONE="9975753003"
unset PHONE
echo $PHONE

#Unix / Linux - Special Variables


echo "The filename of the current script", $0
echo $n
echo "The number of arguments supplied to a script", $#
echo $*
echo $@
echo "The exit status of the last command executed", $?
echo "The process number of the current shell.
For shell scripts, this is the process ID under which they are executing", $$
echo "The process number of the last background command", $!