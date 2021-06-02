#!/bin/bash

echo "Following Program shows the name of digit place in number "
echo "As in 1 is unit, 10 is Ten 100 in Hundred"
read -p "Enter The Number : " num
case $num in
	1) echo "Unit" ;;
	10) echo "Ten" ;;
	100) echo "Hundred" ;;
	1000) echo "Thousand" ;;
	10000) echo "Ten Thousand" ;;
	100000) echo "Lakh" ;;
	1000000) echo "Millions" ;;
	10000000) echo "Crore" ;;
esac

