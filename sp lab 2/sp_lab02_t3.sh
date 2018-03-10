#!/bin/bash
showAllOwner ()
{
	echo "File name :File type : owner"
	for filename in `ls ~`
	do
	r=`ls -l ~/$filename | grep $1`
	if [ $? = 0 ]
	then
	echo "`file ~/$filename` : $1"
	fi
	done 
} 

if [ $# = 1 ]
then 
	showAllOwner $1
elif [ $# = 0 ]
then
echo "no arguments were given"
else
echo "too many arguments were given"
fi
