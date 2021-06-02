#!/bin/bash

read -p "Enter Date: " date
read -p "Enter Month: " month

# should validate for input non-blank and numeric

combo=0
result="False"
st=1

if [ $month -ge 3 -a $month -le 6 ]    #30 days for Apr,Jun and 31 days for Mar, May
then
    dlimit=$((30 + (month % 2)))
    if [ $date -ge 1 -a $date -le $dlimit ]
    then
        combo=$(((Month * 100) + date))
        if [ $combo -ge 320 -a $combo -le 620 ]
	then
            result="True"
            st=0
        fi
    fi
fi

echo "$month/$date $result"
exit $st
