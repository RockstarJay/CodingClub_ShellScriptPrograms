#!/bin/bash
echo "This Program calculates arithmetic operations and find the max and  min results of them"
read -p "Enter value of a: " a
read -p "Enter value of b: " b
read -p "Enter value of c: " c
result1=$(($a+$b*$c))
result2=$(($a%$b+$c))
result3=$(($c+$a/$b))
result4=$(($a*$b+$c))

echo "1St Operation : " $result1
echo "2nd Operation : " $result2
echo "3rd Opeartion : " $result3
echo "4th Operation : " $result4
max=5
min=100

if [[ result1 -gt result2 ]]
then
	if [[ result1 -gt max ]]
	then
		max=$result1
	fi
	if [[ result2 -lt min ]]
	then
		min=$result2
	fi
else
	if [[ result2 -gt max ]]
	then
		max=$result2
	fi
	if [[ result1 -lt min ]]
	then
		min=$result1
	fi
fi

if [[ result2 -gt result3 ]]
then
	if [[ result2 -gt max ]]
	then
		max=$result2
	fi
	if [[ result3 -lt min ]]
	then
		min=$result3
	fi
else
	if [[ result3 -gt max ]]
	then
		max=$result3
	fi
	if [[ result2 -lt min ]]
	then
		min=$result2
	fi
fi

if [[ result3 -gt result4 ]]
then
	if [[ result3 -gt max ]]
	then
		max=$result3
	fi
	if [[ result4 -lt min ]]
	then
		min=$result4
	fi
else
	if [[ result4 -gt max ]]
	then
		max=$result4
	fi
	if [[ result3 -lt min ]]
	then
		min=$result3
	fi
fi
echo "Maximum is : " $max
echo "Mimimum is : " $min
