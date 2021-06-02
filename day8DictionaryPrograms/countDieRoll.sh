#!/bin/bash

function maximum() {
	largest=0
	arrLength=${#count[@]}
	for (( arr=0; arr<$arrLength; arr++ ))
	do
		arrayValue=${count[arr]}
		if [ $arrayValue -gt $largest ]
		then
			largest=$arrayValue
			maxx=$arr
		fi
	done
	echo "$((maxx+1)) Appeared On Roll $largest Times"
}
function minimum() {
	smallest=7
	arrLength=${#count[@]}
	for (( arr=0; arr<$arrLength; arr++ ))
	do
		arrayValue=${count[arr]}
		if [ $arrayValue -lt $smallest ]
		then
			smallest=$arrayValue
			minn=$arr
		fi
	done
	echo "$((minn+1)) Appeared On Roll only $smallest Times"
}

declare -A rollDie
counter=0
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0

while [ $count1 -lt 10 -a $count2 -lt 10 -a $count3 -lt 10 -a $count4 -lt 10 -a $count5 -lt 10 -a $count6 -lt 10 ]
do
	random=$(((RANDOM%6)+1))
	rollDie[((counter++))]=$random
	#echo -n "$random "
	case $random in
	1)count1=$((count1+1));;
	2)count2=$((count2+1));;
	3)count3=$((count3+1));;
	4)count4=$((count4+1));;
	5)count5=$((count5+1));;
	*)count6=$((count6+1));;
	esac
done

count[0]=$count1
count[1]=$count2
count[2]=$count3
count[3]=$count4
count[4]=$count5
count[5]=$count6

echo $'\n'count: ${count[@]}
maximum
minimum
