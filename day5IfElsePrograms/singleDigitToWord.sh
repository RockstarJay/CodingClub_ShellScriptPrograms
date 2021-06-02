#!/bin/bash 	
read -p "Enter the Single Digit Number (0 to 9) : " Num
if [ $Num -eq 0 ]
then
    echo "Zero"
elif [ $Num -eq 1 ]
then
    echo "One"
elif [ $Num -eq 2 ]
then
    echo "Two"
elif [ $Num -eq 3 ]
then
    echo "Three"
elif [ $Num -eq 4 ]
then
    echo "Four"
elif [ $Num -eq 5 ]
then
    echo "Five"
elif [ $Num -eq 6 ]
then
    echo "Six"
elif [ $Num -eq 7 ]
then
    echo "Seven"
elif [ $Num -eq 8 ]
then
    echo "Eight"
elif [ $Num -eq 9 ]
then
    echo "Nine"
else
    echo "Plese Check The Number"
fi
