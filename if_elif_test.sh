#!/bin/bash -x

read -p "Enter var1 " var1;
read -p "Enter var2 " var2;
if [ $var2 -gt $var1 ];
then 
	echo "$var2 is greater than $var1"
elif [ $var2 -eq $var1 ] 
then 
	echo "Variables are equal"
else
	echo "$var2 is less than $var1"
fi

