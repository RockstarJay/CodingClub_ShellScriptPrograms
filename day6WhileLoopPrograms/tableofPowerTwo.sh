#!/bin/bash

read -p "Enter the value of N : " n
i=1
powtwo=2
while  [ $i -le $n ];
do
	echo $powtwo
	powtwo=$((powtwo*2))
	i=$(($i+1))
	if [ $powtwo -eq 256 ]
	then
		echo 256
		echo "Execution broke as the limit is reached"
		break
	fi
done
