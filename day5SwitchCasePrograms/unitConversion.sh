#!/bin/bash

echo "This is Unit Conversion Script"
echo "Enter 1 for Feet to Inch"
echo "Enter 2 for Feet to Meter"
echo "Enter 3 for Inch to Feet"
echo "Enter 4 for Meter to Feet"
read -p "Enter the Choice : " choice
case $choice in
	1) read -p "Enter Feet : " ft
		inch=$((ft*12))
		echo $ft "Feet in Inches are : "$inch
		;;
	2) read -p "Enter Feet : " fit
		meter=$((fit*3))
		echo $fit "Feet in Meters are : "$meter
		;;
	3) read -p "Enter Inch : " ich
		feet=$((ich/12))
		echo $ich "Inch in Feet are : "$feet
		;;
	4) read -p "Enter Meter : " mtr
		fet=$((mtr*3))
		echo $mtr "Meter in Feet are : "$fet
		;;
esac
