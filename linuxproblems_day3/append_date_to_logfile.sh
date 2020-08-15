#! /bin/bash

touch abc.log.1 def.log.1 ghi.log.1 jkl.log.1 mno.log.1
ls *.log.1
for filename  in `ls *.log.1`
do
basename=`echo $filename | awk -F. '{print $1}'`
current_date=`echo $(date -r $filename "+%d%m%Y")`
cp $filename "$basename-$current_date.log.1"
echo $basename
done
