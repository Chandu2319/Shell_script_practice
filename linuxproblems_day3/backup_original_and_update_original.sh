#! /bin/bash -x

folderpath="/d/TerminalCommands/linux-content/Homework/linuxproblems_day3"
original=echo `cat "original/original_Notes.txt"`;
#echo $original
updated=echo `cat "updated/updated_Notes.txt"`;

if [ $original -eq $updated ]
then
	echo "The original file is same as the updated file"
else
	echo "The original file is different from the updated file"
fi
