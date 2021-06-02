#!/bin/bash

second_smallest() {
min=1000
smin=1000
arr=("$@")
for i in "${arr[@]}"
do
   if [ $i -le $min ]
   then
      min=$i
      smin=$smin
   elif [ $i -lt $smin ]
   then
      smin=$i
   fi
done
   echo "Second Smallest : " $smin
}

second_largest() {
max=0
smax=0
arr=("$@")
for i in "${arr[@]}"
do
   if [ $i -ge $max ]
   then
      max=$i
      smin=$min
   elif [ $i -gt $smax ]
   then
      smax=$i
   fi
done
   echo "Second Largest : " $smax
}


for (( i=1;i<=10;i++ ))
do
   array[$i]=$(((RANDOM%900)+100))
done
echo "${array[@]}"
second_smallest "${array[@]}"
second_largest "${array[@]}"
