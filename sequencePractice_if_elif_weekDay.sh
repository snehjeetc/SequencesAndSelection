#!/bin/bash -x

var1=$(( RANDOM%7 + 1))

if [ $var1 -eq 1 ]
then
        echo "Monday"
elif [ $var1 -eq 2 ] 
then
        echo "Tuesday"
elif [ $var1 -eq 3 ] 
then
        echo "Wednesday"
elif [ $var1 -eq 4 ]
then
        echo "Thursday"
elif [ $var1 -eq 5 ]
then
        echo "Friday"
elif [ $var1 -eq 6 ] 
then
        echo "Saturday"
else 
        echo "Sunday"
fi
