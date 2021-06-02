#!/bin/bash

read -p "Enter a Number : " num

is_prime(){
	for((i=2; i<=num/2; i++))
	do
	  if [ $((num%i)) -eq 0 ]
	  then
	    echo "$num is not a Prime Number."
	    exit
	  fi
	done
	echo "$num is a Prime Number."
}

get_palindrome() {
s=0
rev=""
temp=$num
while [ $num -gt 0 ]
do
	s=$(($num%10))
	num=$(($num/10))
	rev=$(echo ${rev}${s})
done
echo "Palindrome is $rev"
}

is_prime2 () {
num2=$rev
for((i=2; i<=num2/2; i++))
do
  if [ $((num2%i)) -eq 0 ]
  then
    echo "$num2 is not a Prime Number."
    exit
  fi
done
echo "$num2 is a Prime Number."

}

is_prime
get_palindrome
is_prime2
