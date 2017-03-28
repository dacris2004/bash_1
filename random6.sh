#!/bin/bash
i=0
while [ $i -lt 6 ]
do 
	n=$((RANDOM % 49)) 
	i=$[$i+1]
	echo -n $[$n+1]\ \  
done

