#!/bin/bash -x

read -p "enter a number " number

if [ -10 -lt $number -a $number -lt 10 ]
then
	echo "The order of the number is unit."
elif [ -100 -lt $number -a $number -lt 100 ]
then
	echo "The order of the number is ten."
elif [ -1000 -lt $number -a $number -lt 1000 ]
then
	echo "The order of the number is hundred."
elif [ -10000 -lt $number -a $number -lt 10000 ]
then
	echo "The order of the number is thousand."
elif [ -100000 -lt $number -a $number -lt 100000 ]
then
	echo "The order of the number is ten thousands."
fi
