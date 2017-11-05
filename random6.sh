#!/bin/bash
i=0
arr=(${array[6]})

while  [ $i -lt 6 ] && [ ${#arr[@]} -lt 6 ]
do
        n=$((RANDOM % 49))
        n=$[$n+1]
        if [[ " ${arr[@]} " =~ " ${n} " ]]; then
                continue
        fi
        arr[$i]=$n
        i=$[$i+1]
        echo -n $n\ \ 
done
echo

