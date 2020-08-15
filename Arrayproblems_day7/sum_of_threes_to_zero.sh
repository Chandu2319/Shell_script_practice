#! /bin/bash -x
# this takes an integer n as input and a random array of n single digit numbers
# is created and then all pairs of three numbers are to be found such that 
# their sum is zero.

#variable declaration
index=0
declare -a num_array
declare -a set_of_threes

read -p "Enter a value of integer n : " num_of_int
#creating array
for (( count=0; count<$num_of_int ; count++ ))
do
	num_array[count]=$(( RANDOM%20 - 10 ));
done
echo ${num_array[@]}

for(( itr_1=0; itr_1<$num_of_int ; itr_1++ ))
do
	for(( itr_2=itr_1+1; itr_2<$num_of_int ; itr_2++ ))
	do
		for(( itr_3=itr_2+1; itr_3<$num_of_int ; itr_3++ ))
		do
			if [ $(( ${num_array[itr_1]} + ${num_array[itr_2]} + ${num_array[itr_3]} )) -eq 0 ]
			then
				set_of_threes[index]=$( echo "${num_array[itr_1]}:${num_array[itr_2]}:${num_array[itr_3]}; " )
				index+=1;
			fi
		done
	done
done

echo 	${set_of_threes[@]}
