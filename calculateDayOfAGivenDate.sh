#!/bin/bash -x

month=$1
day=$2
year=$3

if [[ $month -le 0 || $month -gt 12 ]]
then
    echo "Invalid Month"
    exit 1
fi

if [[ $day -le 0 || $day -gt 31 ]]
then
    echo "Invalid Day"
    exit 1
fi

if [[ $year -lt 0 ]]
then 
    echo "Invalid Year"
    exit 1
fi



y0=$(( $year - ( 14-$month) / 12 )) 
x=$(( $y0 + ($y0/4) - ($y0/100) + ($y0/400) ))
m0=$(( $month + 12*( (14 -$month)/12 ) -2 ))
d0=$(( ( $day + x + 31*($m0/12) )%7 ))

case $d0 in 
    0)
        echo "Sunday"
        ;;
    1)
        echo "Monday"
        ;;
    2)
        echo "Tuesday"
        ;;
    3)
        echo "Wednesday"
        ;;
    4)
        echo "Thursday"
        ;;
    5)
        echo "Friday"
        ;;
    6) 
        echo "Saturday"
        ;;
esac

