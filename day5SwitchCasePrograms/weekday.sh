#!/bin/bash

read -p "Enter the Number (1 = Monday ..7 = Sunday) : " num
case $num in
	1) echo "Momday" ;;
	2) echo "Tuesday" ;;
	3) echo "Wednesday" ;;
	4) echo "Thursday" ;;
	5) echo "Friday" ;;
	6) echo "Saturday" ;;
	7) echo "Sunday" ;;
esac
