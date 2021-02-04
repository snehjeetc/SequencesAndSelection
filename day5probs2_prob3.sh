#!/bin/bash -x

read -p "Enter the Year (4 Digits ) " year

if [ $(($year%4)) -eq 0 ]
then
    if [ $(($year%100)) -eq 0 ] 
    then
        if [ $(($year%400)) -eq 0 ] 
        then
            echo "This is a leap year"
        else
            echo "The year is not a leap year"
        fi
    else
        echo "This is a leap year"
    fi
else
    echo "This is not a leap year"
fi

