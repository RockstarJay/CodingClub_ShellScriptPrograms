#!/bin/bash

read -p "Enter Numbers as 1, 10 , 100, 1000 : " num
if [ $num -eq 1 ]
then
	echo "Unit"
elif [ $num -eq 10 ]
then
	echo "Ten"
elif [ $num -eq 100 ]
then
	echo "Hundred"
elif [ $num -eq 1000 ]
then
	echo "Thousand"
elif [ $num -eq  10000 ]
then
	echo "Ten Thousand"
elif [ $num -eq 100000 ]
then
	echo "Lakh"
elif [ $num -eq 1000000 ]
then
	echo "Million"
elif [ $num -eq 10000000 ]
then
	echo "Crore"
fi
