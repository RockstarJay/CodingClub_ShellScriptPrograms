#!/bin/bash

array=(-1 2 -3 4 -4 5 -5 6 7 -2 9)
for (( i=0;i<${#array[@]}; i++ ))
do
	for (( j=$i+1; j<${#array[@]}; j++ ))
	do
		for (( k=$j+1; k<${#array[@]}; k++ ))
		do
			sum=$((${array[i]}+${array[j]}+${array[k]}))
			if [ $sum -eq 0 ]
			then
				echo ${array[i]} "+" ${array[j]} "+" ${array[k]} "=" $sum
			fi
		done
	done
done
