#! /bin/bash -x
# this takes a number as input and checks if it is a palindrome

function is_palindrome() {
	number=$1;
	reverse=0;
	while [ $number -ne 0 ]
	do
		reverse+=$((number%10))
		number=$(($number/10))
	done
	if [ $reverse -eq $1 ]
	then	echo "True";
	else	echo "False";
	fi
}

read -p "Enter a number : " input_num
is_palindrome $input_num
