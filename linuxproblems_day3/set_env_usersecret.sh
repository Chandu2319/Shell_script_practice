#! /bin/bash -x

export usersecret;
if [ -z $usersecret ]
then
	usersecret="dH34xJaa23";
else
	echo error
fi
echo $usersecret
