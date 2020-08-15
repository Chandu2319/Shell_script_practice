#! /bin/bash -x
# this prints the output of a coin toss until either of them reach a count of 11

tail_count=0
head_count=0
while [ $head_count -lt 11 -a $tail_count -lt 11 ]
do
	if [ $((RANDOM%2)) -eq 0 ]			# the output of a coin_flip
	then						# is determined here
		head_count=$(($head_count + 1))
		echo "heads " $head_count
	else
		tail_count=$(($tail_count + 1 ))
		echo "tails " $tail_count
	fi
done
