#! /bin/bash -x
# this reads a number as input and prints a table of the numbers upto the input number
# and 2 to the power of that number.

read -p "Enter the number of exponent of two to be printed " number
if [$number < 0]
then
	echo "The input is not valid"
else
	for (( count=1; $count<=$number;count++ ))
	do
		#power_of_n= $(( 2**$n ));
		echo $count"   " $((2**$count));
	done
fi
