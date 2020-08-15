#! /bin/bash -x

Hello
if [ $? -ne 0 ]
then
	echo Hello command execution has failed
else
	echo Hello command executed properly
fi
ls
echo $?
if [ $? -ne 0 ]
then
	echo ls command execution has failed
else
	echo ls command executed properly
fi
