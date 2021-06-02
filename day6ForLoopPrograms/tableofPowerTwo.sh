#!/bin/bash

read -p "Enter the value of N : " n
for (( i=1; i<=$n; i++))
do
   powtwo=2
   for (( j=1; j<=i; j++ ))
   do
      powtwo=$(($powtwo*2))
   done
		echo $powtwo
done
