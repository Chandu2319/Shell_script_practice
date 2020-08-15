#! /bin/bash -x
# This computes all the prime factors of a given number

function is_prime() {
# this function takes a number as input and gives a boolean determining whether
# the number is prime or not
        number=$1;
        remainder=$number;
        if [ $number -lt 10 ]           # since we start divisor from 2
        then sqrt=$number;              # ideally it should be square root of the
        else sqrt=$(($number/2));       # number
        fi
        divisor=2
        while [ $remainder -ne 0 -a $divisor -lt $sqrt ]
        do
                remainder=$(( $number%$divisor ));
                divisor=$(($divisor + 1));
        done
        if [ $divisor -eq $sqrt ]
        then echo "True"
        else echo "False"
        fi
}

function prime_factorization() {
	#variables
	number=$1;
	divisor=2

	quotient=$number;
	while [ `is_prime $quotient` = "False" -a $divisor -lt $number ]
	do
		if [ $(( $quotient%$divisor )) -eq 0 ]
		then
			quotient=$(($quotient/$divisor))
			echo $divisor
			divisor=1
		fi
		divisor=$(($divisor+1));
		while [ `is_prime $divisor` = "False" ]
		do
			divisor=$(($divisor + 1));
		done
	done
	echo $quotient
}

read -p "Enter the number to be factorized: " input_num

prime_factors=$( prime_factorization $input_num)
echo "The prime factors of " $input_num "are "
echo $(echo $prime_factors | awk '{print $0}' )
