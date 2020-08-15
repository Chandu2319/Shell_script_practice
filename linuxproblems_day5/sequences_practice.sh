#!/bin/bash

#to get a random single digit
echo $(( RANDOM%10 ))

#to get a random dice number b/w 1 to 6
echo $(( RANDOM%6 + 1 ))

#to get sum of two random dice number
echo $(( $(( RANDOM%6+1 ))+$(( RANDOM%6+1 )) ))

#to get sum and average of 5 numbers
read -p "enter number of 2 digit numbers" num
for (( count=0 ; $count < $num ; count++))
do
	sum=$(( $sum + $(( RANDOM%100 )) ));
done
echo "sum of 5 numbers is:"$sum
echo "Average of 5 numbers is:" $(( $sum/$num ))

#unit conversion
#part_a convert 42in to ft
echo "42 inch is equivalent to " $((42/12)) "feet"
#part_b convert 60x40 sqft to sq meter
printf "The rectangular plot in meters is ";
printf %.3f "$((60*3048))e-4"; printf "x"; printf %.3f "$((40*3048))e-4";
printf " sq meters or "; printf %.4f "$(( 60*40*3048**2 ))e-8"; printf "sq.m\n"
#part_c convert 25 plot areas from sqft to acres
for (( count=0; $count<25; count++ ))
do
	plot_areas[count]=$((RANDOM%10000))
	printf "${plot_areas[count]} sqft \n"
	printf %.3f "$((${plot_areas[count]}*10**4/43560))e-4"
	printf " is the plot area in acres. \n"
done
