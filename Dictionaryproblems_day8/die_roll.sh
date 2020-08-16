#! /bin/bash -x
# The die roll is obtained from RANDOM number generator and the results of how
# many times each number is cast is stored in a dictionary.

#variable declaration
declare -a die_roll_count
#initialization
die_roll_count[1]=0;
die_roll_count[2]=0;
die_roll_count[3]=0;
die_roll_count[4]=0;
die_roll_count[5]=0;
die_roll_count[6]=0;
max_num_of_cast=0		#this is the maximum of the number of times any of the numbers has been cast

function find_number_with_max_min_count() {
	max=0;
	min=1000;
	for ((count=1;$count<=${#die_roll_count[@]};count++))
	do
		die_roll=${die_roll_count[count]};
		if [ $die_roll -gt $max ]
		then
			num_at_max=$count;
			max=$die_roll;
		fi
		if [ $die_roll -lt $min ]
		then
			num_at_min=$count
			min=$die_roll;
		fi
	done
	echo $num_at_max $num_at_min
}

while [ $max_num_of_cast -lt 10 ]
do
	die_roll=$((RANDOM%6+1)) 	#this is the result of each die roll
	die_roll_count[die_roll]=$(( ${die_roll_count[die_roll]}+1 ))
	max_num=$(echo $(find_number_with_max_min_count | awk '{print $1}')) ;
	max_num_of_cast=${die_roll_count[max_num]}
done
echo The die rolls ${!die_roll_count[@]}
echo and their count ${die_roll_count[@]}
min_num=$(echo $(find_number_with_max_min_count | awk '{print $2}')) ;
echo "The number that reached 10 times(maximum) is " $max_num
echo "The number that has been cast minimum is " $min_num "which is only " ${die_roll_count[min_num]}
