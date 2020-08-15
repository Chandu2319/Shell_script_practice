#!/bin/bash
# this reads a number n as input from the command-line and gives the nth term
# and sum of n terms of a harmonic series.

#variables
harmonic_number=0
harmonic_sum=0

read -p "Enter the value of the number n: " n

for (( count=1; $count <= $n; count++ ))
do
	harmonic_number=`printf %.4f "$(( 10000/$count ))e-4"`;
	printf %.4f "$harmonic_number"; printf "\t"
	harmonic_sum=$(( $harmonic_sum+10**4/$count ));
	#echo $harmonic_sum
	#printf %.4f "$(($harmonic_sum))e-4"
done
printf "\n"
echo "sum of HP upto " $n "terms is ";
printf %.3f "$(( $harmonic_sum ))e-4";
