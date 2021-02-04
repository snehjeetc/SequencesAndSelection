#!/bin/bash -x

sum=0
for n in 1 2 3 4 5
do
	var=$(( $RANDOM%100 ))
 	sum=$(( $var + $sum ))
done

average=`echo "scale=4; $sum / 5" | bc`
