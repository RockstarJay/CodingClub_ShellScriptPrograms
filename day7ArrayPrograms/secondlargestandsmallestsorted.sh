#!/bin/bash

for ((i=0; i<10; i++))
do
	random=$(((RANDOM%900)+100))
	arr[i]=$random
done
echo "Original Array " ${arr[@]}
for ((i = 0; i<10; i++))
do
    for((j = 0; j<10-$i-1; j++))
    do
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$(($j+1))]}
            arr[$(($j+1))]=$temp
        fi
    done
done
echo "Sorted Array " ${arr[*]}
echo "Second Largest Element : " ${arr[1]}
echo "Second Smallest Element : " ${arr[8]}
