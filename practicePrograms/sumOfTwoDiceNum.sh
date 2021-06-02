#!/bin/bash -x

randomNum1=$(((RANDOM%6)+1))
randomNum2=$(((RANDOM%6)+1))
sum=$((randomNum1+randomNum2))
echo "The Sum of Two Dice Number : "$sum
