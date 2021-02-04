#!/bin/bash -x

echo "Single Digit: "$(( $RANDOM%10 ))
echo "Dice Number: "$(( $RANDOM%6 + 1 ))
