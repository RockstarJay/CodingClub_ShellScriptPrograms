#!/bin/bash

read -p "Enter Year (YYYY) format :" year

if [ $((year % 4)) -eq 0 ]
then
  if [ $((year %100)) -eq 0 ]
     then
     if [ $((year %400)) -eq 0 ]
	then
	echo "Its a Leap year"
     else
        echo "It's not a Leap year"
     fi
   else
      echo "It's a Leap year"
  fi
else
  echo "It's not a Leap year"
fi

