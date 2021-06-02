#!/bin/bash

read -p "Enter value in feet :" ft
meter=$((ft*3048/10000))
echo $ft "In Meters is: "$meter
