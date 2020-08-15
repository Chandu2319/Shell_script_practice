#! /bin/bash -x
# finding the second least and highest numbers in an array with 10 numbers
# after sorting the whole array

# creating an array
for(( count=0;count<10;count ++))
do
        number[count]=$((RANDOM%1000));

done
echo "Original Array is "${number[@]}

# sorting the numbers
for (( count=1;$count<10;count++))
do
	for((itr=0;$itr<=$count;itr++))
	do
		if [ ${number[count]} -lt ${number[itr]} ]
		then
			number[itr]=$(( ${number[itr]}+${number[count]} ))	# switch two numbers in place
			number[count]=$(( ${number[itr]}-${number[count]} ))	# here we are switching number
			number[itr]=$(( ${number[itr]}-${number[count]} ))	# at itr and count
		fi
	done

done
echo "The sorted array is "${number[@]}
echo "The second smallest and second highest numbers in the array are " ${number[1]} "and " ${number[8]}
