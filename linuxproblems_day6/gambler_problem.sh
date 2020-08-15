#! /bin/bash -x
# This determines whether the gambler looses the hundred he has or wins an extra 
# hundred by betting 1 rupee each time. Also, in how many times he entered the bet.

#variables
Money=100;	# money initially the gambler had
Total_no_of_bets=0;
No_of_wins=0;
No_of_losses=0;
while [ 0 -lt $Money -a $Money -lt 200 ]
do
	Total_no_of_bets=$(( $Total_no_of_bets + 1 ))
	if [ $((RANDOM%2)) -eq 0 ]			# here we determine whether
	then						# he won or lost in a bet
		No_of_losses=$(( $No_of_losses+1 ));	# by random chance
		Money=$(($Money-1));
	else
		No_of_wins=$(( $No_of_wins+1 ));
		Money=$(($Money+1));
	fi

done
echo "After a total of " $Total_no_of_bets " bets the gambler has won " $No_of_wins "times"
echo "and lost " $No_of_losses "times amounting to a total sum of " $Money "rupees".
