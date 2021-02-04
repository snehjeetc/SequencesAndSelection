#!/bin/bash -x

feet_to_in=12
in_to_feet=`echo "scale=4; 1 / 12 "|bc`
feet_to_m=0.3048
acre_to_m2=4046.86
forty_two_in=`echo "scale=2; 42 * $in_to_feet " | bc`
plot_area=`echo "scale=4; 60 * 40 * $feet_to_m * $feet_to_m " | bc`
plot_area_acre=`echo "scale=4; $plot_area / $acre_to_m2 " | bc`



