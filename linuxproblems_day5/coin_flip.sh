#! /bin/bash -x

if [ $((RANDOM%2)) -eq 0 ]
then
	echo Heads;
else
	echo Tails;
fi
