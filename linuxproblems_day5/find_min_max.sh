#! /bin/bash -x

min=1000
max=0
for ((count=0;count<5;count++))
do
	read -p "enter a 3 digit number:" numbers[count]
	if [ ${numbers[count]} -gt 1000 ]
	then
		echo "The number entered is not valid"
		break
	fi
	if [ ${numbers[count]} -lt $min ]
	then
		min=${numbers[count]};
	elif [ $max -lt ${numbers[count]} ]
	then
		max=${numbers[count]};
	fi
done
echo "The list of numbers entered is"${numbers[@]}
echo "The maximum and minimum of these numbers is " $max $min
