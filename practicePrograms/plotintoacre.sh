#!/bin/bash

read -p "Enter the plot in square meters :"sqme
acre=$((sqme*0.000247105))
echo $sqme "In Acre is : "$acre
