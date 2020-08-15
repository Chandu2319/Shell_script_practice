#! /bin/bash -x
# In this program we find the second largest and smallest number in an array
# of 10 numbers
#initialize variables
second_max=0
maximum=0
minimum=1000
second_min=1000

for(( count=0;count<10;count ++))
do
	number[count]=$((RANDOM%1000));
	if [ ${number[count]} -lt $second_min ]		# finding second least number
	then
		second_min=${number[count]}
		if [ $second_min -lt $minimum ]
		then
			second_min=$minimum;
			minimum=${number[count]};
		fi
	fi

	if [ ${number[count]} -gt $second_max ]		# finding second highest number
	then
		second_max=${number[count]}
		if [ $second_max -gt $maximum ]
		then
			second_max=$maximum;
			maximum=${number[count]};
		fi
	fi

done
# printing output
echo "The array of numbers is "${number[@]}
echo "The second minimum and maximum are " $second_min " and "  $second_max;
