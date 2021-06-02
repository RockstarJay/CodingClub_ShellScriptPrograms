#!/bin/bash
read -p "Enter First Number : " num
read -p "Enter Second Number : " num2
check_palindrome() {
s=0
rev=""
temp=$num
while [ $num -gt 0 ]
do
	s=$(($num%10))
	num=$(($num/10))
	rev=$(echo ${rev}${s})
done
if [ $rev -eq $num2 ]
then
	echo "Numbers are Palindrome"
else
	echo "Numbers are Not Palindrome"
fi
}
check_palindrome
