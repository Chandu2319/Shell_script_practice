#! /bin/bash
# this creates a birth month for 50 individuals randomly and separates them and stores in separate dictionaries

declare -a birth_month			#declare -A birth_month is used if we had a list of names
declare -a birth_month_counter

#creating the list of birth month of 50 people
for (( count=0;$count<50; count++ ))
do
	month=$((RANDOM%12+1));
	birth_month[count]=$month;
	birth_month_counter[$month]=$((${birth_month_counter[month]}+1));
done
# printing the whole list of birth_months and the counter for each month
#echo "Complete List of birth months of 50 people "${birth_month[@]}
echo "Number of people born in each month is " ${birth_month_counter[@]}

read -p "Enter the month for which you need the list of people : " input_month

echo "The list of people who are born in month " $input_month "are "
for(( itr=0;itr<${#birth_month[@]};itr++ ))
do
	if [ ${birth_month[itr]} -eq $input_month ]
	then
		echo -n "$itr ";
	fi
done
