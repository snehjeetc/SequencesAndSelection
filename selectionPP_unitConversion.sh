#!/bin/bash -x

read -p "Enter the magnitude and unit" magnitude unit
read -p "will be converted to ? (ft, inch, m) " ch

feet_to_in=12
in_to_feet=`echo "scale=4; 1 / 12 "|bc`
feet_to_m=`echo "scale=4; 0.3048 "|bc`
m_to_in=`echo "scale=4; 39.3701 " |bc`

case $ch in 
    ft)
        case $unit in
            ft)
                res=$magnitude
                ;;
            inch)
                res=`echo "scale=4; $magnitude / $feet_to_in " | bc`
                ;;
            m)
                res=`echo "scale=4; $magnitude / $feet_to_m " | bc`
                ;;
            *)
                echo "Wrong unit entered"
                ;;
        esac
            ;;
    inch)
        case $unit in
            ft)
                res=`echo "scale=4; $magnitude * $feet_to_in " | bc`
                ;;
            inch)
                res=$magnitude
                ;;
            m)
                res=`echo "scale=4; $magnitude * $m_to_in " | bc`
                ;;
            *)
                echo "Wrong unit entered"
                ;;
        esac
            ;;
    m)
        case $unit in
            ft)
                res=`echo "scale=4; $magnitude * $ft_to_m " | bc`
                ;;
            inch)
                res=`echo "scale=4; $magnitude / $m_to_in " | bc`
                ;;
            m)
                res=$magnitude
                ;;
            *)
                echo "Wrong unit entered"
                ;;
        esac
            ;;
    *)
        echo "Wrong conversion unit entered"
        ;;
    esac

