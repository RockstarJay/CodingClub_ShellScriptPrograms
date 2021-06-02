#!/bin/bash
random1=$(((RANDOM%900)+100))
random2=$(((RANDOM%900)+100))
random3=$(((RANDOM%900)+100))
random4=$(((RANDOM%900)+100))
random5=$(((RANDOM%900)+100))
echo "1st Number : " $random1
echo "2nd Number : " $random2
echo "3rd Number : " $random3
echo "4th Number : " $random4
echo "5th Number : " $random5
max=5
min=5000

if [[ random1 -gt random2 ]]
then
	if [[ random1 -gt max ]]
	then
		max=$random1
	fi
	if [[ random2 -lt min ]]
	then
		min=$random2
	fi
else
	if [[ random2 -gt max ]]
	then
		max=$random2
	fi
	if [[ random1 -lt min ]]
	then
		min=$random1
	fi
fi

if [[ random2 -gt random3 ]]
then
	if [[ random2 -gt max ]]
	then
		max=$random2
	fi
	if [[ random3 -lt min ]]
	then
		min=$random3
	fi
else
	if [[ random3 -gt max ]]
	then
		max=$random3
	fi
	if [[ random2 -lt min ]]
	then
		min=$random2
	fi
fi

if [[ random3 -gt random4 ]]
then
	if [[ random3 -gt max ]]
	then
		max=$random3
	fi
	if [[ random4 -lt min ]]
	then
		min=$random4
	fi
else
	if [[ random4 -gt max ]]
	then
		max=$random4
	fi
	if [[ random3 -lt min ]]
	then
		min=$random3
	fi
fi

if [[ random4 -gt random5 ]]
then
	if [[ random4 -gt max ]]
	then
		max=$random4
	fi
	if [[ random5 -lt min ]]
	then
		min=$random5
	fi
else
	if [[ random5 -gt max ]]
	then
		max=$random5
	fi
	if [[ random4 -lt min ]]
	then
		min=$random4
	fi
fi
echo "Maximum Number is : " $max
echo "Minimum Number is : " $min
