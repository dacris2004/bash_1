#!/bin/bash

if [ $1 ] && [ $2 ] && [ $1 -le $2 ]; then
 i=0
 arr=(${array[$1]})
 if [ ! $2 ]; then
   max=49
 else
   max=$2
 fi
 while  [ $i -lt $1 ] && [ ${#arr[@]} -lt $1 ]
 do
        n=$((RANDOM % $max))
        n=$[$n+1]
        if [[ " ${arr[@]} " =~ " ${n} " ]]; then
                continue
        fi
        arr[$i]=$n
        i=$[$i+1]
        echo -n $n\ \ 
 done
else
 echo "Usage: random.sh <howmany> <maxnumber> (homany<=maxnumber)"
fi
echo

