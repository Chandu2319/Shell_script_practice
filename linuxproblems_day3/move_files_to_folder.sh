#!/bin/bash/

touch abc.txt def.txt ghi.txt jkl.txt
ls *.txt
for filename in `ls *txt`
do
foldername=`echo $filename | awk -F. '{print $1}'`
if [ -d $foldername ]
then
	rm -r $foldername
fi
mkdir $foldername
mv $filename $foldername
ls $foldername
done
