#!/usr/bin/env bash

# scalar variable
#NAME01="Zara"
#NAME02="Qadir"
#NAME03="Mahnaz"
#NAME04="Ayan"
#NAME05="Daisy"

# declaring array variable
NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Mahnaz"
NAME[3]="Ayan"
NAME[4]="Daisy"

# accessing
echo ${NAME[2]}
echo ${NAME[*]}
echo ${NAME[@]}

