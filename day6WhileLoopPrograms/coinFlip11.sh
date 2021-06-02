#!/bin/bash -x

isHead=1
countHead=0
countTails=0
while true
do
	random=$((RANDOM%2))
	if [ $random -eq 1 ]
	then
		countHead=$((countHead+1))
		if [ $countHead -eq 11 ]
		then
			echo "Head Wins"
			break
		fi
	else
		countTails=$((countTails+1))
		if [ $countTails -eq 11 ]
		then
			echo "Tails Wins"
			break
		fi
	fi
done
