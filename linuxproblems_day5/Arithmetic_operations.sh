#! /bin/bash

function find_minimum_maximum() {
        min=100000
        max=0
        numbers=($1 $2 $3)
        for (( count=0; $count<$# ; count++ ))
        do
                if [ ${numbers[count]} -lt $min ]
                then
                        min=${numbers[count]};
                elif [ $max -lt ${numbers[count]} ]
                then
                        max=${numbers[count]};
                fi
        done
        echo $min;
        echo $max;
}

function Arithmetic_operations() {
	#numbers= $1
        #echo "Sum of these three numbers is " $(( $1 +$2 + $3 ))
        result=$(find_minimum_maximum $1 $2 $3)
        
        minimum=`echo $result | awk '{print $1}'`
        maximum=`echo $result | awk '{print $2}'`
        echo "The maximum and minimum of the given numbers is " $maximum "and " $minimum
	echo "The value of a+b*c is " $(( $1 + $2*$3));
	echo "The value of the expression c+a/b is "
	printf %.3f "$(( 10**3*$3+$1*10**3/$2 ))e-3"; printf "\n"
	echo "The value of the expression a%b+c is " $(($1%$2+$3))
	echo "The value of the expression a*b+c is " $(($1*$2+$3))
	#echo "Difference between 3 numbers is"
        #echo "B/w the maximum and minimum is "$(( $maximum - $minimum ))
        #echo "Product of these three numbers is " $(( $1*$2*$3 ))
        #echo "Quotients of each number dividing each other is"
        #echo "Numbers 1 and 2 ";divide $1 $2;
        #echo "Numbers 2 and 3 ";divide $2 $3;
        #echo "Numbers 3 and 1 ";divide $3 $1;
}

function divide() {
        printf %.3f "$(( $1*10**3/$2 ))e-3";
        printf "\n"
}

declare -A number
read -p "Enter first number a:" number[a]
read -p "Enter second number b:" number[b]
read -p "Enter third number c:" number[c]


Arithmetic_operations ${number[a]} ${number[b]} ${number[c]}
