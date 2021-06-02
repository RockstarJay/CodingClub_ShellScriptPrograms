#!/bin/bash

read -p "Enter n to find nth Harmonic Number : " n
harNum=0
for  (( i=1; i<=$n; i++ ))
do
   harNum=$(($harNum+$((1/$i))))
done
echo $harNum
