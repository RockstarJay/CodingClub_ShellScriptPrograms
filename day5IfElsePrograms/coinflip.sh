#!/bin/bash

isHead=0
randomNum=$((RANDOM%2))
if [ $randomNum -eq $isHead ]
then
    echo "Head"
else
    echo "Tails"
fi
