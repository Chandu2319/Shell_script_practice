#!/bin/bash -x

read -p "Enter a year " year
if [ $(($year%400)) -eq 0 ]
then
	echo "The given year is a leap year"
elif [ $(($year%100)) -eq 0 ]
then
	echo "The given year is not a leap year"
elif [ $(($year%4)) -eq 0 ]
then
	echo "The given year is a leap year"
else
	echo "The given year is not a leap year"
fi
