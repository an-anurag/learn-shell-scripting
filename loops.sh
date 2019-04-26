#!/usr/bin/env bash
# the while loop
# syntax
#while command
#do
#   Statement(s) to be executed if command is true
#done

a=1
while [ $a -le 10 ]
do
    echo "Anurag"
    a=`expr $a + 1`
done

#######################################################
# FOR LOOP
#for var in word1 word2 ... wordN
#do
#   Statement(s) to be executed for every word.
#done

for i in 0 1 2 3 4 5 6 7 8 9
do
echo $i
done

# listing all files with for loop
for file in $HOME/*
do
echo $file
done

#####################################################


#UNTIL

#The while loop is perfect for a situation where you need to execute a set of commands while some condition is true. Sometimes you need to execute a set of commands until a condition is true.

#until command
#do
#   Statement(s) to be executed until command is true
#done

a=0
until [ ! $a -lt 10 ]
do
    echo $a
    a=`expr $a + 1`
done


######################################################
# SELECT
#The select loop provides an easy way to create a numbered menu from which users can select options. It is useful when you need to ask the user to choose one or more items from a list of choices.
# Syntax

#select var in word1 word2 ... wordN
#do
#   Statement(s) to be executed for every word.
#done

select DRINK in tea cofee water juice appe all none
do
   case $DRINK in
      tea|cofee|water|all)
         echo "Go to canteen"
         ;;
      juice|appe)
         echo "Available at home"
      ;;
      none)
         break
      ;;
      *) echo "ERROR: Invalid selection"
      ;;
   esac
done
