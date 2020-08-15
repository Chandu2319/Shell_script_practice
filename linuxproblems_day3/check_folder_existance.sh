#! /bin/bash -x
read -p "enter folder name" foldername
if [ -d $foldername ]
then
	echo "The folder $foldername exists in the current directory"
else
	echo "The folder $foldername does not exist in this directory"
	mkdir $foldername
fi
