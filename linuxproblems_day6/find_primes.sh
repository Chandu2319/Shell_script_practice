#! /bin/bash -x

function is_prime() {
# this function takes a number as input and gives a boolean determining whether
# the number is prime or not
	number=$1;
	remainder=$number;
	if [ $number -lt 10 ]		# since we start divisor from 2
	then sqrt=$number;		# ideally it should be square root of the
	else sqrt=$(($number/2));	# number
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

function find_primes_in_range() {
	lower_bound=$1;
	upper_bound=$2;
	echo -n "The numbers "
	for (( itr_num=lower_bound; itr_num <= upper_bound ; itr_num++))
	do
		if [ `is_prime $itr_num` = "True" ]
		then echo -n "$itr_num "
		fi
	done
	echo -n "are prime"
}

read -p "Enter the lower bound of the range" lower_bound;
read -p "Enter the upper bound of the range" upper_bound;

find_primes_in_range $lower_bound $upper_bound
