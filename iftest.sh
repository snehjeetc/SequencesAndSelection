#!/bin/bash -x

var1=10;
var2=10;

if [ $var1 -ge $var2 ];
then
	echo "$var2 >= $var1"
else
	echo "$var1 >= $var2"
fi
