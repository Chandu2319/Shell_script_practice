#! /bin/bash -x
# this takes in a range b/w 0 and 100 and find the twin numbers within that 
# range and store them in an array

#variables
declare -a twin_number;
index=0;
read -p "Enter the lower_bound of the range" lower_bound
read -p "Enter the upper bound of the range" upper_bound
itr_num=$lower_bound;		#the iterating number
while [ $itr_num -le $upper_bound ]
do
	remainder=$(($itr_num%11));
	if [ $(($itr_num%11)) -eq 0 ]
	then
		twin_number[index]=$itr_num;
		index+=1;
	fi
	itr_num=$(($itr_num+11-$remainder));
done

echo ${twin_number[@]}
