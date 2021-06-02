#!/bin/bash

echo "Choose a Number between 1 to 100"
echo "I will Try to Guess the Number"
read -p "Press 1 and Enter If you are Ready : " input
if [ $input -ne 1 ]
then
	exit
fi
start=1
end=100
while true
do
	mid=$(((($start+$end))/2))
	read -p " $mid is Your Number Enter 1 for Yes 0 for No : " res
	if [[ $res -eq 1 ]]
	then
		echo "Thank You For Playing"
		break
	else
		echo "Is the Number Greater or Smaller Than $mid "
		read -p "Enter 0 for smaller 1 Greater : " check
		if [ $check -eq 1 ]
		then
			start=$mid
		else
			end=$mid
		fi
	fi
done
