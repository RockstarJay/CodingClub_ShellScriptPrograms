#!/bin/bash

echo "This is a Unit Conversion Program"
echo " 1 for Fahrenheit 0 for Celsius"
unit_conversion () {
read -p " Enter Your Choice (1/0) : " choice
case $choice in
	1)
		read -p "Enter Input In Degree Celsius : " dc
		if [ $dc -lt 1 ]
		then
			echo "You are Below Freezing Point"
			break
		elif [ $dc -gt 100 ]
		then
			echo "You are Above Boiling Point"
		else
			degF=$((($dc*9/5)+32))
			echo "$dc C In Degree Fahrenheit Is $degF F"
		fi
		;;
	0)
		read -p "Enter Input in Degree Fahrenheit : " df
		if [ $df -lt 32 ]
		then
			echo "You are Below Freezing Point"
			break
		elif [ $df -gt 212 ]
		then
			echo "You are Above Boiling Point"
			break
		else
			degC=$((($df-32)*5/9))
			echo "$df F In Degre Celsius Is $degC C"
		fi
		;;
esac
}

unit_conversion
