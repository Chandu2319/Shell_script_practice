#! /bin/bash -x

read -p "Enter date and Month (dd MM) " date
read month

if [ 3 -lt $month -a $month -lt 6 ]
then
	echo "True"
elif [ $month -eq 3 -a $date -gt 20 ]
then
	echo "True"
elif [ $month -eq 6 -a $date -lt 20 ]
then
	echo "True"
else
	echo "False"
fi
