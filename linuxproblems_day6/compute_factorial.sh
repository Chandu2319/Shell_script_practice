#! /bin/bash -x
# this takes an integer as input and gives the factorial of that number

read -p "Enter the value of the number n : " number;

factorial=1;
for (( count=1; $count <= $number; count++ ))
do
	factorial=$(( $factorial*$count ))
done
echo "The factorial of "$number " is " $factorial
