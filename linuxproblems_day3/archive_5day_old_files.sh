#!/bin/bash

Folder_path="/d/Terminalcommands"
files=`ls $Folder_path`
if [ -d "$Folder_path/backup" ]
then
	rm -r "$Folder_path/backup"
fi
mkdir "$Folder_path/backup"
for filename in $files
do
	echo $filename
	Current_date=$(date "+%s" )
	File_date=$(date -r $Folder_path/$filename "+%s")
	File_age=$(( ( $Current_date-$File_date)/86400 ))
	echo $File_age
	if [ $File_age -gt 5 ]
	then
		cp -r "$Folder_path/$filename" "$Folder_path/backup"
		echo "$Folder_path/$filename is copied to $Folder_path/backup"
	fi
done
