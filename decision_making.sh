#!/usr/bin/env bash
#The if...else statement
#The case...esac statement

#Unix Shell supports following forms of if…else statement −
#
#if...fi statement
#if...else...fi statement
#if...elif...else...fi statement
#Most of the if statements check relations using relational operators

#The case...esac Statement
#There is only one form of case...esac statement which has been described in detail here −
#
#case...esac statement
#The case...esac statement in the Unix shell is very similar to the switch...case statement we have
#in other programming languages like C or C++ and PERL, etc.

# example
#If
a=10
b=20

if [ $a == $b ]
then
   echo "a is equal to b"
fi

if [ $a != $b ]
then
   echo "a is not equal to b"
fi


# some use cases
# below is wrong to add sq bracket around one variable
var=false
if [ $var ]; then
  echo "This won't print, var is false!"
fi


# dont forget to ad sq brackets
if [ $var == true ]; then
echo 'Anurag'
fi


var='echo this text will be displayed when the condition is evaluated'
if $var; then
  echo 'Muahahaha!'
fi


# if ...else...fi

#if [ expression ]
#then
#   Statement(s) to be executed if expression is true
#else
#   Statement(s) to be executed if expression is not true
#fi

A=10
B=20

if [ $A == $B ]; then
echo "a is equal to b"
else
echo "a is not equal to b"
fi

#The if...elif...fi
# this statement is the one level advance form of control statement that allows Shell to make correct decision out of several conditions.

a=20
b=30

if [ $a == $b ]; then
echo "a is equal to b"
elif [ $a -gt $b ]; then
echo "a is greater than b"
elif [ $a -lt $b ]; then
echo "a is less than b"
else
echo "None of the conditions met"
fi
