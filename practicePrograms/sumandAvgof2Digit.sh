#!/bin/bash -x

for i in {1..5}
do
randomNums=$(( ( RANDOM%90 )+10 ))
sum=$((sum+randomNums))
done
echo "The Sum is : "$sum
echo "The Average is : "$((sum/5))
