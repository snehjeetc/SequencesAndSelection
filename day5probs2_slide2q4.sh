#!/bin/bash -x

read -p "Enter three numbers" a b c

res1=$(($a + $b * $c))
res2=$(($a%$b + $c))
res3=$(($c + $a/$b))
res4=$(($a*$b + $c))

max=$res1
min=$res1

if [ $max -lt $res2 ] 
then 
    max=$res2
fi

if [ $max -lt $res3 ] 
then 
    max=$res3
fi

if [ $max -lt $res4 ] 
then 
    max=$res4
fi

if [ $min -gt $res2 ] 
then 
    min=$res2
fi

if [ $min -gt $res3 ] 
then 
    min=$res3
fi

if [ $min -gt $res4 ]
then 
    min=$res4
fi


