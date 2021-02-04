#!/bin/bash -x

var1=$(( $RANDOM%6 + 1))
var2=$(( $RANDOM%6 + 1))
echo  $(($var1 + $var2))
