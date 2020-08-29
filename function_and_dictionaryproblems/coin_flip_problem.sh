#! /bin/bash

function coin_flip() {
        if [ $(( RANDOM%2 )) -eq 0 ]
        then
                echo Tails;
        else
                echo Heads;
        fi
}

#main
no_of_tails=0;
no_of_heads=0;
difference_in_wins=0;
while [ \( $no_of_tails -lt 21 -a $no_of_heads -lt 21 \) -o \( \( $no_of_tails -ge 21 -o $no_of_heads -ge 21 \) -a $difference_in_wins -le 2 \) ]
do
        flip_result=$(coin_flip)
        #echo $flip_result
        if [ $flip_result = "Tails" ]
        then
                no_of_tails=$(( $no_of_tails+1 ));
        elif [ $flip_result = "Heads" ]
        then
                no_of_heads=$(( $no_of_heads+1));
        fi
        difference_in_wins=$(echo $(( $no_of_tails-$no_of_heads )) | sed 's/-//')
done
echo "No of heads and tails is " $no_of_heads, $no_of_tails " respectively."
