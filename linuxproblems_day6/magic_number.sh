#! /bin/bash -x
# This asks the user to think of a number between 1 and 100 and ask questions until
# we find that number using binary search

echo "Think of a number between 1 and 100 ."
lower_bound=1;
upper_bound=100;
while [ $(($upper_bound-$lower_bound)) -gt 1 ]
do
	read -p "Is the chosen number greater than "$(( ($upper_bound+$lower_bound)/2 ))" " response;
	case $response in
		y)
			lower_bound=$(( ($upper_bound+$lower_bound)/2 ));;
		n)
			upper_bound=$(( ($upper_bound+$lower_bound)/2 ));;

	esac
done
echo "The chosen number is"$(( ($upper_bound+$lower_bound)/2 ));
