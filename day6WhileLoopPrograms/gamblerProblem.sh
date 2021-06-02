#!/bin/bash

start=100
goal=200
bet=1
won=0
loose=0
while true
do
	random=$((RANDOM%2))
	if [ $random -eq 1 ]
	then
		won=$((won+1))
		start=$(($start+($bet*2)))
		if [ $start -eq $goal ]
		then
			echo "Gambler Win"
			break
		fi
	else
		loose=$((loose+1))
		start=$(($start-($bet*2)))
		if [ $start -eq 0 ]
		then
			echo "Gambler Loose"
			break
		fi
	fi
done
echo "Gambler Wins $won Times"
echo "Gambler Loss $loose Times"
