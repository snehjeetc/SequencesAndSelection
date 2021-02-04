#!/bin/bash -x

max=0
min=1000

for a in 1 2 3 4 5 
do
	var=$(( $RANDOM%900 + 100 ))
	if [ $var -gt $max ]
	then 
		max=$var
	fi
	if [ $var -lt $min ] 
	then 
		min=$var
	fi
done
echo "Maximum : $max and Minimum : $min "
