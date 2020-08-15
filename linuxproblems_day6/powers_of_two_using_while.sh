#! /bin/bash
# this takes an integer as an input and prints powers of 2 less thanor equal to 2^n
# till 256 is reached

read -p "Enter the value of an integer n : " input_num;
#initialize variables
power_of_2=1
count=0

echo n "	" 2^n
while [ $power_of_2 -lt 256 -a $power_of_2 -le $((2**$input_num)) ]
do
	echo $count "	" $power_of_2
	count=$(($count+1));
	power_of_2=$(( 2**count ))
done
