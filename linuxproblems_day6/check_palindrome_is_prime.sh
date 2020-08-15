#! /bin/bash
# This takes a number as input and checks if the given number is prime
# then find the palindrome(reverse) and check if that is prime or not

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

function is_palindrome() {
# checks if the given number is palindrome or not
        number=$1;
        reverse=$(echo $(find_palindrome $1 | awk '{print $1}'));
      	if [ $reverse -eq $1 ]
        then    echo "True";
        else    echo "False";
        fi
}

function find_palindrome() {
        number=$1;
        while [ $number -ne 0 ]
        do
                reverse+=$((number%10))
                number=$(($number/10))
        done
        echo $reverse;
}

# main program
read -p "Enter a number : " input_num
reverse_num=$(echo $(find_palindrome $input_num | awk '{print $1}'));
if [ `is_prime $input_num` = "True" ]
then
	echo "The given number "$input_num "is a prime number."
else
	echo "The given number "$input_num "is not a prime number."
fi
if [ `is_prime $reverse_num` = "True" ]
then
	echo "The palindrome of the given number" $reverse_num "is a prime number"
else
	echo "The palindrome of the given number" $reverse_num "is not a prime number"
fi
