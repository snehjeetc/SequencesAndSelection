#!/bin/bash -x

read -p "Enter the Month [1 - 12] " m
read -p "Enter the day [1 - 31] " d

if [[ $m -ge 3 && $m -le 7 ]]
then
	if [[ $m -eq 3 && $d -le 31 && $d -ge 20 && $d -le 31 ]]
	then
		echo "true"
	elif [[ $m -gt 3 && $m -lt 7 && $d -ge 1 && $d -le 31 ]]
	then
		echo "true"
	elif [[ $m -eq 7 && $d -ge 1 && $d -le 20 ]]
	then 
		echo "true"
	else
		echo "false"
	fi
else
	echo "false"
fi
